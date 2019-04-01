package service;

import org.json.JSONException;
import org.json.JSONObject;

import com.google.gson.JsonObject;

import model.Cart;
import model.Product;
import persistence.dao.ProductDAO;
import persistence.util.DatabaseManager;

public abstract class CartService {

	public static JsonObject addProductOnCart(String json, Cart cart) {
		JsonObject result = new JsonObject();
		JSONObject jsonProduct;
		ProductDAO dao = DatabaseManager.getInstance().getDaoFactory().getProductDAO();
		try {
			jsonProduct = new JSONObject(json);
			Product p = new Product();
			p=dao.findByName(jsonProduct.getString("name"));
			int quantity=jsonProduct.getInt("quantity");
			
			cart.addProducts(p, quantity);
			int totProduct = cart.getSize();
			result.addProperty("result", "SUCCESS");
			result.addProperty("message", "Product has been added into the cart successfully!");
			result.addProperty("size", String.valueOf(totProduct));
		} catch (JSONException e) {
			e.printStackTrace();
		} 
		return result;
	}
}
