package com.puzzle.api.service;

import com.puzzle.api.entity.po.GameClue;
import com.puzzle.api.entity.vo.GameClueVo;
import com.puzzle.api.mapper.IGameClueMapper;
import com.puzzle.api.utils.JsonResult;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class GameClueService {

    @Autowired
    private IGameClueMapper gameClueMapper;


    public Object getClueInfo(Integer id){


        try {
            GameClue clueInfo = gameClueMapper.getClueInfo(id);
            GameClueVo gameClueVo = new GameClueVo();

            BeanUtils.copyProperties(clueInfo,gameClueVo);


            return JsonResult.success(gameClueVo);
        }catch (Exception e){
            return JsonResult.failure(1102,"找不到线索");
        }


    }
}
