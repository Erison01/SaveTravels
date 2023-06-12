package com.erison.savetravels.controllers;

import com.erison.savetravels.models.Travel;
import com.erison.savetravels.services.TravelServices;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/expense")
public class TravelController {
    @Autowired
    private TravelServices travelServices;
// show the items
    @GetMapping
    public String expensis(Model model){
        List<Travel>travels = travelServices.allTravels();
        model.addAttribute("allTravels",travels);
        model.addAttribute("newTravel",new Travel());
        return "expenses";
    }

// create an item
    @PostMapping
    public String createTravel(@Valid  @ModelAttribute("newTravel") Travel newTravel, BindingResult result){
    if (result.hasErrors()){
        return "expenses";
    }else {
        travelServices.createTravel(newTravel);
        return "redirect:/expense";
    }
    }
    //update item
    @GetMapping("/edit/{id}")
    public String editTravel(@PathVariable Long id ,Model model){
        Travel theTravel = travelServices.travelDetails(id);
        model.addAttribute("theTravel",theTravel);
        return "/edit";
    }
    @PutMapping("/update/{id}")
    public String updateTravel(@Valid @ModelAttribute("theTravel")Travel theTravel,BindingResult result,@PathVariable Long id ){
        if (result.hasErrors()){
            return "/edit";
        }else {
            travelServices.updateTravel(theTravel);
            return "redirect:/expense";
        }
    }
    //delete item
    @DeleteMapping("/delete/{id}")
    public String delete(@PathVariable Long id){
        travelServices.deleteTravel(id);
        return "redirect:/expense";
    }
    //read item
    @GetMapping("{id}")
    public String travelDetails(@PathVariable Long id ,Model model){
        Travel travel = travelServices.travelDetails(id);
        model.addAttribute("travel",travel);
        return"details";
    }
}
