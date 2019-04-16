package com.edu.emp;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.edu.common.ConnectionManager;

public class MemberDAO {
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	//싱글톤 : static field
	static MemberDAO instance;
	public static MemberDAO getInstance() {
		if(instance == null)
			instance = new MemberDAO();
		return instance;
	}
	//등록
	public int insert(MemberDTO dto) {
		int r = 0;
		try {
		//1. DB연결
		conn = ConnectionManager.getConnnect();
		
		//트랜잭션 처리
		conn.setAutoCommit(false);
		
		//2. SQL구문 준비
		String sql = "insert into member (userid, userpw, username, "
				+ "job,hobby,info,gender,regdate) values(?,?,?,?,?,?,?,sysdate)";
		 pstmt = conn.prepareStatement(sql);
		
		//3. 실행
		pstmt.setString(1, dto.getUserid());
		pstmt.setString(2, dto.getUserpw());
		pstmt.setString(3, dto.getUsername());
		pstmt.setString(4, dto.getJob());
		pstmt.setString(5, dto.getHobby());
		pstmt.setString(6, dto.getInfo());
		pstmt.setString(7, dto.getGender());
		r = pstmt.executeUpdate();
		conn.commit();		
		
		//4. 결과처리
		System.out.println(r + " 건이 등록됨");
		} catch(Exception e) { 
			e.printStackTrace();
			try {
				conn.rollback();
			} catch (SQLException e1) {
				e1.printStackTrace();
				} 
			}
		finally {
			//5. 연결해제
			ConnectionManager.close(conn);
		}
		return r;
	}
	//삭제
	//수정
	//단건조회
	//전체조회
		public List<MemberDTO> selectAll(){
			List<MemberDTO> datas = new ArrayList<MemberDTO>();
			try {
				conn = ConnectionManager.getConnnect();
				String sql = "select * from member order by userid";
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();
				while(rs.next()) {
					MemberDTO member = new MemberDTO();
					member.setUserid(rs.getString("userid"));
					member.setUserpw(rs.getString("userpw"));
					member.setUsername(rs.getString("username"));
					member.setJob(rs.getString("job"));
					member.setHobby(rs.getString("hobby"));
					member.setInfo(rs.getString("info"));
					member.setGender(rs.getString("gender"));
					member.setRegdate(rs.getString("regdate"));
					datas.add(member);			
				}
			}catch(Exception e) {
				e.printStackTrace();
			}finally {
				ConnectionManager.close(conn);
			}
			return datas;
		}
}
