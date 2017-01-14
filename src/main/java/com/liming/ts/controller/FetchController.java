package com.liming.ts.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.liming.ts.service.TableIpService;
/**
 * 层级：Action层（控制层） 
 * 功能： 对于fetch界面的处理
 * @author 李明
 *
 */
@Controller
@RequestMapping(value="/house")
public class FetchController {
	
	@Resource
	TableIpService service;
	
	@RequestMapping(value ="/fetch")
	public ModelAndView toFetchPage(){
		
		return new ModelAndView("fetch");
		
	}
	
	@RequestMapping(value ="/get",method=RequestMethod.POST)
	public void toGetIp(HttpServletRequest request,HttpServletResponse response){
		try {
			request.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e1) {
		
			e1.printStackTrace();
		}
		//获取页面上的值
		String number = request.getParameter("num");
		String country = request.getParameter("country");
		String isp = request.getParameter("isp");
		
		
		//逻辑
	   String txt = service.printIp(number,country,isp);
	  
	  
	  //输出到页面
	  
	  PrintWriter writer;
	try {
		//指定编码格式
		response.setCharacterEncoding("GBK");
		writer = response.getWriter();
		writer.write(txt);
		writer.flush();
		writer.close();
	} catch (IOException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	  
		}

}
