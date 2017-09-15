package model.dto;

public class AttractionDTO {
	private int dId = 0;
	private int cId = 0;
	
	private String name = null;
	private String address = null;
	private String phone = null;
	private String contents = null;
	private String url = null;
	private String photo = null;
	
	public AttractionDTO() {
		super();
	}

	public AttractionDTO(int dId, int cId, String name, String address, String phone, String contents, String url, String photo) {
		super();
		this.dId = dId;
		this.cId = cId;
		this.name = name;
		this.address = address;
		this.phone = phone;
		this.contents = contents;
		this.url = url;
		this.photo=photo;
	}

	public int getdId() {
		return dId;
	}

	public void setdId(int dId) {
		this.dId = dId;
	}

	public int getcId() {
		return cId;
	}

	public void setcId(int cId) {
		this.cId = cId;
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

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getphoto() {
		return photo;
	}

	public void setphoto(String photo) {
		this.photo = photo;
	}
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("AttractionDTO [dId=");
		builder.append(dId);
		builder.append(", cId=");
		builder.append(cId);
		builder.append(", name=");
		builder.append(name);
		builder.append(", address=");
		builder.append(address);
		builder.append(", phone=");
		builder.append(phone);
		builder.append(", contents=");
		builder.append(contents);
		builder.append(", url=");
		builder.append(url);
		builder.append("]");
		return builder.toString();
	}

	
}
