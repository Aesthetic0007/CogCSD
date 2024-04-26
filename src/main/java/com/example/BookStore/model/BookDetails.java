package com.example.BookStore.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class BookDetails {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int bookId;
	private String title;
	private String author;
	private String genre;
	private double price;
	private int stockQuantity;
	
	
	public BookDetails(int bookId, String title, String author, String genre, double price, int stockQuantity) {
		super();
		this.bookId = bookId;
		this.title = title;
		this.author = author;
		this.genre = genre;
		this.price = price;
		this.stockQuantity = stockQuantity;
	}
	
	public BookDetails() {
		// TODO Auto-generated constructor stub
	}

	public int getBookId() {
		return bookId;
	}
	public void setBookId(int bookId) {
		this.bookId = bookId;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getGenre() {
		return genre;
	}
	public void setGenre(String genre) {
		this.genre = genre;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public int getStockQuantity() {
		return stockQuantity;
	}
	public void setStockQuantity(int stockQuantity) {
		this.stockQuantity = stockQuantity;
	}

	@Override
	public String toString() {
		return "BookDetails [bookId=" + bookId + ", title=" + title + ", author=" + author + ", genre=" + genre
				+ ", price=" + price + ", stockQuantity=" + stockQuantity + "]";
	}

}
