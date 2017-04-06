package com.gm.controller;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.gm.DAO.UserDAO;
import com.gm.entity.User;
import com.gm.util.MD5Util;
import com.gm.util.RemoveSpaces;

@Controller
public class LogoutAndModifyInfoController {
	
	@Autowired
	private UserDAO userDAO;
	@RequestMapping("logout.act")
	public void logout(HttpServletResponse response, HttpSession session) throws IOException
	{
		response.setContentType("text/plain");
		try {
			session.removeAttribute("user");
			response.getWriter().write("success");
		} catch (Exception e) {
			response.getWriter().write("fail");
		}
	}
	
	@RequestMapping("modifyInfoPage.act")
	public String modifyInfoPage(HttpSession session,Map<String, Object> map)
	{
		User user = (User) session.getAttribute("user");
		map.put("modify", user);
		return "modifyInfoPage";
	}
	@RequestMapping("validateOldPassword.act")
	public void validateOldPassword(HttpServletResponse response,
									@RequestParam("oldPassword") String oldPassword,
									@RequestParam("username") String username) throws IOException
	{
		response.setContentType("text/plain");
		User user = userDAO.validateUser(username, MD5Util.MD5(oldPassword));
		if(user != null)
		{
			response.getWriter().write("success");
		}
		else {
			response.getWriter().write("fail");
		}
	}
	//在修改之前，将要修改的User放入Map中
	@ModelAttribute()
	public void preModify(Map<String, Object> map,
							HttpSession session)
	{
		User user = userDAO.getUserByUsername(((User)session.getAttribute("user")).getUsername());
		map.put("modify", user);
	}
	
	@RequestMapping("modifyInfo.act")
	public String modifyInfo(@ModelAttribute("modify") User user,
								Map<String, Object> map,
								HttpSession session) throws UnsupportedEncodingException
	{
		//去掉密码栏和昵称栏的空格
		user.setPassword(RemoveSpaces.removeSpaces(user.getPassword()));
		user.setNickname(RemoveSpaces.removeSpaces(user.getNickname()));
		//昵称为空时使用用户名作为昵称
		if(user.getNickname() == null||user.getNickname().equals(""))
		{
			user.setNickname(user.getUsername());
		}
		else
		{
			//重新编码，防止乱码
			user.setNickname((new String(user.getNickname().getBytes("ISO-8859-1"),"utf-8")));
		}
		//没有修改密码时使用原密码
		if(user.getPassword() == null||user.getPassword().equals(""))
		{
			System.out.println("没有修改密码");
			user.setPassword(userDAO.getUserByUsername(user.getUsername()).getPassword());
		}//否则进行MD5加密
		else {
			user.setPassword(MD5Util.MD5(user.getPassword()));
		}
		//昵称已存在并且不是同一个用户（同一个用户说明昵称没有更改)
		User userWithNickName = userDAO.getUerByNickname(user.getNickname());
		if(userWithNickName != null&&!userWithNickName.getUsername().equals(user.getUsername()))
		{
			map.put("nicknameError", "昵称已存在");
			return "modifyInfoPage";
		}
		//修改信息后存入数据库中
		userDAO.updateUser(user);
		session.setAttribute("user", user);
		return "redirect:index.jsp";
	}
}
