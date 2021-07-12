package kr.co.project.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.project.dao.MainDao;
import kr.co.project.dto.CouponDto;
import kr.co.project.dto.EventDto;
import kr.co.project.dto.ProductDto;

@Controller
public class MainController {
	
	@Autowired
	private SqlSession sqlsession;
	@RequestMapping("/")
	public String main2()	{
		return "redirect:main/main";
	}
	
	@RequestMapping("/main/main")
	public String main(Model model)	{
		MainDao mdao = sqlsession.getMapper(MainDao.class);
		ArrayList<ProductDto> list1 = mdao.new_product();
		ArrayList<ProductDto> list2 = mdao.best_readnum();
		
		ProductDto cate1 = mdao.recom_cate1();
		ProductDto cate2 = mdao.recom_cate2();
		String a1 = cate1.getCategory1();
		String a2 = cate1.getCategory2();
		String b1 = cate2.getCategory1();
		String b2 = cate2.getCategory2();
		
		ArrayList<ProductDto> list3 = mdao.recom_product1(a2);
		ArrayList<ProductDto> list4 = mdao.recom_product2(b2);
		ArrayList<CouponDto> list5 = mdao.coupon();
		
		model.addAttribute("list1", list1);
		model.addAttribute("list2", list2);
		model.addAttribute("list3", list3);
		model.addAttribute("list4", list4);
		model.addAttribute("list5", list5);
		model.addAttribute("a1", a1);
		model.addAttribute("b1", b1);
		model.addAttribute("a2", a2);
		model.addAttribute("b2", b2);
		
		return "main/main";
	}
	@RequestMapping("main/search")
	public String search(HttpServletRequest request,Model model)	{
		String search1 = request.getParameter("search");
		String search = "%"+search1+"%";
		String cate = request.getParameter("cate");
		String chk = request.getParameter("chk");
		
		
		if (chk == null)	{
			chk = "1";
		}
		
		MainDao mdao = sqlsession.getMapper(MainDao.class);
		
		int page;
		int index;
		if (request.getParameter("page") == null)	{
			page = 1;
			index = 0;
		}
		else	{
			page = Integer.parseInt(request.getParameter("page"));
			index = (page-1) * 12;
		}
		int pagestart = page/10;
		if (page%10 == 0)	{
			pagestart = pagestart-1;
		}
		pagestart = (pagestart*10)+1;
		int pageend = pagestart+9;
		
		Integer cnt;
		if (cate.equals("all"))	{
			cnt = mdao.search_cnt1(search);
		}
		else	{
			cnt = mdao.search_cnt2(search,cate);
		}
		
		int pagecnt = (cnt/12);
		if (cnt%12 != 0)	{
			pagecnt = pagecnt +1;
		}
		if (pageend > pagecnt)	{
			pageend = pagecnt;
		}
		
		ArrayList<ProductDto> list = null;
		if (cate.equals("all"))	{
			if(chk.equals("1"))	{
				list = mdao.search1(search,index);
			}
			if(chk.equals("2"))	{
				list = mdao.search2(search,index);
			}
			if(chk.equals("3"))	{
				list = mdao.search3(search,index);
			}
			if(chk.equals("4"))	{
				list = mdao.search4(search,index);
			}
			if(chk.equals("5"))	{
				list = mdao.search5(search,index);
			}
		}
		else	{
			if(chk.equals("1"))	{
				list = mdao.search6(search,cate,index);
			}
			if(chk.equals("2"))	{
				list = mdao.search7(search,cate,index);
			}
			if(chk.equals("3"))	{
				list = mdao.search8(search,cate,index);
			}
			if(chk.equals("4"))	{
				list = mdao.search9(search,cate,index);
			}
			if(chk.equals("5"))	{
				list = mdao.search0(search,cate,index);
			}
		}
		
		ArrayList<ProductDto> clist = mdao.search_category(search);
		
		Integer total_cnt = mdao.total_cnt(search);
		
		model.addAttribute("search1", search1);
		model.addAttribute("list", list);
		model.addAttribute("cnt", cnt);
		model.addAttribute("pagecnt", pagecnt);
		model.addAttribute("pagestart", pagestart);
		model.addAttribute("pageend", pageend);
		model.addAttribute("page", page);
		model.addAttribute("clist", clist);
		model.addAttribute("cate", cate);
		model.addAttribute("chk", chk);
		model.addAttribute("total_cnt", total_cnt);
		
		return "main/search";
	}
	
	
}
