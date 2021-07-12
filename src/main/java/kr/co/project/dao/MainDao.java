package kr.co.project.dao;

import java.util.ArrayList;

import kr.co.project.dto.CouponDto;
import kr.co.project.dto.EventDto;
import kr.co.project.dto.ProductDto;

public interface MainDao {
	public ArrayList<ProductDto> new_product();
	
	public ArrayList<ProductDto> best_readnum();
	
	public ProductDto recom_cate1();
	
	public ProductDto recom_cate2();
	
	public ArrayList<ProductDto> recom_product1(String a);
	
	public ArrayList<ProductDto> recom_product2(String b);
	
	public ArrayList<CouponDto> coupon();
	
	public ArrayList<ProductDto> search1(String search,int index);
	
	public ArrayList<ProductDto> search2(String search,int index);
	
	public ArrayList<ProductDto> search3(String search,int index);
	
	public ArrayList<ProductDto> search4(String search,int index);
	
	public ArrayList<ProductDto> search5(String search,int index);
		
	public ArrayList<ProductDto> search6(String search,String cate,int index);
	
	public ArrayList<ProductDto> search7(String search,String cate,int index);
	
	public ArrayList<ProductDto> search8(String search,String cate,int index);
	
	public ArrayList<ProductDto> search9(String search,String cate,int index);
	
	public ArrayList<ProductDto> search0(String search,String cate,int index);
	
	public Integer search_cnt1(String search);
	
	public Integer search_cnt2(String search,String cate);
	
	public Integer total_cnt(String search);
	
	public ArrayList<ProductDto> search_category(String search);
	
	public void insert_analysis();
	
	
}
