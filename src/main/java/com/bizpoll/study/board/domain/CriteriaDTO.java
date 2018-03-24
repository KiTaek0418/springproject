package com.bizpoll.study.board.domain;

public class CriteriaDTO {

	private int page;
	private int perPageNum;
	
	public CriteriaDTO() {
		
	}

	public CriteriaDTO(int page, int perPageNum) {
		super();
		this.page = page;
		this.perPageNum = perPageNum;
	}

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		if (page <= 0 ) {
			this.page = 1;
			
			return;
		}
		this.page = page;
	}

	public void setPerPageNum(int perPageNum) {
		if(perPageNum <= 0 || perPageNum > 100) {
			this.perPageNum = 10;
			
			return;
		}
		this.perPageNum = perPageNum;
	}
	
	public int getPageStart() {
		return ((this.page - 1) * perPageNum) + 1;
	}
	
	public int getPerPageNum() {
		return this.page * this.perPageNum;
	}
	
	public int getPerPage() {
		return this.perPageNum;
	}
	
	@Override 
	public String toString() {
		return "CriteriaDTO(page = " + page + 
				", perPageNum = " + perPageNum + ")";
	}
}
