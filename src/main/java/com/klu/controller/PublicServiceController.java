package com.klu.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Controller
public class PublicServiceController {

    @GetMapping("/relatedservices")
    @ResponseBody
    public List<Map<String, String>> getRelatedServices(@RequestParam String type, @RequestParam Long cityId) {
        // Replace with actual database fetching logic
        List<Map<String, String>> services = new ArrayList<>();
        if ("Education".equalsIgnoreCase(type)) {
            services.add(Map.of("name", "Guntur Public School", "address", "Main Road, Guntur"));
            services.add(Map.of("name", "Vignan's University", "address", "Vadlamudi, Guntur"));
        } else if ("Healthcare".equalsIgnoreCase(type)) {
            services.add(Map.of("name", "Guntur General Hospital", "address", "Ring Road, Guntur"));
            services.add(Map.of("name", "Apollo Hospital", "address", "Arundelpet, Guntur"));
        }
        // Add logic for other types
        return services;
    }
}

