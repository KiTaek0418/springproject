package com.bizpoll.study.board.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.OutputStream;
import java.net.URLEncoder;
import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.bizpoll.study.board.domain.BoardDTO;
import com.bizpoll.study.board.domain.BoardPagerDTO;
import com.bizpoll.study.board.domain.SearchDTO;
import com.bizpoll.study.board.service.IBoardService;

@Controller
@RequestMapping("/board")
@SessionAttributes("memList")
public class BoardController {

	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);

	@Inject
	private IBoardService service;

	@Resource(name = "uploadPath")
	String uploadPath;
	
	/*
	 * 프로필 페이지
	 */
	@RequestMapping(value = "/profile")
	public String profile() throws Exception {
		
		return "/mainView/profile";
	}

	/*
	 * 글 작성 페이지
	 */
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public void registerGET(BoardDTO bDto, Model model) throws Exception {
	}

	/*
	 * 글 작성 페이지
	 */
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String registerPOST(BoardDTO bDto, Model model, RedirectAttributes rttr,
			@RequestParam("file[]") List<MultipartFile> file) throws Exception {
		
		String url = "";
		int change = 0;

		int succ = service.regist(bDto);
		
		if (succ > 0) {
			System.out.println("글작성 성공");
			rttr.addFlashAttribute("msg", "글작성이 되었습니다.");
			if (file.get(0).getSize() == 0) {
				bDto.setFilename("DEAFALUT");
				bDto.setFileContentType("DEAFALUT");
				bDto.setFilesize(file.get(0).getSize());
				service.fileupload(bDto);
			}

			url = "redirect:/board/listAll";
		} else {
			rttr.addFlashAttribute("msg", "글작성을 실패하였습니다.");
			url = "/board/register";
		}

		//파일 1개 이상 등록
		if (file.get(0).getSize() > 1) {
			for (MultipartFile multipartFile : file) {

				String fileName = multipartFile.getOriginalFilename();
				String contentType = multipartFile.getContentType();
				Long filesize = multipartFile.getSize();

				int idx = contentType.indexOf("/");
				String content = contentType.substring(0, idx);
				String type = contentType.substring(idx + 1);

				File taget = new File(uploadPath, fileName);

				int imgCnt = service.imgCnt(fileName);

				//파일명 중복 체크
				if (imgCnt > 0 && multipartFile.getSize() > 0) {
					while (true) {
						change++;
						int imgChk = fileName.indexOf(".");
						String name = fileName.substring(0, imgChk);
						String imgtype = fileName.substring(imgChk + 1);
						String newFileName = name + "(" + change + ")" + "." + imgtype;

						imgCnt = service.imgCnt(newFileName);

						if (imgCnt == 0) {
							taget = new File(uploadPath, newFileName);
							FileCopyUtils.copy(multipartFile.getBytes(), taget);

							bDto.setFilename(newFileName);
							bDto.setFileContentType(type);
							bDto.setFilesize(filesize);
							service.fileupload(bDto);
							break;
						}
					}
				} else {
					FileCopyUtils.copy(multipartFile.getBytes(), taget);
					bDto.setFilename(fileName);
					bDto.setFileContentType(type);
					bDto.setFilesize(filesize);
					service.fileupload(bDto);
				}

			}
		}
		return url;
	}

	/*
	 * 게시판 페이지
	 */
	@RequestMapping(value = "/listAll")
	public String success(@RequestParam(value = "page", defaultValue = "1") int page,
			@RequestParam(value = "pagenum", defaultValue = "10") int PerPageNum,
			@RequestParam(value = "searchType", defaultValue = "option") String searchType,
			@RequestParam(value = "searchContent", defaultValue = "") String searchContent, BoardDTO bDto, Model model)
			throws Exception {

		int pageCnt = service.pageCnt(PerPageNum);
		model.addAttribute("pageCnt", pageCnt);

		//검색 & 페이징
		SearchDTO seaDto = new SearchDTO();
		seaDto.setSearchType(searchType);
		seaDto.setSearchContent(searchContent);
		seaDto.setPage(page);
		seaDto.setPerPageNum(PerPageNum);
		
		List<BoardDTO> searchList = service.searchListCriteria(seaDto);

		int searchCnt = service.searchCnt(seaDto);
		BoardPagerDTO pagDto = new BoardPagerDTO();
		pagDto.setcDto(seaDto);
		pagDto.setTotalCount(searchCnt);

		model.addAttribute("PerPageNum", PerPageNum);
		model.addAttribute("seaDto", seaDto);
		model.addAttribute("searchList", searchList);
		model.addAttribute("pagDto", pagDto);

		return "/board/listAll";
	}

	/*
	 * 상세 페이지
	 */
	@RequestMapping(value = "/detailpage")
	public String detail(Model model, BoardDTO bDto, @RequestParam("bno") int bno, @RequestParam("user") String user,
			HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		List<BoardDTO> detailList = service.detail(bno);

		model.addAttribute("detail", detailList);

		if (!user.equals(bDto.getWriter()) && user != "") {
			service.cnt(bno);
		}

		return "/board/detailpage";
	}

	/*
	 * 리플 등록 페이지
	 */
	@RequestMapping(value = "/ripple")
	public String ripple(Model model, BoardDTO bDto, @RequestParam("file[]") List<MultipartFile> file)
			throws Exception {
		int ripDepth = bDto.getDepth() + 1;
		String url = "/board/register";
		int change = 0;

		bDto.setGroupNum(bDto.getGroupNum());
		bDto.setMom(bDto.getBno());
		bDto.setDepth(ripDepth);
		int succ = service.ripple(bDto);

		if (succ > 0) {
			if (file.get(0).getSize() == 0) {
				bDto.setFilename("RIPPLE");
				bDto.setFileContentType("RIPPLE");
				bDto.setFilesize(file.get(0).getSize());
				service.fileupload(bDto);
			}

			url = "redirect:/board/listAll";
		}

		//리플 파일 등록
		if (file.get(0).getSize() > 1) {
			for (MultipartFile multipartFile : file) {

				String fileName = multipartFile.getOriginalFilename();
				String contentType = multipartFile.getContentType();
				Long filesize = multipartFile.getSize();

				int idx = contentType.indexOf("/");
				String content = contentType.substring(0, idx);
				String type = contentType.substring(idx + 1);

				File taget = new File(uploadPath, fileName);

				int imgCnt = service.imgCnt(fileName);

				//리플 파일명 중복 체크
				if (imgCnt > 0 && multipartFile.getSize() > 0) {
					while (true) {
						change++;
						int imgChk = fileName.indexOf(".");
						String name = fileName.substring(0, imgChk);
						String imgtype = fileName.substring(imgChk + 1);
						String newFileName = name + "(" + change + ")" + "." + imgtype;

						imgCnt = service.imgCnt(newFileName);

						if (imgCnt == 0) {
							taget = new File(uploadPath, newFileName);
							FileCopyUtils.copy(multipartFile.getBytes(), taget);

							bDto.setFilename(newFileName);
							bDto.setFileContentType(type);
							bDto.setFilesize(filesize);
							service.fileupload(bDto);
							break;
						}
					}
				} else {
					FileCopyUtils.copy(multipartFile.getBytes(), taget);
					bDto.setFilename(fileName);
					bDto.setFileContentType(type);
					bDto.setFilesize(filesize);
					service.fileupload(bDto);
				}

			}
		}
		return url;
	}

	/*
	 * 게시글 수정 페이지
	 */
	@RequestMapping(value = "/modify")
	public String modify(@RequestParam("bno") Integer bno, BoardDTO bDto) throws Exception {
		bDto.setBno(bno);

		service.modify(bDto);

		return "redirect:/board/listAll";
	}

	/*
	 * 게시글 삭제 페이지
	 */
	@RequestMapping(value = "/delete")
	public String delete(@RequestParam("bno") Integer bno) throws Exception {
		int result = 0;

		List<BoardDTO> detailList = service.detail(bno);

		result = service.remove(bno);
		result = service.fileDelete(bno);

		//게시글 & 파일 삭제가 정상적으로 완료시 저장 폴더에 있는 파일 삭제
		if (result > 0) {
			for (BoardDTO boardDTO : detailList) {
				File file = new File(uploadPath, boardDTO.getFilename());
				file.delete();
			}
		}

		return "redirect:/board/listAll";
	}
	
	/*
	 * 파일 다운로드 페이지
	 */
	@RequestMapping(value = "/filedownload")
	public void fileDownLoad(HttpServletResponse response, BoardDTO bDto) throws Exception {
		
		String docName = URLEncoder.encode(bDto.getFilename(), "UTF-8").replaceAll("\\+", "%20"); // 한글파일명 깨지지 않도록
		/*response.setHeader("Content-Disposition", "attachment; filename=\"" + docName + "\";");*/
		response.setHeader("Content-Transfer-Encoding", "binary");
		
		if(bDto.getFileContentType().equals("haansofthwp")) {
			//한글문서일때
			response.setHeader("Content-Disposition", "attachment; filename=\"" + docName + "\";");
			response.setContentType("application/haansofthwp");
		} else {
			//그외 이미지, zip등등
			response.setHeader("Content-Disposition", "attachment; filename=\"" + bDto.getFilename() + "\";");
			response.setContentType("image/jpeg");
		}
		
		File down_file = new File(uploadPath, bDto.getFilename()); // 파일 생성
		FileInputStream fileIn = new FileInputStream(down_file); // 파일 읽어오기
		
		OutputStream out = response.getOutputStream();
		
		FileCopyUtils.copy(fileIn, out);
		response.flushBuffer();

	}

}
