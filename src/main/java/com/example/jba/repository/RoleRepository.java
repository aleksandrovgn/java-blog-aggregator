package com.example.jba.repository;

import com.example.jba.entity.Role;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * Created by george on 22.08.2016.
 */
public interface RoleRepository extends JpaRepository<Role, Integer> {
    Role findByName(String role_user);
}
