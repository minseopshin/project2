package kr.co.project.controller;

import java.io.PrintWriter;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.project.dao.PaymentDao;
import kr.co.project.dto.AddrDto;
import kr.co.project.dto.CouponDto;
import kr.co.project.dto.User_CouponDto;
import kr.co.project.dto.MemberDto;
import kr.co.project.dto.PaymentDto;
import kr.co.project.dto.ProductDto;

@Controller
public class PaymentController {
	
	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping("payment/payment")
	public String payment(HttpServletRequest request,HttpSession session,Model model)	{
		String userid = (String)session.getAttribute("userid");
		String a = request.getParameter("a");
		PaymentDao pdao = sqlSession.getMapper(PaymentDao.class);
		
		if(a.equals("aa"))	{
			String [] id_list = request.getParameterValues("basket_check");
			ArrayList<PaymentDto> plist = new ArrayList<PaymentDto>();
			for (int i=0;i<id_list.length;i++)	{
				String id = id_list[i];
				PaymentDto pdto = pdao.payment_list(id,userid);
				plist.add(pdto);
			}
			session.setAttribute("num", 0);
			session.setAttribute("plist", plist);
			model.addAttribute("plist", plist);
			
		}
		if (a.equals("cc"))	{
			int num = Integer.parseInt(request.getParameter("prod_quantity_input"));
			String product_id = request.getParameter("product_id");
			System.out.println(num);
			System.out.println(product_id);
			ArrayList<ProductDto> plist = pdao.payment_content(product_id);
			session.setAttribute("plist", plist);
			session.setAttribute("num", num);
			model.addAttribute("plist", plist);
			model.addAttribute("num", num);
			
		}
		else	{
			ArrayList<PaymentDto>plist = (ArrayList<PaymentDto>) session.getAttribute("plist");
			int num = (Integer) session.getAttribute("num");
			model.addAttribute("num", num);
			model.addAttribute("plist", plist);
		}
		MemberDto mdto = pdao.member(userid);
		ArrayList<AddrDto> alist = pdao.addr_list(userid);
		Integer coupon_cnt = pdao.coupon_cnt(userid);
		mdto.setAddr1(mdto.getAddr1().replace("\r\n", " "));
		mdto.setAddr2(mdto.getAddr2().replace("\r\n", " "));
		mdto.setAddr3(mdto.getAddr3().replace("\r\n", " "));
		model.addAttribute("mdto", mdto);
		model.addAttribute("alist", alist);
		model.addAttribute("coupon_cnt", coupon_cnt);
		
		return "payment/payment";
	}
	@RequestMapping("payment/payment_ok")
	public String payment_ok(HttpServletRequest request,HttpSession session,Model model)	{
		String userid = (String)session.getAttribute("userid");
		String total_price1 = request.getParameter("total_price");
		int total_price = Integer.parseInt(total_price1);
		String method1 = request.getParameter("pay");
		String [] p_list = request.getParameterValues("pid");
		String [] num_list = request.getParameterValues("pnum");
		String coupon_id = request.getParameter("coupon_id");
		
		java.util.Date now = new java.util.Date();
	    SimpleDateFormat vans = new SimpleDateFormat("yyMMdd");
	    String wdate = vans.format(now);
	    Random rm = new Random();
	    int rm1= rm.nextInt(10);
	    int rm2= rm.nextInt(10);
	    int rm3= rm.nextInt(10);
	    int rm4= rm.nextInt(10);
	    String order_num = ((((wdate + rm1) +rm2)+rm3)+rm4);
	    
	    
		PaymentDao pdao = sqlSession.getMapper(PaymentDao.class);
		for (int i=0;i<p_list.length;i++)	{
			String id= p_list[i];
			String num = num_list[i];
			String addr_id = request.getParameter("addr_select");
			if(method1.equals("card"))	{
				String method2 = request.getParameter("method2_card");
				String method3 = request.getParameter("method3_card");
				pdao.payment_ok(userid,id,addr_id,order_num,method1,method2,method3,num,total_price,coupon_id);
			}
			if(method1.equals("account"))	{
				String method2 = request.getParameter("method2_account");
				String method3 = "";
				pdao.payment_ok(userid,id,addr_id,order_num,method1,method2,method3,num,total_price,coupon_id);
				
			}
			if(method1.equals("mobile"))	{
				String method2 = request.getParameter("method2_mobile");
				String method3 = "";
				pdao.payment_ok(userid,id,addr_id,order_num,method1,method2,method3,num,total_price,coupon_id);
				
			}
			if(method1.equals("kakao"))	{
				String method2 = "";
				String method3 = "";
				pdao.payment_ok(userid,id,addr_id,order_num,method1,method2,method3,num,total_price,coupon_id);
				
			}
			if(method1.equals("toss"))	{
				String method2 = "";
				String method3 = "";
				pdao.payment_ok(userid,id,addr_id,order_num,method1,method2,method3,num,total_price,coupon_id);
			}
			pdao.coupon_change(userid,coupon_id);
				
		}
		return "redirect:/payment/order_com";
	}
	@RequestMapping("payment/order_com")
	public String order_com(HttpServletRequest request,HttpSession session,Model model)	{
		String userid = (String) session.getAttribute("userid");
		PaymentDao pdao = sqlSession.getMapper(PaymentDao.class);
		
		LocalDate today = LocalDate.now();
		LocalDate paymentday =today.plusDays(1);
		String payment_day = paymentday.format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));
		
		PaymentDto pdto = pdao.order_com(userid);
		MemberDto mdto = pdao.member(userid);
		session.removeAttribute("plist");
		session.removeAttribute("num");
		model.addAttribute("pdto", pdto);
		model.addAttribute("mdto", mdto);
		model.addAttribute("payment_day", payment_day);
		
		return "payment/order_com";
	}
	@RequestMapping("payment/addr_list_chk")
	public void addr_list_chk(HttpServletRequest request,PrintWriter out)	{
		String id = request.getParameter("id");
		PaymentDao pdao = sqlSession.getMapper(PaymentDao.class);
		AddrDto adto = pdao.addr_list_chk(id);
		String addr = URLEncoder.encode(adto.getName() + "/" + adto.getPhone() + "/" + adto.getAddr1()+ "/" + adto.getAddr2()+ "/" + adto.getAddr3());
		addr = addr.replace("%2F","/");
		addr = addr.replace("+"," ");
		out.print(addr);
	}
	@RequestMapping("payment/use_coupon")
	public String use_coupon(HttpSession session, Model model)	{
		String userid = (String) session.getAttribute("userid");
		PaymentDao pdao = sqlSession.getMapper(PaymentDao.class);
		ArrayList<CouponDto> clist = pdao.use_coupon(userid);
		model.addAttribute("clist", clist);
		return "payment/use_coupon";
	}
	@RequestMapping("payment/order_detail")
	public String order_detail(Model model,HttpServletRequest request,HttpSession session)	{
		String userid = (String) session.getAttribute("userid");
		PaymentDao pdao = sqlSession.getMapper(PaymentDao.class);
		
		int page;
		int index;
		if (request.getParameter("page") == null)	{
			page = 1;
			index = 0;
		}
		else	{
			page = Integer.parseInt(request.getParameter("page"));
			index = (page-1) * 3;
		}
		int pagestart = page/10;
		if (page%10 == 0)	{
			pagestart = pagestart-1;
		}
		pagestart = (pagestart*10)+1;
		int pageend = pagestart+9;
		
		Integer cnt = pdao.order_detail_cnt(userid);
		
		int pagecnt = (cnt/3);
		if (cnt%3 != 0)	{
			pagecnt = pagecnt +1;
		}
		if (pageend > pagecnt)	{
			pageend = pagecnt;
		}
		ArrayList<PaymentDto> plist1 = pdao.orderday_search(index);
		ArrayList<PaymentDto> plist2 = pdao.order_search();
		
		model.addAttribute("cnt", cnt);
		model.addAttribute("pagecnt", pagecnt);
		model.addAttribute("pagestart", pagestart);
		model.addAttribute("pageend", pageend);
		model.addAttribute("page", page);
		model.addAttribute("plist1", plist1);
		model.addAttribute("plist2", plist2);
		
		return "payment/order_detail";
	}
	@RequestMapping("payment/order_detail_detail")
	public String order_detail_detail(Model model,HttpServletRequest request)	{
		String order_num = request.getParameter("order_num");
		String orderday = request.getParameter("orderday");
		PaymentDao pdao = sqlSession.getMapper(PaymentDao.class);
		
		ArrayList<PaymentDto> plist = pdao.order_detail_detail1(order_num,orderday);
		PaymentDto pdto = pdao.order_detail_detail2(order_num,orderday);
		
		model.addAttribute("plist", plist);
		model.addAttribute("pdto", pdto);		
		model.addAttribute("orderday", orderday);
		model.addAttribute("order_num", order_num);
		
		return "payment/order_detail_detail";
	}
	@RequestMapping("payment/basket_num")
	public String basket_num(HttpServletRequest request,HttpSession session)	{
		String id = request.getParameter("id");
		String num1 = request.getParameter("num");
		int num = Integer.parseInt(num1);
		String userid = (String) session.getAttribute("userid");
		PaymentDao pdao = sqlSession.getMapper(PaymentDao.class);
		pdao.basket_num(num,id, userid);
		return "redirect:/payment/shopping_basket";
	}

}
