package com.bp.rest.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bp.rest.entity.Passenger;
import com.bp.rest.exception.ResourceNotModifiedException;
import com.bp.rest.repository.PassengerRepository;

@Service
public class PassengerService 
{
	@Autowired 
	PassengerRepository passengerRepository;
	
	@Transactional(readOnly=true)
	public List<Passenger> getAllPassengers()
	{
		return passengerRepository.findAll();
	}
    
	@Transactional(readOnly=true)
	public Passenger getPassengerByPassengerId(int passengerId)
	{
		Optional<Passenger> p= passengerRepository.findById(passengerId);
		if(p.isPresent())
			return p.get();
		return null;
	}
	
	@Transactional
	public void insertOrModify(Passenger passenger)
	{
		if(passengerRepository.save(passenger)==null)
			throw new ResourceNotModifiedException();
	}
	
	public boolean deletePassengerByPassengerId(int passengerId)
	{
		long count=passengerRepository.count();
		passengerRepository.deleteById(passengerId);
		if(count > passengerRepository.count())
			return true;
		throw new ResourceNotModifiedException();
	}
}
