package com.bizpoll.study.board.domain;

import java.sql.Timestamp;

public class BoardFileDTO {
	
	private int fno;
	private Timestamp filedate;
	private Long filesize;
	private String filename;
	private String fileContentType;
	
	public BoardFileDTO() {
		
	}

	public BoardFileDTO(int fno, Timestamp filedate, Long filesize, String filename, String fileContentType) {
		super();
		this.fno = fno;
		this.filedate = filedate;
		this.filesize = filesize;
		this.filename = filename;
		this.fileContentType = fileContentType;
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
		return "BoardFileDTO [fno=" + fno + ", filedate=" + filedate + ", filesize=" + filesize + ", filename="
				+ filename + ", fileContentType=" + fileContentType + "]";
	}
	
}
