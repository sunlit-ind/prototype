package dao;

/**
 * DAOインスタンスの生成
 * @author sunlit
 *
 */
public class DaoFactory {

	public SeihinDao getSeihinDao() {
		return new SeihinDaoImpl();
	}

}
