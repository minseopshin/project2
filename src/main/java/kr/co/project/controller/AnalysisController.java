package kr.co.project.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import kr.co.project.dao.AnalysisDao;
import kr.co.project.dto.AnalysisDto;
import kr.co.project.dto.CouponDto;
import kr.co.project.dto.PaymentDto;
import kr.co.project.dto.ProductDto;

@Controller
public class AnalysisController {
	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping("/analysis/bar")
	public String bar()	{
		return "/analysis/bar";
	}
	@RequestMapping("/analysis/line")
	public String line()	{
		return "/analysis/line";
	}
	@RequestMapping("/analysis/index")
	public String index(Model model,HttpServletRequest request)	{
		AnalysisDao adao = sqlSession.getMapper(AnalysisDao.class);
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		
		Calendar cal1 = Calendar.getInstance();
		cal1.set(Calendar.DAY_OF_WEEK,Calendar.MONDAY);
		cal1.add(cal1.DATE, -7);
		String mon = dateFormat.format(cal1.getTime());
		cal1.add(cal1.DATE, +1);
		String tue = dateFormat.format(cal1.getTime());
		cal1.add(cal1.DATE, +1);
		String wed = dateFormat.format(cal1.getTime());
		cal1.add(cal1.DATE, +1);
		String thu = dateFormat.format(cal1.getTime());
		cal1.add(cal1.DATE, +1);
		String fri = dateFormat.format(cal1.getTime());
		cal1.add(cal1.DATE, +1);
		String sat = dateFormat.format(cal1.getTime());
		cal1.add(cal1.DATE, +1);
		String sun = dateFormat.format(cal1.getTime());
		
		LocalDate today = LocalDate.now();
		int y = today.getYear();
		int m = today.getMonthValue();
		int d = today.getDayOfMonth();
		LocalDate date1 = LocalDate.of(y, m, d);
		LocalDate d2 = date1.plusDays(-1);
		String date = d2.format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));
		
		LocalDate end1 = LocalDate.of(y-9, 12, 31);
		LocalDate start1 = LocalDate.of(y-18, 01, 01);
		String pie_start1 = start1.format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));
		String pie_end1 = end1.format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));
		LocalDate end2 = LocalDate.of(y-19, 12, 31);
		LocalDate start2 = LocalDate.of(y-28, 01, 01);
		String pie_start2 = start2.format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));
		String pie_end2 = end2.format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));
		LocalDate end3 = LocalDate.of(y-29, 12, 31);
		LocalDate start3 = LocalDate.of(y-38, 01, 01);
		String pie_start3 = start3.format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));
		String pie_end3 = end3.format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));
		LocalDate end4 = LocalDate.of(y-39, 12, 31);
		LocalDate start4 = LocalDate.of(y-48, 01, 01);
		String pie_start4 = start4.format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));
		String pie_end4 = end4.format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));
		LocalDate end5 = LocalDate.of(y-49, 12, 31);
		LocalDate start5 = LocalDate.of(y-58, 01, 01);
		String pie_start5 = start5.format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));
		String pie_end5 = end5.format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));
		
		Integer pie_10 = adao.pie_10(pie_start1,pie_end1);
		Integer pie_20 = adao.pie_20(pie_start2,pie_end2);
		Integer pie_30 = adao.pie_30(pie_start3,pie_end3);
		Integer pie_40 = adao.pie_40(pie_start4,pie_end4);
		Integer pie_50 = adao.pie_50(pie_start5,pie_end5);
		Integer pie_100 = adao.pie_100();
		
		Integer cnt = adao.product_cnt();
		AnalysisDto adto = adao.total_sale(date);
		AnalysisDto adto2 = adao.best_item(date);
		ArrayList<AnalysisDto> alist = adao.top_rank(date);
		ArrayList<AnalysisDto> alist2 = adao.top_rank_volume(date);
		
		Integer price_mon = adao.price_graph1(mon);
		Integer price_tue = adao.price_graph2(tue);
		Integer price_wed = adao.price_graph3(wed);
		Integer price_thu = adao.price_graph4(thu);
		Integer price_fri = adao.price_graph5(fri);
		Integer price_sat = adao.price_graph6(sat);
		Integer price_sun = adao.price_graph7(sun);
		
		
		model.addAttribute("adto", adto);
		model.addAttribute("adto2", adto2);
		model.addAttribute("pie_10",pie_10 );
		model.addAttribute("pie_20",pie_20 );
		model.addAttribute("pie_30",pie_30 );
		model.addAttribute("pie_40",pie_40 );
		model.addAttribute("pie_50",pie_50 );
		model.addAttribute("pie_100",pie_100 );
		model.addAttribute("price_mon", price_mon);
		model.addAttribute("price_tue", price_tue);
		model.addAttribute("price_wed", price_wed);
		model.addAttribute("price_thu", price_thu);
		model.addAttribute("price_fri", price_fri);
		model.addAttribute("price_sat", price_sat);
		model.addAttribute("price_sun", price_sun);
		model.addAttribute("cnt", cnt);
		model.addAttribute("alist", alist);
		model.addAttribute("alist2", alist2);
		return "/analysis/index";
	}
	@RequestMapping("/analysis/sale")
	public String sale(Model model,HttpServletRequest request)	{
		String menu =  request.getParameter("menu");
		String cate1 = request.getParameter("cate1");
		String cate2 = request.getParameter("cate2");
		String cate3 = request.getParameter("cate3");
		AnalysisDao adao = sqlSession.getMapper(AnalysisDao.class);
		
		LocalDate today = LocalDate.now();
		int year = today.getYear();
		int month = today.getMonthValue();
		int day = today.getDayOfMonth();
		
		int page;
		int index;
		if (request.getParameter("page") == null)	{
			page = 1;
			index = 0;
		}
		else	{
			page = Integer.parseInt(request.getParameter("page"));
			index = (page-1) * 7;
		}
		int pagestart = page/7;
		if (page%10 == 0)	{
			pagestart = pagestart-1;
		}
		pagestart = (pagestart*10)+1;
		int pageend = pagestart+9;
		
		Integer cnt = adao.analysis_prd_cnt(cate1,cate2);
		
		int pagecnt = (cnt/7);
		if (cnt%12 != 0)	{
			pagecnt = pagecnt +1;
		}
		if (pageend > pagecnt)	{
			pageend = pagecnt;
		}
		
		if(menu.equals("6"))	{
			String h_year = request.getParameter("h_year");
			String h_start1,h_start2,h_end1,h_end2;
			if (h_year == null)	{
				LocalDate h_start11 = LocalDate.of(year,1,1);
				LocalDate h_end11 = LocalDate.of(year,6,30);
				LocalDate h_start22 = LocalDate.of(year,7,1);
				LocalDate h_end22 = LocalDate.of(year,12,31);
				h_start1 = h_start11.format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));
				h_end1 = h_end11.format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));
				h_start2 = h_start22.format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));
				h_end2 = h_end22.format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));
			}
			else	{
				int h_year1 = Integer.parseInt(h_year); 
				LocalDate h_start11 = LocalDate.of(h_year1,1,1);
				LocalDate h_end11 = LocalDate.of(h_year1,6,30);
				LocalDate h_start22 = LocalDate.of(h_year1,7,1);
				LocalDate h_end22 = LocalDate.of(h_year1,12,31);
				h_start1 = h_start11.format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));
				h_end1 = h_end11.format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));
				h_start2 = h_start22.format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));
				h_end2 = h_end22.format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));
			}
			ArrayList<ProductDto> plist3;
			if (cate3 != null)	{
				if (cate3 == "h1")	{
					plist3 = adao.product_cate3_w(h_start1,h_end1,cate1,cate2,index);
					model.addAttribute("plist3", plist3);
				}
				else	{
					plist3 = adao.product_cate3_w(h_start2,h_end2,cate1,cate2,index);
					model.addAttribute("plist3", plist3);
				}
			}
			Integer price1 = adao.insert_6m1(h_start1,h_end1);
			Integer price2 = adao.insert_6m2(h_start2,h_end2);
			ArrayList<AnalysisDto> alist1 = adao.insert_prd_6m1_best(h_start1,h_end1);
			ArrayList<AnalysisDto> alist2 = adao.insert_prd_6m1_worst(h_start1,h_end1);
			ArrayList<AnalysisDto> alist3 = adao.insert_prd_6m2_best(h_start2,h_end2);
			ArrayList<AnalysisDto> alist4 = adao.insert_prd_6m2_worst(h_start2,h_end2);
			
			model.addAttribute("price1", price1);
			model.addAttribute("price2", price2);
			model.addAttribute("alist1", alist1);
			model.addAttribute("alist2", alist2);
			model.addAttribute("alist3", alist3);
			model.addAttribute("alist4", alist4);
			
		}
		if(menu.equals("3"))	{
			String q_year = request.getParameter("q_year");
			String q_start1,q_start2,q_start3,q_start4,q_end1,q_end2,q_end3,q_end4;
			if (q_year == null)	{
				LocalDate q_start11 = LocalDate.of(year,1,1);
				LocalDate q_end11 = LocalDate.of(year,3,30);
				LocalDate q_start22 = LocalDate.of(year,4,1);
				LocalDate q_end22 = LocalDate.of(year,6,30);
				LocalDate q_start33 = LocalDate.of(year,7,1);
				LocalDate q_end33 = LocalDate.of(year,9,30);
				LocalDate q_start44 = LocalDate.of(year,10,1);
				LocalDate q_end44 = LocalDate.of(year,12,31);
				q_start1 = q_start11.format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));
				q_end1 = q_end11.format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));
				q_start2 = q_start22.format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));
				q_end2 = q_end22.format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));
				q_start3 = q_start33.format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));
				q_end3 = q_end33.format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));
				q_start4 = q_start44.format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));
				q_end4 = q_end44.format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));
			}
			else	{
				int q_year1 = Integer.parseInt(q_year); 
				LocalDate q_start11 = LocalDate.of(q_year1,1,1);
				LocalDate q_end11 = LocalDate.of(q_year1,3,30);
				LocalDate q_start22 = LocalDate.of(q_year1,4,1);
				LocalDate q_end22 = LocalDate.of(q_year1,6,30);
				LocalDate q_start33 = LocalDate.of(q_year1,7,1);
				LocalDate q_end33 = LocalDate.of(q_year1,9,30);
				LocalDate q_start44 = LocalDate.of(q_year1,10,1);
				LocalDate q_end44 = LocalDate.of(q_year1,12,31);
				q_start1 = q_start11.format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));
				q_end1 = q_end11.format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));
				q_start2 = q_start22.format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));
				q_end2 = q_end22.format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));
				q_start3 = q_start33.format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));
				q_end3 = q_end33.format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));
				q_start4 = q_start44.format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));
				q_end4 = q_end44.format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));	
			}
			
			Integer price1 = adao.insert_3m1(q_start1,q_end1);
			Integer price2 = adao.insert_3m2(q_start2,q_end2);
			Integer price3 = adao.insert_3m3(q_start3,q_end3);
			Integer price4 = adao.insert_3m4(q_start4,q_end4);
			if (price1 == null)	{
				price1 = 0;
			}
			if (price2 == null)	{
				price2 = 0;
			}
			if (price3 == null)	{
				price3 = 0;
			}
			if (price4 == null)	{
				price4 = 0;
			}
			ArrayList<AnalysisDto> alist1 = adao.insert_prd_3m1_best(q_start1,q_end1);
			ArrayList<AnalysisDto> alist2 = adao.insert_prd_3m1_worst(q_start1,q_end1);
			ArrayList<AnalysisDto> alist3 = adao.insert_prd_3m2_best(q_start2,q_end2);
			ArrayList<AnalysisDto> alist4 = adao.insert_prd_3m2_worst(q_start2,q_end2);
			ArrayList<AnalysisDto> alist5 = adao.insert_prd_3m3_best(q_start3,q_end3);
			ArrayList<AnalysisDto> alist6 = adao.insert_prd_3m3_worst(q_start3,q_end3);
			ArrayList<AnalysisDto> alist7 = adao.insert_prd_3m4_best(q_start4,q_end4);
			ArrayList<AnalysisDto> alist8 = adao.insert_prd_3m4_worst(q_start4,q_end4);
			
			ArrayList<ProductDto> plist3;
			if(cate3 != null)	{
				if (cate3 == "q1")	{
					plist3 = adao.product_cate3_w(q_start1,q_end1,cate1,cate2,index);
					model.addAttribute("plist3", plist3);
				}
				else if (cate3 == "q2")	{
					plist3 = adao.product_cate3_w(q_start2,q_end2,cate1,cate2,index);
					model.addAttribute("plist3", plist3);
				}
				else if (cate3 == "q3")	{
					plist3 = adao.product_cate3_w(q_start3,q_end3,cate1,cate2,index);
					model.addAttribute("plist3", plist3);
				}
				else	{
					plist3 = adao.product_cate3_w(q_start4,q_end4,cate1,cate2,index);
					model.addAttribute("plist3", plist3);
				}
			}
			model.addAttribute("price1", price1);
			model.addAttribute("price2", price2);
			model.addAttribute("price3", price3);
			model.addAttribute("price4", price4);
			model.addAttribute("alist1", alist1);
			model.addAttribute("alist2", alist2);
			model.addAttribute("alist3", alist3);
			model.addAttribute("alist4", alist4);
			model.addAttribute("alist5", alist5);
			model.addAttribute("alist6", alist6);
			model.addAttribute("alist7", alist7);
			model.addAttribute("alist8", alist8);
			
		}
		if(menu.equals("m"))	{
			String month2 = request.getParameter("month_click");
			String month_start,month_end;
			int m;
			if (month2 == null) {
				LocalDate month_start1 = LocalDate.of(year,month,1);
				LocalDate month1 = LocalDate.of(year,month+1,1);
				LocalDate month_end1 = month1.plusDays(-1);
				month_start = month_start1.format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));
				month_end = month_end1.format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));
				m = month;
			}
			else	{
				m = Integer.parseInt(month2);
				LocalDate month_start1 = LocalDate.of(year,m,1);
				LocalDate month1 = LocalDate.of(year,m+1,1);
				LocalDate month_end1 = month1.plusDays(-1);
				month_start = month_start1.format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));
				month_end = month_end1.format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));
				
			}
			ArrayList<AnalysisDto> alist1 = adao.insert_month();
			ArrayList<AnalysisDto> alist2 = adao.insert_month_prd_best(month_start,month_end);
			ArrayList<AnalysisDto> alist3 = adao.insert_month_prd_worst(month_start,month_end);
			ArrayList<ProductDto> plist3 = adao.product_cate3_w(month_start,month_end,cate1,cate2,index);
			model.addAttribute("alist1", alist1);
			model.addAttribute("alist2", alist2);
			model.addAttribute("alist3", alist3);
			model.addAttribute("plist3", plist3);
			model.addAttribute("m", m);
			
		}
		if(menu.equals("w"))	{
			String start1 = request.getParameter("week_click");
			if (start1 == null)	{
				AnalysisDto adto = adao.insert_week_start();
				String start = adto.getStart();
				String end = adto.getEnd();
				LocalDate date1 = LocalDate.of(year, month, day);
				LocalDate start3 = date1.plusDays(-42);
				String start2 = start3.format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));
				ArrayList<AnalysisDto> alist = adao.insert_week(start2,end);
				ArrayList<AnalysisDto> alist2 = adao.insert_week_prd_best(start,end);
				ArrayList<AnalysisDto> alist3 = adao.insert_week_prd_worst(start,end);
				ArrayList<AnalysisDto> alist4 = adao.insert_week_start_end();
				ArrayList<ProductDto> plist3 = adao.product_cate3_w(start,end,cate1,cate2,index);
				
				model.addAttribute("alist", alist);
				model.addAttribute("alist2", alist2);
				model.addAttribute("alist3", alist3);
				model.addAttribute("alist4", alist4);
				model.addAttribute("start", start);
				model.addAttribute("plist3", plist3);
			}
			else	{
				AnalysisDto adto = adao.insert_week_start2(start1);
				String start = adto.getStart();
				String end = adto.getEnd();
				
				String y = start.substring(0,4);
				String m = start.substring(5,7);
				String d = start.substring(8,10);
				
				int year1 = Integer.parseInt(y);
				int month1 = Integer.parseInt(m);
				int day1 = Integer.parseInt(d);
				
				LocalDate date1 = LocalDate.of(year1, month1, day1);
				LocalDate start3 = date1.plusDays(-21);
				LocalDate end3 = date1.plusDays(+27);
				String start2 = start3.format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));
				String end2 = end3.format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));
				
				ArrayList<AnalysisDto> alist = adao.insert_week(start2,end2);
				ArrayList<AnalysisDto> alist2 = adao.insert_week_prd_best(start,end);
				ArrayList<AnalysisDto> alist3 = adao.insert_week_prd_worst(start,end);
				ArrayList<AnalysisDto> alist4 = adao.insert_week_start_end();
				ArrayList<ProductDto> plist3 = adao.product_cate3_w(start,end,cate1,cate2,index);
				
				model.addAttribute("alist", alist);
				model.addAttribute("alist2", alist2);
				model.addAttribute("alist3", alist3);
				model.addAttribute("alist4", alist4);
				model.addAttribute("start", start);
				model.addAttribute("plist3", plist3);
			}
			
			
			
			
		}
		if(menu.equals("d"))	{
			LocalDate date1,start1,end1;
			if(request.getParameter("year") != null )	{
		      year=Integer.parseInt(request.getParameter("year"));
		      month=Integer.parseInt(request.getParameter("month"));
		      day = Integer.parseInt(request.getParameter("day"));
		      
		      date1 = LocalDate.of(year, month, day);
		      start1 = date1.plusDays(-3);
		      end1 = date1.plusDays(3);
		    }
			else {
				date1 = LocalDate.of(year, month, day);
				start1 = date1.plusDays(-6);
				end1 = LocalDate.of(year, month, day);
			}
			LocalDate firstday = LocalDate.of(year,month,1);
			double total_days = firstday.lengthOfMonth();
			int firstdate = firstday.getDayOfWeek().getValue();
			if (firstdate == 7 )	{
				firstdate = 0;
			}
			int week = (int)Math.ceil((total_days+firstdate)/7);
			
			String date = date1.format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));
			String start = start1.format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));
			String end = end1.format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));
			
			ArrayList<AnalysisDto> alist = adao.insert_day(start,end);
			ArrayList<AnalysisDto> alist2 = adao.insert_day_prd_best(date);
			ArrayList<AnalysisDto> alist3 = adao.insert_day_prd_worst(date);
			ArrayList<ProductDto> plist3 = adao.product_cate3_d(date,cate1,cate2,index);
			
			
			model.addAttribute("total_days",total_days);
			model.addAttribute("week",week);
			model.addAttribute("firstdate",firstdate);
			model.addAttribute("alist", alist);
			model.addAttribute("alist2", alist2);
			model.addAttribute("alist3", alist3);
			model.addAttribute("plist3", plist3);
		}
		
		
		ArrayList<ProductDto> plist1 = adao.product_cate1();
		ArrayList<ProductDto> plist2 = adao.product_cate2(cate1);
		
		model.addAttribute("cnt", cnt);
		model.addAttribute("pagecnt", pagecnt);
		model.addAttribute("pagestart", pagestart);
		model.addAttribute("pageend", pageend);
		model.addAttribute("page", page);
		model.addAttribute("menu", menu);
		model.addAttribute("cate1", cate1);
		model.addAttribute("cate2", cate2);
		model.addAttribute("cate3", cate3);
		model.addAttribute("plist1", plist1);
		model.addAttribute("plist2", plist2);
		model.addAttribute("year",year);
		model.addAttribute("month",month);
		model.addAttribute("day",day);
		
		return "/analysis/sale";
	}
	@RequestMapping("/analysis/sale_volume")
	public String sale_volume(HttpServletRequest request,Model model)	{
		String menu =  request.getParameter("menu");
		String cate1 = request.getParameter("cate1");
		String cate2 = request.getParameter("cate2");
		String cate3 = request.getParameter("cate3");
		AnalysisDao adao = sqlSession.getMapper(AnalysisDao.class);
		
		LocalDate today = LocalDate.now();
		int year = today.getYear();
		int month = today.getMonthValue();
		int day = today.getDayOfMonth();
		
		int page;
		int index;
		if (request.getParameter("page") == null)	{
			page = 1;
			index = 0;
		}
		else	{
			page = Integer.parseInt(request.getParameter("page"));
			index = (page-1) * 7;
		}
		int pagestart = page/7;
		if (page%10 == 0)	{
			pagestart = pagestart-1;
		}
		pagestart = (pagestart*10)+1;
		int pageend = pagestart+9;
		
		Integer cnt = adao.analysis_prd_cnt(cate1,cate2);
		
		int pagecnt = (cnt/7);
		if (cnt%12 != 0)	{
			pagecnt = pagecnt +1;
		}
		if (pageend > pagecnt)	{
			pageend = pagecnt;
		}
		
		
		if(menu.equals("6"))	{
			String h_year = request.getParameter("h_year");
			String h_start1,h_start2,h_end1,h_end2;
			if (h_year == null)	{
				LocalDate h_start11 = LocalDate.of(year,1,1);
				LocalDate h_end11 = LocalDate.of(year,6,30);
				LocalDate h_start22 = LocalDate.of(year,7,1);
				LocalDate h_end22 = LocalDate.of(year,12,31);
				h_start1 = h_start11.format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));
				h_end1 = h_end11.format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));
				h_start2 = h_start22.format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));
				h_end2 = h_end22.format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));
			}
			else	{
				int h_year1 = Integer.parseInt(h_year); 
				LocalDate h_start11 = LocalDate.of(h_year1,1,1);
				LocalDate h_end11 = LocalDate.of(h_year1,6,30);
				LocalDate h_start22 = LocalDate.of(h_year1,7,1);
				LocalDate h_end22 = LocalDate.of(h_year1,12,31);
				h_start1 = h_start11.format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));
				h_end1 = h_end11.format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));
				h_start2 = h_start22.format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));
				h_end2 = h_end22.format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));
			}
			ArrayList<ProductDto> plist3;
			if (cate3 != null)	{
				if (cate3 == "h1")	{
					plist3 = adao.product_cate3_w(h_start1,h_end1,cate1,cate2,index);
					model.addAttribute("plist3", plist3);
				}
				else	{
					plist3 = adao.product_cate3_w(h_start2,h_end2,cate1,cate2,index);
					model.addAttribute("plist3", plist3);
				}
			}
			Integer num1 = adao.insert_volume_6m1(h_start1,h_end1);
			Integer num2 = adao.insert_volume_6m2(h_start2,h_end2);
			ArrayList<AnalysisDto> alist1 = adao.insert_volume_6m1_prd_best(h_start1,h_end1);
			ArrayList<AnalysisDto> alist2 = adao.insert_volume_6m1_prd_worst(h_start1,h_end1);
			ArrayList<AnalysisDto> alist3 = adao.insert_volume_6m2_prd_best(h_start2,h_end2);
			ArrayList<AnalysisDto> alist4 = adao.insert_volume_6m2_prd_worst(h_start2,h_end2);
			
			model.addAttribute("num1", num1);
			model.addAttribute("num2", num2);
			model.addAttribute("alist1", alist1);
			model.addAttribute("alist2", alist2);
			model.addAttribute("alist3", alist3);
			model.addAttribute("alist4", alist4);
		}
		if(menu.equals("3"))	{
			String q_year = request.getParameter("q_year");
			String q_start1,q_start2,q_start3,q_start4,q_end1,q_end2,q_end3,q_end4;
			if (q_year == null)	{
				LocalDate q_start11 = LocalDate.of(year,1,1);
				LocalDate q_end11 = LocalDate.of(year,3,30);
				LocalDate q_start22 = LocalDate.of(year,4,1);
				LocalDate q_end22 = LocalDate.of(year,6,30);
				LocalDate q_start33 = LocalDate.of(year,7,1);
				LocalDate q_end33 = LocalDate.of(year,9,30);
				LocalDate q_start44 = LocalDate.of(year,10,1);
				LocalDate q_end44 = LocalDate.of(year,12,31);
				q_start1 = q_start11.format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));
				q_end1 = q_end11.format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));
				q_start2 = q_start22.format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));
				q_end2 = q_end22.format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));
				q_start3 = q_start33.format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));
				q_end3 = q_end33.format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));
				q_start4 = q_start44.format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));
				q_end4 = q_end44.format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));
			}
			else	{
				int q_year1 = Integer.parseInt(q_year); 
				LocalDate q_start11 = LocalDate.of(q_year1,1,1);
				LocalDate q_end11 = LocalDate.of(q_year1,3,30);
				LocalDate q_start22 = LocalDate.of(q_year1,4,1);
				LocalDate q_end22 = LocalDate.of(q_year1,6,30);
				LocalDate q_start33 = LocalDate.of(q_year1,7,1);
				LocalDate q_end33 = LocalDate.of(q_year1,9,30);
				LocalDate q_start44 = LocalDate.of(q_year1,10,1);
				LocalDate q_end44 = LocalDate.of(q_year1,12,31);
				q_start1 = q_start11.format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));
				q_end1 = q_end11.format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));
				q_start2 = q_start22.format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));
				q_end2 = q_end22.format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));
				q_start3 = q_start33.format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));
				q_end3 = q_end33.format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));
				q_start4 = q_start44.format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));
				q_end4 = q_end44.format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));	
			}
			ArrayList<ProductDto> plist3;
			if(cate3 != null)	{
				if (cate3 == "q1")	{
					plist3 = adao.product_cate3_w(q_start1,q_end1,cate1,cate2,index);
					model.addAttribute("plist3", plist3);
				}
				else if (cate3 == "q2")	{
					plist3 = adao.product_cate3_w(q_start2,q_end2,cate1,cate2,index);
					model.addAttribute("plist3", plist3);
				}
				else if (cate3 == "q3")	{
					plist3 = adao.product_cate3_w(q_start3,q_end3,cate1,cate2,index);
					model.addAttribute("plist3", plist3);
				}
				else	{
					plist3 = adao.product_cate3_w(q_start4,q_end4,cate1,cate2,index);
					model.addAttribute("plist3", plist3);
				}
			}
			Integer num1 = adao.insert_volume_3m1(q_start1,q_end1);
			Integer num2 = adao.insert_volume_3m2(q_start2,q_end2);
			Integer num3 = adao.insert_volume_3m3(q_start3,q_end3);
			Integer num4 = adao.insert_volume_3m4(q_start4,q_end4);
			if (num1 == null)	{
				num1 = 0;
			}
			if (num2 == null)	{
				num2 = 0;
			}
			if (num3 == null)	{
				num3 = 0;
			}
			if (num4 == null)	{
				num4 = 0;
			}
			ArrayList<AnalysisDto> alist1 = adao.insert_volume_prd_3m1_best(q_start1,q_end1);
			ArrayList<AnalysisDto> alist2 = adao.insert_volume_prd_3m1_worst(q_start1,q_end1);
			ArrayList<AnalysisDto> alist3 = adao.insert_volume_prd_3m2_best(q_start2,q_end2);
			ArrayList<AnalysisDto> alist4 = adao.insert_volume_prd_3m2_worst(q_start2,q_end2);
			ArrayList<AnalysisDto> alist5 = adao.insert_volume_prd_3m3_best(q_start3,q_end3);
			ArrayList<AnalysisDto> alist6 = adao.insert_volume_prd_3m3_worst(q_start3,q_end3);
			ArrayList<AnalysisDto> alist7 = adao.insert_volume_prd_3m4_best(q_start4,q_end4);
			ArrayList<AnalysisDto> alist8 = adao.insert_volume_prd_3m4_worst(q_start4,q_end4);
			
			model.addAttribute("num1", num1);
			model.addAttribute("num2", num2);
			model.addAttribute("num3", num3);
			model.addAttribute("num4", num4);
			model.addAttribute("alist1", alist1);
			model.addAttribute("alist2", alist2);
			model.addAttribute("alist3", alist3);
			model.addAttribute("alist4", alist4);
			model.addAttribute("alist5", alist5);
			model.addAttribute("alist6", alist6);
			model.addAttribute("alist7", alist7);
			model.addAttribute("alist8", alist8);
		}
		if(menu.equals("m"))	{
			String month2 = request.getParameter("month_click");
			String month_start,month_end;
			int m;
			if (month2 == null) {
				LocalDate month_start1 = LocalDate.of(year,month,1);
				LocalDate month1 = LocalDate.of(year,month+1,1);
				LocalDate month_end1 = month1.plusDays(-1);
				month_start = month_start1.format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));
				month_end = month_end1.format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));
				m = month;
			}
			else	{
				m = Integer.parseInt(month2);
				LocalDate month_start1 = LocalDate.of(year,m,1);
				LocalDate month1 = LocalDate.of(year,m+1,1);
				LocalDate month_end1 = month1.plusDays(-1);
				month_start = month_start1.format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));
				month_end = month_end1.format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));
				
			}
			ArrayList<AnalysisDto> alist1 = adao.insert_volume_month();
			ArrayList<AnalysisDto> alist2 = adao.insert_volume_prd_month_best(month_start,month_end);
			ArrayList<AnalysisDto> alist3 = adao.insert_volume_prd_month_worst(month_start,month_end);
			ArrayList<ProductDto> plist3 = adao.product_cate3_w(month_start,month_end,cate1,cate2,index);
			
			model.addAttribute("alist1", alist1);
			model.addAttribute("alist2", alist2);
			model.addAttribute("alist3", alist3);
			model.addAttribute("plist3", plist3);
			model.addAttribute("m", m);
		}
		if(menu.equals("w"))	{
			String start1 = request.getParameter("week_click");
			if (start1 == null)	{
				AnalysisDto adto = adao.insert_week_start();
				String start = adto.getStart();
				String end = adto.getEnd();
				LocalDate date1 = LocalDate.of(year, month, day);
				LocalDate start3 = date1.plusDays(-42);
				String start2 = start3.format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));
				ArrayList<AnalysisDto> alist = adao.insert_volume_week(start2,end);
				ArrayList<AnalysisDto> alist2 = adao.insert_volume_prd_week_best(start,end);
				ArrayList<AnalysisDto> alist3 = adao.insert_volume_prd_week_worst(start,end);
				ArrayList<AnalysisDto> alist4 = adao.insert_week_start_end();
				ArrayList<ProductDto> plist3 = adao.product_cate3_w(start,end,cate1,cate2,index);
				
				model.addAttribute("alist", alist);
				model.addAttribute("alist2", alist2);
				model.addAttribute("alist3", alist3);

				model.addAttribute("alist4", alist4);
				model.addAttribute("plist3", plist3);
				model.addAttribute("start", start);
			}
			else	{
				AnalysisDto adto = adao.insert_week_start2(start1);
				String start = adto.getStart();
				String end = adto.getEnd();
				
				String y = start.substring(0,4);
				String m = start.substring(5,7);
				String d = start.substring(8,10);
				
				int year1 = Integer.parseInt(y);
				int month1 = Integer.parseInt(m);
				int day1 = Integer.parseInt(d);
				
				LocalDate date1 = LocalDate.of(year1, month1, day1);
				LocalDate start3 = date1.plusDays(-21);
				LocalDate end3 = date1.plusDays(+27);
				String start2 = start3.format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));
				String end2 = end3.format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));
				
				ArrayList<AnalysisDto> alist = adao.insert_volume_week(start2,end);
				ArrayList<AnalysisDto> alist2 = adao.insert_volume_prd_week_best(start,end);
				ArrayList<AnalysisDto> alist3 = adao.insert_volume_prd_week_worst(start,end);
				ArrayList<AnalysisDto> alist4 = adao.insert_week_start_end();
				ArrayList<ProductDto> plist3 = adao.product_cate3_w(start,end,cate1,cate2,index);
				
				model.addAttribute("alist", alist);
				model.addAttribute("alist2", alist2);
				model.addAttribute("alist3", alist3);
				model.addAttribute("alist4", alist4);
				model.addAttribute("plist3", plist3);
				model.addAttribute("start", start);
			}
			
			
			
		}
		if(menu.equals("d"))	{
			LocalDate date1,start1,end1;
			if(request.getParameter("year") != null )	{
		      year=Integer.parseInt(request.getParameter("year"));
		      month=Integer.parseInt(request.getParameter("month"));
		      day = Integer.parseInt(request.getParameter("day"));
		      date1 = LocalDate.of(year, month, day);
		      start1 = date1.plusDays(-3);
		      end1 = date1.plusDays(3);
		    }
			else {
				date1 = LocalDate.of(year, month, day);
				start1 = date1.plusDays(-6);
				end1 = LocalDate.of(year, month, day);
		    }
			  
			LocalDate firstday = LocalDate.of(year,month,1);
			double total_days = firstday.lengthOfMonth();
			
			int firstdate = firstday.getDayOfWeek().getValue();
			if (firstdate == 7 )	{
				firstdate = 0;
			}
			int week = (int)Math.ceil((total_days+firstdate)/7);
			
			String date = date1.format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));
			String start = start1.format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));
			String end = end1.format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));
			
			ArrayList<AnalysisDto> alist = adao.insert_volume_day(start,end);
			ArrayList<AnalysisDto> alist2 = adao.insert_volume_prd_day_best(date);
			ArrayList<AnalysisDto> alist3 = adao.insert_volume_prd_day_worst(date);
			ArrayList<ProductDto> plist3 = adao.product_cate3_d(date,cate1,cate2,index);
			
			model.addAttribute("alist", alist);
			model.addAttribute("alist2", alist2);
			model.addAttribute("alist3", alist3);
			model.addAttribute("plist3", plist3);
			model.addAttribute("total_days",total_days);
			model.addAttribute("week",week);
			model.addAttribute("firstdate",firstdate);
		}
		ArrayList<ProductDto> plist1 = adao.product_cate1();
		ArrayList<ProductDto> plist2 = adao.product_cate2(cate1);
		
		model.addAttribute("cnt", cnt);
		model.addAttribute("pagecnt", pagecnt);
		model.addAttribute("pagestart", pagestart);
		model.addAttribute("pageend", pageend);
		model.addAttribute("page", page);
		model.addAttribute("menu", menu);
		model.addAttribute("cate1", cate1);
		model.addAttribute("cate2", cate2);
		model.addAttribute("cate3", cate3);
		model.addAttribute("plist1", plist1);
		model.addAttribute("plist2", plist2);
		model.addAttribute("year",year);
		model.addAttribute("month",month);
		model.addAttribute("day",day);
		return "/analysis/sale_volume";
	}
	@RequestMapping("/analysis/product")
	public String product(Model model, HttpServletRequest request)
	{
		AnalysisDao adao=sqlSession.getMapper(AnalysisDao.class);
		
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
			cla="prd_name";
		else
			cla=request.getParameter("cla");
		if(request.getParameter("sword")==null)
			sword="";
		else
			sword=request.getParameter("sword");
		
		ArrayList<ProductDto> list=adao.list();
		model.addAttribute("list",list);
		
		ArrayList<ProductDto> plist=adao.plist(cla, sword, index);
		model.addAttribute("plist",plist);
		model.addAttribute("pstart",pstart);
		
		model.addAttribute("page",page);
		Integer pagecnt=adao.get_pagecnt();
		model.addAttribute("pagecnt",pagecnt);
		
		if(pend > pagecnt)
			pend=pagecnt;
		model.addAttribute("pend",pend);	
		
		return "/analysis/product";
	}
	
	// 관리자 - 상품 정보
	@RequestMapping("analysis/product_info")
	public String product_info(Model model, HttpServletRequest request)
	{
		String id=request.getParameter("id");
		
		AnalysisDao adao=sqlSession.getMapper(AnalysisDao.class);
		ProductDto pdto=adao.product_info(id);
		
		model.addAttribute("pdto",pdto);
		
		return "/analysis/product_info";
	}
	
	// 관리자 - 상품 등록
	@RequestMapping("/analysis/product_write")
	public String product_write(Model model, HttpServletRequest request)
	{		
		AnalysisDao adao=sqlSession.getMapper(AnalysisDao.class);
		
		String category1=request.getParameter("category1");
		if(category1==null)
		{
			category1="닭가슴살";
		}
		else
		{
			category1=request.getParameter("category1");
		}		
		
		ArrayList<ProductDto> bcate=adao.bcate();
		ArrayList<ProductDto> scate=adao.scate(category1);		
		
		model.addAttribute("bcate", bcate);
		model.addAttribute("scate", scate);		
		model.addAttribute("category1",category1);
		
		
		
		return "/analysis/product_write";
	}
	// 관리자 - 상품 등록 완료
	@RequestMapping("/analysis/product_write_ok")
	public String Product_write_ok(Model model, HttpServletRequest request, ProductDto pdto) throws IOException
	{
		String path=request.getRealPath("resources/product");
		
		int max=1024*1024*10;
		MultipartRequest multi=new MultipartRequest(request,path,max,"utf-8",new DefaultFileRenamePolicy());
				
		String prd_name=multi.getParameter("prd_name");
		Integer price=Integer.parseInt(multi.getParameter("price"));
		String category1=multi.getParameter("category1");
		String category2=multi.getParameter("category2");
		String prd_img=multi.getFilesystemName("prd_img");
		String detail_img=multi.getFilesystemName("detail_img");		
				
		pdto.setPrd_name(prd_name);
		pdto.setPrice(price);
		pdto.setCategory1(category1);
		pdto.setCategory2(category2);
		pdto.setPrd_img(prd_img);		
		pdto.setDetail_img(detail_img);
		
		AnalysisDao adao=sqlSession.getMapper(AnalysisDao.class);
		adao.product_write_ok(pdto);
				
		ProductDto prd_detail=adao.product_detail(prd_name);
		Integer id=prd_detail.getId();
		prd_detail.setId(id);
		prd_detail.setPrd_name(prd_name);
				
		adao.product_detail_ok(prd_detail);
		
		return "redirect:/analysis/product_write";
	}
	
	// 관리자 - 상품 수정
	@RequestMapping("/analysis/product_update")
	public String product_update(Model model, HttpServletRequest request)
	{
		String id=request.getParameter("id");		
		AnalysisDao adao=sqlSession.getMapper(AnalysisDao.class);
		ProductDto pdto=adao.product_update(id);
		
		model.addAttribute("pdto",pdto);
		
//		ProductDao pdao=sqlSession.getMapper(ProductDao.class);
		
		String category1=request.getParameter("category1");
		if(category1==null)
		{
			category1="닭가슴살";
		}
		else
		{
			category1=request.getParameter("category1");
		}
		
		
		ArrayList<ProductDto> bcate=adao.bcate();
		ArrayList<ProductDto> scate=adao.scate(category1);
		
		model.addAttribute("bcate", bcate);
		model.addAttribute("scate", scate);		
		model.addAttribute("category1",category1);		
		
		return "/analysis/product_update";	
	}
	
	// 관리자 - 상품 수정 완료
	@RequestMapping("/analysis/product_update_ok")
	public String product_update_ok(ProductDto pdto,HttpServletRequest request) throws IOException
	{
		String path=request.getRealPath("resources/product");
		
		int max=1024*1024*10;
		MultipartRequest multi=new MultipartRequest(request,path,max,"utf-8",new DefaultFileRenamePolicy());
		
		Integer id=Integer.parseInt(multi.getParameter("id"));
		String prd_name=multi.getParameter("prd_name");
		Integer price=Integer.parseInt(multi.getParameter("price"));
		String category1=multi.getParameter("category1");
		String category2=multi.getParameter("category2");
		String prd_img=multi.getFilesystemName("prd_img");
		String detail_img=multi.getFilesystemName("detail_img");

		pdto.setId(id);
		pdto.setPrd_name(prd_name);
		pdto.setPrice(price);
		pdto.setCategory1(category1);
		pdto.setCategory2(category2);
		pdto.setPrd_img(prd_img);
		pdto.setDetail_img(detail_img);
		
		AnalysisDao adao=sqlSession.getMapper(AnalysisDao.class);
		adao.product_update_ok(pdto);
		
		return "redirect:/analysis/product_info?id="+id;
	}
	
	// 관리자 - 상품 삭제
		@RequestMapping("analysis/prd_delete")
		public String prd_delete(HttpServletRequest request)
		{		
			String id=request.getParameter("id");			
			String[] delete=request.getParameterValues("valueArr");
					
			AnalysisDao adao=sqlSession.getMapper(AnalysisDao.class);
			
			// 디테일 지우기
			
			
			// product 지우기
			int size=delete.length;
			for(int i=0; i<size; i++)
			{
				adao.prd_delete(delete[i]);
				adao.detail_delete(delete[i]);
			}			
			
			return "redirect:/analysis/product";
		}

	
	// 관리자 - 주문 조회
	@RequestMapping("/analysis/order")
	public String order(Model model, HttpServletRequest request)
	{
		AnalysisDao adao=sqlSession.getMapper(AnalysisDao.class);
		
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
			cla="order_num";
		else
			cla=request.getParameter("cla");
		if(request.getParameter("sword")==null)
			sword="";
		else
			sword=request.getParameter("sword");
				
		ArrayList<PaymentDto> olist=adao.olist(cla, sword, index);
		model.addAttribute("olist",olist);
		model.addAttribute("pstart",pstart);
		
		model.addAttribute("page",page);
		Integer pagecnt=adao.get_orderpagecnt();
		model.addAttribute("pagecnt",pagecnt);
		
		if(pend > pagecnt)
			pend=pagecnt;
		model.addAttribute("pend",pend);
		
		return "/analysis/order";
	}
	
	// 관리자 - 주문 상태 변경
	@RequestMapping("/analysis/order_state")
	public String order_state(Model model, HttpServletRequest request)
	{
		String id=request.getParameter("id");		
		AnalysisDao adao=sqlSession.getMapper(AnalysisDao.class);
		PaymentDto odto=adao.order_state(id);
		
		model.addAttribute("odto",odto);
		
		String state=request.getParameter("state");
		if(state==null)
		{
			state="0";
		}
		else
		{
			state=request.getParameter("state");
		}
		
		model.addAttribute("state",state);		
		
		return "/analysis/order_state";
	}
	
	// 관리자 - 주문 상태 변경 완료
	@RequestMapping("/analysis/order_state_ok")
	public String order_state_ok(HttpServletRequest request, PaymentDto odto)
	{				
		AnalysisDao adao=sqlSession.getMapper(AnalysisDao.class);
		adao.order_state_ok(odto);
		
		System.out.println(odto.getState());
		
		return "redirect:/analysis/order";
	}
	
	// 관리자 - 쿠폰 조회
	@RequestMapping("/analysis/coupon")
	public String coupon(Model model, HttpServletRequest request)
	{
		AnalysisDao adao=sqlSession.getMapper(AnalysisDao.class);
		
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
			cla="name";
		else
			cla=request.getParameter("cla");
		if(request.getParameter("sword")==null)
			sword="";
		else
			sword=request.getParameter("sword");
				
		ArrayList<CouponDto> clist=adao.clist(cla, sword, index);
		model.addAttribute("clist",clist);
		model.addAttribute("pstart",pstart);
		
		model.addAttribute("page",page);
		Integer pagecnt=adao.get_couponpagecnt();
		model.addAttribute("pagecnt",pagecnt);
		
		if(pend > pagecnt)
			pend=pagecnt;
		model.addAttribute("pend",pend);
		
		return "/analysis/coupon";
	}
	
	// 관리자 - 쿠폰 생성
	@RequestMapping("/analysis/coupon_write")
	public String coupon_write()
	{
		return "/analysis/coupon_write";
	}
	
	@RequestMapping("/analysis/couponid_check")
    public void couponid_check(HttpServletRequest request,PrintWriter out)
    {
		String couponid=request.getParameter("couponid");
	    AnalysisDao adao=sqlSession.getMapper(AnalysisDao.class);
	    Integer chk=adao.couponid_check(couponid);
	    out.print(chk);	    
    }
	
	// 관리자 - 쿠폰 생성 완료
	@RequestMapping("/analysis/coupon_write_ok")
	public String coupon_write_ok(Model model, HttpServletRequest request) throws IOException
	{
		String path=request.getRealPath("resources/coupon");
		
		int max=1024*1024*10;
		MultipartRequest multi=new MultipartRequest(request,path,max,"utf-8",new DefaultFileRenamePolicy());
		
		String couponid=multi.getParameter("couponid");		
		String name=multi.getParameter("name");
		Integer state=Integer.parseInt(multi.getParameter("state"));
		Double dc=Double.parseDouble(multi.getParameter("dc"));
		String coupon_img=multi.getFilesystemName("coupon_img");
		
		// coupon_img="../resources/event/"+coupon_img;
		
		CouponDto cdto=new CouponDto();
		cdto.setCouponid(couponid);
		cdto.setName(name);
		cdto.setState(state);
		cdto.setDc(dc);		
		cdto.setCoupon_img(coupon_img);
		
				
		AnalysisDao adao=sqlSession.getMapper(AnalysisDao.class);
		adao.coupon_write_ok(cdto);
		
		return "redirect:/analysis/coupon";
	}
	
	// 관리자 - 쿠폰 삭제
	@RequestMapping("analysis/coupon_delete")
	public String coupon_delete(HttpServletRequest request)
	{		
		String id=request.getParameter("id");
		String[] delete=request.getParameterValues("valueArr");
	
		AnalysisDao adao=sqlSession.getMapper(AnalysisDao.class);
		
		int size=delete.length;
		for(int i=0; i<size; i++)
		{
			adao.coupon_delete(delete[i]);
		}
		
		return "redirect:/analysis/coupon";
	}


}
