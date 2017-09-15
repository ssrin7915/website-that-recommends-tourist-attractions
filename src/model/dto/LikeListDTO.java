package model.dto;

public class LikeListDTO {
	private String mId; // 멤버 아이디
	private int allId; // 장소 아이디
	private String identity; 

	public LikeListDTO() {
		super();
	}

	public LikeListDTO(String mId, int allId, String identity) {
		super();
		this.mId = mId;
		this.allId = allId;
		this.identity = identity;
	}

	public String getmId() {
		return mId;
	}

	public void setmId(String mId) {
		this.mId = mId;
	}

	public int getAllId() {
		return allId;
	}

	public void setAllId(int allId) {
		this.allId = allId;
	}

	public String getIdentity() {
		return identity;
	}

	public void setIdentity(String identity) {
		this.identity = identity;
	}
}
