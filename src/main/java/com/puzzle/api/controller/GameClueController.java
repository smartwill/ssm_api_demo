package com.puzzle.api.controller;

import com.puzzle.api.service.GameClueService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class GameClueController {
    @Autowired
    private GameClueService gameClueService;

    @GetMapping("/getClueInfo")
    public Object getClueInfo(@RequestParam("id") Integer id){

        return gameClueService.getClueInfo(id);
    }
}
