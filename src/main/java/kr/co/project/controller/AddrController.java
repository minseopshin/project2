package kr.co.project.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.project.dao.AddrDao;
import kr.co.project.dto.AddrDto;
import kr.co.project.dto.MemberDto;

@Controller
public class AddrController {
	
	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping("addr/register_addr")
	public String register_addr(Model model,HttpSession session)	{
		String userid = (String) session.getAttribute("userid");
		AddrDao adao = sqlSession.getMapper(AddrDao.class);
		ArrayList<AddrDto> alist = adao.register_addr(userid);
		Integer chk = adao.addr_chk(userid);
		model.addAttribute("alist", alist);
		model.addAttribute("chk", chk);
		return "addr/register_addr";
	}
	@RequestMapping("addr/insert_addr")
	public String insert_addr()	{
		return "addr/insert_addr";
	}
	@RequestMapping("addr/insert_addr_ok")
	public String insert_addr_ok(HttpSession session,HttpServletRequest request, AddrDto adto) {
		AddrDao adao = sqlSession.getMapper(AddrDao.class);
		adao.insert_addr_ok(adto);
		return "redirect:/addr/register_addr";
	}
	@RequestMapping("addr/update_addr")
	public String update_addr(Model model,HttpServletRequest request)	{
		String id = request.getParameter("id");
		AddrDao adao = sqlSession.getMapper(AddrDao.class);
		AddrDto adto = adao.update_addr(id);
		model.addAttribute("adto", adto);
		
		return "addr/update_addr";
	}
	@RequestMapping("addr/update_addr_ok")
	public String update_addr_ok(AddrDto adto)	{
		AddrDao adao = sqlSession.getMapper(AddrDao.class);
		adao.update_addr_ok(adto);
		return "redirect:/addr/register_addr";
	}
	@RequestMapping("addr/delete_addr")
	public String delete_addr(HttpServletRequest request)	{
		String id = request.getParameter("id");
		AddrDao adao = sqlSession.getMapper(AddrDao.class);
		adao.delete_addr(id);
		return "redirect:/addr/register_addr";
	}
	@RequestMapping("addr/search_addr")
	public String search_addr() {
		return "addr/search_addr";
	}
	@RequestMapping("addr/addr")
	public String addr(HttpSession session,Model model)	{
		String userid = (String) session.getAttribute("userid");
		AddrDao adao = sqlSession.getMapper(AddrDao.class);
		ArrayList<AddrDto> alist = adao.register_addr(userid);
		MemberDto mdto = adao.member_addr(userid);
		Integer chk = adao.addr_chk(userid);
		model.addAttribute("alist", alist);
		model.addAttribute("mdto", mdto);
		model.addAttribute("chk", chk);
		return "addr/addr";
	}
	@RequestMapping("addr/insert_main_addr")
	public String insert_main_addr()	{
		return "addr/insert_main_addr";
	}
	@RequestMapping("addr/update_main_addr")
	public String update_main_addr(Model model,HttpServletRequest request,HttpSession session)	{
		String id = request.getParameter("id");
		String userid = (String) session.getAttribute("userid");
		AddrDao adao = sqlSession.getMapper(AddrDao.class);
		if(id.equals("base"))	{
			MemberDto adto = adao.member_addr(userid);
			model.addAttribute("adto", adto);
			model.addAttribute("a", "1");
		}
		else	{
			AddrDto adto = adao.update_addr(id);
			model.addAttribute("adto", adto);
			model.addAttribute("a", "0");
		}
		return "addr/update_main_addr";
	}
	@RequestMapping("addr/insert_main_addr_ok")
	public String insert_main_addr_ok(HttpSession session,HttpServletRequest request, AddrDto adto) {
		AddrDao adao = sqlSession.getMapper(AddrDao.class);
		adao.insert_addr_ok(adto);
		return "redirect:/addr/addr";
	}
	@RequestMapping("addr/update_main_addr_ok")
	public String update_main_addr_ok(AddrDto adto,HttpServletRequest request)	{
		String a = request.getParameter("a");
		AddrDao adao = sqlSession.getMapper(AddrDao.class);
		System.out.println(a);
		if (a.equals("1")) {
			String name= request.getParameter("name");
			String addr1= request.getParameter("addr1");
			String addr2= request.getParameter("addr2");
			String addr3= request.getParameter("addr3");
			String zipcode= request.getParameter("zipcode");
			String phone= request.getParameter("phone");
			String id= request.getParameter("id");
					
			adao.update_addr_member_ok(name,phone,zipcode,addr1,addr2,addr3,id);
		}
		else	{
			adao.update_addr_ok(adto);
		}
		return "redirect:/addr/addr";
	}
	@RequestMapping("addr/delete_main_addr")
	public String delete_main_addr(HttpServletRequest request)	{
		String id = request.getParameter("id");
		AddrDao adao = sqlSession.getMapper(AddrDao.class);
		adao.delete_addr(id);
		return "redirect:/addr/addr";
	}
}
