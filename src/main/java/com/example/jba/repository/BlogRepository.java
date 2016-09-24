package com.example.jba.repository;

import com.example.jba.entity.Blog;
import com.example.jba.entity.Role;
import com.example.jba.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

/**
 * Created by george on 22.08.2016.
 */
public interface BlogRepository extends JpaRepository<Blog, Integer> {
    List<Blog> findByUser(User user);
}
