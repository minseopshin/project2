package kr.co.project.dao;

import java.util.ArrayList;

import kr.co.project.dto.BasketDto;

public interface BasketDao {
	public ArrayList<BasketDto> basket(String userid);
	
	public void basket_delete(String id,String userid);
	
	public void basket_delete_all(String userid);
	
	// content에서 장바구니 추가
	   public void basket_add_in_content(String userid,String productid,int num);
	   
	   // 장바구니 10개 제한
	   public Integer basket_10(String userid); 
	   
	   // 장바구니 중복 제한
	   public Integer basket_only(String userid,String productid);
}
