package trackRobot.dao;

import trackRobot.vo.Product;
import trackRobot.vo.Order;
import trackRobot.vo.Cart;

public interface OrderDAO{
	public int addGoodsInOrder(String username, int number, int proID,String orderNum) throws Exception;
    public void removeGoodsFromOrder(String OrderList)throws Exception;
	public int query(String username) throws Exception;
	public String getTwo();
	public int addDetail(String name,String address,String code,String phone,String ordNum)throws Exception;
     }
