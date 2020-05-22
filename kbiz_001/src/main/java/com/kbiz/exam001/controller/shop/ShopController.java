package com.kbiz.exam001.controller.shop;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kbiz.exam001.entity.shop.CodeDto;
import com.kbiz.exam001.repository.shop.ShopDao;

@Controller
@RequestMapping("/shop")
public class ShopController {

	
	@Autowired
	private ShopDao shopDao;
	
	@GetMapping("/code_list")
	public String codeList(Model model){
		List<CodeDto> list = shopDao.getList();
		model.addAttribute("list",list);
		
		return "shop/code_list";

	}
	
	
	@RequestMapping("/update")
	public String update() {
		
		return "";
	}
	
}
