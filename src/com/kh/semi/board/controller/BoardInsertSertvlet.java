package com.kh.semi.board.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.semi.board.model.service.BoardService;
import com.kh.semi.board.model.vo.Board_vo;

/**
 * Servlet implementation class BoardInsertSertvlet
 */
@WebServlet("/insert.bo")
public class BoardInsertSertvlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BoardInsertSertvlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

//		int bid = Integer.parseInt(request.getParameter("bid"));
//		String bTitle = request.getParameter("bTitle");
////		int pfId = Integer.parseInt("pfId");
		
		//^^인설트
		//아아아아^^
		//보드에 인서트르아르ㅏ을아르하면은 보드의 BID값이 나오고 -> 서비스에ㅓㅅ ㅓ깨내
		//
		

		
		Board_vo newBoard = new Board_vo();
		newBoard.setBid(bid);
		newBoard.setbTitle(bTitle);
		
		newBoard.setPfId(pfId);
		
		new BoardService().insertBoard(newBoard);
		
		
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
