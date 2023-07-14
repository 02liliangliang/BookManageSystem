package com.bms.entity;

public class Book {
    private Integer bookId;
    private String bookName;
    private String bookCbs;
    private String bookData;
    private String bookSort;
    //    模糊查询字段
    private String fuzzySearchValue;

    public Book() {
    }

    public Book(Integer bookId, String bookName, String bookCbs, String bookData, String bookSort, String fuzzySearchValue) {
        this.bookId = bookId;
        this.bookName = bookName;
        this.bookCbs = bookCbs;
        this.bookData = bookData;
        this.bookSort = bookSort;
        this.fuzzySearchValue = fuzzySearchValue;
    }

    public Integer getBookId() {
        return bookId;
    }

    public void setBookId(Integer bookId) {
        this.bookId = bookId;
    }

    public String getBookName() {
        return bookName;
    }

    public void setBookName(String bookName) {
        this.bookName = bookName;
    }

    public String getBookCbs() {
        return bookCbs;
    }

    public void setBookCbs(String bookCbs) {
        this.bookCbs = bookCbs;
    }

    public String getBookData() {
        return bookData;
    }

    public void setBookData(String bookData) {
        this.bookData = bookData;
    }

    public String getBookSort() {
        return bookSort;
    }

    public void setBookSort(String bookSort) {
        this.bookSort = bookSort;
    }

    public String getFuzzySearchValue() {
        return fuzzySearchValue;
    }

    public void setFuzzySearchValue(String fuzzySearchValue) {
        this.fuzzySearchValue = fuzzySearchValue;
    }

    @Override
    public String toString() {
        return "Book{" +
                "bookId=" + bookId +
                ", bookName='" + bookName + '\'' +
                ", bookCbs='" + bookCbs + '\'' +
                ", bookData='" + bookData + '\'' +
                ", bookSort='" + bookSort + '\'' +
                '}';
    }
}

