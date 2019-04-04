package com.ym.demo.utils;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.ApplicationArguments;
import org.springframework.boot.ApplicationRunner;
import org.springframework.stereotype.Component;

import java.util.Timer;
import java.util.TimerTask;

@Component
public class TimedTask implements ApplicationRunner {
    private final Logger logger = LoggerFactory.getLogger(getClass());

    @Override
    public void run(ApplicationArguments args) throws Exception {
        logger.info("项目启动完成,立即执行该方法...");
        myTask();
    }

    public void myTask() {

        Timer timer = new Timer();
        timer.schedule(new TimerTask() {
            @Override
            public void run() {
                int a = 0;
                System.out.println(a++);
                timer.cancel();//终止线程
            }
        }, 3000, 3000);
    }
}
