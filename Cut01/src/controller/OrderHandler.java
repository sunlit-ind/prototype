package controller;

import javax.servlet.http.HttpSession;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

import model.UserBean;

public class OrderHandler extends TagSupport {
	public int doEndTag() {
		HttpSession session = pageContext.getSession();
		//String[] product = (String[])session.getAttribute("username");
		model.UserBean ub
			=(model.UserBean) session.getAttribute("usebeanses");
		String[] product = ub.getProduct();

		JspWriter out = pageContext.getOut();

		try {
			out.println("<TR><TD>Name<TD><TR>");

			for (int i = 0; i < product.length; i++) {
				out.print("<TR><TD>");
				out.print("product[i]");
				out.print("</TR></TD>");
			}
		}catch (Exception e) {
			}
		return EVAL_PAGE;
		}

		/** Creates a new instance of OrderHandler
		 *
		 */
		public OrderHandler() {
	}
}
