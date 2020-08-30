package com.spring.board;

import java.io.IOException;
import java.net.URI;
import java.nio.charset.StandardCharsets;
import java.text.DateFormat;
import java.time.LocalDate;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.util.UriComponentsBuilder;

import com.fasterxml.jackson.databind.ObjectMapper;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@Autowired
	private HomeService homeService;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		
		LocalDate today = LocalDate.now();
		
		//model.addAttribute("serverTime", homeService.getUser("안녕하세요 홍철주 44444"));
		model.addAttribute("serverTime", "1111");
		
		return "home";
	}

	@RequestMapping(value = "/test", method = RequestMethod.GET)
	public String test(Locale locale, Model model) {
		
		return "test";
	}

	@RequestMapping(value = "/test2", method = RequestMethod.GET)
	public @ResponseBody Map<?,?> test2(HttpServletRequest request, ModelMap modelMap) {
		
    	HashMap<String, Object> hashmap = new HashMap<String, Object>();
    	hashmap.put("name", request.getParameter("name"));
    	hashmap.put("age", request.getParameter("age"));
    	
    	modelMap.put("name", "222222");
    	
        return modelMap;

	}
	
}