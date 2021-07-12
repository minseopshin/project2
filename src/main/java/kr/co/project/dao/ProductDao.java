package kr.co.project.dao;

import java.util.ArrayList;

import kr.co.project.dto.DetailDto;
import kr.co.project.dto.ProductDto;
import kr.co.project.dto.ProductDto;

public interface ProductDao {
	
	public ArrayList<ProductDto> hlist();
	public ArrayList<ProductDto> rlist();
	
	
	public ArrayList<ProductDto> plist(int index);
	public ArrayList<ProductDto> leftmenu();
	public ArrayList<ProductDto> topmenu(String category1);
	public ProductDto content(String id);
	public ArrayList<ProductDto> plist2(String category2,int index);
	public ArrayList<ProductDto> plist3(String category1,int index);
	public void readnum(String id);
	public void heart(String id);
	public void write(ProductDto bdto);
	public Integer get_pagecnt();
	public Integer get_pagecnt2(String category2);
	public Integer get_pagecnt3(String category1);
	
	public ArrayList<ProductDto> new_prd();
	public ArrayList<ProductDto> heart_prd();
	
	public ArrayList<DetailDto> detail_list(String id);
}
