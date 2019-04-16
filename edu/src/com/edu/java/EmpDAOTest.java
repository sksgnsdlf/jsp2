package com.edu.java;

import java.util.List;
import java.util.Map;

import com.edu.emp.EmpDAO;

public class EmpDAOTest {

	public static void main(String[] args) {
		List<Map<String,Object>> list = EmpDAO.getInstance().selectDeptSal();
		for(Map<String, Object> list2 : list) {
			System.out.println(list2);
		}
	}
}
