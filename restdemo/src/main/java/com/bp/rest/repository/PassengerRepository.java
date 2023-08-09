package com.bp.rest.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import com.bp.rest.entity.Passenger;
public interface PassengerRepository extends JpaRepository<Passenger,Integer> 
{

}
 