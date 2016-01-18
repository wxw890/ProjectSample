package com.hta.book.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.hta.book.repository.BookDto;
import com.hta.book.service.BookService;

@Controller
public class BookReturnController {
	private BookService bookService;
	
	
	public void setBookService(BookService bookService) {
		this.bookService = bookService;
	}
	
	@RequestMapping(value="/return.book", method=RequestMethod.GET)
	public String deletehandle(int rental_num, int book_num){
		System.out.println(rental_num);
		System.out.println("booknum:"+ book_num);
		bookService.bookreturn(rental_num, book_num);
	
		return "redirect:myrental.book";
		
	}
	
	
}
