package asm.model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the GioHang database table.
 * 
 */
@Entity
@NamedQuery(name="GioHang.findAll", query="SELECT g FROM GioHang g")
public class GioHang implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="MaSP")
	private String maSP;

	@Column(name="GiaSP")
	private int giaSP;

	@Column(name="HinhSP")
	private String hinhSP;

	@Column(name="MaND")
	private String maND;

	@Column(name="Size")
	private int size;

	@Column(name="SoLuong")
	private int soLuong;

	@Column(name="TenSP")
	private String tenSP;

	//bi-directional one-to-one association to SanPham
	@OneToOne
	@JoinColumn(name="MaSP")
	private SanPham sanPham;

	public GioHang() {
	}

	public String getMaSP() {
		return this.maSP;
	}

	public void setMaSP(String maSP) {
		this.maSP = maSP;
	}

	public int getGiaSP() {
		return this.giaSP;
	}

	public void setGiaSP(int giaSP) {
		this.giaSP = giaSP;
	}

	public String getHinhSP() {
		return this.hinhSP;
	}

	public void setHinhSP(String hinhSP) {
		this.hinhSP = hinhSP;
	}

	public String getMaND() {
		return this.maND;
	}

	public void setMaND(String maND) {
		this.maND = maND;
	}

	public int getSize() {
		return this.size;
	}

	public void setSize(int size) {
		this.size = size;
	}

	public int getSoLuong() {
		return this.soLuong;
	}

	public void setSoLuong(int soLuong) {
		this.soLuong = soLuong;
	}

	public String getTenSP() {
		return this.tenSP;
	}

	public void setTenSP(String tenSP) {
		this.tenSP = tenSP;
	}

	public SanPham getSanPham() {
		return this.sanPham;
	}

	public void setSanPham(SanPham sanPham) {
		this.sanPham = sanPham;
	}

}