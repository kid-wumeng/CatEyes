package cc.cateyes.pojo;

import java.util.Calendar;
import java.util.Date;

public class Pic {
    
    private Long picId;
    private Long prevPicId;
    private Long nextPicId;
    private Integer picWidth;
    private Integer picHeight;
    private String picDesc;
    private Date picPublishDateTime;
    private String catId;
    private Cat picCat;
    private Integer picNum;

    /* getter */
    public Long getPicId() { return picId; }
    public Long getPrevPicId() { return prevPicId; }
    public Long getNextPicId() { return nextPicId; }
    public Integer getPicWidth() { return picWidth; }
    public Integer getPicHeight() { return picHeight; }
    public String getPicDesc() { return picDesc; }
    public Date getPicPublishDateTime() { return picPublishDateTime; }
    public String getCatId() { return catId; }
    public Cat getPicCat() { return picCat; }
    public Integer getPicNum() { return picNum; }
    /* setter */
    public void setPicId(Long picId) { this.picId = picId; }
    public void setPrevPicId(Long prevPicId) { this.prevPicId = prevPicId; }
    public void setNextPicId(Long nextPicId) { this.nextPicId = nextPicId; }
    public void setPicWidth(Integer picWidth) { this.picWidth = picWidth; }
    public void setPicHeight(Integer picHeight) { this.picHeight = picHeight; }
    public void setPicDesc(String picDesc) { this.picDesc = picDesc; }
    public void setPicPublishDateTime(Date picPublishDateTime) { this.picPublishDateTime = picPublishDateTime; }
    public void setCatId(String catId) { this.catId = catId; }
    public void setPicCat(Cat picCat) { this.picCat = picCat; }
    public void setPicNum(Integer picNum) { this.picNum = picNum; }


    
}
