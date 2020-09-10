package com.kh.semi.club.model.service;

import static com.kh.semi.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.semi.club.model.dao.ClubDao;
import com.kh.semi.club.model.vo.Club_vo;
public class ClubService {

	ClubDao dao = new ClubDao();
	public ArrayList Autocomplete() {
		Connection con = getConnection();
		
		ArrayList UserEmailList = dao.AutocompleteEmail(con);
		
		close(con);
		
		return UserEmailList;
	}
	public Club_vo getClub_info(int teamNumber) {
		// TODO Auto-generated method stub
		Connection con = getConnection();
		Club_vo vo = dao.getClub_info(con, teamNumber);
		
		close(con);
		
		return vo;
	}

}
