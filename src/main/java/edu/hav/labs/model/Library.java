package edu.hav.labs.model;

import java.util.Objects;

public class Library {
    private String id;
    private String name;
    private String address;
    private int numberOfBooks;
    private int numberOfMembership;

    public Library() {
    }

    public Library(String id, String name, String address, int numberOfBooks, int numberOfMembership) {
        this.id = id;
        this.name = name;
        this.address = address;
        this.numberOfBooks = numberOfBooks;
        this.numberOfMembership = numberOfMembership;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public int getNumberOfBooks() {
        return numberOfBooks;
    }

    public void setNumberOfBooks(int numberOfBooks) {
        this.numberOfBooks = numberOfBooks;
    }

    public int getNumberOfMembership() {
        return numberOfMembership;
    }

    public void setNumberOfMembership(int numberOfMembership) {
        this.numberOfMembership = numberOfMembership;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Library library = (Library) o;
        return numberOfBooks == library.numberOfBooks && numberOfMembership == library.numberOfMembership && Objects.equals(id, library.id) && Objects.equals(name, library.name) && Objects.equals(address, library.address);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, name, address, numberOfBooks, numberOfMembership);
    }

    @Override
    public String toString() {
        return "Library {" +
                "id='" + id + '\'' +
                ", name='" + name + '\'' +
                ", address='" + address + '\'' +
                ", numberOfBooks=" + numberOfBooks +
                ", numberOfMembership=" + numberOfMembership +
                '}';
    }
}