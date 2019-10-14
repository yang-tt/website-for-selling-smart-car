package trackRobot.dao;

import java.util.ArrayList;

import trackRobot.vo.Cart;
import trackRobot.vo.Product;
import trackRobot.vo.User;

public interface CartDAO {
	public int addCart(String username,int number,int proID)throws Exception;
	public int removeGoodsFromCart(int cartID)throws Exception;
	public Product findPro(int proID)throws Exception;
	public ArrayList<Cart> showCart(String username) throws Exception;;

}
