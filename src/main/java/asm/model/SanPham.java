package asm.model;

import java.io.Serializable;
import javax.persistence.*;
import java.util.List;


/**
 * The persistent class for the SanPham database table.
 * 
 */
@Entity
@NamedQuery(name="SanPham.findAll", query="SELECT s FROM SanPham s")
public class SanPham implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="MaSP")
	private String maSP;

	@Column(name="Brand")
	private String brand;

	@Column(name="GiaSP")
	private int giaSP;

	@Column(name="HinhSP")
	private String hinhSP;

//	@Column(name="Sale")
//	private int sale;

	@Column(name="TenSP")
	private String tenSP;

	//bi-directional one-to-one association to GioHang
	@OneToOne(mappedBy="sanPham")
	private GioHang gioHang;

	//bi-directional many-to-one association to SoLuong
	@OneToMany(mappedBy="sanPham")
	private List<SoLuong> soLuongs;

	public SanPham() {
	}

	public String getMaSP() {
		return this.maSP;
	}

	public void setMaSP(String maSP) {
		this.maSP = maSP;
	}

	public String getBrand() {
		return this.brand;
	}

	public void setBrand(String brand) {
		this.brand = brand;
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

//	public int getSale() {
//		return this.sale;
//	}
//
//	public void setSale(int sale) {
//		this.sale = sale;
//	}

	public String getTenSP() {
		return this.tenSP;
	}

	public void setTenSP(String tenSP) {
		this.tenSP = tenSP;
	}

	public GioHang getGioHang() {
		return this.gioHang;
	}

	public void setGioHang(GioHang gioHang) {
		this.gioHang = gioHang;
	}

	public List<SoLuong> getSoLuongs() {
		return this.soLuongs;
	}

	public void setSoLuongs(List<SoLuong> soLuongs) {
		this.soLuongs = soLuongs;
	}

	public SoLuong addSoLuong(SoLuong soLuong) {
		getSoLuongs().add(soLuong);
		soLuong.setSanPham(this);

		return soLuong;
	}

	public SoLuong removeSoLuong(SoLuong soLuong) {
		getSoLuongs().remove(soLuong);
		soLuong.setSanPham(null);

		return soLuong;
	}

}