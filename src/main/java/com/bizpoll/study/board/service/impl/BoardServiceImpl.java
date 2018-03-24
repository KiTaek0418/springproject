package com.bizpoll.study.board.service.impl;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.bizpoll.study.board.domain.BoardDTO;
import com.bizpoll.study.board.domain.CriteriaDTO;
import com.bizpoll.study.board.domain.SearchDTO;
import com.bizpoll.study.board.persistence.IBoardDAO;
import com.bizpoll.study.board.service.IBoardService;

@Service
public class BoardServiceImpl implements IBoardService {
	
	@Inject
	private IBoardDAO bDao;

	@Override
	public int regist(BoardDTO bDto) throws Exception {
		return bDao.create(bDto);
	}
	
	@Override
	public int fileupload(BoardDTO bDto) throws Exception {
		return bDao.fileupload(bDto);
	}

	@Override
	public BoardDTO read(Integer bno) throws Exception {
		return bDao.read(bno);
	}

	@Override
	public void modify(BoardDTO bDto) throws Exception {
		bDao.update(bDto);
	}

	@Override
	public int remove(Integer bno) throws Exception {
		return bDao.delete(bno);
	}
	
	@Override
	public int fileDelete(Integer bno) throws Exception {
		return bDao.fileDelete(bno);
	}

	@Override
	public List<BoardDTO> listAll() throws Exception {
		return bDao.listAll();
	}

	@Override
	public List<BoardDTO> detail(Integer bno) throws Exception {
		return bDao.detail(bno);
	}

	@Override
	public BoardDTO previous(Integer bno) throws Exception {
		return bDao.previous(bno);
	}

	@Override
	public BoardDTO next(Integer bno) throws Exception {
		return bDao.next(bno);
	}

	@Override
	public void cnt(Integer bno) throws Exception {
		bDao.cnt(bno);
	}

	@Override
	public List<BoardDTO> listCriteria(CriteriaDTO criDto) throws Exception {
		return bDao.listCriteria(criDto);
	}

	@Override
	public int pageCnt(int perPageNum) throws Exception {
		return bDao.pageCnt(perPageNum);
	}

	@Override
	public int totalCnt() throws Exception {
		return bDao.totalCnt();
	}

	@Override
	public List<BoardDTO> searchListCriteria(SearchDTO seaDto) throws Exception {
		return bDao.searchListCriteria(seaDto);
	}

	@Override
	public int searchCnt(SearchDTO seaDto) throws Exception {
		return bDao.searchCnt(seaDto);
	}

	@Override
	public int ripple(BoardDTO bDto) throws Exception {
		return bDao.ripple(bDto);
	}

	@Override
	public int imgCnt(String filename) throws Exception {
		return bDao.imgCnt(filename);
	}

}
