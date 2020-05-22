package com.kbiz.exam001.repository.shop;

import java.util.List;

import com.kbiz.exam001.entity.shop.CodeDto;

public interface ShopDao {

	//상품리스트 
	List<CodeDto> getList();
	//수정
	
	public void update(CodeDto codeDto);
}
