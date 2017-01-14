package com.liming.ts.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
/**
 * 控制层（action层）
 * @author 李明
 *
 */
@Controller
@RequestMapping(value="/house")
public class HelpController {

	
	
	@RequestMapping(value ="/help")
	public ModelAndView toHelpPage(){
		
		return new ModelAndView( "help") ;
		
	}

}
