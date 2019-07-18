package com.puzzle.api.mapper;

import com.puzzle.api.entity.po.GameClue;
import org.apache.ibatis.annotations.Param;

import javax.annotation.Resource;

@Resource
public interface IGameClueMapper {
    GameClue getClueInfo(@Param("id") Integer id);
}
