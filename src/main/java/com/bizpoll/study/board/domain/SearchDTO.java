package com.bizpoll.study.board.domain;

public class SearchDTO {

	private String searchType;
	private String searchContent;
	private int page;
	private int perPageNum;
	
	public SearchDTO() {
		
	}

	public SearchDTO(String searchType, String searchContent, int page, int perPageNum) {
		super();
		this.searchType = searchType;
		this.searchContent = searchContent;
		this.page = page;
		this.perPageNum = perPageNum;
	}

	public String getSearchType() {
		return searchType;
	}

	public void setSearchType(String searchType) {
		this.searchType = searchType;
	}

	public String getSearchContent() {
		return searchContent;
	}

	public void setSearchContent(String searchContent) {
		this.searchContent = searchContent;
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
		return "SearchDTO(searchType = " + searchType + 
				", searchContent = " + searchContent +
				", page = " + page +
				", perPageNum = " + perPageNum + ")";
	}
}
