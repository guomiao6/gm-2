package com.gm.controller;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class FlashGameController {
	//点击FlashGame下的进入
	@RequestMapping("flashGamePlayPage.act")
	public String flashGamePlayPage(@RequestParam(value="game")String game,
									Map<String, Object> map)
	{
		map.put("game", game);
		return "flashGamePlayPage";
	}
}
