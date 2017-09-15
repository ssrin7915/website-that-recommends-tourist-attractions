package model.dto;

public class RestaurantDTO {
	private int cId;
	private int rId;
	private String name;
	private String phone;
	private String address;
	private String menu;
	private int price;
	private String photo;
	
	public RestaurantDTO(int cId, int rId, String name, String phone, String address, String menu, int price, 
			String photo) {
		super();
		this.cId = cId;
		this.rId = rId;
		this.name = name;
		this.phone = phone;
		this.address = address;
		this.menu = menu;
		this.price = price;
		this.photo = photo;
	}
	public int getcId() {
		return cId;
	}
	public void setcId(int cId) {
		this.cId = cId;
	}
	public int getrId() {
		return rId;
	}
	public void setrId(int rId) {
		this.rId = rId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getMenu() {
		return menu;
	}
	public void setMenu(String menu) {
		this.menu = menu;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}

	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("RestaurantDTO [cId=");
		builder.append(cId);
		builder.append(", rId=");
		builder.append(rId);
		builder.append(", name=");
		builder.append(name);
		builder.append(", address=");
		builder.append(address);
		builder.append(", menu=");
		builder.append(menu);
		builder.append(", price=");
		builder.append(price);
		builder.append(", photo=");
		builder.append(photo);
		builder.append("]");
		return builder.toString();
	}

	
}
