package com.example.jba.repository;

import com.example.jba.entity.Blog;
import com.example.jba.entity.Item;
import com.example.jba.entity.Role;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

/**
 * Created by george on 22.08.2016.
 */
public interface ItemRepository extends JpaRepository<Item, Integer> {
    List<Item> findByBlog(Blog blog, Pageable pageable);
}
