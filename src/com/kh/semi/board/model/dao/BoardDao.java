package com.kh.semi.board.model.dao;
import static com.kh.semi.common.JDBCTemplate.*;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Properties;

import com.kh.semi.board.model.vo.Board_vo;
import com.kh.semi.board.model.vo.Qna_vo;

public class BoardDao {
	
	private Properties prop = new Properties();
	
	public BoardDao() {
		
		String fileName = BoardDao.class.getResource("/sql/board/board-query.properties").getPath();
		
		try {
			prop.load(new FileReader(fileName));
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}

	public int insertBoard(Connection con, Board_vo newBoard) {

		PreparedStatement pstmt = null;
		int result = 0;
		
		
		String query = prop.getProperty("insertBoard");
		
		try {
			pstmt = con.prepareStatement(query);
			//이거 순서 쿼리문에서 들어가는 순서 맞게해야함 ^^ 
			pstmt.setInt(1, newBoard.getPfId());
			pstmt.setString(2, newBoard.getbTitle());
			pstmt.setString(3, newBoard.getbContent());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(pstmt);
			
		}
		
		return result;
		
		
		
		
	}

	public ArrayList<Board_vo> selectList(Connection con) {

		Statement stmt = null;
		ResultSet rset = null;
		ArrayList<Board_vo> list = null;
		
		String query = prop.getProperty("selectList");
		
		try {
			stmt = con.createStatement();
			
			rset = stmt.executeQuery(query);
			
			list = new ArrayList<Board_vo>();
			
			while(rset.next()) {
				Board_vo b = new Board_vo();
				
				b.setBid(rset.getInt("bid"));
				b.setbType(rset.getInt("bType"));
				b.setbNo(rset.getInt("bNo"));
				b.setPfId(rset.getInt("pfId"));
				b.setbTitle(rset.getString("bTitle"));
				b.setbContent(rset.getString("bTitle"));
				b.setbCount(rset.getInt("bCount"));
				b.setbDate(rset.getDate("bDate"));
				b.setModifyDate(rset.getDate("modifyDate"));
				b.setbStatus(rset.getString("bStatus"));
				
				list.add(b);
				
			}
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(stmt);
			close(rset);
			
		}
		
		
		
		return list;
	}

	

	public int selectCurrval(Connection con) {

		Statement stmt = null;
		ResultSet rset = null;
		
		int bid = 0;
		
		String query = prop.getProperty("selectCurrval");
		
		try {
			stmt = con.createStatement();
			rset = stmt.executeQuery(query);
			
			if(rset.next()) {
				bid = rset.getInt("");
			}
					
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(stmt);
			close(rset);
			
		}
		//반환값이 bid
		return bid;
	}

	public int insertQna(Connection con, Qna_vo qv) {

		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("");
		
		try {
			pstmt = con.prepareStatement(query);
			//title
		//	pstmt.setString(parameterIndex, x);
			//content
		//	pstmt.setString(parameterIndex, x);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(pstmt);
			
		}
		
		return result;
		
	}

}


























