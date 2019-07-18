大致步骤, 对应示例为获取一条线索信息

## 一、建实体类，建立pojo类，对应数据库完整字段；建立vo类，对应视图；
* pojo类示例, @Data 注解帮我们实现了getter和setter，以及toString方法
pojo类对应的数据库完整字段列表
```
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
```
* vo类示例
通常情况下，vo类比pojo字段要少，只定义返回的字段
vo类可以定义来源多个表的字段
```
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
```
## 二、建立控制器@RestController controller类，如果只是告诉框架这是个控制器，定义@Controller即可
* 定义成员属性@Autowired Services类
* 定义方法和指定方法对外暴露的路径，使用get还是post还是其他
* 在方法中定义接受的参数@RequestParam("参数名")
* 调用具体的servers层
#### 代码示例
```
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
```

## 三、建立@Service services类
* 定义成员属性@Autowired private IMapper 接口; 
* 编写方法，使用PO接受 mapper返回的数据
* 在方法内new VO()，最终以VO的数据格式返回
#### 代码示例
```
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

```
## 四、建立@Resource IMapper接口
* 定义方法返回类型和入参名称和类型

#### 代码示例 
```
package com.puzzle.api.mapper;

import com.puzzle.api.entity.po.GameClue;
import org.apache.ibatis.annotations.Param;
import javax.annotation.Resource;

@Resource
public interface IGameClueMapper {
    GameClue getClueInfo(@Param("id") Integer id);
}
```

## 五、建立与IMapper对应的XML文件，相当于框架会根据这个XML文件，自动帮我们编写一个对应的实现类
#### 代码示例
```
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE mapper PUBLIC "-//mybatis.org//DTD Mapper 3.0//EN" "http://mybatis.org/dtd/mybatis-3-mapper.dtd">
<!--定义命名空间为IMapper-->
<mapper namespace="com.puzzle.api.mapper.IGameClueMapper">
    <!--XML定义返回数据类型为pojo类-->
    <resultMap id="GameClue" type="com.puzzle.api.entity.po.GameClue">
        <result column="id" jdbcType="INTEGER" property="id"/>
        <result column="clue_key" jdbcType="INTEGER" property="clueKey"/>
        <result column="title" jdbcType="VARCHAR" property="title"/>
        <result column="tips" jdbcType="VARCHAR" property="tips"/>
        <result column="tips_logo" jdbcType="VARCHAR" property="tipsLogo"/>
        <result column="photo" jdbcType="VARCHAR" property="photo"/>
        <result column="local" jdbcType="VARCHAR" property="local"/>
        <result column="qrcode" jdbcType="VARCHAR" property="qrcode"/>
        <result column="status" jdbcType="INTEGER" property="status"/>
        <result column="c_time" jdbcType="INTEGER" property="cTime"/>
        <result column="u_time" jdbcType="INTEGER" property="uTime"/>
        <result column="del" jdbcType="INTEGER" property="del"/>
    </resultMap>

    <select id="getClueInfo" resultType="GameClue">
        select `id`,`clue_key`,`title`,`tips`,`tips_logo`,`photo`,`qrcode` from game_clue where id=#{id} limit 1
    </select>

</mapper>
```

## 附录
* application.properties
文件放置在：\src\main\resources
```
server.port=8001
#数据库配置
spring.datasource.driver-class-name=com.mysql.jdbc.Driver
spring.datasource.url=jdbc:mysql://127.0.0.1:3306/puzzle?&autoReconnect=true&useSSL=false&zeroDateTimeBehavior=convertToNull
spring.datasource.username=root
spring.datasource.password=root
#设置mapper.xml文件的地址
mybatis.mapper-locations=classpath:mapping/*Mapper.xml
#设置pojo类所在的包
mybatis.type-aliases-package=com.puzzle.api.entity.po
#设置字段名自动转java驼峰式命名
mybatis.configuration.map-underscore-to-camel-case=true
#设置mybatis日志打印
logging.level.com.nbhysj.demo.mapper=debug
```

* Spring boot入口启动文件: ApiApplication
文件路径：\src\main\java\com\puzzle\api
```
package com.puzzle.api;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@MapperScan("com.puzzle.api.mapper")
@SpringBootApplication
public class ApiApplication {

    public static void main(String[] args) {
        SpringApplication.run(ApiApplication.class, args);
    }
}
```



* 项目结构：
```
/main
/main/java
/main/java/com.puzzle.api
/main/java/com.puzzle.api/controller
/main/java/com.puzzle.api/entity
/main/java/com.puzzle.api/entity/po
/main/java/com.puzzle.api/entity/vo
/main/java/com.puzzle.api/mapper
/main/java/com.puzzle.api/service
/main/java/com.puzzle.api/utils

//框架启动文件
/main/java/com.puzzle.api/ApiApplication

//静态文件和环境配置
/main/resources

//保存XML文件
/main/resources/mapping

```

### 备注：一个不规范的流程示意图，可能只有自己看的懂
![image.png](https://upload-images.jianshu.io/upload_images/10630739-590cc0dfd0d2e41b.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)


GitHub地址: [https://github.com/smartwill/ssm_api_demo](https://github.com/smartwill/ssm_api_demo)
或 git clone https://github.com/smartwill/ssm_api_demo.git
database/game_clue.sql 导入数据库，数据库名称：murloc_puzzle