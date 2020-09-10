package com.kh.semi.board.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.semi.board.model.service.BoardService;
import com.kh.semi.board.model.vo.Board_vo;
import com.kh.semi.board.model.vo.Qna_vo;
import com.kh.semi.user.model.vo.Profile_vo;

/**
 * Servlet implementation class QnaInsertServlet
 */
@WebServlet("/insert.qna")
public class QnaInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public QnaInsertServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//board 
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		int bWriter = ((Profile_vo) request.getSession().getAttribute("loginUser")).getPfId();
		
		Board_vo board = new Board_vo();
		board.setbTitle(title);
		board.setbContent(content);
		board.setPfId(bWriter);
		
		//qna
		String title_qna = request.getParameter("text_qna");
		String content_qna = request.getParameter("content_qna");
		
		Qna_vo qna = new Qna_vo();
	
		qna.setQnaTitle(title_qna);
		qna.setQnaContent(content_qna);
		
		Map<String, Object> requestData = new HashMap<String , Object>();
		
		requestData.put("board", board);
		requestData.put("qna", qna);
		
		System.out.println("보드랑 큐엔에이 이거되면 크러쉬할트 : "  + requestData);
		
 		new BoardService().insertBoth(requestData);
		
		
		
		
		
	
	
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
