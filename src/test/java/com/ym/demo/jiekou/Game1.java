package com.ym.demo.jiekou;

public abstract class Game1 {
    public abstract void play();

    public void playFun() {
        System.out.println("抽象类的play,若无子类向上转型实例化父类的对象,即使执行该方法也会包空指针");
    }
}
