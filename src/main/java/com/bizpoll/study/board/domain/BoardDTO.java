package com.bizpoll.study.board.domain;

import java.sql.Timestamp;

public class BoardDTO {
	
	private Integer bno;
	private String title;
	private String content;
	private String writer;
	private Timestamp regdate;
	private Integer viewcnt;
	
	/*
	 * 댓글 데이터
	 */
	private Integer groupNum;
	private Integer mom;
	private Integer depth;
	
	/*
	 * 파일 데이터
	 */
	private int fno;
	private Timestamp filedate;
	private Long filesize;
	private String filename;
	private String fileContentType;
	
	public BoardDTO() {
		
	}

	public BoardDTO(Integer bno, String title, String content, String writer, Timestamp regdate, Integer viewcnt,
			Integer groupNum, Integer mom, Integer depth, int fno, Timestamp filedate, Long filesize, String filename,
			String fileContentType) {
		super();
		this.bno = bno;
		this.title = title;
		this.content = content;
		this.writer = writer;
		this.regdate = regdate;
		this.viewcnt = viewcnt;
		this.groupNum = groupNum;
		this.mom = mom;
		this.depth = depth;
		this.fno = fno;
		this.filedate = filedate;
		this.filesize = filesize;
		this.filename = filename;
		this.fileContentType = fileContentType;
	}

	public Integer getBno() {
		return bno;
	}

	public void setBno(Integer bno) {
		this.bno = bno;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public Timestamp getRegdate() {
		return regdate;
	}

	public void setRegdate(Timestamp regdate) {
		this.regdate = regdate;
	}

	public Integer getViewcnt() {
		return viewcnt;
	}

	public void setViewcnt(Integer viewcnt) {
		this.viewcnt = viewcnt;
	}

	public Integer getGroupNum() {
		return groupNum;
	}

	public void setGroupNum(Integer groupNum) {
		this.groupNum = groupNum;
	}

	public Integer getMom() {
		return mom;
	}

	public void setMom(Integer mom) {
		this.mom = mom;
	}

	public Integer getDepth() {
		return depth;
	}

	public void setDepth(Integer depth) {
		this.depth = depth;
	}

	public int getFno() {
		return fno;
	}

	public void setFno(int fno) {
		this.fno = fno;
	}

	public Timestamp getFiledate() {
		return filedate;
	}

	public void setFiledate(Timestamp filedate) {
		this.filedate = filedate;
	}

	public Long getFilesize() {
		return filesize;
	}

	public void setFilesize(Long filesize) {
		this.filesize = filesize;
	}

	public String getFilename() {
		return filename;
	}

	public void setFilename(String filename) {
		this.filename = filename;
	}

	public String getFileContentType() {
		return fileContentType;
	}

	public void setFileContentType(String fileContentType) {
		this.fileContentType = fileContentType;
	}

	@Override
	public String toString() {
		return "BoardDTO [bno=" + bno + ", title=" + title + ", content=" + content + ", writer=" + writer
				+ ", regdate=" + regdate + ", viewcnt=" + viewcnt + ", groupNum=" + groupNum + ", mom=" + mom
				+ ", depth=" + depth + ", fno=" + fno + ", filedate=" + filedate + ", filesize=" + filesize
				+ ", filename=" + filename + ", fileContentType=" + fileContentType + "]";
	}
	
}
