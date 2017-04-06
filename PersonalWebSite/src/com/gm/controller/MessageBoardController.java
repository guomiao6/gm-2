package com.gm.controller;

import java.io.UnsupportedEncodingException;
import java.sql.Timestamp;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.enterprise.inject.New;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.gm.DAO.MessageDAO;
import com.gm.entity.Message;
import com.gm.entity.User;


@Controller
public class MessageBoardController {
	
	@Autowired
	private MessageDAO messageDAO;
	
	private static final Integer countPerPage = 8;
	
	@RequestMapping("submitMessage.act")
	public String submitMessage(@ModelAttribute("message") Message message,
								HttpSession session) throws UnsupportedEncodingException
	{
		//��content����ת��
		message.setContent(new String(message.getContent().getBytes("ISO-8859-1"),"utf-8"));
		//����Message��¼
		message.setUser((User)session.getAttribute("user"));
		message.setCreateDate(new Timestamp(new Date().getTime()));
		//�洢�����ݿ���
		messageDAO.saveMessage(message);
		return "redirect:messageBoard.act";
	}
	
	//5�����԰�
	@RequestMapping("messageBoard.act")
	public String messageBoard(@RequestParam(value="page",defaultValue="1",required=false)Integer page,
								Map<String, Object> map)
	{
		//��ǰҳ��һ����¼������
		Integer firstNo = (page-1) * countPerPage;
		List<Message>  messages = messageDAO.getMessage(firstNo, countPerPage);
		for (Message message : messages) {
			System.out.println(message);
		}
		map.put("messages", messages);
		
		//�������з���Message�������ڱ�
		map.put("message", new Message());
		//���õ�ǰҳ����
		map.put("pageIndex", page);
		//������ҳ��
		Long messageCount = messageDAO.getMessageCount();
		map.put("pageCount", (messageCount + countPerPage - 1)/countPerPage);
		return "messageBoard";
	}
}
