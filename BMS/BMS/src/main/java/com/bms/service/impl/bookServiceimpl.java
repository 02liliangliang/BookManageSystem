package com.bms.service.impl;

import com.bms.entity.Book;
import com.bms.mapper.BookMapper;
import com.bms.service.bookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class bookServiceimpl implements bookService {

    @Autowired
    BookMapper bookmapper;
    @Override
    public Book getBook(String bookName) {
        return bookmapper.getBookBybookName(bookName);
    }

    @Override
    public Book getBookBybookCbs(String bookCbs) {
        return bookmapper.getBookBybookCbs(bookCbs);
    }

    @Override
    public Book getBookBybookSort(String bookSort) {
        return bookmapper.getBookBybookSort(bookSort);
    }

    @Override
    public Book IdgetBook(int bookId) {
        return bookmapper.getBookBybookId(bookId);
    }

    @Override
    public List<Book> getBooks() {
        return bookmapper.findAllBook();
    }

    @Override
    public List<Book> fuzzysearch(String fuzzySearchValue) {
        return bookmapper.fuzzysearch(fuzzySearchValue);
    }


    @Override
    public void addBook(String bookName, String bookCbs, String bookData, String bookSort) {
        bookmapper.addBook(bookName,bookCbs,bookData,bookSort);
    }

    @Override
    public void deleteBookById(Integer bookId) {
        bookmapper.deleteBookById(bookId);
    }

    @Override
    public void upDateBook(Integer bookId,String bookName, String bookCbs, String bookData, String bookSort) {
        bookmapper.upDateBook(bookId,bookName,bookCbs,bookData,bookSort);
    }
}
