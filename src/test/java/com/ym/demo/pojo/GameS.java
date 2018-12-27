package com.ym.demo.pojo;

import com.ym.demo.jiekou.Game;
import com.ym.demo.jiekou.Game1;
import com.ym.demo.jiekou.impl.Game1Impl;
import com.ym.demo.jiekou.impl.GameImpl;

public  class  GameS {
   public static Game g = new GameImpl();

   public static Game1 g1 =new Game1Impl();

    public Game getG() {
        return g;
    }

    public void setG(Game g) {
        this.g = g;
    }

  public   static void fun1(){
        System.out.println("GameS....");
    }
}
