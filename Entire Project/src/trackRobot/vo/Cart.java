package trackRobot.vo;

public class Cart {
	private int cartID;
	private Product pro;
	private int amount;
	private double totalPrice;
	public Cart(int cartID,Product pro, int amount) {
		super();
		this.cartID = cartID;
		this.pro = pro;
		this.amount = amount;
		this.totalPrice = pro.getProPrice()* amount;
	}
	
	public int getCartID() {
		return cartID;
	}
	public void setCartID(int cartID) {
		this.cartID = cartID;
	}
	public Product getPro() {
		return pro;
	}
	public void setPro(Product pro) {
		this.pro = pro;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	public double getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(double totalPrice) {
		this.totalPrice = totalPrice;
	}
	
	
	
}
