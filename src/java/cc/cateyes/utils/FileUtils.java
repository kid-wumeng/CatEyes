package cc.cateyes.utils;

import java.io.*;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class FileUtils {
    
    /**
     * 获取文件类型
     * @param fileName 文件名
     * @return 成功：文件类型 | 失败：null
     */
    public static String getFileType(String fileName) {
        String fileType = null;
        int pointPosition = fileName.lastIndexOf(".");  //获取文件类型前点的位置
        fileType = fileName.substring(pointPosition + 1);  //获取文件类型
        return fileType;
    }
    
    /**
     * 复制一个文件
     * @param srcFile 源文件
     * @param targetFile 目标文件
     * @param bufferSize 缓冲区大小
     * @return true：复制成功 | false：复制失败
     */
    public static boolean copy(File srcFile, File targetFile, int bufferSize) {
        boolean flag = false;
        InputStream in = null;    //文件输入流
        OutputStream out = null;  //文件输出流
        byte[] buffer = new byte[bufferSize];  //文件缓冲区
        try {
            in = new BufferedInputStream(new FileInputStream(srcFile));        //构造输入流
            out = new BufferedOutputStream(new FileOutputStream(targetFile));  //构造输出流
            /* 读写文件 */
            while(in.read(buffer) != -1) {
                out.write(buffer);
            }
            out.flush();  //刷新输出流
            flag = true;
        /* IO异常处理（构造流时） */
        } catch (IOException ex) {
            Logger.getLogger(FileUtils.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            try {
                out.close();  //关闭输出流
                in.close();   //关闭输入流
            /* IO异常处理（关闭流时） */
            } catch (IOException ex) {
                Logger.getLogger(FileUtils.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return flag;
    }
}
    