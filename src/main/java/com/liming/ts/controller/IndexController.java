package com.liming.ts.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.liming.ts.common.PageParam;
import com.liming.ts.entity.TableIp;
import com.liming.ts.service.TableIpService;
/**
 * 控制层（action层）
 * @author 李明
 *
 */
@Controller
@RequestMapping(value="/house")
public class IndexController {
	
	@Resource
	TableIpService service;

	@RequestMapping(value ="/indexs")
	public ModelAndView helloWord(HttpServletRequest request){
		
		String currPageStr = request.getParameter("page");
		int  currPage =1;
		try {
			
			currPage = Integer.parseInt(currPageStr);
			
		} catch (Exception e) {
			
		}
		
		//获取总记录数  ，交给service层去判断
		int rowCount = service.getRowCount();
		
		PageParam  pageParam =new PageParam();
		pageParam.setRowCount(rowCount);
		
		if(pageParam.getTotalPage()<currPage){
			currPage= pageParam.getTotalPage();
		}
		
		pageParam.setCurrPage(currPage);
	  	
		pageParam =service.getIpListByPage(pageParam);
		
		//给界面传值
		request.setAttribute("pageParam", pageParam);
		
		//测试
		for(TableIp e:pageParam.getData()){
			
			System.out.print("录入事件"+e.getFindTime());			
		}

		return  new ModelAndView("index");
		
	}

}
