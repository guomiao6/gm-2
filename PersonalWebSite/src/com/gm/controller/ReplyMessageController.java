package com.gm.controller;
import java.io.IOException;
import java.sql.Timestamp;
import java.util.Date;

import com.gm.DAO.MessageDAO;
import com.gm.DAO.ReplyMessageDAO;
import com.gm.entity.ReplyMessage;
import com.gm.entity.User;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class ReplyMessageController {
	
	@Autowired
	private MessageDAO messageDAO;
	
	@Autowired
	private ReplyMessageDAO replyMessageDAO;
	
	@RequestMapping("replyMessage.act")
	public void ReplyMessage(@RequestParam("replyMessage")String content,
								@RequestParam("messageNo")Long messageNo,
								HttpServletResponse response,
								HttpSession session) throws IOException
	{
		//ajax–¥ªÿ¿‡–Õ
		response.setContentType("text/plain");
		
		ReplyMessage replyMessage = new ReplyMessage();
		
		replyMessage.setContent(content);
		replyMessage.setCreateTime(new Timestamp(new Date().getTime()));
		replyMessage.setUser((User)session.getAttribute("user"));
		try {
			replyMessage.setMessage(messageDAO.getMessageByNo(messageNo));
			replyMessageDAO.saveReplyMessage(replyMessage);
			response.getWriter().write("success");
		} catch (Exception e) {
			response.getWriter().write("fail");
		}
	}
}
