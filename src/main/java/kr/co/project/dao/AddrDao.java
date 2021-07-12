package kr.co.project.dao;

import java.util.ArrayList;

import kr.co.project.dto.AddrDto;
import kr.co.project.dto.MemberDto;

public interface AddrDao {
	public ArrayList<AddrDto> register_addr(String userid);
	
	public Integer addr_chk(String userid);
	
	public void insert_addr_ok(AddrDto adto);
	
	public AddrDto update_addr(String id);
	
	public void update_addr_ok(AddrDto adto);
	
	public void delete_addr(String id);
	
	public AddrDto update_main_addr(String id);
	
	public MemberDto member_addr(String userid);

	public void update_addr_member_ok(String name, String phone, String zipcode, String addr1, String addr2, String addr3, String id);
}
