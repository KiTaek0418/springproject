package com.bizpoll.study;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.transaction.TransactionDefinition;
import org.springframework.transaction.TransactionStatus;
import org.springframework.transaction.support.DefaultTransactionDefinition;

import com.bizpoll.study.board.domain.BoardDTO;
import com.bizpoll.study.board.domain.BoardFileDTO;
import com.bizpoll.study.board.service.IBoardService;

@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
//@ContextConfiguration(locations= {"file:src/main/webapp/WEB-INF/spring/**/*.xml"})
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/root-context.xml"})
public class MemberDAOTest {
	@Inject
	private IBoardService bDao;

	@Resource(name = "transactionManager")
	protected DataSourceTransactionManager txManager;

	/*
	 * @Test public void testTime() throws Exception{
	 * System.out.println("mDao.getTime() >>>>>>>>>>>>>" + mDao.getTime()); }
	 * 
	 * @Test public void testInsertMember() throws Exception{ MemberDTO mDto = new
	 * MemberDTO(); mDto.setUserid("김기택짱"); mDto.setUserpw("1234");
	 * mDto.setUsername("김기택"); mDto.setEmail("김기택.com");
	 * 
	 * mDao.insertMemeber(mDto); }
	 */

	/*
	 * @Test public void testSearchMember() throws Exception{ String id = "김기택";
	 * List<MemberDTO> memList = mDao.searchMemeber(id);
	 * 
	 * System.out.println("memList!!!!!!!!!!!!!!!!!!!" +
	 * memList.get(0).getEmail().toString()); }
	 */

//	@Transactional(propagation = Propagation.REQUIRED )
	@Test
	public void testSearchMember() throws Exception {
		/*
		 * MemberDTO mDto = new MemberDTO(); mDto.setId("dfsafdsa");
		 * mDto.setPw("22222222");
		 * 
		 * int result = mDao.pwChange(mDto); if(result > 0) {
		 * System.out.println("비밀번호 변경 완료"); } else { System.out.println("비밀번호 변경 실패");
		 * }
		 */

		 DefaultTransactionDefinition def = new DefaultTransactionDefinition();
		 def.setPropagationBehavior(TransactionDefinition.PROPAGATION_REQUIRED);
		 TransactionStatus txStatus= txManager.getTransaction(def);

		/*BoardDTO bDto = new BoardDTO();
		bDto.setContent("test5");
		bDto.setWriter("test5");
		bDto.setTitle("title5");

		BoardFileDTO bfDto = new BoardFileDTO();
		bfDto.setFilename("22");
		bfDto.setFileContentType("11");

		// bDao.regist(bDto);
		// bDao.fileupload(bfDto);
		try {
			bDao.regist(bDto);
			bDao.fileupload(bfDto);

		} catch (Exception e) {
			e.getMessage();
		}*/
		try {
			memberInsert();
			imageInsert();
		} catch (Exception e) {
			e.printStackTrace();
			txManager.rollback(txStatus);
		}
		
		txManager.commit(txStatus);
	}

	public void memberInsert() throws Exception {
		BoardDTO bDto = new BoardDTO();
		bDto.setContent("test2");
		bDto.setWriter("test2");
		bDto.setTitle("title2");
		
		bDao.regist(bDto);
	}
	
	public void imageInsert() throws Exception {
		BoardFileDTO bfDto = new BoardFileDTO();
		System.out.println("이미지 데이터===>" + bfDto.toString());
		for (int i = 0; i < 3; i++) {
			bfDto.setFilename("이미지" + i);
			bfDto.setFileContentType("png" + i);
			
//			bDao.fileupload(bfDto);
		}
	}
}
