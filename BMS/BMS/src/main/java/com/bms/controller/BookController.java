package com.bms.controller;

import com.bms.entity.Book;
import com.bms.service.bookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/book")
public class BookController {

    @Autowired
    private bookService bookService;

    @RequestMapping("/delete")
    public String delete(HttpServletRequest request,String bookName,String bookCbs,String bookSort){
        HttpSession session= request.getSession();
        System.out.println("删除书籍事件已启动");
        System.out.println("出版社"+bookCbs);
        System.out.println("类别"+bookSort);
        Book deletebook1 = bookService.getBook(bookName);
        System.out.println("找到的书"+deletebook1);
        if (bookName !=null || bookCbs !=null || bookSort !=null){
            if (deletebook1.getBookCbs().equals(bookCbs)){
                if(deletebook1.getBookSort().equals(bookSort)){
                    System.out.println("已在数据库中查到这本书籍,已删除");
                    bookService.deleteBookById(deletebook1.getBookId());
                    List<Book> book = bookService.getBooks();
                    session.setAttribute("books",book);
                    return "admin";
                }else{
                    System.out.println("通过第二第三关键词匹配未找到这本书");
                }
            }else{
                System.out.println("通过第一第二关键词匹配未找到这本书");
            }
        }else{System.out.println("您所选的关键词不够");}
        return "admin";
    }
    @RequestMapping("/tobook_add")
    public String tobook_add(){
        return "book_add";
    }

    @RequestMapping("/book_add")
    public String book_add(HttpServletRequest request,String bookName, String bookCbs, String bookData, String bookSort){
        HttpSession session =request.getSession();
        System.out.println(bookName);
        bookService.addBook(bookName,bookCbs,bookData,bookSort);
        List<Book> books = bookService.getBooks();
        session.setAttribute("books",books);
        return "admin";
    }

    @RequestMapping("/to_book_edit")
    public String to_book_edit(HttpServletRequest request,Integer bookId){
        HttpSession session=request.getSession();
        System.out.println(bookId);
        Book editbook= bookService.IdgetBook(bookId);
        session.setAttribute("editbook",editbook);
        System.out.println(editbook.getBookData());
        return "admin_editBook";
    }
    @RequestMapping("/book_edit")
    public String book_edit(HttpServletRequest request,Integer bookId,String bookName,String bookCbs,String bookData,String bookSort){
        HttpSession session=request.getSession();
        bookService.upDateBook(bookId,bookName,bookCbs,bookData,bookSort);
        List<Book> books = bookService.getBooks();
        session.setAttribute("books",books);
        return "admin";
    }

    @RequestMapping("/backAdmin")
    public String backAdmin(){
        return "admin";
    }

    @RequestMapping("/editFSearch")
    public String editFSearch(String fuzzySearchValue,HttpServletRequest request){
        HttpSession session=request.getSession();
        System.out.println("模糊查询的字段"+fuzzySearchValue);
        List<Book> fuzzysearcheditbookList = bookService.fuzzysearch(fuzzySearchValue);
        System.out.println("模糊查询的结果"+fuzzysearcheditbookList);
        session.setAttribute("FsEditBookList",fuzzysearcheditbookList);
        return "admin-editbook-FSshow";
    }

    @RequestMapping("/showFSearch")
    public String showFSearch(String fuzzySearchValue,HttpServletRequest request){
        HttpSession session=request.getSession();
        System.out.println("模糊查询的字段"+fuzzySearchValue);
        List<Book> fuzzysearchshowbookList = bookService.fuzzysearch(fuzzySearchValue);
        System.out.println("模糊查询的结果"+fuzzysearchshowbookList);
        session.setAttribute("FsShowBookList",fuzzysearchshowbookList);
        return "admin-booklist-FSshow";
    }

    @RequestMapping("/readershowFSearch")
    public String readershowFSearch(String fuzzySearchValue,HttpServletRequest request){
        HttpSession session=request.getSession();
        System.out.println("模糊查询的字段"+fuzzySearchValue);
        List<Book> readerfuzzysearchshowbookList = bookService.fuzzysearch(fuzzySearchValue);
        System.out.println("模糊查询的结果"+readerfuzzysearchshowbookList);
        session.setAttribute("readerFsShowBookList",readerfuzzysearchshowbookList);
        return "users-booklist-FSshow";
    }
}
