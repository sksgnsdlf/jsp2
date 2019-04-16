package com.edu.java;
/*
Set : 순서 없고, 중복값 허용 안함
index 접근 불가 get()메소드가 안됨
*/

import java.util.Iterator;
import java.util.TreeSet;

public class SetTest {

	public static void main(String[] args) {
		TreeSet<Integer> set = new TreeSet<Integer>(); //TreeSet 순서있는 집합 (중복값제거)
		// 로또 생성기
		// 난수 생성
		int i = 0;
		while (set.size() < 6) {
			int num = (int)Math.floor(Math.random() * 45) + 1;
			set.add(num);
		}
		System.out.println(set);
		System.out.println("===Iterator 사용 ===");
		//set.get()메소드가 없다. Iterator를 써야함
		Iterator<Integer> iter = set.iterator();
		while(iter.hasNext()) {
			int temp = iter.next();
			System.out.print(temp + "  ");
		}		
	}
}
