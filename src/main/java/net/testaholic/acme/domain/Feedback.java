package net.testaholic.acme.domain;

import javax.persistence.*;

public class Feedback {

    public String firstName;
    public String lastName;
    public String message;
    public String productType;
    public long phoneNumber;
    public String emailAddress;
    public String hearAboutUs;

    public String productComplaint;


    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public String getProductType() {
        return productType;
    }

    public void setProductType(String productType) {
        this.productType = productType;
    }

    public long getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(long phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getEmailAddress() {
        return emailAddress;
    }

    public void setEmailAddress(String emailAddress) {
        this.emailAddress = emailAddress;
    }

    public String getHearAboutUs() {
        return hearAboutUs;
    }

    public void setHearAboutUs(String hearAboutUs) {
        this.hearAboutUs = hearAboutUs;
    }

    public String getProductComplaint() {
        return productComplaint;
    }

    public void setProductComplaint(String productComplaint) {
        this.productComplaint = productComplaint;
    }


    @Override
    public String toString() {
        return "Feedback{" +
                "firstName='" + firstName + '\'' +
                ", lastName='" + lastName + '\'' +
                ", message='" + message + '\'' +
                ", productType='" + productType + '\'' +
                ", phoneNumber=" + phoneNumber +
                ", emailAddress='" + emailAddress + '\'' +
                ", hearAboutUs='" + hearAboutUs + '\'' +
                ", productComplaint='" + productComplaint + '\'' +
                '}';
    }
}
