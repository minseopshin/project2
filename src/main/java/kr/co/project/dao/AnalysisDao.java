package kr.co.project.dao;

import java.time.LocalDate;
import java.util.ArrayList;

import kr.co.project.dto.AnalysisDto;
import kr.co.project.dto.CouponDto;
import kr.co.project.dto.PaymentDto;
import kr.co.project.dto.ProductDto;

public interface AnalysisDao {
	public Integer analysis_prd_cnt(String cate1,String cate2);
	
	public Integer product_cnt();
	
	public AnalysisDto total_sale(String date);
	
	public AnalysisDto best_item(String date);
	
	public Integer pie_10(String pie_start1,String pie_end1);
	
	public Integer pie_20(String pie_start2,String pie_end2);
	
	public Integer pie_30(String pie_start3,String pie_end3);
	
	public Integer pie_40(String pie_start4,String pie_end4);
	
	public Integer pie_50(String pie_start5,String pie_end5);
	
	public Integer pie_100();
	
	public ArrayList<AnalysisDto> top_rank(String date);
	
	public ArrayList<AnalysisDto> top_rank_volume(String date);
	
	public Integer price_graph1(String mon);

	public Integer price_graph2(String tue);
	
	public Integer price_graph3(String wed);
	
	public Integer price_graph4(String thu);
	
	public Integer price_graph5(String fri);
	
	public Integer price_graph6(String sat);
	
	public Integer price_graph7(String sun);
	
	public Integer insert_6m1(String h_start1, String h_end1);
	
	public ArrayList<AnalysisDto> insert_prd_6m1_best(String h_start1, String h_end1);
	
	public ArrayList<AnalysisDto> insert_prd_6m1_worst(String h_start1, String h_end1);
	
	public Integer insert_6m2(String h_start2, String h_end2);
	
	public ArrayList<AnalysisDto> insert_prd_6m2_best(String h_start2, String h_end2);
	
	public ArrayList<AnalysisDto> insert_prd_6m2_worst(String h_start2, String h_end2);
	
	public Integer insert_3m1(String q_start1, String q_end1);
	
	public ArrayList<AnalysisDto> insert_prd_3m1_best(String q_start1, String q_end1);
	
	public ArrayList<AnalysisDto> insert_prd_3m1_worst(String q_start1, String q_end1);
	
	public Integer insert_3m2(String q_start2, String q_end2);
	
	public ArrayList<AnalysisDto> insert_prd_3m2_best(String q_start2, String q_end2);
	
	public ArrayList<AnalysisDto> insert_prd_3m2_worst(String q_start2, String q_end2);
	
	public Integer insert_3m3(String q_start3, String q_end3);
	
	public ArrayList<AnalysisDto> insert_prd_3m3_best(String q_start3, String q_end3);
	
	public ArrayList<AnalysisDto> insert_prd_3m3_worst(String q_start3, String q_end3);
	
	public Integer insert_3m4(String q_start4, String q_end4);
	
	public ArrayList<AnalysisDto> insert_prd_3m4_best(String q_start4, String q_end4);
	
	public ArrayList<AnalysisDto> insert_prd_3m4_worst(String q_start4, String q_end4);
	
	public ArrayList<AnalysisDto> insert_month();
	
	public ArrayList<AnalysisDto> insert_month_prd_best(String month_start,String month_end);
	
	public ArrayList<AnalysisDto> insert_month_prd_worst(String month_start,String month_end);
	
	public ArrayList<AnalysisDto> insert_week(String start2, String end2);
	
	public ArrayList<AnalysisDto> insert_week_prd_best(String start,String end);
	
	public ArrayList<AnalysisDto> insert_week_prd_worst(String start,String end);
	
	public AnalysisDto insert_week_start();
	
	public AnalysisDto insert_week_start2(String start1);
	
	public ArrayList<AnalysisDto> insert_day(String start,String end);
	
	public ArrayList<AnalysisDto> insert_day_prd_best(String date);
	
	public ArrayList<AnalysisDto> insert_day_prd_worst(String date);
	
	public Integer insert_volume_6m1(String h_start1, String h_end1);
	
	public ArrayList<AnalysisDto> insert_volume_6m1_prd_best(String h_start1, String h_end1);
	
	public ArrayList<AnalysisDto> insert_volume_6m1_prd_worst(String h_start1, String h_end1);
	
	public Integer insert_volume_6m2(String h_start2, String h_end2);
	
	public ArrayList<AnalysisDto> insert_volume_6m2_prd_best(String h_start2, String h_end2);
	
	public ArrayList<AnalysisDto> insert_volume_6m2_prd_worst(String h_start2, String h_end2);
	
	public Integer insert_volume_3m1(String q_start1, String q_end1);
	
	public ArrayList<AnalysisDto> insert_volume_prd_3m1_best(String q_start1, String q_end1);
	
	public ArrayList<AnalysisDto> insert_volume_prd_3m1_worst(String q_start1, String q_end1);
	
	public Integer insert_volume_3m2(String q_start2, String q_end2);
	
	public ArrayList<AnalysisDto> insert_volume_prd_3m2_best(String q_start2, String q_end2);
	
	public ArrayList<AnalysisDto> insert_volume_prd_3m2_worst(String q_start2, String q_end2);
	
	public Integer insert_volume_3m3(String q_start3, String q_end3);
	
	public ArrayList<AnalysisDto> insert_volume_prd_3m3_best(String q_start3, String q_end3);
	
	public ArrayList<AnalysisDto> insert_volume_prd_3m3_worst(String q_start3, String q_end3);
	
	public Integer insert_volume_3m4(String q_start4, String q_end4);
	
	public ArrayList<AnalysisDto> insert_volume_prd_3m4_best(String q_start4, String q_end4);
	
	public ArrayList<AnalysisDto> insert_volume_prd_3m4_worst(String q_start4, String q_end4);
	
	public ArrayList<AnalysisDto> insert_volume_month();
	
	public ArrayList<AnalysisDto> insert_volume_prd_month_best(String start,String end);
	
	public ArrayList<AnalysisDto> insert_volume_prd_month_worst(String start,String end);
	
	public ArrayList<AnalysisDto> insert_volume_week(String start2, String end);
	
	public ArrayList<AnalysisDto> insert_volume_prd_week_best(String start,String end);
	
	public ArrayList<AnalysisDto> insert_volume_prd_week_worst(String start,String end);
	
	public ArrayList<AnalysisDto> insert_volume_day(String start,String end);
	
	public ArrayList<AnalysisDto> insert_volume_prd_day_best(String date);
	
	public ArrayList<AnalysisDto> insert_volume_prd_day_worst(String date);
	
	public ArrayList<AnalysisDto> insert_week_start_end();
	
	public ArrayList<ProductDto> product_cate1();
	public ArrayList<ProductDto> product_cate2(String cate1);
	public ArrayList<ProductDto> product_cate3_d(String date,String cate1,String cate2, int index);
	public ArrayList<ProductDto> product_cate3_w(String start,String end,String cate1,String cate2,int index);
	public ArrayList<ProductDto> product_cate3_m(String start,String end,String cate1,String cate2,int index);
	
	// 상품
		public void product_write_ok(ProductDto pdto);
		public ProductDto product_detail(String prd_name);
		public void product_detail_ok(ProductDto pdto);
		public ProductDto product_info(String id);
		public ProductDto product_update(String id);
		public void product_update_ok(ProductDto pdto);
		public ArrayList<ProductDto> bcate();
		public ArrayList<ProductDto> scate(String category1);
		public ArrayList<ProductDto> list();
		public ArrayList<ProductDto> plist(String cla, String sword, int index);
		public Integer get_pagecnt();	
		public void prd_delete(String id);
		public void detail_delete(String id);
		
		// 결제
		public ArrayList<PaymentDto> olist(String cla, String sword, int index);	
		public Integer get_orderpagecnt();
		public PaymentDto order_state(String id);
		public void order_state_ok(PaymentDto odto);
		
		// 쿠폰
		public void coupon_write_ok(CouponDto cdto);
		public ArrayList<CouponDto> clist(String cla, String sword, int index);
		public Integer get_couponpagecnt();
		public Integer couponid_check(String couponid);
		public void coupon_delete(String delete);

		


		
}
