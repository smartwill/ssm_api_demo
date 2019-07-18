package com.puzzle.api.entity.vo;


import com.puzzle.api.utils.ConstEnv;
import lombok.Data;
import org.springframework.util.StringUtils;

@Data
public class GameClueVo {


    private Integer id;
    private Integer clueKey;
    private String  title;
    private String  tips;
    private String  tipsLogo;
    private String  photo;
    private String  qrcode;

    public String getPhoto() {

        if(StringUtils.isEmpty(photo)){
            return "";
        }
        return ConstEnv.OSS_URL.concat(photo);
    }
}
