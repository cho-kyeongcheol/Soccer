package org.edu.test;

import java.sql.Connection;
import java.util.List;

import javax.inject.Inject;
import javax.sql.DataSource;

import org.edu.service.IF_MemberService;
import org.edu.vo.MemberVO;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations ={"file:src/main/webapp/WEB-INF/spring/**/*.xml"})
@WebAppConfiguration
public class DataSourceTest {
	
	@Inject 
	private DataSource ds;
	
	@Inject
	private IF_MemberService memberService;
	
	@Test
	public void testConnection() throws Exception{
		Connection con = ds.getConnection();
			System.out.println("데이터베이스 커넥션 성공" + con);
		}
		
	
	@Test
	public void testInsertMember() throws Exception {
		MemberVO memberVO = new MemberVO();
		memberVO.setUser_id("user1000");
		memberVO.setUser_pw("1234");
		memberVO.setUser_name("액철이");
		memberVO.setEnabled(true);
		memberVO.setLevels("ROLE_USER");
		memberService.insertMember(memberVO);	
		List<MemberVO> list = memberService.selectMember();
		System.out.println(list);
	}

	
	
	
	@Test
	public void testUpdateMember() throws Exception {
		MemberVO memberVO = new MemberVO();
		memberVO.setUser_id("user1000");
		memberVO.setUser_pw("1234");
		memberVO.setUser_name("조액철이");
		memberVO.setemail("Kimilguk@naver.com");
		memberVO.setEnabled(true);
		memberVO.setLevels("ROLE_ADMIN");
		memberService.updateMember(memberVO);	
		System.out.println("=================회원리스트 입니다.==========");
		List<MemberVO> list = memberService.selectMember();
		System.out.println(list);
	}
	
	@Test
	public void testDeleteMember() throws Exception {	
		List<MemberVO> list = memberService.selectMember();
		memberService.deleteMember("user5002");
		System.out.println("=================회원리스트 입니다.==========");
		System.out.println(list);
		
	}

	
	@Test
	public void testSelectMember() throws Exception {
		System.out.println("=================회원리스트 입니다.==========");
		List<MemberVO> list = memberService.selectMember();
		System.out.println(list);
		System.out.println("");
		for(MemberVO vo:list) {
			System.out.println("사용자아이디 : " + vo.getUser_id());
			System.out.println("사용자이메일: " + vo.getemail());
		}
		
	}

}
