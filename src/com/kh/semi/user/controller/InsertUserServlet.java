package com.kh.semi.user.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.semi.user.model.service.UserService;
import com.kh.semi.user.model.vo.Profile_vo;


/**
 * Servlet implementation class InsertUserServlet
 */
@WebServlet("/insertUser.me")
public class InsertUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertUserServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		request.setCharacterEncoding("UTF-8");
		
		String Email = request.getParameter("Email");
		String password = request.getParameter("password");
		String name = request.getParameter("name");
		String jumin1 = request.getParameter("Jumin_1");
		String jumin2 = request.getParameter("Jumin_2");
		String gender = request.getParameter("gender");
		String Grade = request.getParameter("Grade");
		String phone1 = request.getParameter("phone1");
		String phone2 = request.getParameter("phone2");
		String phone3 = request.getParameter("phone3");
		String address = request.getParameter("address");
		
		Profile_vo vo = new Profile_vo();
		
		vo.setPfPwd(password);
		vo.setPfName(name);
		vo.setPfNumber(jumin1+jumin2);
		vo.setPfEmail(Email);
		vo.setPfAddress(address);
		vo.setPfGender(gender);
		vo.setPfGrade(Grade);
		vo.setPfPhone(phone1+" - "+phone2+" - "+phone3);
		
		System.out.println(vo);
		
		int result = new UserService().InsertUserMember(vo);
		
		String page = "";
		if(result > 0) {
			page ="views/user/mainPage/mainPage.jsp";
			response.sendRedirect(page);
			System.out.println("유저 회원 가입 완료");
		}else {
			page="views/user/comman/errorPage.jsp";
			request.setAttribute("message", "회원 가입 실패!");
			request.getRequestDispatcher(page).forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
