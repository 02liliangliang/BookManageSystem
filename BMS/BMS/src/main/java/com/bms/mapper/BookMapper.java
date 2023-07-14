package com.bms.mapper;

import com.bms.entity.Book;
import com.bms.entity.User;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;
@Mapper
public interface BookMapper {
    Book getBookBybookName(String bookName);
    Book getBookBybookCbs(String bookCbs);
    Book getBookBybookSort(String bookSort);
    Book getBookBybookId(int bookId);



    List<Book> findAllBook();

    List<Book> fuzzysearch(String fuzzySearchValue);

    void addBook(@Param("bookName") String bookName,
                 @Param("bookCbs") String bookCbs,
                 @Param("bookData") String bookData,
                 @Param("bookSort") String bookSort);


    void deleteBookById(Integer bookId);

    void upDateBook(@Param("bookId") Integer bookId,
            @Param("bookName") String bookName,
                    @Param("bookCbs") String bookCbs,
                    @Param("bookData") String bookData,
                    @Param("bookSort") String bookSort);


}
