package com.erison.savetravels.services;

import com.erison.savetravels.models.Travel;
import com.erison.savetravels.repositories.TravelRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TravelServices {
    @Autowired
    private TravelRepository travelRepository;

public List<Travel>allTravels(){
    return travelRepository.findAll();
}
public void createTravel(Travel travel){
     travelRepository.save(travel);
}

public Travel travelDetails(Long id){
    return travelRepository.findById(id).orElse(null);
}
public void updateTravel(Travel travel){
    travelRepository.save(travel);
}
public void deleteTravel(Long id){
    travelRepository.deleteById(id);
}

}
