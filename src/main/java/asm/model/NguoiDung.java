package asm.model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the NguoiDung database table.
 * 
 */
@Entity
@NamedQuery(name="NguoiDung.findAll", query="SELECT n FROM NguoiDung n")
public class NguoiDung implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="MaND")
	private String maND;

	@Column(name="Email")
	private String email;

	@Column(name="HoTen")
	private String hoTen;

	@Column(name="MatKhau")
	private String matKhau;

	@Column(name="Role")
	private boolean role;

	@Column(name="SoDT")
	private String soDT;

	@Column(name="TenND")
	private String tenND;

	public NguoiDung() {
	}

	public String getMaND() {
		return this.maND;
	}

	public void setMaND(String maND) {
		this.maND = maND;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getHoTen() {
		return this.hoTen;
	}

	public void setHoTen(String hoTen) {
		this.hoTen = hoTen;
	}

	public String getMatKhau() {
		return this.matKhau;
	}

	public void setMatKhau(String matKhau) {
		this.matKhau = matKhau;
	}

	public boolean getRole() {
		return this.role;
	}

	public void setRole(boolean role) {
		this.role = role;
	}

	public String getSoDT() {
		return this.soDT;
	}

	public void setSoDT(String soDT) {
		this.soDT = soDT;
	}

	public String getTenND() {
		return this.tenND;
	}

	public void setTenND(String tenND) {
		this.tenND = tenND;
	}

}