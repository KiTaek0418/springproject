 package com.bizpoll.study.member.service.impl;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.bizpoll.study.member.domain.MemberDTO;
import com.bizpoll.study.member.persistence.IMemberDAO;
import com.bizpoll.study.member.service.IMemberService;

@Service
public class MemberServiceImpl implements IMemberService{

	@Inject
	private IMemberDAO mDao;
	
	@Override
	public int signUp(MemberDTO mDto) throws Exception {
		return mDao.signUp(mDto);
	}

	@Override
	public int idChk(MemberDTO mDto) throws Exception {
		return mDao.idChk(mDto);
	}

	@Override
	public String idSearch(MemberDTO mDto) throws Exception {
		return mDao.idSearch(mDto);
	}

	@Override
	public String pwSearch(MemberDTO mDto) throws Exception {
		return mDao.pwSearch(mDto);
	}

	@Override
	public int modify(MemberDTO mDto) throws Exception {
		return mDao.modify(mDto);
	}

	@Override
	public MemberDTO logIn(MemberDTO mDto) {
		return mDao.logIn(mDto);
	}

	@Override
	public int memberDel(MemberDTO mDto) throws Exception {
		return mDao.memberDel(mDto);
	}

	@Override
	public int pwChange(MemberDTO mDto) throws Exception {
		return mDao.pwChange(mDto);
	}
}
