package com.ym.demo.pojo;

import com.fasterxml.jackson.annotation.JsonIgnore;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@ApiModel(value="医生对象模型")
public class DemoDoctor{
    @ApiModelProperty(value="id" ,required=true)
    private Integer id;
    @ApiModelProperty(value="医生姓名" ,required=true)
//    @JsonIgnore
    private String name;


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public String toString() {
        return "DemoDoctor [id=" + id + ", name=" + name + "]";
    }

}
