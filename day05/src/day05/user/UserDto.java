package day05.user;

import java.time.LocalDate;
import java.time.LocalDateTime;

public class UserDto {
	private int id;
	private String userId;
	private String password;
	private String name;
	private String phone;
	private String address;
	private LocalDate birthDate;
	private int point;
	private LocalDateTime regDate;
	
	public UserDto() {
		// TODO Auto-generated constructor stub
	}
	

	public UserDto(int id, String userId, String password, String name, String phone, String address,
			LocalDate birthDate, int point, LocalDateTime regDate) {
		super();
		this.id = id;
		this.userId = userId;
		this.password = password;
		this.name = name;
		this.phone = phone;
		this.address = address;
		this.birthDate = birthDate;
		this.point = point;
		this.regDate = regDate;
	}



	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public LocalDate getBirthDate() {
		return birthDate;
	}

	public void setBirthDate(LocalDate birthDate) {
		this.birthDate = birthDate;
	}

	public int getPoint() {
		return point;
	}

	public void setPoint(int point) {
		this.point = point;
	}

	public LocalDateTime getRegDate() {
		return regDate;
	}

	public void setRegDate(LocalDateTime regDate) {
		this.regDate = regDate;
	}

	@Override
	public String toString() {
		return "UserDto [id=" + id + ", userId=" + userId + ", password=" + password + ", name=" + name + ", phone="
				+ phone + ", address=" + address + ", birthDate=" + birthDate + ", point=" + point + ", regDate="
				+ regDate + "]";
	}
	
	
}
