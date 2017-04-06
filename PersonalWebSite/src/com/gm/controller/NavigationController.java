package com.gm.controller;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class NavigationController {

	//����������
	//1����ҳ
	@RequestMapping("homePage.act")
	public String homePage()
	{
		return "redirect:index.jsp";
	}
	//2��Flash��Ϸ
	@RequestMapping("flashGameHomePage.act")
	public String flashGameHomePage()
	{
		return "flashGameHomePage";
	}
	//3��U3D��Ϸ
	@RequestMapping("U3DGameHomePage.act")
	public String U3DGameHomePage()
	{
		return "U3DGameHomePage";
	}
	//4��Blog
	@RequestMapping("blogHomePage.act")
	public String blogHomePage()
	{
		return "blogHomePage";
	}
	
	
}
