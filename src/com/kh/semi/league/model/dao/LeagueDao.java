package com.kh.semi.league.model.dao;

import static com.kh.semi.common.JDBCTemplate.close;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Properties;

import com.kh.semi.league.model.vo.Match_vo;

public class LeagueDao {
	private Properties prop = new Properties();
	
	public LeagueDao() {
		String fileName = LeagueDao.class.getResource("/sql/league/league-query.properties").getPath();
		
		try {
			prop.load(new FileReader(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}
	
	
	public ArrayList<HashMap<String, Object>> selectForMain(Connection con, String fullDate) {
		PreparedStatement pstmt = null;
		ArrayList<HashMap<String, Object>> list = null;
		ResultSet rset = null;
		
		String query = prop.getProperty("selectForMain");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, fullDate);
			
			rset = pstmt.executeQuery();
			
			list = new ArrayList<HashMap<String,Object>>();
			HashMap<String, Object> hmap = null;
			
			
			while(rset.next()) {
				hmap = new HashMap<String, Object>();
				
				hmap.put("LG_NAME", rset.getString("LG_NAME"));
				hmap.put("MATCH_FID", rset.getInt("CLUB_FID"));
				hmap.put("MATCH_SID", rset.getInt("CLUB_SID"));
				hmap.put("MATCH_DATE", rset.getDate("MATCH_DATE"));
				
				list.add(hmap);
				
			}
			
			System.out.println("selectForMain dao : " + list);
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		
		
		return list;
	}

}
