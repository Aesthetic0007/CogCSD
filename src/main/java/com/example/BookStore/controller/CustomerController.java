/*
 * package com.example.BookStore.controller;
 * 
 * public class CustomerController {
 * 
 * }
 */

/*
 * package com.example.BookStore.controller;
 * 
 * import java.util.List;
 * 
 * import org.springframework.beans.factory.annotation.Autowired; import
 * org.springframework.stereotype.Controller; import
 * org.springframework.ui.ModelMap; import
 * org.springframework.web.bind.annotation.GetMapping; import
 * org.springframework.web.bind.annotation.ModelAttribute; import
 * org.springframework.web.bind.annotation.PostMapping;
 * 
 * import com.example.BookStore.model.BookDetails; import
 * com.example.BookStore.service.BookService;
 * 
 * @Controller public class CustomerController {
 * 
 * @Autowired private BookService bookService;
 * 
 * @GetMapping("/searchByAuthor") public String searchByAuthor() { return
 * "searchByAuthor"; }
 * 
 * @PostMapping("/searchByAuthor") public String
 * searchByAuthorPost(@ModelAttribute("author") String author, ModelMap model) {
 * List<BookDetails> books = bookService.searchBooksByAuthor(author);
 * model.addAttribute("books", books); return "searchByAuthorResults"; }
 * 
 * @PostMapping("/searchByGenre") public String searchByGenre() { return
 * "searchByGenre"; }
 * 
 * @GetMapping("/searchByGenreResults") public String
 * searchByGenrePost(@ModelAttribute("genre") String genre, ModelMap model) {
 * List<BookDetails> books = bookService.searchBooksByGenre(genre);
 * model.addAttribute("books", books); return "searchByGenreResults"; } }
 */

/*package com.example.BookStore.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
//import org.springframework.web.bind.annotation.PostMapping;

import com.example.BookStore.model.BookDetails;
import com.example.BookStore.service.BookService;

@Controller
public class CustomerController {

	@Autowired
	private BookService bookService;

	@GetMapping("/searchByAuthor")
	public String searchByAuthor() {
		return "searchByAuthor";
	}

	@GetMapping("/searchByAuthorResults")
	public String searchByAuthorPost(@ModelAttribute("author") String author, ModelMap model) {
		List<BookDetails> books = bookService.searchBooksByAuthor(author);
		model.addAttribute("books", books);
		return "searchByAuthorResults";
	}

	@GetMapping("/searchByGenre")
	public String searchByGenre() {
		return "searchByGenre";
	}

	@GetMapping("/searchByGenreResults")
	public String searchByGenrePost(@ModelAttribute("genre") String genre, ModelMap model) {
		List<BookDetails> books = bookService.searchBooksByGenre(genre);
		model.addAttribute("books", books);
		return "searchByGenreResults";
	}
	
	@GetMapping("/customerLogin")
	public String displayAdminPage() {
		return "customerLogin";
	}
}
*/





package com.example.BookStore.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import com.example.BookStore.model.BookDetails;
import com.example.BookStore.service.BookService;

@Controller
public class CustomerController {

	@Autowired
	private BookService bookService;

	@GetMapping("/searchByAuthor")
	public String searchByAuthor() {
		return "searchByAuthor";
	}

	@PostMapping("/searchByAuthorResults")
	public String searchByAuthorPost(@RequestParam("author") String author, ModelMap model) {
		List<BookDetails> books = bookService.searchBooksByAuthor(author);
		model.addAttribute("books", books);
		return "searchByAuthorResults";
	}

	@GetMapping("/searchByGenre")
	public String searchByGenre() {
		return "searchByGenre";
	}

	@PostMapping("/searchByGenreResults")
	public String searchByGenrePost(@RequestParam("genre") String genre, ModelMap model) {
		List<BookDetails> books = bookService.searchBooksByGenre(genre);
		model.addAttribute("books", books);
		return "searchByGenreResults";
	}
	
	@GetMapping("/customerLogin")
	public String displayAdminPage() {
		return "customerLogin";
	}
}
