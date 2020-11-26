package edu.itstudy.bean;

public class warehousebean {
	private String medicine_id;
	private String medicine_name;
	private int medicineNumber;
	private int medicineOutNumber;
	private int medicineInPrice;
	private int medicineOutPrice;
	private String medicineCheckMan;
	private String inTime;
	private int isOTC;
	private String location;

	public warehousebean(String medicine_id, String medicine_name) {
		this.medicine_id = medicine_id;
		this.medicine_name = medicine_name;
	}

	public warehousebean(String medicine_id, String medicine_name, int medicineNumber, int medicineOutNumber, int medicineInPrice, int medicineOutPrice, String medicineCheckMan, String inTime, int isOTC, String location) {
		this.medicine_id = medicine_id;
		this.medicine_name = medicine_name;
		this.medicineNumber = medicineNumber;
		this.medicineOutNumber = medicineOutNumber;
		this.medicineInPrice = medicineInPrice;
		this.medicineOutPrice = medicineOutPrice;
		this.medicineCheckMan = medicineCheckMan;
		this.inTime = inTime;
		this.isOTC = isOTC;
		this.location = location;
	}

	public String getMedicine_id() {
		return medicine_id;
	}

	public void setMedicine_id(String medicine_id) {
		this.medicine_id = medicine_id;
	}

	public String getMedicine_name() {
		return medicine_name;
	}

	public void setMedicine_name(String medicine_name) {
		this.medicine_name = medicine_name;
	}

	public int getMedicineNumber() {
		return medicineNumber;
	}

	public void setMedicineNumber(int medicineNumber) {
		this.medicineNumber = medicineNumber;
	}

	public int getMedicineOutNumber() {
		return medicineOutNumber;
	}

	public void setMedicineOutNumber(int medicineOutNumber) {
		this.medicineOutNumber = medicineOutNumber;
	}

	public int getMedicineInPrice() {
		return medicineInPrice;
	}

	public void setMedicineInPrice(int medicineInPrice) {
		this.medicineInPrice = medicineInPrice;
	}

	public int getMedicineOutPrice() {
		return medicineOutPrice;
	}

	public void setMedicineOutPrice(int medicineOutPrice) {
		this.medicineOutPrice = medicineOutPrice;
	}

	public String getMedicineCheckMan() {
		return medicineCheckMan;
	}

	public void setMedicineCheckMan(String medicineCheckMan) {
		this.medicineCheckMan = medicineCheckMan;
	}

	public String getInTime() {
		return inTime;
	}

	public void setInTime(String inTime) {
		this.inTime = inTime;
	}

	public int getIsOTC() {
		return isOTC;
	}

	public void setIsOTC(int isOTC) {
		this.isOTC = isOTC;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}
}
