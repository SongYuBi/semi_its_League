package com.kh.semi.board.model.service;
import static com.kh.semi.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.Map;

import com.kh.semi.board.model.dao.BoardDao;
import com.kh.semi.board.model.vo.Board_vo;
import com.kh.semi.board.model.vo.Qna_vo;

public class BoardService {

	public int insertBoard(Board_vo newBoard) {

		Connection con = getConnection();
		
		int result = new BoardDao().insertBoadForQna(con, newBoard);
		
		//1이상일 경우는 정보한행이 담김거이므로  commit
		if(result > 0) {
			commit(con);
		}else { //0일 경우에는 rollback	
			rollback(con);
		}
		close(con);
		
		return result;
	}

	public ArrayList<Board_vo> selectList() {

		Connection con = getConnection();
		
		ArrayList<Board_vo> list = new BoardDao().selectList(con);
		
		
		close(con);
		
		return list;
	}

	public int insertBoth(Map<String, Object> requestData) {

		Connection con = getConnection();
		//성공실패여부
		int result = 0;
		
		
		//BoardDao 여러번 사용해서 객체로 빼놓구 사용
		BoardDao bd = new BoardDao();
		
		Board_vo board = (Board_vo) requestData.get("board");
		Qna_vo qna = (Qna_vo) requestData.get("qna");
		
		
		//보드 인설트부터 ! bid가져오기위해서 	
		int result1 = bd.insertBoadForQna(con, board);
		
		if(result1 > 0) {
			
			//qna넣기전에 번호를 부여해주는거 ,최근에한 인설트 시퀀스 값을 가져오는거 
			int bid = bd.selectCurrval(con);
			
			Qna_vo qv = new Qna_vo();
			qv.setBid(bid);
			
			int result2 = bd.insertQna(con, qv);
			
			if(result2 > 0) {
				commit(con);
				result = 1; //실행내용이 성공했음을 알리기위해서 1로 바꿔줌	
			}else {
				rollback(con);
				
			}
			
		}else {
			rollback(con);
		}
		return result;
		
	}

	
}












