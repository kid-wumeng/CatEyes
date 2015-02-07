package cc.cateyes.service.impl;

import cc.cateyes.dao.PicDAO;
import cc.cateyes.pojo.Pic;
import cc.cateyes.service.PicService;
import cc.cateyes.utils.FileUtils;
import java.io.File;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class PicServiceImpl implements PicService {
    
    private PicDAO picDAO;
    private Pic pic;
    private List<Pic> pics;
    
    public Pic selectPic(Pic pic) {
        return picDAO.selectPic(pic);
    }
    
    public List<Pic> selectPics(Pic pic) {
        return picDAO.selectPics(pic);
    }
    
    public List<Pic> addPics(List<File> files, List<String> fileNames, String savePath) {
        pics = new ArrayList<Pic>();
        for(int i=0; i<files.size(); i++) {
            pic = picDAO.addPic();
            if(pic != null && pic.getPicId() != null) {
                File targetFile = new File(savePath + "\\" + pic.getPicId() + "." + FileUtils.getFileType(fileNames.get(i)));
                FileUtils.copy(files.get(i), targetFile, 5000);
                pics.add(pic);
            } 
            else 
                continue;  //如果添加新图片失败，则跳过本图片，继续下一张图片的处理。
        }
        return pics;
    }
    
    public boolean modifyPics(List<Pic> pics) {
        int i = pics.size();
        for(Pic pic : pics) {
            picDAO.modifyPic(pic);
            i--;
        }
        if(i == 0)
            return true;
        else 
            return false;
    }
    
    public Date selectMaxPublishDateTime(String catId) {
        if("".equals(catId)) {
            catId = null;
        }
        return picDAO.selectMaxPublishDateTime(catId);
    }
    
    /* getter */
    public PicDAO getPicDAO() { return picDAO; }
    /* setter */
    public void setPicDAO(PicDAO picDAO) { this.picDAO = picDAO; }

}
