package com.bms.service;

import com.bms.entity.Book;
import com.bms.entity.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface bookService {
    Book getBook(String bookName);
    Book getBookBybookCbs(String bookCbs);
    Book getBookBybookSort(String bookSort);
    Book IdgetBook(int bookId);

    List<Book> getBooks();
    List<Book> fuzzysearch(String fuzzySearchValue);

    void addBook( String bookName, String bookCbs, String bookData, String bookSort);
    void deleteBookById(Integer bookId);
    void upDateBook(Integer bookId,String bookName, String bookCbs, String bookData, String bookSort);
}
