package com.kh.semi.league.model.dao;

import static com.kh.semi.common.JDBCTemplate.close;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Properties;

import com.kh.semi.league.model.vo.Match_vo;
import com.kh.semi.league.vo.League_vo;
import com.sun.corba.se.spi.orbutil.fsm.State;

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
				hmap.put("MATCH_DATE", rset.getDate("MATCH_DATE"));
				hmap.put("CLUB_FID", rset.getNString(3));
				hmap.put("CLUB_SID", rset.getString(4));
				
				
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


	public HashMap<String, Object> selectLeague(Connection con, String leagueName) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		HashMap<String, Object> hmap = null;
		
		
		String query = prop.getProperty("selectLeague");
				
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, leagueName);
			
			rset = pstmt.executeQuery();
			ArrayList<String>list = new ArrayList<String>();
			League_vo league = new League_vo();
			hmap = new HashMap<String, Object>();
			
			while(rset.next()) {
				
				league.setLgName(rset.getString("LG_NAME"));
				league.setLgHost(rset.getString("LG_HOST"));
				league.setLgMinPlayer(rset.getInt("LG_MIN_PLAYER"));
				league.setLgMaxPlayer(rset.getInt("LG_MAX_PLAYER"));
				league.setLgSubPlayer(rset.getInt("LG_SUB_PLAYER"));
				league.setLgPlayer(rset.getInt("LG_PLAYER"));
				league.setLgSDate(rset.getDate("LG_SDATE"));
				league.setLgEDate(rset.getDate("LG_EDATE"));
				league.setStdFName(rset.getString("STD_FNAME"));
				league.setStdSName(rset.getString("STD_SNAME"));
			
				
				String referee = new String();
				referee = rset.getString("REF_NAME");
				list.add(referee);
				
				
			}
			
			hmap.put("league", league);
			hmap.put("referee", list);
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			
			close(rset);
			close(pstmt);
		}
		
		return hmap;
	}

	public void selectLeagueForMain(Connection con) {
		Statement stmt = null;
		ResultSet rset = null;
		League_vo league = null;
		
		String query = prop.getProperty("selectLeagueForMain");
		
	}


	public void selectAllLeague(Connection con) {
		Statement stmt = null;
		ResultSet rset = null;
		
		String query = prop.getProperty("selectAllLeague");
		
		
	}

}
