package kr.co.project.controller;



import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import kr.co.project.dao.BasketDao;
import kr.co.project.dao.HeartDao;
import kr.co.project.dao.MainDao;
import kr.co.project.dao.ProductDao;
import kr.co.project.dao.QnaDao;
import kr.co.project.dao.ReviewDao;
import kr.co.project.dto.BasketDto;
import kr.co.project.dto.DetailDto;
import kr.co.project.dto.HeartDto;
import kr.co.project.dto.ProductDto;
import kr.co.project.dto.QnaDto;
import kr.co.project.dto.ReviewDto;

@Controller
public class ProductController {

	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping("/product/plist")
	public String plist(Model model,HttpServletRequest request)
	{
		ProductDao bdao=sqlSession.getMapper(ProductDao.class);
	
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
		   
		   Integer pagecnt=bdao.get_pagecnt();
		   
		   // 출력될 pend값이 총페이지보다 클경우는 pend에 총페이지값을 전달
		   if(pend > pagecnt)
			   pend=pagecnt;
		   model.addAttribute("pstart",pstart);
		   model.addAttribute("page",page);
		   model.addAttribute("pagecnt",pagecnt);
		   model.addAttribute("pend",pend);    
		
		ArrayList<ProductDto> plist=bdao.plist(index);
		ArrayList<ProductDto> leftmenu=bdao.leftmenu();
		
		model.addAttribute("plist",plist);
		model.addAttribute("leftmenu",leftmenu);
		
		String category1=request.getParameter("category1");
		if(category1==null)
		{
			category1="닭가슴살";
		}
		else
		{
			category1=request.getParameter("category1");
		}
		
//		System.out.print(category1); 값전달 확인용
		ArrayList<ProductDto> topmenu=bdao.topmenu(category1);
		model.addAttribute("topmenu",topmenu);
		
		return "/product/plist";
	}
	
	
	@RequestMapping("/product/plist2") // 상단 카테고리2 메뉴 클릭후 list
	public String plist2(Model model,HttpServletRequest request)
	{
		String category2=request.getParameter("category2");
		
		ProductDao bdao=sqlSession.getMapper(ProductDao.class);
		
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
		   
		   Integer pagecnt=bdao.get_pagecnt2(category2);
		   
		   // 출력될 pend값이 총페이지보다 클경우는 pend에 총페이지값을 전달
		   if(pend > pagecnt)
			   pend=pagecnt;
		   
		   System.out.println(pend);
		   System.out.println(pagecnt);
		   model.addAttribute("pstart",pstart);
		   model.addAttribute("page",page);
		   model.addAttribute("pagecnt",pagecnt);
		   model.addAttribute("pend",pend);    
		
		
		ArrayList<ProductDto> plist2=bdao.plist2(category2,index);
		ArrayList<ProductDto> leftmenu=bdao.leftmenu();
		
		model.addAttribute("plist2",plist2);
		model.addAttribute("leftmenu",leftmenu);
		
		String category1=request.getParameter("category1");
		if(category1==null)
		{
			category1="닭가슴살";
		}
		else
		{
			category1=request.getParameter("category1");
		}
		
//		System.out.print(category1); 값전달 확인용
		ArrayList<ProductDto> topmenu=bdao.topmenu(category1);
		model.addAttribute("topmenu",topmenu);
		model.addAttribute("category1",category1);
		model.addAttribute("category2",category2);
		
		return "/product/plist2";
	}
	
	@RequestMapping("/product/plist3") // 좌측 카테고리1 메뉴 클릭후 list
	public String plist3(Model model,HttpServletRequest request)
	{
		String category1=request.getParameter("category1");
		
		ProductDao bdao=sqlSession.getMapper(ProductDao.class);
		

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
		   
		   Integer pagecnt=bdao.get_pagecnt3(category1);
		   
		   // 출력될 pend값이 총페이지보다 클경우는 pend에 총페이지값을 전달
		   if(pend > pagecnt)
			   pend=pagecnt;
		   
		   System.out.println(pend);
		   System.out.println(pagecnt);
		   model.addAttribute("pstart",pstart);
		   model.addAttribute("page",page);
		   model.addAttribute("pagecnt",pagecnt);
		   model.addAttribute("pend",pend);    
		
		
		ArrayList<ProductDto> plist3=bdao.plist3(category1,index);
		ArrayList<ProductDto> leftmenu=bdao.leftmenu();
		
		model.addAttribute("plist3",plist3);
		model.addAttribute("leftmenu",leftmenu);
		
//		System.out.print(category1); 값전달 확인용
		ArrayList<ProductDto> topmenu=bdao.topmenu(category1);
		model.addAttribute("topmenu",topmenu);
		model.addAttribute("category1",category1);
		
		return "/product/plist3";
	}
	
    @RequestMapping("/product/content")
	public String pcontent(HttpServletRequest request,Model model,HttpSession session) 
	{
    	String userid=(String) session.getAttribute("userid");	
		String fb=request.getParameter("fb");
		String aa= request.getParameter("aa");
		if (aa==null)	{
			aa = "a"; 
		}
		String bb= request.getParameter("bb");
		if (bb==null) {
			bb="b";
		}
		String chk=request.getParameter("chk");
		String id=request.getParameter("id");
		ProductDao bdao=sqlSession.getMapper(ProductDao.class);
		ArrayList<DetailDto> ddto=bdao.detail_list(id);
		model.addAttribute("ddto",ddto);
		ProductDto bdto=bdao.content(id);
		model.addAttribute("bdto",bdto);
		ReviewDao rdao=sqlSession.getMapper(ReviewDao.class);
		HeartDao hdao=sqlSession.getMapper(HeartDao.class);
		String prd_id=id;
		int hk=hdao.heartyn(prd_id, userid);
		int heartcnt=hdao.heartcnt(prd_id);
		
		// 리뷰 페이징 처리
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
		   
		   Integer pagecnt=rdao.get_pagecnt();
		   
		   // 출력될 pend값이 총페이지보다 클경우는 pend에 총페이지값을 전달
		   if(pend > pagecnt)
			   pend=pagecnt;
		   model.addAttribute("pstart",pstart);
		   model.addAttribute("page",page);
		   model.addAttribute("pagecnt",pagecnt);
		   model.addAttribute("pend",pend);    
		   
		   ArrayList<ReviewDto> rdto1=rdao.review_best(bdto.getPrd_name(),index);
		   ArrayList<ReviewDto> rdto2=rdao.review_date(bdto.getPrd_name(),index);
		   ArrayList<ReviewDto> rdto3=rdao.review_rating(bdto.getPrd_name(),index);
			
	
		   String review_count=rdao.review_count(bdto.getPrd_name());	      	
		  
		String qna_count=rdao.qna_count(bdto.getPrd_name());
		QnaDao qdao=sqlSession.getMapper(QnaDao.class);
		
		
		// 리뷰 페이징 처리
	// 원하는 페이지 값의 index를 계산하여
	   int index1; // 1페이지=>0, 2페이지는 10
	   int page1;
	   
	   // 사용자가 페이지 값을 보내지 않는 경우=> 게시판에 처음 접근 
	   if(request.getParameter("page1")==null)
	   {
		   page1=1;
		   index1=0;
	   }
	   else // 사용자가 페이지 값을 보내는 경우
	   {
		   page1=Integer.parseInt(request.getParameter("page1"));
		   index1=(page1-1)*10;
	   }
	   
	   // 게시판 하단에 다른페이지 이동을 위한 링크
	   int pstart1=page1/10;
	   if(page1%10 == 0) // 10 의 배수일 경우
	     pstart1=pstart1-1;
	   
	   pstart1=(pstart1*10)+1;
	   int pend1=pstart1+9;
	   
	   Integer pagecnt1=qdao.get_pagecnt_qna();
	   
	   // 출력될 pend값이 총페이지보다 클경우는 pend에 총페이지값을 전달
	   if(pend1 > pagecnt1)
		   pend1=pagecnt1;
	   model.addAttribute("pstart1",pstart1);
	   model.addAttribute("page1",page1);
	   model.addAttribute("pagecnt1",pagecnt1);
	   model.addAttribute("pend1",pend1);    
	  
	   ArrayList<QnaDto> qlist=qdao.qlist(bdto.getPrd_name(),index1);
	 

		
		
		
		
		model.addAttribute("rdto1",rdto1);
		model.addAttribute("rdto2",rdto2);  
		model.addAttribute("rdto3",rdto3);   
		model.addAttribute("review_count",review_count);
		model.addAttribute("qna_count",qna_count);
		model.addAttribute("chk",chk);
		model.addAttribute("id",id);
		model.addAttribute("aa",aa);
		model.addAttribute("qlist",qlist);
		model.addAttribute("fb",fb);
		model.addAttribute("userid",userid);
		model.addAttribute("hk",hk);
		model.addAttribute("heartcnt",heartcnt);
		
		return "/product/content";
	}
	 

	@RequestMapping("/product/readnum")
	public String readnum(HttpServletRequest request) throws Exception
	{
		
		String fb=request.getParameter("fb");
		String id=request.getParameter("id");
		String chk=request.getParameter("chk");
		ProductDao bdao=sqlSession.getMapper(ProductDao.class);
		bdao.readnum(id);
		String a="redirect:/product/content?id="+id+"&chk="+chk;
		
		if(fb.equals("1")) // 첫구매 이벤트 가격 100원
		{
			a="redirect:/product/content?id="+id+"&chk="+chk+"&fb=1";
		}
		
		else if(fb.equals("2")) // 인기상품 경로
		{
			a="redirect:/product/content?id="+id+"&chk="+chk+"&fb=2";
		} 
		else
		{
			a="redirect:/product/content?id="+id+"&chk="+chk;
		}
		
		return a;
		
	}
	
	@RequestMapping("/product/heart_on")
	public String heart_on(HttpServletRequest request,HttpSession session,Model model,HeartDto hdto,PrintWriter out)
	{
		String userid=(String) session.getAttribute("userid");	
		String id=request.getParameter("id");
		int prd_id=Integer.parseInt(id);
		String chk=request.getParameter("chk");
		HeartDao hdao=sqlSession.getMapper(HeartDao.class);
		hdao.heart_on(prd_id,userid);
		hdao.heartplus(prd_id);
		
		return "redirect:/product/content?id="+id+"&chk="+chk;
	}
	
	@RequestMapping("/product/heart_out")
	public String heart_out(HttpServletRequest request,HttpSession session,Model model,HeartDto hdto,PrintWriter out)
	{
		String userid=(String) session.getAttribute("userid");	
		String id=request.getParameter("id");
		int prd_id=Integer.parseInt(id);
		String chk=request.getParameter("chk");
		HeartDao hdao=sqlSession.getMapper(HeartDao.class);
		hdao.heart_out(prd_id,userid);
		hdao.heartminus(prd_id);
		
		return "redirect:/product/content?id="+id+"&chk="+chk;
	}
		
	@RequestMapping("/rwrite_ok")	// 글쓰기 폼
	public String write_ok(HttpServletRequest request) throws Exception
	{
		String path=request.getRealPath("resources/product_review");
		
		int max=1024*1024*10;
		MultipartRequest multi=new MultipartRequest(request,path,max,"utf-8",new DefaultFileRenamePolicy());
		
		String id=multi.getParameter("id");
		String chk=multi.getParameter("chk");
		String aa=multi.getParameter("aa");
		
		String prd_name=multi.getParameter("prd_name");
		String userid=multi.getParameter("userid");
		String content=multi.getParameter("content");
		String hugi_img=multi.getFilesystemName("hugi_img");
		String rating=multi.getParameter("rating");
		
		ReviewDto rdto=new ReviewDto();
		
		if(hugi_img != null)
		{
			
			rdto.setPrd_name(prd_name);
			rdto.setUserid(userid);
			rdto.setContent(content);
			rdto.setHugi_img(hugi_img);
			rdto.setRating(Integer.parseInt(rating));
			rdto.setBest(1);
		}
		else
		{
			rdto.setPrd_name(prd_name);
			rdto.setUserid(userid);
			rdto.setContent(content);
			rdto.setHugi_img(hugi_img);
			rdto.setRating(Integer.parseInt(rating));
			rdto.setBest(0);
		}
		
		ReviewDao rdao=sqlSession.getMapper(ReviewDao.class);
		rdao.rwrite_ok(rdto);
		return "redirect:/product/content?id="+id+"&chk="+chk+"&aa="+aa;
	}
		
	@RequestMapping("/product/rupdate_ok")
	public String rupdate_ok(ReviewDto rdto,HttpServletRequest request)
	{
		String cid=request.getParameter("cid");
		String chk=request.getParameter("chk");
		String aa=request.getParameter("aa");
		ReviewDao rdao=sqlSession.getMapper(ReviewDao.class);
		rdao.rupdate_ok(rdto);
		
		return "redirect:/product/content?id="+cid+"&chk="+chk+"&aa="+aa;
	}
	
	@RequestMapping("product/rdelete")
	public String rdelete(HttpServletRequest request,ReviewDto rdto)
	{
		int id=Integer.parseInt(request.getParameter("id"));
		String cid=request.getParameter("cid");
		String chk=request.getParameter("chk");
		String aa=request.getParameter("aa");
		ReviewDao rdao=sqlSession.getMapper(ReviewDao.class);
		rdao.rdelete(id);
		
		return "redirect:/product/content?id="+cid+"&chk="+chk+"&aa="+aa;	
	}
	
	@RequestMapping("product/qwrite_ok")	// 글쓰기 폼
	public String qwrite_ok(QnaDto qdto,HttpServletRequest request)
	{
		String aa="a";
		String bb="bb";
		String id=request.getParameter("id");
		String chk=request.getParameter("chk");
		QnaDao qdao=sqlSession.getMapper(QnaDao.class);
		qdao.qwrite_ok(qdto);
		return "redirect:/product/content?id="+id+"&chk="+chk+"&bb="+bb+"&aa="+aa;
	}
	
	@RequestMapping("product/qupdate_ok")
	public String qupdate_ok(QnaDto qdto,HttpServletRequest request)
	{
		String cid=request.getParameter("cid");
		String chk=request.getParameter("chk");
		String aa="a";
		String bb="bb";
		String state=request.getParameter("state");
		QnaDao qdao=sqlSession.getMapper(QnaDao.class);
		if(state==null)
		{
			qdao.qupdate_ok0(qdto);
		}
		else
		{
			qdao.qupdate_ok1(qdto);
		}
		return "redirect:/product/content?id="+cid+"&chk="+chk+"&bb="+bb+"&aa="+aa;
	}
	
	@RequestMapping("/product/qdelete")
	public String qdelete(HttpServletRequest request,QnaDto qdto)
	{
		int id=Integer.parseInt(request.getParameter("id"));
		String cid=request.getParameter("cid");
		QnaDao qdao=sqlSession.getMapper(QnaDao.class);
		qdao.qdelete(id);
		
		return "redirect:/product/content?id="+cid+"&chk=1&bb=bb+&aa=a";	
	}
	
	@RequestMapping("/qna_dap_write_ok")	// 글쓰기 폼
	public String qna_dap_write_ok(QnaDto qdto,HttpServletRequest request)
	{
		String cid=request.getParameter("cid");
		String chk=request.getParameter("chk");
		String aa=request.getParameter("aa");
		QnaDao qdao=sqlSession.getMapper(QnaDao.class);
		qdao.qna_dap_write_ok(qdto);
		return "redirect:/product/content?id="+cid+"&chk="+chk+"&aa="+aa;
	}
	
	@RequestMapping("/qna_dap_update_ok")	// 글쓰기 폼
	public String qna_dap_update_ok(QnaDto qdto,HttpServletRequest request)
	{
		String cid=request.getParameter("cid");
		String chk=request.getParameter("chk");
		String aa=request.getParameter("aa");
		QnaDao qdao=sqlSession.getMapper(QnaDao.class);
		qdao.qna_dap_update_ok(qdto);
		return "redirect:/product/content?id="+cid+"&chk="+chk+"&aa="+aa;
	}
	@RequestMapping("/review_dap_write_ok")	// 글쓰기 폼
	public String review_dap_write_ok(ReviewDto rdto,HttpServletRequest request)
	{
		String cid=request.getParameter("cid");
		String chk=request.getParameter("chk");
		String aa=request.getParameter("aa");
		ReviewDao rdao=sqlSession.getMapper(ReviewDao.class);
		rdao.review_dap_write_ok(rdto);
		return "redirect:/product/content?id="+cid+"&chk="+chk+"&aa="+aa;
	}
	
	@RequestMapping("/review_dap_update_ok")	// 글쓰기 폼
	public String review_dap_update_ok(ReviewDto rdto,HttpServletRequest request)
	{
		String cid=request.getParameter("cid");
		String chk=request.getParameter("chk");
		String aa=request.getParameter("aa");
		ReviewDao rdao=sqlSession.getMapper(ReviewDao.class);
		rdao.review_dap_update_ok(rdto);
		return "redirect:/product/content?id="+cid+"&chk="+chk+"&aa="+aa;
	}
	
	// 장바구니 10개 제한
	@RequestMapping("/product/basket_10")
	public void basket_10(HttpSession session,PrintWriter out,HttpServletRequest request,BasketDto basdto)
	{
		String userid=(String)session.getAttribute("userid");
		String productid=request.getParameter("productid");
		int num=Integer.parseInt(request.getParameter("num"));
		BasketDao basdao=sqlSession.getMapper(BasketDao.class);
		Integer chk=basdao.basket_10(userid);
		Integer bo=basdao.basket_only(userid, productid);
		
		System.out.println("chk:"+chk);
		if(bo==null)
		{
			bo=0;
		}
		System.out.println("bo:"+bo);
		
		// 장바구니 10개 이하
		if(chk <= 10)
		{
			// 중복 X
			if(bo == 0)
			{
				basdao.basket_add_in_content(userid,productid,num);
				chk=0;
				out.print(chk);
			}
			// 중복 O
			else if(bo >= 1)
			{
				chk=1;
				out.print(chk);
			}
		}
		// 장바구니 10개 초과
		else
		{
			chk=2;
			out.print(chk);
		}
		System.out.println("완료"+chk);
	}
	@RequestMapping("product/new_product")
	public String new_product(Model model)	{
		ProductDao pdao = sqlSession.getMapper(ProductDao.class);
		ArrayList<ProductDto> plist = pdao.new_prd();
		model.addAttribute("plist", plist);
		return "product/new_product";
	}
	@RequestMapping("product/heart_product")
	public String heart_product(Model model)	{
		ProductDao pdao = sqlSession.getMapper(ProductDao.class);
		ArrayList<ProductDto> plist = pdao.heart_prd();
		model.addAttribute("plist", plist);
		return "product/new_product";
	}
}
