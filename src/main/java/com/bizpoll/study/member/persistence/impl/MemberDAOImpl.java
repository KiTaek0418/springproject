package com.bizpoll.study.member.persistence.impl;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.bizpoll.study.member.domain.MemberDTO;
import com.bizpoll.study.member.persistence.IMemberDAO;

@Repository
public class MemberDAOImpl implements IMemberDAO {

	@Inject
	private SqlSession sqlSession;

	private static final String NAMESPACE = "com.bizpoll.study.mappers.memberMapper";
	
	@Override
	public int signUp(MemberDTO mDto) throws Exception {
		return sqlSession.insert(NAMESPACE + ".signup", mDto);
	}

	@Override
	public int idChk(MemberDTO mDto) throws Exception {
		return sqlSession.selectOne(NAMESPACE + ".idChk", mDto);
	}

	@Override
	public String idSearch(MemberDTO mDto) throws Exception {
		return sqlSession.selectOne(NAMESPACE + ".idSearch", mDto);
	}

	@Override
	public String pwSearch(MemberDTO mDto) throws Exception {
		return sqlSession.selectOne(NAMESPACE + ".pwSearch", mDto);
	}

	@Override
	public int modify(MemberDTO mDto) throws Exception {
		return sqlSession.update(NAMESPACE + ".modify", mDto);
	}

	@Override
	public MemberDTO logIn(MemberDTO mDto) {
		return sqlSession.selectOne(NAMESPACE + ".login", mDto);
	}

	@Override
	public int memberDel(MemberDTO mDto) throws Exception {
		return sqlSession.delete(NAMESPACE + ".memberDel", mDto);
	}

	@Override
	public int pwChange(MemberDTO mDto) throws Exception {
		return sqlSession.update(NAMESPACE + ".pwchange", mDto);
	}
}
