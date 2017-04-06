package com.gm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BlogController {
	
	@RequestMapping("movieBlog.act")
	public String findMovie()
	{
		return "blog/movieBlog";
	}
	@RequestMapping("avoidAdBlog.act")
	public String avoidAdBlog()
	{
		return "blog/avoidAdBlog";
	}
	@RequestMapping("modifyPageDataBlog.act")
	public String modifyPageDataBlog()
	{
		return "blog/modifyPageDataBlog";
	}
	@RequestMapping("RedAndBlueBlog.act")
	public String RedAndBlueBlog()
	{
		return "blog/RedAndBlueBlog";
	}
}
