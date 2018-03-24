package com.bizpoll.study;

import javax.inject.Inject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.bizpoll.study.member.domain.MemberDTO;
import com.bizpoll.study.member.service.IMemberService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations= {"file:src/main/webapp/WEB-INF/spring/**/root-context.xml"})
public class MemberModifyTest {
	@Inject
	private IMemberService mDao;
	
	@Test
	public void testpwChange() throws Exception{
		
		MemberDTO mDto = new MemberDTO();
		mDto.setId("testid");
		mDto.setPw("1234");
		mDto.setName("수정테스트");
		mDto.setPhone("수정폰");
		mDto.setNick("수정중");
		mDto.setEmail("수정이메일");
		
		System.out.println("수정 테스트" + mDto.toString());
		int result = mDao.modify(mDto);
		System.out.println("결과" + result);
		if(result > 0) {
			System.out.println("회원의 정보가 수정되었습니다.");
		} else {
			System.out.println("회원의 비밀번호를 확인해주세요.");
		}
	}

}
