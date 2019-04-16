package com.edu.test;

public class VarrayTest {

	public static void main(String[] args) {
		sum(10,20);
		sum(10,20,30);
	}
	
	public static void sum(int...nums) { //오버로딩의 약어 같은개념
		int total = 0;
		for(int i=0; i<nums.length; i++) {
			total += nums[i];
		}
		System.out.println(total);
	}

}
