package trackRobot.dao;

import java.util.ArrayList;
import trackRobot.vo.Product;

public interface ProductDAO {
	public ArrayList<Product> showProList() throws Exception;
	public int reduceNum(int proNum,int proID,int amount) throws Exception;
	public int findNum(int proID)throws Exception;
}

