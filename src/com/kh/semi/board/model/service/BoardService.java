package com.kh.semi.board.model.service;

import java.sql.Connection;

import com.kh.semi.board.model.dao.BoardDao;
import com.kh.semi.board.model.vo.Board_vo;

import static com.kh.semi.common.JDBCTemplate.*;

public class BoardService {

	public void insertBoard(Board_vo newBoard) {

		Connection con = getConnection();
		
		new BoardDao().insertBoard(con, newBoard);
		
	}

	

}















