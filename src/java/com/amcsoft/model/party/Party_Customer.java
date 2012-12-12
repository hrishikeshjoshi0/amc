/**
 * 
 */
package com.amcsoft.model.party;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.PrimaryKeyJoinColumn;

/**
 * @author hrishi
 * 
 */
@Entity(name="PM_PARTY_CUSTOMER")
@PrimaryKeyJoinColumn(name="PM_PARTY_ID")
public class Party_Customer extends Party {
	
	@Column(name = "PC_CUSTOMER_CODE", length = 100, nullable = true)
	private String customerCode;
	
	@Column(name = "PC_CUSTOMER_REF", length = 100, nullable = true)
	private String customerRef;
	
	public Party_Customer() {
		this.setPartyType("PARTY_CUSTOMER");
		this.setStatus(PARTY_STATUS_ACTIVE);
	}

	public String getCustomerCode() {
		return customerCode;
	}

	public void setCustomerCode(String customerCode) {
		this.customerCode = customerCode;
	}

	public String getCustomerRef() {
		return customerRef;
	}

	public void setCustomerRef(String customerRef) {
		this.customerRef = customerRef;
	}
	
}
