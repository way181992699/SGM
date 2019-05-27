package com.ym.demo.test;

import org.junit.Test;

import java.util.UUID;

public class UUIDTest {


    @Test
    public void fun() {
        UUID uuid = UUID.randomUUID();
        System.out.println(  uuid.toString());

        for (int i = 0; i < 100; i++) {
            String s = UUID.randomUUID().toString().replaceAll("-", "");
            System.out.println(s);
        }

    }




}
