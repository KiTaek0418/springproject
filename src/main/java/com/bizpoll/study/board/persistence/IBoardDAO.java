package com.bizpoll.study.board.persistence;

import java.util.List;

import com.bizpoll.study.board.domain.BoardDTO;
import com.bizpoll.study.board.domain.CriteriaDTO;
import com.bizpoll.study.board.domain.SearchDTO;

public interface IBoardDAO {
	public int create(BoardDTO bDto) throws Exception;
	
	public int fileupload(BoardDTO bDto) throws Exception;
	
	public BoardDTO read(Integer bno) throws Exception;
	
	public void update(BoardDTO bDto) throws Exception;
	
	public int delete(Integer bno) throws Exception;
	
	public int fileDelete(Integer bno) throws Exception;
	
	public List<BoardDTO> listAll() throws Exception;
	
	public List<BoardDTO> detail(Integer bno) throws Exception;
	
	public BoardDTO previous(Integer bno) throws Exception;
	
	public BoardDTO next(Integer bno) throws Exception;
	
	public void cnt(Integer bno) throws Exception;
	
	public List<BoardDTO> listCriteria(CriteriaDTO criDto) throws Exception;
	
	public int pageCnt(int perPageNum) throws Exception;
	
	public int totalCnt() throws Exception;
	
	public List<BoardDTO> searchListCriteria(SearchDTO seaDto) throws Exception;
	
	public int searchCnt(SearchDTO seaDto) throws Exception;
	
	public int ripple(BoardDTO bDto) throws Exception;
	
	public int imgCnt(String filename) throws Exception;
}
