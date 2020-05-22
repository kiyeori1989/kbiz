package com.kbiz.exam001.repository.userinfo;

import com.kbiz.exam001.entity.userinfo.UserDetailDto;
import com.kbiz.exam001.entity.userinfo.UserDto;

public interface UserDao {

	//로그인
	public UserDto login(UserDto userDto);
	//회원가입
	public void join(UserDto userDto);
	//아이디 중복체크
	public int idchk(UserDto userDto);
	//회원가입 상세정보
	public void detail(UserDetailDto userdetailDto);
	

}
