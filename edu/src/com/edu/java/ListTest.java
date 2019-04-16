package com.edu.java;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;

import com.edu.emp.EmpDTO;

import sun.security.action.GetBooleanSecurityPropertyAction;
import sun.security.jca.GetInstance;

public class ListTest {

	public static void main(String[] args) {
		
		ArrayList<String> list = new ArrayList<String>(); 
		
		//1.추가
		System.out.println("===추가===");
		list.add("사과");
		list.add("바나나");
		list.add(0,"수박"); //숫자를 적어서 중간에 삽입가능 1로하면 사과(0), 수박(1), 바나나(2)가 됨
		System.out.println(list);
		
		
		//2.삭제
		System.out.println("===삭제===");
		list.remove("수박");
		System.out.println(list);
		//list.clear(); //전체 삭제
		//3.변경
		list.set(0, "복숭아");
			
		
		//4.조회
		//for
		System.out.println("===for조회===");
		for(int i=0; i<list.size(); i++) {
			String temp = list.get(i);
			System.out.println(temp);
			
		}
		
		//확장for
		System.out.println("===확장for조회");
		for(String temp : list) {
			System.out.println(temp);
		}
		
		//iterator : 일렬로 줄을 세운다. (잘안써도 알아둬야함)
		System.out.println("===iterator조회===");
		Iterator<String> iter =  list.iterator();
		while(iter.hasNext()) {
			String temp = iter.next();
			System.out.println(temp);
		}
		
		//EmpDTO list
		ArrayList<EmpDTO> empList = new ArrayList<EmpDTO>();
		empList.add(new EmpDTO("100", "홍길동", "2000"));
		empList.add(new EmpDTO("101", "김유신", "3000"));
		empList.add(new EmpDTO("102", "유관순", "1000"));
		
		//정렬
		Collections.sort(empList);
		System.out.println("정렬후-----------------");
		System.out.println(empList);
		Collections.shuffle(empList); //다시 섞어주는것
		
		//확장for문이용해서 이름만 출력
		System.out.println("===확장for문이용해서 이름만 출력===");
		for(EmpDTO empList1 : empList) {
			
			System.out.println(empList1.getFirst_name());
		}
		
		//iterator 이용해서 급여만 출력, 전체급여 계산
		System.out.println("===iterator 이용해서 급여만 출력, 전체급여 계산===");
		int sum=0;
		Iterator<EmpDTO> empList2 = empList.iterator();
		while(empList2.hasNext()) {
			EmpDTO empList3 = empList2.next();
			System.out.println(empList3.getSalary());
			sum += Integer.parseInt(empList3.getSalary());
			//String salary = iter2.next().getSalary(); //메서드체인(다른방식) 
			//System.out.println(salary);
			//sum += Interger.parseInt(salary);
		}
		System.out.println(sum);
	}

}
