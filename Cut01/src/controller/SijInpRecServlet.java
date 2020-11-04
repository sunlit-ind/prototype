package controller;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 * 生産指示書作成のためのシミュレーション画面への遷移
 * @author sunlit
 *
 */
@WebServlet("/HeadIndex")
public class SijInpRecServlet {
	private static final long serialVersionUID = 1L;
	/**
	 * @return
	 * @see HttpServlet#HttpServlet()
	 */

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
