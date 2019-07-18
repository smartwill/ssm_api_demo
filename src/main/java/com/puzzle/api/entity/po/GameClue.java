package com.puzzle.api.entity.po;

import lombok.Data;

import java.io.Serializable;

@Data
public class GameClue implements Serializable {


    private Integer id;
    private Integer clueKey;
    private String  title;
    private String  tips;
    private String  tipsLogo;
    private String  photo;
    private String  local;
    private String  qrcode;
    private Integer status;
    private Integer cTime;
    private Integer uTime;
    private Integer del;


}
