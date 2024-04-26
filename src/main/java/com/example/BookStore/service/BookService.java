/*
package com.example.BookStore.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.BookStore.dao.BookRepo;
import com.example.BookStore.model.BookDetails;

import jakarta.transaction.Transactional;

@Service
public class BookService {
	@Autowired
	BookRepo bookRepo;

    public boolean addBook(BookDetails book) {
        Optional<BookDetails> existingBook = bookRepo.findByTitleAndAuthor(book.getTitle(), book.getAuthor());
        if (existingBook.isPresent()) {
            // Book already exists
            return false;
        } else {
            // Save the new book
            bookRepo.save(book);
            return true;
        }
    }
	
	@Transactional
	public int deleteBook(String title,String author){
		if(bookRepo.existsByAuthorAndTitle(author, title)) {
			bookRepo.deleteByTitleAndAuthor(title, author);
			return 1;
		}
		return 0;
	}

	 @Transactional
	    public String updateBookStock(String title, String author, int stockQuantity) {
	        Optional<BookDetails> bookOptional = bookRepo.findByTitleAndAuthor(title, author);
	        if (bookOptional.isPresent()) {
	            BookDetails book = bookOptional.get();
	            book.setStockQuantity(stockQuantity);
	            bookRepo.save(book);
	            return "Book stock updated successfully!";
	        } else {
	            return "Book not found!";
	        }
	    }
	
	public int updateBookPrice(String title,String author,double price) {
		Optional<BookDetails> bookOptional = bookRepo.findByTitleAndAuthor(title,author);
		if (bookOptional.isPresent()) {
			BookDetails book = bookOptional.get();
			book.setPrice(price);
			bookRepo.save(book);
			return 1;
		} else
			return 0;
	}

	public List<BookDetails> getAllBooks() {
		return bookRepo.findAll();
	}

	public List<BookDetails> searchBooksByAuthor(String author) {
		if (bookRepo.existsByAuthor(author)) {
			return bookRepo.findAllByAuthor(author);
		}
		return null;
	}

	public List<BookDetails> searchBooksByGenre(String genre) {
		if (bookRepo.existsByGenre(genre)) {
			return bookRepo.findAllByGenre(genre);
		}
		return null;
}
	
}	
*/


package com.example.BookStore.service;

import java.util.List;
import java.util.Optional;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.example.BookStore.dao.BookRepo;
import com.example.BookStore.model.BookDetails;
import jakarta.transaction.Transactional;

@Service
public class BookService {
    private static final Logger logger = LoggerFactory.getLogger(BookService.class);
    @Autowired
    BookRepo bookRepo;
    
    public boolean addBook(BookDetails book) {
        logger.info("Adding a new book");
        Optional<BookDetails> existingBook = bookRepo.findByTitleAndAuthor(book.getTitle(), book.getAuthor());
        if (existingBook.isPresent()) {
            // Book already exists
            return false;
        } else {
            // Save the new book
            bookRepo.save(book);
            return true;
        }
    }
    
    @Transactional
    public int deleteBook(String title,String author){
        logger.info("Deleting a book");
        if(bookRepo.existsByAuthorAndTitle(author, title)) {
            bookRepo.deleteByTitleAndAuthor(title, author);
            return 1;
        }
        return 0;
    }
    
    @Transactional
    public String updateBookStock(String title, String author, int stockQuantity) {
        logger.info("Updating book stock");
        Optional<BookDetails> bookOptional = bookRepo.findByTitleAndAuthor(title, author);
        if (bookOptional.isPresent()) {
            BookDetails book = bookOptional.get();
            book.setStockQuantity(stockQuantity);
            bookRepo.save(book);
            return "Book stock updated successfully!";
        } else {
            return "Book not found!";
        }
    }
    
    public int updateBookPrice(String title,String author,double price) {
        logger.info("Updating book price");
        Optional<BookDetails> bookOptional = bookRepo.findByTitleAndAuthor(title,author);
        if (bookOptional.isPresent()) {
            BookDetails book = bookOptional.get();
            book.setPrice(price);
            bookRepo.save(book);
            return 1;
        } else
            return 0;
    }

    public List<BookDetails> getAllBooks() {
        logger.info("Fetching all books");
        return bookRepo.findAll();
    }

    public List<BookDetails> searchBooksByAuthor(String author) {
        logger.info("Searching books by author");
        if (bookRepo.existsByAuthor(author)) {
            return bookRepo.findAllByAuthor(author);
        }
        return null;
    }

    public List<BookDetails> searchBooksByGenre(String genre) {
        logger.info("Searching books by genre");
        if (bookRepo.existsByGenre(genre)) {
            return bookRepo.findAllByGenre(genre);
        }
        return null;
    }
}

	
	/*	
	public void addBook(BookDetails book) {
		bookRepo.save(book);
	}
*/
	
	/*
	 * public int updateBookStock(String title,String author,int stockQuantity) {
	 * Optional<BookDetails> bookOptional =
	 * bookRepo.findByTitleAndAuthor(title,author); if (bookOptional.isPresent()) {
	 * BookDetails book = bookOptional.get(); book.setStockQuantity(stockQuantity);
	 * bookRepo.save(book); return 1; } else return 0; }
	 */
	
	/*
	 * public String updateBookStock(String title, String author, int stockQuantity)
	 * { Optional<BookDetails> bookOptional = bookRepo.findByTitleAndAuthor(title,
	 * author); if (bookOptional.isPresent()) { BookDetails book =
	 * bookOptional.get(); book.setStockQuantity(stockQuantity);
	 * bookRepo.save(book); return "Book stock updated successfully!"; } else {
	 * return "Book not found!"; } }
	 * 
	 */
	
	

