package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * ログイン画面のコントロール
 * @author sunlit
 *
 */
public class LoginServlet extends HttpServlet {
	/**
	 * シリアルバージョンUID
	 */

	private static final long serialVersionUID = 1L;

	/**
	 * jspのベースディレクトリ
	 */
	private static final String JSP_BASE = "/WebContent";

	/**
	 * 構築
	 */
	public LoginServlet() {
		;
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		//要求からactionパラメータ取得
		String action = req.getParameter("action");

		String forward = null;
		if("login".equals(action)) {
			//ログイン画面の処理
			//login.jspへフォワードする
			forward = JSP_BASE + "Login.jsp";
		}else {
			//不正なアクションの場合
			throw new ServletException("不正なリクエストです");
		}

		//JSPへのフォワード
		RequestDispatcher dispatcher = req.getRequestDispatcher(forward);
		dispatcher.forward(req, resp);
	}
}
