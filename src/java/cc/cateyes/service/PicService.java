package cc.cateyes.service;

import cc.cateyes.pojo.Pic;
import java.io.File;
import java.util.Date;
import java.util.List;

public interface PicService {
    
    public Pic selectPic(Pic pic);
    public List<Pic> selectPics(Pic pic);
    public List<Pic> addPics(List<File> files, List<String> fileNames, String savePath);
    public boolean modifyPics(List<Pic> pics);
    public Date selectMaxPublishDateTime(String catId);
    
}
