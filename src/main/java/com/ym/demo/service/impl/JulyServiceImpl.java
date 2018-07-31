package com.ym.demo.service.impl;

import com.ym.demo.mapper.TJulyMapper;
import com.ym.demo.mapper.TJulyMapperCustom;
import com.ym.demo.pojo.TJuly;
import com.ym.demo.service.JulyService;
import com.ym.demo.utils.JSONResult;
import com.ym.demo.utils.JsonUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import tk.mybatis.mapper.entity.Example;


@Service
public class JulyServiceImpl implements JulyService {
    @Autowired
    private TJulyMapper mapper;
    @Autowired
    private TJulyMapperCustom mapperCustom;


    @Override
    @Transactional(propagation = Propagation.REQUIRED)
    public JSONResult register(TJuly record) throws Exception {
        try {
            if (mapper.insert(record) != -1) {
                return JSONResult.ok("注册成功");
            }

        } catch (Exception e) {
            e.printStackTrace();
            return JSONResult.errorException("注册失败；失败原因：" + e.toString());
        }

        return JSONResult.errorMsg("注册失败");
    }

    @Override
    @Transactional(propagation = Propagation.SUPPORTS)
    public JSONResult findOneByUserName(String userName) throws Exception {
        TJuly july = null;
        try {
            july = getObject(userName, mapper);
            if (july != null) {
                return JSONResult.ok(july);
            } else {
                return JSONResult.errorMsg("用户名不存在");
            }
        } catch (Exception e) {
            e.printStackTrace();
            return JSONResult.errorException(e.toString());
        }

    }

    @Override
    @Transactional(propagation = Propagation.SUPPORTS)
    public JSONResult login(String userName, String password) throws Exception {

        TJuly july = getObject(userName, mapper);
        try {
            if (JsonUtils.isEmpty(userName)) {
                return JSONResult.errorMsg("用户名不能为空");
            }
            if (!JsonUtils.isEmpty(userName) && JsonUtils.isEmpty(password)) {
                return JSONResult.errorMsg("密码不能为空");
            }
            if (july == null) {
                return JSONResult.errorMsg("用户名不存在");
            }
            if (july != null) {
                if (!july.getPassword().equals(password)) {
                    return JSONResult.errorMsg("密码错误");
                } else {
                    return JSONResult.ok("登录成功");
                }

            }

        } catch (
                Exception e) {
            e.printStackTrace();
            return JSONResult.errorException(e.toString());
        }

        return JSONResult.errorMsg("登录失败");
    }

    @Override
    @Transactional(propagation = Propagation.REQUIRED)
    public JSONResult addUser(TJuly record) {
        try {

            if (!JsonUtils.isEmpty(record.getUsername()) && !JsonUtils.isEmpty(record.getPassword())) {

                TJuly july = getObject(record.getUsername(), mapper);
                if (july != null) {
                    return JSONResult.errorMsg("用户名已经存在");
                }
                if (mapperCustom.addUser(record) != -1) {
                    return JSONResult.ok("注册成功");
                }
            }
        } catch (Exception e) {
            return JSONResult.errorException(e.toString());
        }
        return JSONResult.errorMsg("注册失败");
    }

    /**
     * 根据用户名查询单个用户信息
     * @param userName
     * @param mapper
     * @return
     */
    private static TJuly getObject(String userName, TJulyMapper mapper) {
        TJuly july;
        Example example = new Example(TJuly.class);
        Example.Criteria criteria = example.createCriteria();
        criteria.andEqualTo("username", userName);
        july = mapper.selectOneByExample(example);
        return july;
    }

}
