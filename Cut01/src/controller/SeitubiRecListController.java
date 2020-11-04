package controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/**
 * 設備記録票の登録
 * @author sunlit
 * @param <ProductManager>
 * @param <ModelAndView>
 *
 */
public class SeitubiRecListController<ProductManager, ModelAndView> extends AbstractController {
	private ProductManager productMan;

	protected ModelAndView handleRequestInternal(HttpServletRequest req,
			HttpServletResponse res) throws Exception {

		Integer id = ServletRequestUtils.getIntParameter(req, "id");

		Product product = new Product();
		product.setId(id);

		@SuppressWarnings({ "rawtypes", "unused" })
		List pList = ((Product) productMan).getProducductList(product);

		//return new ModelAndView("productDetail", "product", pList.get(0));
		return ModelAndView();
	}

	private ModelAndView ModelAndView() {
		// TODO 自動生成されたメソッド・スタブ
		return null;
	}

	public ProductManager getProductMan() {
		return productMan;
	}

	public void setProductMan(ProductManager productMan) {
		this.productMan = productMan;
	}

	@Override
	void controllerMethod() {
		// TODO 自動生成されたメソッド・スタブ

	}

}