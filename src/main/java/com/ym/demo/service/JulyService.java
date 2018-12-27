package com.ym.demo.service;


import com.ym.demo.pojo.TJuly;
import com.ym.demo.utils.JSONResult;



public interface JulyService {
    
    public JSONResult register(TJuly record) throws  Exception;
    
    public JSONResult findOneByUserName(String userName) throws  Exception;
    
    public JSONResult login(String userName,String password) throws  Exception;
    
    public JSONResult addUser(TJuly record) throws  Exception;
    


}
