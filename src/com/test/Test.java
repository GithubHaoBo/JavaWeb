package com.test;

import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class Test {
	
	public static void main(String[] args) throws ParseException {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy年MM月dd日 HH时mm分ss秒");
		System.out.println(new Date());
		//转化为字符串
		String strdate = sdf.format(new Date());
		System.out.println(strdate);
		//字符串转日期
		Date adate = sdf.parse(strdate);
		System.out.println(adate);
		
		Timestamp timeStamp = new Timestamp(new Date().getTime());  
		System.out.println(timeStamp);
		
		System.out.println(sdf.format(timeStamp));
		
		java.sql.Date sdate = new java.sql.Date(new Date().getTime());
		System.out.println(sdate);
	}

}
