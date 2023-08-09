package com.bp.rest.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bp.rest.entity.Train;
import com.bp.rest.exception.ResourceNotFoundException;
import com.bp.rest.exception.ResourceNotModifiedException;
import com.bp.rest.repository.TrainRepository;

@Service
public class TrainService 
{
	@Autowired
	TrainRepository trainRepository;
	@Transactional(readOnly=true)
	public List<Train> getAllTrains()
	{
		return trainRepository.findAll();
	}
    @Transactional(readOnly=true)
    public Train getTrainByTrainId(int trainId)
    {
    	Optional<Train> ot= trainRepository.findById(trainId);
    	if(ot.isPresent())
    		return ot.get();
    	throw new  ResourceNotFoundException();
    }
    /*
    public Train getTrainByTrainName(String trainName)
    {
    	Optional<Train> ot1= trainRepository.FindByTrainName(trainName);
    	if(ot1.isPresent())
    		return ot1.get();
    	return null;
    }
    */
    @Transactional
    public void insertOrModifyTrain(Train train)
    {
       if(trainRepository.save(train)==null)
    	  throw new ResourceNotModifiedException();
    }
    @Transactional
    public boolean deleteTrainByTrainId(int trainId)
    {
    	long count = trainRepository.count();
    	trainRepository.deleteById(trainId);
    	if( count > trainRepository.count())
    		return true;
    	throw new  ResourceNotFoundException();
    }
}
