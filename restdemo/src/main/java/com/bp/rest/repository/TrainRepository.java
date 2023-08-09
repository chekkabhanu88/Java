package com.bp.rest.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.bp.rest.entity.Train;

public interface TrainRepository extends JpaRepository<Train,Integer> 
{
    //Optional<Train> FindByTrainName(String trainName);
}
