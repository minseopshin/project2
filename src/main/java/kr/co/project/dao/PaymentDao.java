package kr.co.project.dao;

import java.util.ArrayList;

import kr.co.project.dto.AddrDto;
import kr.co.project.dto.CouponDto;
import kr.co.project.dto.User_CouponDto;
import kr.co.project.dto.MemberDto;
import kr.co.project.dto.PaymentDto;
import kr.co.project.dto.ProductDto;

public interface PaymentDao {
	public PaymentDto payment_list(String id,String userid);
	
	public void payment_ok(String userid,String id,String addr_id,String order_num,String method1,String method2,String method3,String num,int price,String coupon_id);
	
	public void coupon_change(String userid,String coupon_id);
	
	public MemberDto member(String userid);
	
	public ArrayList<AddrDto> addr_list(String userid);
	
	public AddrDto addr_list_chk(String id);
	
	public PaymentDto order_com(String userid);
	
	public ArrayList<CouponDto> use_coupon(String userid);
	
	public Integer coupon_cnt(String userid);
	
	public ArrayList<PaymentDto> orderday_search(int index);
	
	public ArrayList<PaymentDto> order_search();
	
	public Integer order_detail_cnt(String userid);
	
	public ArrayList<PaymentDto> order_detail_detail1(String order_num,String orderday);
	
	public PaymentDto order_detail_detail2(String order_num,String orderday);
	
	public CouponDto order_detail_coupon(String coupon_id);
	
	public void basket_num(int num,String id,String userid);

	public ArrayList<ProductDto> payment_content(String product_id);
}
