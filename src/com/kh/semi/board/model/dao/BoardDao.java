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
import com.kh.semi.board.model.vo.PageInfo;
 
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
	public ArrayList<Board_vo> selectListWithPaging(Connection con, PageInfo pi) {
	      PreparedStatement pstmt = null;
	      ResultSet rset = null;
	      ArrayList<Board_vo> list = null;
	      
	      String query = prop.getProperty("selectListWithPaging");
	      
	      try {
	         pstmt = con.prepareStatement(query);
	         
	         int startRow = (pi.getCurrentPage() - 1) * pi.getLimit() + 1;
	         int endRow = startRow + pi.getLimit() - 1;
	         System.out.println(startRow);
	         System.out.println(endRow);
	         pstmt.setInt(1, startRow);
	         pstmt.setInt(2, endRow);
	         
	         rset = pstmt.executeQuery();
	         
	         list = new ArrayList<Board_vo>();
	         
	         while(rset.next()) {
	            Board_vo b = new Board_vo();
	            
	            b.setBid(rset.getInt(1));
	            b.setbType(rset.getInt(2));
	            b.setbNo(rset.getInt(3));
	            b.setbWriter(rset.getInt(4));
	            b.setbTitle(rset.getString(5));
	            b.setbContent(rset.getString(6));
	            b.setbCount(rset.getInt(7));
	            b.setbDate(rset.getDate(8));
	            b.setModifyDate(rset.getDate(9));
	            b.setbStatus(rset.getString(10));
	            
	            list.add(b);
	         }
	      
	      } catch (SQLException e) {
	         e.printStackTrace();
	      } finally {
	         close(pstmt);
	         close(rset);
	      }
	      System.out.println(list);
	      return list;
	   }

	public int getListCount(Connection con) {
		 Statement stmt  = null;
	      int listCount = 0;
	      ResultSet rset = null;
	      
	      String query = prop.getProperty("listCount");
	      
	      try {
	         stmt = con.createStatement();
	         rset = stmt.executeQuery(query);
	         
	         if(rset.next()) {
	            listCount=rset.getInt(1);
	         }
	      } catch (SQLException e) {
	         
	         e.printStackTrace();
	      }finally {
	         close(stmt);
	         close(rset);
	      }
	      
	      return listCount;
	   }
}












