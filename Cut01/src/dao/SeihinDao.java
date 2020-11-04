package dao;

import java.util.List;
/**
 * 製品検索のDAOインターフェイスクラス
 * @author sunlit
 *
 */
public interface SeihinDao {
	List<Seihin> getSeihin(int count) throws DataAccessException;

}
