package com.bizpoll.study.member.service;

import com.bizpoll.study.member.domain.MemberDTO;

public interface IMemberService {

	public int signUp(MemberDTO mDto) throws Exception;
	
	public int idChk(MemberDTO mDto) throws Exception;
	
	public String idSearch(MemberDTO mDto) throws Exception;
	
	public String pwSearch(MemberDTO mDto) throws Exception;
	
	public int modify(MemberDTO mDto) throws Exception;
	
	public MemberDTO logIn(MemberDTO mDto);
	
	public int memberDel(MemberDTO mDto) throws Exception;
	
	public int pwChange(MemberDTO mDto) throws Exception;
}
