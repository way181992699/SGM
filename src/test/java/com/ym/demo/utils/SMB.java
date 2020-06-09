package com.ym.demo.utils;

import jcifs.smb.SmbFile;
import jcifs.smb.SmbFileInputStream;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

import java.io.*;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

@Component
public class SMB {
    private Logger logger = LoggerFactory.getLogger(getClass());

    // 从共享目录下载文件
    /**
     * @param remoteUrl 远程路径
     * @param localDir 要写入的本地路径
     */
    @SuppressWarnings("unused")
    public void smbGet(String remoteUrl, String localDir) {
        InputStream in = null;
        OutputStream out = null;
        try {
            SmbFile remoteFile = new SmbFile(remoteUrl);
            if (remoteFile == null) {
                logger.info("共享文件不存在");
                return;
            }
            String fileName = remoteFile.getName();
            File localFile = new File(localDir + File.separator + fileName);
            in = new BufferedInputStream(new SmbFileInputStream(remoteFile));
            out = new BufferedOutputStream(new FileOutputStream(localFile));
            byte[] buffer = new byte[1024];
            while (in.read(buffer) != -1) {
                out.write(buffer);
                buffer = new byte[1024];
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                out.close();
                in.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }


    public List<String> smbFileToImageList(SmbFile file) throws Exception {
        List<String> strings = new ArrayList<>();
        if (file.isDirectory()) {
            // 获得该文件夹内的所有文件
            String[] files = file.list();
            if (files != null) {
                Collections.addAll(strings, files);
            }
        }
        return strings;
    }
}
