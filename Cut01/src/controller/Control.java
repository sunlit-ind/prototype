package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * ログイン認証のサーブレット
 * @author sunlit
 *
 */
@WebServlet("/Login")
public class Control extends HttpServlet{
	private static final long serialVersionUID = 1L;

	private static final String USER_ID = "999";
	private static final String USER_PASSWORD = "999";

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Control(){
		super();
		//TODO　自動生成スタブ
	}

	/**ログイン情報へのアクセス制御
	 * protected void doGet()
	 * Handles the HTTP <code>GET</code> method.
	 * @param request servlet request
	 * @param response servlet response
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException{
		//ログインフォームへの遷移（フォワード）
		RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/Login.jsp");
		dispatcher.forward(request, response);

//------Bean使用時のログインフォームへの遷移------------------------------------------
		//RequestDispatcher rd = null;
		//rd = getServletConfig().getServletContext().getRequestDispatcher("/Login.jsp");
		//rd.forward(request, response);
		//processRequest(reqest, response);
//--------------------------------------------------------------------------------------
	}

	/** Handles the HTTP <code>POST</code> method.
	 * @param reruest servlet request
	 * @param response servlet response
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException{
		//エンコード設定
		request.setCharacterEncoding("UTF-8");

		//ユーザーIDを取得
		String userId = request.getParameter("user_id");
		if(null == userId) {
			userId = "";
		}

		//PASSWORDを取得
		String userPassword = request.getParameter("password");
		if(null == userPassword) {
			userPassword = "";
		}

		//ログイン認証
		if (USER_ID.equals(userId) && USER_PASSWORD.equals(userPassword)) {
			//ログインフォームへの遷移（リダイレクト）
			response.sendRedirect("MainMenu.jsp");
		}else {
			//ログインフォームへの遷移（リダイレクト）
			response.sendRedirect("AuthError.jsp");
		}

//-----Beanを使用した認証部分-------------------------
//		model.UserBean ub = null;
//		ub = new model.UserBean();
//
//		String formun = request.getParameter("user_id");
//		String formps = request.getParameter("password");
//		ub.setName(formun);
//		ub.setPassword(formps);

//		controller.UserAuthBean uab = null;
//		uab = new controller.UserAuthBean();

//		HttpSession session = null;
//		RequestDispatcher rd = null;

//		if (uab.execute(ub) == true) {
//			//認証成功
//			//セッションオブジェクトを作成
//			if (checkSession(request) == true) {
//				//セッションにオブジェクトがある場合は獲得
//				session = request.getSession(false);
//			}else {
//				//セッションにオブジェクトがない場合は新規作成
//				session = request.getSession(true);
//			}

//			//Beansをオブジェクトに保存
//			session.setAttribute("userbeanes", ub);
//			rd = getServletConfig().getServletContext().getRequestDispatcher("/authok.jsp");
//		}else {
//			//認証に失敗
//			rd = getServletConfig().getServletContext().getRequestDispatcher("/autherror.jsp");
//		}
//		rd.forward(request, response);
//---------------------------------------------------------------------------------------------
	}

	/**
	 *サーブレットからのショートメッセージを返す
	 *
	 */
	public String getServletInfo() {
		return "short description";
	}

	//セッションオブジェクトのチェックメソッド
	public boolean checkSession(HttpServletRequest req) {
		HttpSession session = req.getSession(false);
		if (session != null) {
			return true;
		}else {
			return false;
		}
	}
}
