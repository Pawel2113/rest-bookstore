package com.mkpp.bookstore.repository;

import com.mkpp.bookstore.model.Book;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface BookRepository extends JpaRepository<Book, Long> {



    public Book findById(long id);

    @Query(value = "SELECT * FROM book b WHERE b.recommended = 1", nativeQuery = true)
    List<Book> findAllRecommended();

    @Query(value = "SELECT * FROM book b WHERE b.old_price > b.price", nativeQuery = true)
    List<Book> findAllOnPromotion();

    @Query(value = "SELECT * FROM book b ORDER BY b.popularity DESC LIMIT 3 ", nativeQuery = true)
    List<Book> findAllPopular();

    @Query(value = "SELECT * FROM book b WHERE b.category = :param", nativeQuery = true)
    Page<Book> findAllSearch(@Param("param") String param, Pageable pageable);

    @Query(value = "SELECT DISTINCT publishing_house FROM book", nativeQuery = true)
    List<String> findAllPublishingHouse();

    @Query(value = "SELECT DISTINCT category FROM book b WHERE b.category= :param", nativeQuery = true)
    String categoryName(@Param("param") String param);

    @Query(value = "SELECT * FROM book b WHERE b.url= :param", nativeQuery = true)
    Book bookUrl(@Param("param") String param);

}
