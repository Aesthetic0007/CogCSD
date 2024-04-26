package com.example.BookStore.dao;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.BookStore.model.BookDetails;

@Repository
public interface BookRepo extends JpaRepository<BookDetails,Integer>{
	
	public boolean existsByAuthorAndTitle(String author,String title);
	public boolean existsByAuthor(String author);
	public boolean existsByGenre(String genre);
	public int deleteByTitleAndAuthor(String title,String author);
	public List<BookDetails> findAllByAuthor(String author);
	public List<BookDetails> findAllByGenre(String genre);
	public Optional<BookDetails> findByTitleAndAuthor(String title, String author);
	
}
