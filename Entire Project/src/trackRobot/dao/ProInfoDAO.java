package trackRobot.dao;

import trackRobot.vo.Product;

	public interface ProInfoDAO {
		public Product searchProinfo(int proID) throws Exception;
	}
