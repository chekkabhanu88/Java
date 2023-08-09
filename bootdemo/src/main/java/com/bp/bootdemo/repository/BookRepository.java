package com.bp.bootdemo.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.bp.bootdemo.entity.Book;

public interface BookRepository extends JpaRepository<Book,String>
{
    Optional<Book> findByBookTitle(String BookTitle);
    List<Book> findByBookCategory(String bookCategory);
    Optional<Book> findByBookPrice(double bookPrice);
}
