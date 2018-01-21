package com.javaex.dao;

import java.util.List;

import com.javaex.vo.GuestbookVo;

public class GuestbookTest {

	public static void main(String[] args) {
		GuestbookVo vo=new GuestbookVo(1,"소한준","안녕","방명록","2010/01/21");
		
		GuestbookDao dao=new GuestbookDao();
		
		//dao.insert(vo);
		
		List<GuestbookVo> aList=dao.getList();
		
		for(GuestbookVo avo : aList) {
			System.out.println(avo.toString());
		}
	}

}
