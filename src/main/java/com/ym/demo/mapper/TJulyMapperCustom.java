package com.ym.demo.mapper;

import com.ym.demo.pojo.TJuly;
import com.ym.demo.utils.MyMapper;
import org.apache.ibatis.annotations.Param;

public interface TJulyMapperCustom extends MyMapper<TJuly> {
                public int addUser(TJuly record);
                public TJuly  login(@Param( value = "username") String userName,@Param( value = "password") String password);


}