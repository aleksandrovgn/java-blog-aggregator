package com.example.jba.repository;

import com.example.jba.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * Created by george on 22.08.2016.
 */
public interface UserRepository extends JpaRepository<User, Integer> {
    User findByName(String name);
}
