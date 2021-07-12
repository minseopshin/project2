package kr.co.project.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.project.dao.BasketDao;
import kr.co.project.dto.BasketDto;

@Controller
public class BasketController {
	
	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping("payment/shopping_basket")
	public String shopping_basket(BasketDto bdto,Model model,HttpSession session)	{
		String userid = (String) session.getAttribute("userid");
		BasketDao bdao = sqlSession.getMapper(BasketDao.class);
		ArrayList<BasketDto> list = bdao.basket(userid);
		model.addAttribute("list", list);
		return "payment/shopping_basket";
	}
	@RequestMapping("payment/basket_delete")
	public String basket_delete(HttpServletRequest request, HttpSession session) {
		String userid = (String) session.getAttribute("userid");
		String id = request.getParameter("id");
		BasketDao bdao = sqlSession.getMapper(BasketDao.class);
		bdao.basket_delete(id,userid);
		return "redirect:/payment/shopping_basket";
	}
	@RequestMapping("/payment/basket_delete_all")
	public String basket_delete_all(HttpSession session) {
		String userid = (String) session.getAttribute("userid");
		BasketDao bdao = sqlSession.getMapper(BasketDao.class);
		bdao.basket_delete_all(userid);
		return "redirect:/payment/shopping_basket";
	}

}
