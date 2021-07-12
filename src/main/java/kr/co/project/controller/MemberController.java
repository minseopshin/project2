package kr.co.project.controller;

import java.io.PrintWriter;
import java.net.URLEncoder;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.project.dao.MemberDao;
import kr.co.project.dto.MemberDto;


@Controller
public class MemberController {
	
   @Autowired
   private SqlSession sqlSession;
	
   @RequestMapping("login/login")
   public String login(HttpServletRequest request,Model model)
   {
	   model.addAttribute("chk",request.getParameter("chk"));
	   return "/login/login";
   }
   
   @RequestMapping("login/login_ok")
   public String login_ok(MemberDto mdto,HttpSession session)
   {
	   MemberDao mdao=sqlSession.getMapper(MemberDao.class);
	   MemberDto mdto2=mdao.login_ok(mdto);
	   
	   if(mdto2 == null) // 아이디,비번이 잘못
	   {
		   return "redirect:/login/login?chk=1";
	   }
	   else // 맞을 때 세션변수를 할당 (아이디, 이름)
	   {
		   session.setAttribute("userid", mdto2.getUserid());
		   session.setAttribute("name", mdto2.getName());
		   //session.setAttribute("email", mdto2.getEmail());
		   //session.setAttribute("phone", mdto2.getAddress());
		   
		   
		   return "redirect:/main/main";
	   }
   }
   
   @RequestMapping("login/logout")
   public String logout(HttpSession session)
   {
	   session.invalidate();
	   return "redirect:/";
   }
   
   
   @RequestMapping("/member/member")
   public String member()
   {
	   return "/member/member";
   }



  
   @RequestMapping("/userid_check")
   public void userid_check(HttpServletRequest request,PrintWriter out)
   {
	   String userid=request.getParameter("userid");
	   MemberDao mdao=sqlSession.getMapper(MemberDao.class);
	   Integer chk=mdao.userid_check(userid);
	   out.print(chk);

   } 
   
	@RequestMapping("member/member_ok")
	public String member_ok(MemberDto mdto)
	{
		// 폼에 입력된 값을 테이블에 저장
		MemberDao mdao=sqlSession.getMapper(MemberDao.class);
		mdao.member_ok(mdto);

		return "redirect:/main/main";
	}
   
	//★아이디찾기
	   @RequestMapping("/member/findId")
	   public String findId()
	   {
		   return "/member/findId";
	   }
	
	   @RequestMapping("/userid_ok")
	   public String userid_ok(MemberDto mdto,Model model)
	   {
		   //   DB 에서   이메일과 전화번호로 아이디를 검색해서 결과를 가져온다..
		   MemberDao mdao=sqlSession.getMapper(MemberDao.class);
		   //System.out.println(mdto.getEmail()+" "+mdto.getPhone());
		   String userid=mdao.userid_ok(mdto);
		   model.addAttribute("userid",userid);
		   return "/member/view_userid";
	   }
	   
	   
	 //★비밀번호찾기
	   @RequestMapping("/member/findpwd")
	   public String findpwd()
	   {
		   return "/member/findpwd";
	   }
	
	   @RequestMapping("/pwd_ok")
	   public String pwd_ok(MemberDto mdto,Model model)
	   {
		   //   DB 에서   이메일과 전화번호로 아이디를 검색해서 결과를 가져온다..
		   MemberDao mdao=sqlSession.getMapper(MemberDao.class);
		  // System.out.println(mdto.getEmail()+" "+mdto.getPhone());
		   String pwd=mdao.pwd_ok(mdto);
		   model.addAttribute("pwd",pwd);
		   return "/member/view_pwd";
	   }
	   
	   
	   // ★마이페이지
	   @RequestMapping("/mypage/mypage")
	   public String mypage(Model model,HttpSession session)
	   {	String userid=(String) session.getAttribute("userid");	//아이디값을 불러옴 -> dto 값 다 부르기 위함
		   MemberDao mdao=sqlSession.getMapper(MemberDao.class);
		   MemberDto mdto=mdao.mypage(userid);
		   model.addAttribute("mdto",mdto);
		   
		   
		   return "/mypage/mypage";
	   }
	   
	 
	   
	   
		@RequestMapping("/mypage_ok")
		public String mypage_ok(MemberDto mdto,HttpSession session)
		{
			// 폼에 입력된 값을 테이블에 저장
			MemberDao mdao=sqlSession.getMapper(MemberDao.class);
			mdto.setUserid(session.getAttribute("userid").toString());
			mdao.mypage_ok(mdto);
      		return "redirect:/main";
		}
		
		
		// ★비밀번호 변경 -비밀번호확인
		 
		   @RequestMapping("/mypage/changepwd")
		   public String changepwd(Model model,HttpSession session)
		   {
			   String userid=(String) session.getAttribute("userid");	//아이디값을 불러오기 위함
			   MemberDao mdao=sqlSession.getMapper(MemberDao.class);
			   MemberDto mdto=mdao.changepwd(userid);
			   model.addAttribute("mdto",mdto);
			
			
			   return "/mypage/changepwd";
		   }
		   
		 
		   
		   
			@RequestMapping("/changepwd_ok")
			public String changepwd_ok(MemberDto mdto,HttpSession session)
			{
				// 폼에 입력된 값을 테이블에 저장
				MemberDao mdao=sqlSession.getMapper(MemberDao.class);
				mdto.setUserid(session.getAttribute("userid").toString());
				mdao.changepwd_ok(mdto);
	      		return "redirect:/main";
			}
			
			
			// ★비밀번호 변경 - 업데이트
			 
			   @RequestMapping("/mypage/changepwd2")
			   public String changepwd2(Model model,HttpSession session)
			   {
				   String userid=(String) session.getAttribute("userid");	//아이디값을 불러오기 위함
				   MemberDao mdao=sqlSession.getMapper(MemberDao.class);
				   MemberDto mdto=mdao.changepwd2(userid);
				   model.addAttribute("mdto",mdto);
				
				
				   return "/mypage/changepwd2";
			   }
			   
			 
			   
			   
				@RequestMapping("/changepwd2_ok")
				public String changepwd2_ok(MemberDto mdto,HttpSession session)
				{
					// 폼에 입력된 값을 테이블에 저장
					MemberDao mdao=sqlSession.getMapper(MemberDao.class);
					mdto.setUserid(session.getAttribute("userid").toString());
					mdao.changepwd2_ok(mdto);
		      		return "redirect:/main";
				}
				
			// ★회원탈퇴
				
				   @RequestMapping("member/member_out")
				   public String member_out()
				   {
				      return "redirect:/member/main";
				   } 
				   
			

				
				   
				   
				   
}







