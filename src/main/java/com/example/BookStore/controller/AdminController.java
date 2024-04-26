package com.example.BookStore.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.BookStore.model.BookDetails;
import com.example.BookStore.model.CustomerDetails;
import com.example.BookStore.service.AdminService;
import com.example.BookStore.service.BookService;

@Controller
public class AdminController {

	@Autowired
	private BookService bookService;

	@Autowired
	private AdminService adminService;

	@GetMapping("/addBook")
	public String addBook() {
		return "addBook";
	}
	/*
	 * @PostMapping("/addBook") public String addBookPost(@ModelAttribute
	 * BookDetails book) { bookService.addBook(book); return "addBook"; }
	 */

	@PostMapping("/addBook")
	public String addBook(BookDetails book, RedirectAttributes redirectAttributes) {
		String message = "";
		try {
			boolean isAdded = bookService.addBook(book);
			if (isAdded) {
				message = "Book added successfully!";
				redirectAttributes.addFlashAttribute("message", message);
				return "redirect:/adminLogin";
			} else {
				message = "Book already present!";
			}
		} catch (Exception e) {
			message = "Book not added due to an error!";
		}
		redirectAttributes.addFlashAttribute("errorMessage", message);
		return "redirect:/addBook";
	}

	@GetMapping("/viewAllBooks")
	public String viewAllBooks(ModelMap model) {
		List<BookDetails> books = bookService.getAllBooks();
		model.addAttribute("books", books);
		return "viewAllBooks";
	}

	@GetMapping("/updateBookStock")
	public String showBookStockPage() {
		return "updateBookStock";
	}

	@PostMapping("/updateBookStock")
	public String updateBookStock(@ModelAttribute BookDetails book, RedirectAttributes redirectAttributes) {
		String message = bookService.updateBookStock(book.getTitle(), book.getAuthor(), book.getStockQuantity());
		if (message.contains("successfully")) {
			redirectAttributes.addFlashAttribute("message", message);
		} else {
			redirectAttributes.addFlashAttribute("errorMessage", message);
		}
		return "redirect:/updateBookStock";
	}

	@GetMapping("/updateBookPrice")
	public String showBookPricePage() {
		return "updateBookPrice";
	}

	/*
	 * @PostMapping("/updateBookPrice") public String
	 * updateBookPrice(@ModelAttribute BookDetails book) { int rowsAffected =
	 * bookService.updateBookPrice(book.getTitle(), book.getAuthor(),
	 * book.getPrice()); return rowsAffected > 0 ? "AdminLogin" : "updateBookPrice";
	 * }
	 */

	@PostMapping("/updateBookPrice")
	@ResponseBody
	public ResponseEntity<String> updateBookPrice(@RequestBody BookDetails book) {
		int rowsAffected = bookService.updateBookPrice(book.getTitle(), book.getAuthor(), book.getPrice());
		if (rowsAffected > 0) {
			return new ResponseEntity<>("Book price updated successfully!", HttpStatus.OK);
		} else {
			return new ResponseEntity<>("Failed to update book price.", HttpStatus.INTERNAL_SERVER_ERROR);
		}
	}

	@GetMapping("/deleteBook")
	public String goToDeleteBook() {
		return "deleteBook";
	}

	/*
	 * @PostMapping("/deleteBook") public String deleteBook(@ModelAttribute
	 * BookDetails book) { int rowsAffected =
	 * bookService.deleteBook(book.getTitle(), book.getAuthor());
	 * System.out.println(rowsAffected); return rowsAffected > 0 ? "AdminLogin" :
	 * "deleteBook"; }
	 */

	@PostMapping("/deleteBook")
	public String deleteBook(@ModelAttribute BookDetails book, RedirectAttributes redirectAttributes) {
		String message = "";
		int rowsAffected = bookService.deleteBook(book.getTitle(), book.getAuthor());
		if (rowsAffected > 0) {
			message = "Book deleted successfully!";
			redirectAttributes.addFlashAttribute("message", message);
			return "redirect:/adminLogin";
		} else {
			message = "Book not available!";
			redirectAttributes.addFlashAttribute("errorMessage", message);
			return "redirect:/deleteBook";
		}
	}

	@GetMapping("/viewAllCustomers")
	public String viewAllCustomers(ModelMap model) {
		List<CustomerDetails> customers = adminService.viewAllCustomers();
		model.addAttribute("customers", customers);
		return "viewAllCustomers";
	}

	@GetMapping("/adminLogin")
	public String displayAdminPage() {
		return "adminLogin";
	}

	/*
	 * @PostMapping("/updateBookStock") public String updateBook(@ModelAttribute
	 * BookDetails book) { int rowsAffected =
	 * bookService.updateBookStock(book.getTitle(), book.getAuthor(),
	 * book.getStockQuantity()); return rowsAffected > 0 ? "redirect:/viewAllBooks"
	 * : "AdminLogin"; }
	 */
	/*
	 * @PostMapping("/updateBookStock") public String updateBookStock(BookDetails
	 * book, RedirectAttributes redirectAttributes) { int rowsAffected =
	 * bookService.updateBookStock(book.getTitle(), book.getAuthor(),
	 * book.getStockQuantity()); String message = ""; if (rowsAffected > 0) {
	 * message = "Book stock updated successfully!";
	 * redirectAttributes.addFlashAttribute("message", message); } else { message =
	 * "Book not found!"; redirectAttributes.addFlashAttribute("errorMessage",
	 * message); } return "redirect:/updateBookStock"; }
	 */

	/*
	 * @PostMapping("/updateBookStock") public String updateBookStock(BookDetails
	 * book, RedirectAttributes redirectAttributes) { String message =
	 * bookService.updateBookStock(book.getTitle(), book.getAuthor(),
	 * book.getStockQuantity()); if (message.contains("successfully")) {
	 * redirectAttributes.addFlashAttribute("message", message); } else {
	 * redirectAttributes.addFlashAttribute("errorMessage", message); } return
	 * "redirect:/updateBookStock"; }
	 */
}
