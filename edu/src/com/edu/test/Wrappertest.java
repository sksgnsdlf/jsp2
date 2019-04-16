package com.edu.test;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

/*
	1. 래퍼 클래스 8개의 용도
	   - 기본 데이터형을 객체화
	   - 타입변환
*/
public class Wrappertest {

	public static void main(String[] args) {
		
		//int -> Integer
		int i = 10;
		Integer objInt = new Integer(i); 
		objInt = i;			 //auto-boxing
		//Integer -> int	
		i = objInt;		 	 //auto-unboxing
		i = objInt.intValue();
		
		//String -> int 중요
		String s = "100";
		i = Integer.parseInt(s); //String s를 int i으로 바꿈
		//int -> String
		s = Integer.toString(i); //int i 를 String s로 바꿈
		
		//String -> long
		long l ;
		l = Long.parseLong(s);
		//long -> String
		s = Long.toString(l); 
		
		//날짜
		//System.currentTimeMillis();
		Date today = new Date();
		long day1 = today.getTime();
		
		Calendar day2 = Calendar.getInstance();
		day2.set(2019, 3, 10);
		
		long diff = day2.getTimeInMillis() - day1;
		System.out.println("남은 일수 = "  + diff/1000/60/60/24);
		
		//Date -> String ( oracle to_char() )
		System.out.println(today);
		
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy/MM/dd");
		System.out.println(formatter.format(today));
		
		//String -> Date
		String day3 = "2019-03-01";
		String[] day4 = day3.split("-");
		int y = Integer.parseInt(day4[0]);
		int m = Integer.parseInt(day4[1]);
		int d = Integer.parseInt(day4[2]);
		//day2.set(y,m,d);
		day2.set(Calendar.YEAR, y);
		day2.set(Calendar.MONTH, m);
		day2.set(Calendar.DAY_OF_MONTH, d);
		
		System.out.println(day2);
		System.out.println("year : " + day2.get(Calendar.YEAR));
		System.out.println("month : " + day2.get(Calendar.MONTH));
	}
}
