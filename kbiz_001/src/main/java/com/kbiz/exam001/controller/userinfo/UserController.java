package com.kbiz.exam001.controller.userinfo;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kbiz.exam001.entity.userinfo.UserDetailDto;
import com.kbiz.exam001.entity.userinfo.UserDto;
import com.kbiz.exam001.repository.userinfo.UserDao;

@Controller
@RequestMapping("/user")
public class UserController {

	
	@Autowired
	private UserDao userDao;
	
	
	//로그인
	@GetMapping("/login")
	public String login() {
		
		return "user/login";
	}
	
	@PostMapping("/login")
	public String login(UserDto userDto,HttpSession session, RedirectAttributes rttr) {
		
		UserDto login = userDao.login(userDto);
		
		if(login == null) {
			session.setAttribute("user", null);
			rttr.addAttribute("msg", false);
		}else {
			session.setAttribute("user", login);
		}
		
		return "redirect:/";
	}
	
	//로그아웃 기능
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		
		session.invalidate();
		
		return "redirect:/user/login";
	}
	
	
	//회원가입
	@GetMapping("/join")
	public String join() {
		
		return "user/join";
	}
	
	@PostMapping("/join")
	public String join(UserDto userDto, Model model, @RequestParam String id ,@RequestParam String name) {
		
		
		int result = userDao.idchk(userDto);
		if(result == 1) {
			return "/user/join";
		}else if(result == 0) {
			userDao.join(userDto);
		}
		
		model.addAttribute("id",id);
		model.addAttribute("insuser",name);
		
		return "user/detail";
	}
	
	
	//아이디 중복 체크
	@ResponseBody
	@PostMapping("/idchk")
	public int idchk(UserDto userDto) {
		
		int result = userDao.idchk(userDto);
		
		return result;
	}
	
	
	//회원가입 상세
	@GetMapping("/detail")
	public String detail() {
		
		return "user/detail";
	}
	
	@PostMapping("/detail")
	public String detail(UserDetailDto userdetailDto) {
		
		userDao.detail(userdetailDto);
		
		return "redirect:/user/login";
	}
	
	
	
	
	
	
}
