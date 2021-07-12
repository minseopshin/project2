package kr.co.project.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import kr.co.project.dao.AnalysisDao;
import kr.co.project.dao.BoardDao;
import kr.co.project.dao.CouponDao;
import kr.co.project.dao.EventDao;
import kr.co.project.dao.ProductDao;
import kr.co.project.dao.ReviewDao;
import kr.co.project.dao.User_CouponDao;
import kr.co.project.dto.BoardDto;
import kr.co.project.dto.CouponDto;
import kr.co.project.dto.EventDto;
import kr.co.project.dto.ProductDto;
import kr.co.project.dto.ReviewDto;
import kr.co.project.dto.User_CouponDto;

@Controller
public class EventController {
	
	@Autowired
	private SqlSession sqlSession;
	
	
	@RequestMapping("/event/event")
	public String event()
	{
		return "/event/event";
	}
	
	@RequestMapping("/event/coupon")
	public String coupon(Model model,HttpSession session)
	{
		CouponDao cdao=sqlSession.getMapper(CouponDao.class);
		ArrayList<CouponDto> list=cdao.coupon();
		model.addAttribute("list",list);
		
		String userid=(String) session.getAttribute("userid");
		User_CouponDao udao=sqlSession.getMapper(User_CouponDao.class);
		int birth_chk=udao.birth_chk(userid);						
		model.addAttribute("birth_chk",birth_chk);		
		
		return "/event/coupon";
	}
	
	@RequestMapping("/event/check")
	public void check(HttpSession session, HttpServletRequest request, PrintWriter out, Model model)
	{
		String id=request.getParameter("id");
		String userid=(String) session.getAttribute("userid");
//		String userid = "admin"; // member 테이블 userid로 연동해야 함
 
		User_CouponDao udao=sqlSession.getMapper(User_CouponDao.class);
		String couponid=udao.get_couponid(id);
		CouponDao cdao=sqlSession.getMapper(CouponDao.class);
		Integer chk=cdao.check(couponid, userid);				
		
		int birth_chk=0;
		model.addAttribute("birth_chk",birth_chk);
		
		SimpleDateFormat sdformat = new SimpleDateFormat("yyyy-MM-dd");
		
		Date date=new Date();

		String birth=udao.get_birth(userid);
		String pubDate=null;
		String expDate=null;
				
		Calendar cal=Calendar.getInstance();
		pubDate=sdformat.format(cal.getTime());
		cal.setTime(date);
		
		cal.add(Calendar.DATE, 7);
		expDate=sdformat.format(cal.getTime());
		cal.setTime(date);		
		
		if (chk.equals(0))	{
			if(couponid.equals("HAPPYBIRTHDAYTOU")) 
			{
				birth_chk=udao.birth_chk(userid);									
				model.addAttribute("birth_chk",birth_chk);
				if(birth_chk==1)	{										
					expDate=udao.birth_exp(userid);
					udao.check(userid, couponid, pubDate, expDate);					 			
				}
				else	
				{
					out.print(chk);					
				}
			}
			else	
			{
				udao.check(userid, couponid, pubDate, expDate);
			}
		}
		else 
		{
			out.print(chk);			
		}		
	}
	
	// 첫구매 이벤트 리스트 페이지
	@RequestMapping("/event/firstbuy")
	public String firstbuy(Model model, HttpServletRequest request)
	{
		ProductDao bdao=sqlSession.getMapper(ProductDao.class);
		
		ArrayList<ProductDto> rlist=bdao.rlist();
		ArrayList<ProductDto> hlist=bdao.hlist();
		
		model.addAttribute("rlist", rlist);
		model.addAttribute("hlist", hlist);
		
		return "/event/firstbuy";
	}
	
	// 이벤트 후기
	@RequestMapping("/event/event_review")
	public String event_review(Model model, HttpServletRequest request)
	{
		EventDao edao=sqlSession.getMapper(EventDao.class);
		
		int index;
		int page;
		
		if(request.getParameter("page")==null)
		{
			page=1;
			index=0;
		}
		else
		{
			page=Integer.parseInt(request.getParameter("page"));
			index=(page-1)*10;
		}
		
		int pstart=page/10;
		if(page%10==0)
			pstart=pstart-1;
		
		pstart=(pstart*10)+1;
		int pend=pstart+9;
		
		String cla, sword;
		if(request.getParameter("cla")==null)
			cla="title";
		else
			cla=request.getParameter("cla");
		if(request.getParameter("sword")==null)
			sword="";
		else
			sword=request.getParameter("sword");
		
		ArrayList<EventDto> list=edao.list(cla, sword, index);
		model.addAttribute("list",list);
		model.addAttribute("pstart",pstart);
		
		model.addAttribute("page",page);
		Integer pagecnt=edao.get_pagecnt();
		model.addAttribute("pagecnt",pagecnt);
		
		if(pend > pagecnt)
			pend=pagecnt;
		model.addAttribute("pend",pend);		
		
		return "/event/event_review";
	}
	
	// 이벤트 후기 조회수
	@RequestMapping("/event/readnum")
	public String readnum(HttpServletRequest request)
	{
		String id=request.getParameter("id");
		EventDao edao=sqlSession.getMapper(EventDao.class);
		edao.readnum(id);
		
		return "redirect:/event/event_review_content?id="+id;
	}
	
	// 이벤트 후기 글쓰기
	@RequestMapping("/event/event_review_write")
	public String event_review_write(HttpSession session,Model model)
	{
		String userid=(String) session.getAttribute("userid");
		model.addAttribute("userid",userid);
		return "/event/event_review_write";
	}
	
	@RequestMapping("/event/event_review_write_ok")
	public String event_review_write_ok(HttpServletRequest request,HttpSession session) throws IOException
	{
		
		String userid=(String) session.getAttribute("userid");
		
		String path=request.getRealPath("resources/event");
		
		int max=1024*1024*10;
		MultipartRequest multi=new MultipartRequest(request,path,max,"utf-8",new DefaultFileRenamePolicy());
				
		String name=multi.getParameter("name");
		String title=multi.getParameter("title");
		String content=multi.getParameter("content");
		String fname=multi.getFilesystemName("fname");
		
		EventDto edto=new EventDto();
		edto.setUserid(userid);
		edto.setName(name);		
		edto.setTitle(title);
		edto.setContent(content);
		edto.setFname(fname);
		
		EventDao edao=sqlSession.getMapper(EventDao.class);
		edao.event_review_write_ok(edto);
		
		return "redirect:/event/event_review";
	}
	
	// 이벤트 후기 내용
	@RequestMapping("/event/event_review_content")
	public String event_review_content(HttpServletRequest request, Model model)
	{
		String id=request.getParameter("id");
		EventDao edao=sqlSession.getMapper(EventDao.class);
		EventDto edto=edao.event_review_content(id);
		model.addAttribute("edto",edto);
		model.addAttribute("chk",request.getParameter("chk"));
		
		System.out.println(id);
		
		return "/event/event_review_content";
	}
	
	// 이벤트 후기 수정
	@RequestMapping("/event/event_review_update")
	public String event_review_update(Model model, HttpServletRequest request)
	{
		String id=request.getParameter("id");
		
		EventDao edao=sqlSession.getMapper(EventDao.class);
		EventDto edto=edao.event_review_update(id);
		
		model.addAttribute("edto",edto);
		
		return "event/event_review_update";
	}
	
	@RequestMapping("/event/event_review_update_ok")
	public String event_review_update_ok(EventDto edto, HttpServletRequest request) throws IOException
	{
		String path=request.getRealPath("resources/event");
		
		int max=1024*1024*10;
		MultipartRequest multi=new MultipartRequest(request,path,max,"utf-8",new DefaultFileRenamePolicy());
		
		Integer id=Integer.parseInt(multi.getParameter("id"));
		String userid=multi.getParameter("userid");
		String title=multi.getParameter("title");		
		String content=multi.getParameter("content");		
		String fname=multi.getFilesystemName("fname");
		

		edto.setId(id);
		edto.setUserid(userid);
		edto.setTitle(title);		
		edto.setContent(content);
		edto.setFname(fname);
				
		EventDao edao=sqlSession.getMapper(EventDao.class);
		edao.event_review_update_ok(edto);
		
		return "redirect:/event/event_review_content?id="+id;
	}
	
	// 이벤트 후기 삭제
	@RequestMapping("/event/erdelete")
	public String event_review_delete(HttpServletRequest request)
	{
		String id=request.getParameter("id");
		EventDao edao=sqlSession.getMapper(EventDao.class);
		edao.erdelete(id);
		
		return "redirect:/event/event_review?id="+id;
	}
		
}
