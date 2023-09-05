package asm.model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the SoLuong database table.
 * 
 */
@Entity
@NamedQuery(name="SoLuong.findAll", query="SELECT s FROM SoLuong s")
public class SoLuong implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="ID")
	private int id;

	@Column(name="Size")
	private int size;

	@Column(name="SoLuong")
	private int soLuong;

	//bi-directional many-to-one association to SanPham
	@ManyToOne
	@JoinColumn(name="MaSP")
	private SanPham sanPham;

	public SoLuong() {
	}

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
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

	public SanPham getSanPham() {
		return this.sanPham;
	}

	public void setSanPham(SanPham sanPham) {
		this.sanPham = sanPham;
	}

}