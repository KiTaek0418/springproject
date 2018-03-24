package com.bizpoll.study.board.domain;

public class BoardPagerDTO {
 
//    private CriteriaDTO cDto;
	private SearchDTO cDto;
    
    private int totalCount;
    private int startPage;
    private int endPage;
    private boolean prev;
    private boolean next;
    
    public BoardPagerDTO() {
    	
	}
    
	public BoardPagerDTO(SearchDTO cDto, int totalCount, int startPage, int endPage, boolean prev, boolean next) {
		super();
		this.cDto = cDto;
		this.totalCount = totalCount;
		this.startPage = startPage;
		this.endPage = endPage;
		this.prev = prev;
		this.next = next;
	}
	
	public SearchDTO getcDto() {
		return cDto;
	}

	public void setcDto(SearchDTO cDto) {
		this.cDto = cDto;
	}

	public int getTotalCount() {
		return totalCount;
	}

	public void setTotalCount(int totalCount) {
		if (totalCount < 1) { 
			return; 
		} 

		this.totalCount = totalCount;
		page();
	}

	public int getStartPage() {
		return startPage;
	}

	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}

	public int getEndPage() {
		return endPage;
	}

	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}

	public boolean isPrev() {
		return prev;
	}

	public void setPrev(boolean prev) {
		this.prev = prev;
	}

	public boolean isNext() {
		return next;
	}

	public void setNext(boolean next) {
		this.next = next;
	}

	/*
	 * 페이지 기능
	 * tempEnd = 현재 페이지 번호를 기준으로 끝페이지 계산
	 * startPage = 끝페이지 계산된값 - 9 (페이지 10개 기준)
	 * endPage = tempEnd * (현재페이지 * 보여줄 페이지 수)가 리스트 총 갯수보다 크면 리스트 총 갯수/보여줄 페이지 수
	 *            아니면 endPage = tempEnd
	 * prev = 이전 페이지
	 * next = 다음 페이지      
	 */
	private void page() {
		int tempEnd = (int)(Math.ceil(cDto.getPage() / 10.0) * 10);
		this.startPage = tempEnd - 9;
		
		if ((tempEnd * cDto.getPerPage()) > this.totalCount) { 
			this.endPage = (int) Math.ceil(this.totalCount / (double)cDto.getPerPage()); 
		} else { 
			this.endPage = tempEnd; 
		} 
		
		this.prev = this.startPage > 10; 
		this.next = this.endPage * cDto.getPerPage() < this.totalCount; 
	}

	@Override 
	public String toString() {
		return "BoardPagerDTO(totalCount = " + totalCount + 
				", startPage = " + startPage +
				", endPage = " + endPage +
				", prev = " + prev +
				", next = " + next + ")";
	}

}
