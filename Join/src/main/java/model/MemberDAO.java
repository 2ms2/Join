package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Vector;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import org.apache.tomcat.dbcp.dbcp2.PStmtKey;

public class MemberDAO {
	Connection con;
	PreparedStatement pstmt;
	ResultSet rs;
	
	public void getCon() {
		// 커넥션풀을 이용한 데이터베이스 접근
		try {
			// 외부에서 데이터를 읽어들여야 된다
			Context initctx = new InitialContext();
			
			// 톰캣 서버에 정보를 담아놓은 곳으로 이동
			Context envctx = (Context) initctx.lookup("java:comp/env");
			
			// 데이터 소스 객체를 선언
			DataSource ds = (DataSource) envctx.lookup("jdbc/pool"); // server.xml -> name="jdbc/pool"과 동일해야된다.
			
			// 데이터 소스를 기준으로 커넥션 연결
			con = ds.getConnection();
			
		} catch (Exception e) {
			System.out.println(e);
			
		}
		
	}
	
	// 한 회원에 대한 정보 저장
	public void insertMember(MemberBean bean) {
		getCon();
		
		try {
			String sql = "INSERT INTO member "
							+ "VALUES (?,?,?,?,?,?,?,?)";

			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, bean.getId());
			pstmt.setString(2, bean.getPass1());
			pstmt.setString(3, bean.getAge());
			pstmt.setString(4, bean.getTel());
			pstmt.setString(5, bean.getEmail());
			pstmt.setString(6, bean.getJob());
			pstmt.setString(7, bean.getHobby());
			pstmt.setString(8, bean.getInfo());

			pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
			
		}
	}
	
	// 모든 회원의 정보를 리턴
	public Vector<MemberBean> getAllMember() {
		Vector<MemberBean> v = new Vector<MemberBean>();
		
		getCon();
		
		try {
			String sql = "SELECT * "
							+ "FROM member";
			
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			// 회원 정보를 저장
			while (rs.next()) {
				MemberBean bean = new MemberBean();
				bean.setId(rs.getString(1));
				bean.setPass1(rs.getString(2));
				bean.setAge(rs.getString(3));
				bean.setTel(rs.getString(4));
				bean.setEmail(rs.getString(5));
				bean.setJob(rs.getString(6));
				bean.setHobby(rs.getString(7));
				bean.setInfo(rs.getString(8));

				v.add(bean);
			}
			con.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return v;
		
	}
}
