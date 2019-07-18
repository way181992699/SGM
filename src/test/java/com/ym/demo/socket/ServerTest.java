package com.ym.demo.socket;

import java.io.*;
import java.net.ServerSocket;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class ServerTest {
    private static String pattern = "yyyy年MM月dd日 HH时mm分ss秒 SSS";
    public static SimpleDateFormat format = new SimpleDateFormat(pattern);
    // 设置超时间
    public static int _sec = 20;

    public static void main(String[] args) {
        System.out.println("----------Server----------");
        System.out.println(format.format(new Date()));

        ServerSocket serverSocket;
        try {
            serverSocket = new ServerSocket(8089);
            Socket accept = serverSocket.accept();
            System.out.println(format.format(new Date()));
            System.out.println("建立了链接\n");


            InputStream inputStream = accept.getInputStream();
            InputStreamReader inputStreamReader = new InputStreamReader(inputStream);//InputStreamReader 是字节流通向字符流的桥梁,它将字节流转换为字符流.
            BufferedReader bufferedReader = new BufferedReader(inputStreamReader);
            accept.setSoTimeout(_sec * 1000);
//            System.out.println("Server: "+format.format(new Date()) + "\n" + _sec + "秒的时间 快写\n");
            System.out.println(format.format(new Date()) + "\nClient:" + bufferedReader.readLine() + "\n");
            OutputStream outputStream = accept.getOutputStream();//OutputStreamWriter是字符流通向字节流的桥梁，它将字符流转换为字节流.
            Writer writer = new OutputStreamWriter(outputStream);
            System.out.println(format.format(new Date()));
//            System.out.println("Server: 我在写回复\n");
            writer.write("收到\n");
            Thread.sleep(4000);
            writer.flush();
            System.out.println(format.format(new Date()));
            System.out.println("Server: 写完啦 你收下\n\n\n\n\n");
        }catch (SocketTimeoutException e) {
            System.out.println(format.format(new Date()) + "\n" + _sec + "秒没给我数据 我下啦\n\n\n\n\n");
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
           } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }

}
