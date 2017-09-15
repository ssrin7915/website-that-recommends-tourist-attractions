package model.dto;

public class FestivalDTO {
	private int cId;
	private int fId;
	private String name;
	private String address;
	private String period;
	private String contents;
	private String url;
	private String photo;
	
	public FestivalDTO(int cId, int fId, String name, String address, String period, String contents, String url,
			String photo) {
		super();
		this.cId = cId;
		this.fId = fId;
		this.name = name;
		this.address = address;
		this.period = period;
		this.contents = contents;
		this.url = url;
		this.photo = photo;
	}
	public int getcId() {
		return cId;
	}
	public void setcId(int cId) {
		this.cId = cId;
	}
	public int getfId() {
		return fId;
	}
	public void setfId(int fId) {
		this.fId = fId;
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
	public String getPeriod() {
		return period;
	}
	public void setPeriod(String period) {
		this.period = period;
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
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("FestivalDTO [cId=");
		builder.append(cId);
		builder.append(", fId=");
		builder.append(fId);
		builder.append(", name=");
		builder.append(name);
		builder.append(", address=");
		builder.append(address);
		builder.append(", period=");
		builder.append(period);
		builder.append(", contents=");
		builder.append(contents);
		builder.append(", url=");
		builder.append(url);
		builder.append(", photo=");
		builder.append(photo);
		builder.append("]");
		return builder.toString();
	}
	
	
}
