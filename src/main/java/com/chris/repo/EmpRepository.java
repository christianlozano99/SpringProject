package com.chris.repo;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.chris.model.Employee;

@Repository
public interface EmpRepository extends JpaRepository<Employee, Long> {

}
