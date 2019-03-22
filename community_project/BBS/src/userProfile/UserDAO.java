package userProfile;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

public class UserDAO {

	Connection conn = null; // connection:db�뿉�젒洹쇳븯寃� �빐二쇰뒗 媛앹껜
	Statement stmt = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	String dbURL = "jdbc:oracle:thin:@localhost:1521:XE"; // localhost:1521 �룷�듃�뒗 而댄벂�꽣�꽕移섎맂 ORACLE二쇱냼
	String dbID = "kosh09";
	String dbPassword = "qudtls1544";
	

	public UserDAO() { // �깮�꽦�옄 �떎�뻾�맆�븣s留덈떎 �옄�룞�쑝濡� DB�뿰寃곗씠 �씠猷⑥뼱 吏� �닔 �엳�룄濡앺븿
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection(dbURL, dbID, dbPassword);
		} catch (Exception e) {
			e.printStackTrace(); // �삤瑜섍� 臾댁뾿�씤吏� 異쒕젰
		}
	}

	public int login(String userEmail, String userPassword) {
		try {
			String SQL = "SELECT USERPASSWORD FROM USERPROFILE WHERE USEREMAIL = ?";
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, userEmail);
			rs = pstmt.executeQuery();
			pstmt.close();

			if (rs.next()) {
				if (rs.getString(1).equals(userPassword)) {
					return 1;
				} 
				else
					return 0;
			}
			return -1;

		} 
		
		catch (Exception e) {
			e.printStackTrace();
		}
		return -2;
	}
	
	public int join(User user) {
		int count = 0;
		try {
			String SQL = "INSERT INTO USERPROFILE VALUES (?,?,?,?,?,?,?)";
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, user.getUserEmail());
			pstmt.setString(2, user.getUserPassword());
			pstmt.setString(3, user.getUserName());
			pstmt.setString(4, user.getUserGender());
			pstmt.setString(5, user.getUserPhone());
			pstmt.setString(6, user.getUserBirth());
			pstmt.setString(7, "Guest");

			count = pstmt.executeUpdate();
			pstmt.close();
			
		} 
		catch (Exception e) {
			e.printStackTrace();
		}
		
		return count;
	}
	
	/*
	public ArrayList<UserDAO> selectALLUserProfile() {
		ArrayList<UserDAO>list = new ArrayList<UserDAO>();
		UserDAO UserDAO = null;
		String SQL = "select * from userprofile";
		
		try {
			stmt = conn.createStatement();
			rs = stmt.executeQuery(SQL);
			
			while(rs.next()) {
				UserDAO = new UserDAO();
				UserDAO.setUserEmail(rs.getString("UserEmail"))
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}
	*/
	
	public String getGrade(String userEmail) {			// 사용자의 권한을 반환해주는 녀석
		String grade = null;
		try {
			conn = DriverManager.getConnection(dbURL, dbID, dbPassword);
			pstmt = null;
			rs = null;
			String SQL = "SELECT grade FROM member WHERE id = ?";
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, userEmail);
			 
			rs = pstmt.executeQuery();
			 
			if(rs.next()) {
				grade = rs.getString("grade");
			}
		} 
		catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		}
		return grade;
	}
}
