package com.niit.techno.crm.model;


import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="Address")
public class Address {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	 private int addressId;
	   private String   street;
	   private String city;
	    private int    pincode;
	    @OneToOne(cascade=CascadeType.ALL)
	    @JoinColumn(name="customer_id")
	    private Elite elite;
		public int getAddressId() {
			return addressId;
		}
		public void setAddressId(int addressId) {
			this.addressId = addressId;
		}
		public String getStreet() {
			return street;
		}
		public void setStreet(String street) {
			this.street = street;
		}
		public String getCity() {
			return city;
		}
		public void setCity(String city) {
			this.city = city;
		}
		public int getPincode() {
			return pincode;
		}
		public void setPincode(int pincode) {
			this.pincode = pincode;
		}
		public Elite getElite() {
			return elite;
		}
		public void setElite(Elite elite) {
			this.elite = elite;
		}
		public Address() {
			
		}
		@Override
		public String toString() {
			return "Address [addressId=" + addressId + ", street=" + street + ", city=" + city + ", pincode=" + pincode
					+ ", elite=" + elite + "]";
		}
		
	    
	    
}