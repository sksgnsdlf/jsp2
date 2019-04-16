package com.edu.java;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;

import com.edu.emp.EmpDTO;

/*
key로 등록하고 조회
key는 중복안됨
검색
*/
public class MapTest {

	public static void main(String[] args) {
		HashMap<String, String> map = new HashMap<String, String>();
		//추가(Map은 put으로 추가한다(add가아님))
		map.put("1", "수박");
		map.put("2", "오렌지");
		
		//수정
		map.replace("2", "사과"); //map.put("2", "사과"); 
		
		//삭제
		map.remove("1");
		
		
		//조회(검색)
		System.out.println(map.get("2"));		
		
		System.out.println("===전체조회===");
		//전체조회
		Iterator<String> iter = map.keySet().iterator();
		while(iter.hasNext()) {
			String key = iter.next();
			String value = map.get(key);
			System.out.println(value);
		}
		System.out.println("===102번 사원의 이름은?===");
		HashMap<String , EmpDTO> empMap = new HashMap<String, EmpDTO>();
		empMap.put("101", new EmpDTO("101","유관순","1000"));
		empMap.put("102", new EmpDTO("102","홍길동","2000"));
		//102번 사원의 이름은?
		System.out.println(empMap.get("102").getFirst_name());
	}
}
