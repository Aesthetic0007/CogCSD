/*
 * package com.example.demo.test;
 * 
 * public class BookServiceTest {
 * 
 * }
 */

package com.example.demo.test;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.mockito.Mockito.times;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;

import com.example.BookStore.dao.BookRepo;
import com.example.BookStore.model.BookDetails;
import com.example.BookStore.service.BookService;

public class BookServiceTest {
	@Mock
	private BookRepo bookRepo;
	@InjectMocks
	private BookService bookService;
	@BeforeEach
	public void setUp() {
		MockitoAnnotations.openMocks(this);
	}
	@Test
	public void testAddBook() {
		BookDetails bookToAdd = new BookDetails();
		bookService.addBook(bookToAdd);
		verify(bookRepo, times(1)).save(bookToAdd);
	}
	@Test
	public void testDeleteBook() {
		when(bookRepo.existsByAuthorAndTitle("Test Author", "Test Title")).thenReturn(true);
		when(bookRepo.deleteByTitleAndAuthor("Test Title", "Test Author")).thenReturn(1);
		int result = bookService.deleteBook("Test Title", "Test Author");
		assertEquals(1, result);
	}
	@Test
	public void testUpdateBookStock() {
		Optional<BookDetails> bookOptional = Optional.of(new BookDetails());
		when(bookRepo.findByTitleAndAuthor("Test Title", "Test Author")).thenReturn(bookOptional);
		String result = bookService.updateBookStock("Test Title", "Test Author", 10);
		assertEquals(1, result);
	}
	@Test
	public void testUpdateBookPrice() {
		Optional<BookDetails> bookOptional = Optional.of(new BookDetails());
		when(bookRepo.findByTitleAndAuthor("Test Title", "Test Author")).thenReturn(bookOptional);
		int result = bookService.updateBookPrice("Test Title", "Test Author", 20.0);
		assertEquals(1, result);
	}
	@Test
	public void testGetAllBooks() {
		List<BookDetails> books = new ArrayList<>();
		books.add(new BookDetails());
		when(bookRepo.findAll()).thenReturn(books);
		List<BookDetails> result = bookService.getAllBooks();
		assertEquals(books.size(), result.size());
	}
	@Test
	public void testSearchBooksByAuthor() {
		List<BookDetails> books = new ArrayList<>();
		books.add(new BookDetails());
		when(bookRepo.existsByAuthor("Test Author")).thenReturn(true);
		when(bookRepo.findAllByAuthor("Test Author")).thenReturn(books);
		List<BookDetails> result = bookService.searchBooksByAuthor("Test Author");
		assertEquals(books.size(), result.size());
	}
	@Test
	public void testSearchBooksByGenre() {
		List<BookDetails> books = new ArrayList<>();
		books.add(new BookDetails());
		when(bookRepo.existsByGenre("Test Genre")).thenReturn(true);
		when(bookRepo.findAllByGenre("Test Genre")).thenReturn(books);
		List<BookDetails> result = bookService.searchBooksByGenre("Test Genre");
		assertEquals(books.size(), result.size());
	}}