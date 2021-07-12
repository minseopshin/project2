package kr.co.project.controller;


import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.project.dao.BoardDao;
import kr.co.project.dto.BoardDto;
import kr.co.project.dto.BoardDto2;

@Controller
public class BoardController {

	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping("board/write") // 글쓰기폼
	public String write()
	{
		return "/write";
	}
	
	@RequestMapping("/write_ok")
	public String write_ok(BoardDto bdto,HttpSession session)
	{
		BoardDao bdao=sqlSession.getMapper(BoardDao.class);
		bdto.setName(session.getAttribute("name").toString()); //이름 dto에 없는거 추가해서!! set으로! 
		bdao.write(bdto);
		return "redirect:/board/list";
	}
	
	/*@RequestMapping("/list")
	public String list(Model model,HttpServletRequest request)
	{
		BoardDao bdao=sqlSession.getMapper(BoardDao.class);
		ArrayList<BoardDto> list=bdao.list();
		model.addAttribute("list",list);
		model.addAttribute("chk",request.getParameter("chk"));
		return "/list";
	}*/
	/*이상하지만 그래도 에러는 없음 
	 @RequestMapping("/list")
	   public String list(Model model,HttpServletRequest request)
	   {
		   BoardDao bdao=sqlSession.getMapper(BoardDao.class);
			ArrayList<BoardDto> list=bdao.list();
			model.addAttribute("list",list);
			//model.addAttribute("chk",request.getParameter("chk"));
		   // 원하는 페이지 값의 index를 계산하여
		   int index; // 1페이지=>0, 2페이지는 10
		   int page;
		   
		   // 사용자가 페이지 값을 보내지 않는 경우=> 게시판에 처음 접근 
		   if(request.getParameter("page")==null)
		   {
			   page=1;
			   index=0;
		   }
		   else // 사용자가 페이지 값을 보내는 경우
		   {
			   page=Integer.parseInt(request.getParameter("page"));
			   index=(page-1)*10;
		   }
		   
		   // 게시판 하단에 다른페이지 이동을 위한 링크
		   int pstart=page/10;
		   if(page%10 == 0) // 10 의 배수일 경우
		     pstart=pstart-1;
		   
		   pstart=(pstart*10)+1;
		   int pend=pstart+9;
		   // 검색에 필요한 필드값과 검색어를 가져와서 검색을 한다.
		   
		   
	
		   model.addAttribute("pend",pend);
		   return "/list";
	   }
	   */
	 
	   @RequestMapping("board/list")
	   public String list(Model model,HttpServletRequest request)
	   {
		   BoardDao bdao=sqlSession.getMapper(BoardDao.class);
		   
		   // 원하는 페이지 값의 index를 계산하여
		   int index; // 1페이지=>0, 2페이지는 10
		   int page;
		   
		   // 사용자가 페이지 값을 보내지 않는 경우=> 게시판에 처음 접근 
		   if(request.getParameter("page")==null)
		   {
			   page=1;
			   index=0;
		   }
		   else // 사용자가 페이지 값을 보내는 경우
		   {
			   page=Integer.parseInt(request.getParameter("page"));
			   index=(page-1)*10;
		   }
		   
		   // 게시판 하단에 다른페이지 이동을 위한 링크
		   int pstart=page/10;
		   if(page%10 == 0) // 10 의 배수일 경우
		     pstart=pstart-1;
		   
		   pstart=(pstart*10)+1;
		   int pend=pstart+9;
		   // 검색에 필요한 필드값과 검색어를 가져와서 검색을 한다.
		   
		   String cla,sword;
		   if(request.getParameter("cla")==null)
			   cla="title";
		   else
		       cla=request.getParameter("cla");
		   
		   if(request.getParameter("sword")==null)
			   sword="";
		   else
		       sword=request.getParameter("sword");
		   
		
		   ArrayList<BoardDto> list=bdao.list(cla,sword,index);
		   model.addAttribute("list",list);
		   model.addAttribute("pstart",pstart);
		   
		   model.addAttribute("page",page);
		   Integer pagecnt=bdao.get_pagecnt(); // cla,sword적용
		   model.addAttribute("pagecnt",pagecnt);
		   // 출력될 pend값이 총페이지보다 클경우는 pend에 총페이지값을 전달
		   if(pend > pagecnt)
			   pend=pagecnt;
		   model.addAttribute("pend",pend);
		   return "board/list";
	   }
	   //★인포메이션 - 이용안내
		@RequestMapping("/cs/information") 
		public String information()
		{
			return "/cs/information";
		}
	   
	
		//★고객센터 - 멤버쉽혜택 
		

			@RequestMapping("cs/membershipinfo") 
			public String membershipinfo()
			{
				return "cs/membershipinfo";
			}
		   
		
		
		
		@RequestMapping("/readnum")
	public String readnum(HttpServletRequest request)
	{
		String id=request.getParameter("id");
		BoardDao bdao=sqlSession.getMapper(BoardDao.class);
		bdao.readnum(id);
		
		return "redirect:/board/content?id="+id;
	}
	
	
	
	
	@RequestMapping("/board/content")
	public String content(Model model, HttpServletRequest request)
	{
		String id=request.getParameter("id");
		BoardDao bdao=sqlSession.getMapper(BoardDao.class);
		BoardDto bdto=bdao.content(id);
		model.addAttribute("bdto",bdto);
		model.addAttribute("chk",request.getParameter("chk"));
		return "/board/content";
	}
	
	@RequestMapping("/board/update")
	public String update(Model model,HttpServletRequest request)
	{
		String id=request.getParameter("id");
		BoardDao bdao=sqlSession.getMapper(BoardDao.class);
		BoardDto bdto=bdao.update(id);
		model.addAttribute("bdto",bdto);
		model.addAttribute("chk",request.getParameter("chk"));
		return "/board/update";
	}
	
	@RequestMapping("/update_ok")
	public String udpate_ok(BoardDto bdto)
	{
		BoardDao bdao=sqlSession.getMapper(BoardDao.class);
		bdao.update_ok(bdto);
		  return "redirect:/board/content?id="+bdto.getId();
		  
		/*String pwd=bdao.get_pwd(bdto.getId());
		if(bdto.getPwd().equals(pwd))
		{
		  bdao.update_ok(bdto);
		  return "redirect:/content?id="+bdto.getId();
		}
		else
		  return "redirect:/update?chk=1&id="+bdto.getId();*/
			
		
	}
	
	@RequestMapping("/delete")
	public String delete(HttpServletRequest request)
	{
		int id=Integer.parseInt(request.getParameter("id"));
		//String pwd=request.getParameter("pwd");
		BoardDao bdao=sqlSession.getMapper(BoardDao.class);
		 bdao.delete(id);
		   return "redirect:/board/list";
		//String dbpwd=bdao.get_pwd(id);
		/*if(pwd.equals(dbpwd))
		{
		   bdao.delete(id);
		   return "redirect:/list";
		}
		else
		{
		   return "redirect:/content?chk=1&id="+id;*/
		}
	
	
	/*@RequestMapping("/pwd_check")
	public String pwd_check(BoardDto bdto)
	{
		BoardDao bdao=sqlSession.getMapper(BoardDao.class);
		Integer num=bdao.pwd_check(bdto);
		if(num==0)
		{
			return "redirect:/list?chk=1";
		}
		else
		{
			return "redirect:/readnum?id="+bdto.getId();
		}
	}*/




		//★★ 1대1문의 게시판 - listanswer

@RequestMapping("/board2/listanswer")
public String listanswer(Model model,HttpServletRequest request)
{
	   BoardDao bdao2=sqlSession.getMapper(BoardDao.class);
	   
	   // 원하는 페이지 값의 index를 계산하여
	   int index; // 1페이지=>0, 2페이지는 10
	   int page;
	   
	   // 사용자가 페이지 값을 보내지 않는 경우=> 게시판에 처음 접근 
	   if(request.getParameter("page")==null)
	   {
		   page=1;
		   index=0;
	   }
	   else // 사용자가 페이지 값을 보내는 경우
	   {
		   page=Integer.parseInt(request.getParameter("page"));
		   index=(page-1)*10;
	   }
	   
	   // 게시판 하단에 다른페이지 이동을 위한 링크
	   int pstart=page/10;
	   if(page%10 == 0) // 10 의 배수일 경우
	     pstart=pstart-1;
	   
	   pstart=(pstart*10)+1;
	   int pend=pstart+9;
	   // 검색에 필요한 필드값과 검색어를 가져와서 검색을 한다.
	   
	   String cla,sword;
	   if(request.getParameter("cla")==null)
		   cla="title";
	   else
	       cla=request.getParameter("cla");
	   
	   if(request.getParameter("sword")==null)
		   sword="";
	   else
	       sword=request.getParameter("sword");
	   
	
	   ArrayList<BoardDto2> listanswer=bdao2.listanswer(cla,sword,index);
	   model.addAttribute("listanswer",listanswer);
	   model.addAttribute("pstart",pstart);
	   
	   model.addAttribute("page",page);
	   Integer pagecnt=bdao2.get_pagecnt2(); // cla,sword적용
	   model.addAttribute("pagecnt",pagecnt);
	   // 출력될 pend값이 총페이지보다 클경우는 pend에 총페이지값을 전달
	   if(pend > pagecnt)
		   pend=pagecnt;
	   model.addAttribute("pend",pend);
	   return "/board2/listanswer";
}


	@RequestMapping("/board2/writeanswer") // 글쓰기폼
	public String writeanswer()
	{
		return "/board2/writeanswer";
	}
	
	@RequestMapping("/writeanswer_ok")
	public String writeanswer_ok(BoardDto2 bdto2,HttpSession session)
	{
		BoardDao bdao2=sqlSession.getMapper(BoardDao.class);
		bdto2.setName(session.getAttribute("name").toString()); //이름 dto에 없는거 추가해서!! set으로! 
		bdao2.writeanswer(bdto2);
		return "redirect:/board2/listanswer";
	}


		@RequestMapping("/readnumanswer")
	public String readnumanswer(HttpServletRequest request)
	{
		String id=request.getParameter("id");
		BoardDao bdao2=sqlSession.getMapper(BoardDao.class);
		bdao2.readnumanswer(id);
		
		return "redirect:/board2/contentanswer?id="+id;
	}
	
	
	
	
	@RequestMapping("/board2/contentanswer")
	public String contentanswer(Model model, HttpServletRequest request)
	{
		String id=request.getParameter("id");
		BoardDao bdao2=sqlSession.getMapper(BoardDao.class);
		BoardDto2 bdto2=bdao2.contentanswer(id);
		model.addAttribute("bdto2",bdto2);
		model.addAttribute("chk",request.getParameter("chk"));
		return "/board2/contentanswer";
	}


// ★ 1대1문의 글 수정
	
	@RequestMapping("/board2/updateanswer")
	public String updateanswer(Model model,HttpServletRequest request)
	{
		String id=request.getParameter("id");
		BoardDao bdao2=sqlSession.getMapper(BoardDao.class);
		BoardDto2 bdto2=bdao2.updateanswer(id);
		model.addAttribute("bdto2",bdto2);
		model.addAttribute("chk",request.getParameter("chk"));
		return "/board2/updateanswer";
	}
	
	@RequestMapping("/updateanswer_ok")
	public String udpateanswer_ok(BoardDto2 bdto2)
	{
		BoardDao bdao2=sqlSession.getMapper(BoardDao.class);
		bdao2.updateanswer_ok(bdto2);
		  return "redirect:/board2/contentanswer?id="+bdto2.getId();
		  
		/*String pwd=bdao.get_pwd(bdto.getId());
		if(bdto.getPwd().equals(pwd))
		{
		  bdao.update_ok(bdto);
		  return "redirect:/content?id="+bdto.getId();
		}
		else
		  return "redirect:/update?chk=1&id="+bdto.getId();*/
			
		
	}
	

	@RequestMapping("/deleteanswer")
	public String deleteanswer(HttpServletRequest request)
	{
		int id=Integer.parseInt(request.getParameter("id"));
		//String pwd=request.getParameter("pwd");
		BoardDao bdao2=sqlSession.getMapper(BoardDao.class);
		 bdao2.deleteanswer(id);
		   return "redirect:/board2/listanswer";
		//String dbpwd=bdao.get_pwd(id);
		/*if(pwd.equals(dbpwd))
		{
		   bdao.delete(id);
		   return "redirect:/list";
		}
		else
		{
		   return "redirect:/content?chk=1&id="+id;*/
		}
	
	
	



}


