package com.bizpoll.study.board.persistence.impl;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.bizpoll.study.board.domain.BoardDTO;
import com.bizpoll.study.board.domain.CriteriaDTO;
import com.bizpoll.study.board.domain.SearchDTO;
import com.bizpoll.study.board.persistence.IBoardDAO;

@Repository
public class BoardDAOImpl implements IBoardDAO {
	
	@Inject
	private SqlSession sqlSession;

	private static final String NAMESPACE = "com.bizpoll.study.mappers.boardMapper";

	@Override
	public int create(BoardDTO bDto) throws Exception {
		return sqlSession.insert(NAMESPACE + ".create", bDto);
	}

	@Override
	public int fileupload(BoardDTO bDto) throws Exception {
		return sqlSession.insert(NAMESPACE + ".fileupload", bDto);
	}
	
	@Override
	public BoardDTO read(Integer bno) throws Exception {
		return sqlSession.selectOne(NAMESPACE + ".read", bno);
	}

	@Override
	public void update(BoardDTO bDto) throws Exception {
		sqlSession.update(NAMESPACE + ".update", bDto);
	}

	@Override
	public int delete(Integer bno) throws Exception {
		return sqlSession.delete(NAMESPACE + ".delete", bno);
	}
	
	@Override
	public int fileDelete(Integer bno) throws Exception {
		return sqlSession.delete(NAMESPACE + ".filedelete", bno);
	}

	@Override
	public List<BoardDTO> listAll() throws Exception {
		List<BoardDTO> memList = null;
		
		memList = sqlSession.selectList(NAMESPACE + ".listAll");
		
		return memList;
	}

	@Override
	public List<BoardDTO> detail(Integer bno) throws Exception {
		List<BoardDTO> detail = sqlSession.selectList(NAMESPACE + ".detail", bno);
		return detail;
	}

	@Override
	public BoardDTO previous(Integer bno) throws Exception {
		return sqlSession.selectOne(NAMESPACE + ".previous", bno);
	}

	@Override
	public BoardDTO next(Integer bno) throws Exception {
		return sqlSession.selectOne(NAMESPACE + ".next", bno);
	}

	@Override
	public void cnt(Integer bno) throws Exception {
		sqlSession.update(NAMESPACE + ".cnt", bno);
	}

	@Override
	public List<BoardDTO> listCriteria(CriteriaDTO criDto) throws Exception {
		List<BoardDTO> boaList = null;
		
		boaList = sqlSession.selectList(NAMESPACE + ".listCriteria", criDto);
		
		return boaList;
	}

	@Override
	public int pageCnt(int perPageNum) throws Exception {
		return sqlSession.selectOne(NAMESPACE + ".pagecnt", perPageNum);
	}

	@Override
	public int totalCnt() throws Exception {
		return sqlSession.selectOne(NAMESPACE + ".totalCnt");
	}

	@Override
	public List<BoardDTO> searchListCriteria(SearchDTO seaDto) throws Exception {
		List<BoardDTO> searchList = null;
		
		searchList = sqlSession.selectList(NAMESPACE + ".search", seaDto);
		
		return searchList;
	}
	
	@Override
	public int searchCnt(SearchDTO seaDto) throws Exception {
		return sqlSession.selectOne(NAMESPACE + ".searchCnt", seaDto);
	}

	@Override
	public int ripple(BoardDTO bDto) throws Exception {
		return sqlSession.insert(NAMESPACE + ".ripple", bDto);
	}

	@Override
	public int imgCnt(String filename) throws Exception {
		return sqlSession.selectOne(NAMESPACE + ".imgcnt", filename);
	}
	
}
