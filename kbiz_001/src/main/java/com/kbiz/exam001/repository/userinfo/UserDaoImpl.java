package com.kbiz.exam001.repository.userinfo;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import com.kbiz.exam001.entity.userinfo.UserDetailDto;
import com.kbiz.exam001.entity.userinfo.UserDto;

public class UserDaoImpl implements UserDao{

	
	@Autowired
	private SqlSession sql;
	
	//로그인
	@Override
	public UserDto login(UserDto userDto) {
		
		return  sql.selectOne("user.login", userDto);
	}

	//회원가입
	@Override
	public void join(UserDto userDto) {
		
		sql.insert("user.join", userDto);
	}

	//아이디체크
	@Override
	public int idchk(UserDto userDto) {
		int result = sql.selectOne("user.idchk", userDto);
		return result;
	}

	@Override
	public void detail(UserDetailDto userdetailDto) {
		System.out.println("------------->"+userdetailDto.toString());
		
		
		
		sql.insert("user.detail", userdetailDto);
		
	}

	
}
