package com.ym.demo;

import com.ym.demo.pojo.K;
import com.ym.demo.pojo.Kyo;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.data.mongodb.core.query.Update;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.List;

@RunWith(SpringRunner.class)
@SpringBootTest
public class DemoApplicationTests {

    @Autowired
    private MongoTemplate mongoTemplate;

    @Test
    public void contextLoads() {
        Query query = new Query();
//        query.addCriteria(Criteria.where("_id").is("5c63c59e8128669fed4d9229"));
//        Update update = new Update();
//        update.set("name", "98778321329");
//        mongoTemplate.upsert(query, update, "k");
//        K one = mongoTemplate.findOne(query, K.class);
        Kyo kyo = new Kyo("Kyo", 100, "女");
        mongoTemplate.insert(kyo, "askdf");
        List<Kyo> k = mongoTemplate.findAll(Kyo.class,"askdf");
        for (Kyo kyo1 : k) {
            System.out.println(kyo1);
        }
//        System.out.println(all);
    }


}
