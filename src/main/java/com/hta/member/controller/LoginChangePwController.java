package com.hta.member.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hta.exception.IdPasswordNotMachingException;
import com.hta.member.repository.LoginChangePwCommand;
import com.hta.member.repository.LoginCommand;
import com.hta.member.repository.Member;
import com.hta.member.service.MemberService;

@Controller
public class LoginChangePwController {
	private MemberService memberService;
	
	public void setMemberService(MemberService memberService) {
		this.memberService = memberService;
	}
	@RequestMapping("/loginchange.member")//단순 비번 변경 페이지 페이지 이동
	public String loginChagePageMove(){
		return "loginchage";
	}
	@RequestMapping(value="/loginchange.member", params={"command2=submit2"})
	public String loginChagePW(LoginChangePwCommand loginchangepwcommand, HttpSession session, HttpServletResponse response) throws IOException{
	try{
		response.setContentType("text/html;charset=utf-8");       
		
		
		System.out.println("1 session값:"+session.getAttribute("name"));
		String email= (String) session.getAttribute("email");
		System.out.println("2 session값:"+email);
		memberService.pwChage(email, loginchangepwcommand.getPasswordcomf(), loginchangepwcommand.getNewpassword(), loginchangepwcommand.getNewpasswordcomf());
		
	}
	catch(IdPasswordNotMachingException err){
		
		PrintWriter out = response.getWriter();     
		out.println("<script>alert('비밀번호를 확인해주세요!');</script>");
		out.flush();
		return "loginchage";
	}
	System.out.print("1 으아!!!여기까지는 오냐?>?");
	return "loginChangeSuc";
  }
}
