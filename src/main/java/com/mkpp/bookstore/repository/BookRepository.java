package com.mkpp.bookstore.repository;

import com.mkpp.bookstore.model.Book;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository("bookRepository")
public interface BookRepository extends JpaRepository<Book, Long> {



    public Optional<Book> findById(long id);

    @Query(value = "SELECT * FROM book b WHERE b.recommended = 1", nativeQuery = true)
    Optional<List<Book>> findAllRecommended();

    @Query(value = "SELECT * FROM book b WHERE b.old_price > b.price", nativeQuery = true)
    Optional<List<Book>> findAllOnPromotion();

    @Query(value = "SELECT * FROM book b ORDER BY b.popularity DESC LIMIT 2 ", nativeQuery = true)
    Optional<List<Book>> findAllPopular();

    @Query(value = "SELECT * FROM book b WHERE b.category = :param", nativeQuery = true)
    Page<Book> findAllSearch(@Param("param") String param, Pageable pageable);

    @Query(value = "SELECT DISTINCT publishing_house FROM book", nativeQuery = true)
    List<String> findAllPublishingHouse();

    @Query(value = "SELECT DISTINCT category FROM book b WHERE b.category= :param", nativeQuery = true)
    String categoryName(@Param("param") String param);

    @Query(value = "SELECT * FROM book b WHERE b.url= :param", nativeQuery = true)
    Book bookUrl(@Param("param") String param);

//    Page<Book> findAll(Pageable pageable);
}
