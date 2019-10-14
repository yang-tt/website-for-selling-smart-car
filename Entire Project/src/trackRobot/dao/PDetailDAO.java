package trackRobot.dao;
import trackRobot.vo.Product;
public interface PDetailDAO {
		public int queryByProductName(Product p)throws Exception;
}
