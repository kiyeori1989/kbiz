package com.kbiz.exam001.repository.shop;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;


import com.kbiz.exam001.entity.shop.CodeDto;

public class ShopDaoImpl implements ShopDao{

	
	
	
	@Autowired
	private SqlSession sql;
	
	@Override
	public List<CodeDto> getList() {
		
		return sql.selectList("shop.codeList");
	}

	@Override
	public void update(CodeDto codeDto) {
		
		sql.update("shop.update", codeDto);
	}

}
