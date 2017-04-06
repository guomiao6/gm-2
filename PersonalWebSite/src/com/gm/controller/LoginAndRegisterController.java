package com.gm.controller;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.sql.Date;
import java.util.Map;

import javax.enterprise.inject.New;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.gm.DAO.UserDAO;
import com.gm.entity.User;
import com.gm.util.MD5Util;
import com.gm.util.RegexUtil;
import com.gm.util.RemoveSpaces;

@Controller
public class LoginAndRegisterController {

	@Autowired
	private UserDAO userDAO;
	
	@RequestMapping("registerPage.act")
	public String registerPage(Map<String, Object> map)
	{
		map.put("user", new User());
		return "registerPage";
	}
	
	@RequestMapping("register.act")
	public String register(@Valid User user,BindingResult result,
							Map<String, Object> map,
							HttpServletRequest request,
							HttpSession session) throws UnsupportedEncodingException
	{
		//去除用户名、昵称、密码栏的空格 
		user.setUsername(RemoveSpaces.removeSpaces(user.getUsername()));
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
			System.out.println(user.getNickname());
		}
		//验证不合法
		if(result.getErrorCount() > 0)
		{
			return "registerPage";
		}

		//用户名是否由字母和数字组成
		if(!RegexUtil.characterAndNumber(user.getUsername()))
		{
			result.addError(new ObjectError("usernameIllegal", "用户名不由字母和数字组成"));
			map.put("usernameError", "用户名不合法");
			return "registerPage";
		}
		//用户名已存在
		if(userDAO.getUserByUsername(user.getUsername()) != null)
		{
			result.addError(new ObjectError("usernameIllegal", "用户名已存在"));
			map.put("usernameError", "用户名已存在");
			return "registerPage";
		}
		//昵称已存在
		if(userDAO.getUerByNickname(user.getNickname()) != null)
		{
			result.addError(new ObjectError("nicknameIllegal", "昵称已存在"));
			map.put("nicknameError", "昵称已存在");
			return "registerPage";
		}
		//均合法
		//1、对密码进行MD5加密
		user.setPassword(MD5Util.MD5(user.getPassword()));
		user.setCreateDate(new Date(new java.util.Date().getTime()));
		//2、加入数据库中
		userDAO.insertUser(user);
		session.setAttribute("user", user);
		return "redirect:index.jsp";
	}
	
	@RequestMapping("login.act")
	public void login(@RequestParam("username")String username,
						@RequestParam("password")String password,
						HttpServletResponse response,
						HttpSession session) throws IOException
	{
		response.setContentType("text/plain");
		String md5Password = MD5Util.MD5(password);
		User user = userDAO.validateUser(username, md5Password);
		if(user != null)
		{
			session.setAttribute("user", user);
			response.getWriter().print("success");
		}
		else {
			response.getWriter().print("fail");
		}
	}
	
}
