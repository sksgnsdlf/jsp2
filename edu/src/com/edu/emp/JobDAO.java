package com.edu.emp;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.edu.common.ConnectionManager;

public class JobDAO {
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	//싱글톤 : static field
	static JobDAO instance;
	public static JobDAO getInstance() {
		if(instance == null)
			instance = new JobDAO();
		return instance;
}
	public List<JobDTO> selectAll(){
		List<JobDTO> datas = new ArrayList<JobDTO>();
		try {
			conn = ConnectionManager.getConnnect();
			String sql = "select * from jobs order by job_id";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				JobDTO job = new JobDTO();
				job.setJob_id(rs.getString("job_id"));
				job.setJob_title(rs.getString("job_title"));
				datas.add(job);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			ConnectionManager.close(conn);
		}
		return datas;
	}
}
