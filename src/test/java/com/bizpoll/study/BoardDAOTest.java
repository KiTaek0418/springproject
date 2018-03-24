package com.bizpoll.study;

import java.util.List;

import javax.inject.Inject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.bizpoll.study.board.domain.BoardDTO;
import com.bizpoll.study.board.domain.CriteriaDTO;
import com.bizpoll.study.board.persistence.IBoardDAO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations= {"file:src/main/webapp/WEB-INF/spring/**/*.xml"})
public class BoardDAOTest {
	
	private static final Logger logger = 
			LoggerFactory.getLogger(BoardDAOTest.class);
	
	@Inject
	private IBoardDAO bDao;

	/*@Test
	public void createTest() throws Exception {
		BoardDTO bDto = new BoardDTO();
		
		bDto.setTitle("테스트중");
		bDto.setContent("제발");
		bDto.setWriter("김기택님");
		
		bDao.create(bDto);
	}*/
	
	/*@Test
	public void readTest() throws Exception {
		BoardDTO bDto = bDao.read(2);
		System.out.println("bDto =========>" + bDto);
	}*/
	
	/*@Test
	public void updateTest() throws Exception {
		BoardDTO bDto = new BoardDTO();
		
		bDto.setBno(3);
		bDto.setTitle("수정중");
		bDto.setContent("될껍니다");
		bDto.setWriter("기택!");
		
		bDao.update(bDto);
	}*/

	/*@Test
	public void updateTest() throws Exception {
		bDao.delete(2);
	}*/
	
	/*@Test
	public void listAllTest() throws Exception {
		List<BoardDTO> memList = bDao.listAll();
		
		System.out.println(memList);
	}*/
	
	@Test
	public void testListCriteria() throws Exception {
		CriteriaDTO criDto = new CriteriaDTO();
		criDto.setPage(5);
		criDto.setPerPageNum(30);
		
		List<BoardDTO> boaList = bDao.listCriteria(criDto);
		logger.info("보드리스트 사이즈===>" + Integer.toString(boaList.size()));
		
		for (BoardDTO boardDTO : boaList) {
			logger.info(boardDTO.getBno() + " : " + "글번호" + " " + boardDTO.getTitle() + " : " + "글제목");
		}
	}
}
