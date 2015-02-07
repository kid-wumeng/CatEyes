package cc.cateyes.action;

import cc.cateyes.pojo.Cat;
import cc.cateyes.pojo.Pic;
import cc.cateyes.pojo.UserAct;
import cc.cateyes.service.CatService;
import cc.cateyes.service.PicService;
import cc.cateyes.service.UserActService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import java.io.File;
import java.io.InputStream;
import java.util.Date;
import java.util.List;
import org.apache.struts2.ServletActionContext;

public class PicAction extends ActionSupport {
    
    private CatService catService;
    private PicService picService;
    private UserActService userActService;
    private Cat cat;
    private List<Cat> cats;
    private Pic pic;
    private List<Pic> pics;
    private UserAct userAct;
    private Long id;
    private boolean more;  
    
    private String PIC_SAVE_DIRECTORY_PATH;
    
    
    public String showNav() {
        List<Cat> animals = catService.selectCats("animal");
        ActionContext.getContext().put("animals", animals);
        return SUCCESS;
    }
    
    public String showPics() {
        /* 添加用户行为（选择分类） */
        String ip = ServletActionContext.getRequest().getRemoteAddr();
        userAct = new UserAct();
        userAct.setUserIPAddress(ip);
        userAct.setCatId(pic.getCatId());
        userAct.setMore(more);
        userActService.addUserAct_selectCat(userAct);
        /* 获取分类 */
        cat = catService.selectCat(pic.getCatId());
        if(cat != null) {
            ActionContext.getContext().put("cat", cat);
        }
        /*  */
        if(pic.getPicPublishDateTime() == null)
            pic.setPicPublishDateTime(new Date());
        pics = (picService.selectPics(pic));
        ActionContext.getContext().put("nowCatId", pic.getCatId());
        if(pics == null) {
            ActionContext.getContext().put("minPicPublishDateTime", pic.getPicPublishDateTime());
        }
        else {
            ActionContext.getContext().put("minPicPublishDateTime", pics.get(pics.size() - 1).getPicPublishDateTime());
        }
        ActionContext.getContext().put("pics", pics);
        if(more) {
            return "more";
        }
        else {
            return SUCCESS;
        }
    }
    
    public String showPic() {
        pic = new Pic();
        pic.setPicId(id);
        pic = picService.selectPic(pic);
        if(pic != null) {
            ActionContext.getContext().put("pic", pic);
            return SUCCESS;
        }
        else {
            return ERROR;  //图片查询失败
        }
    }
    
    public String downloadPic() {
        return SUCCESS;
    }
    
    public InputStream getInputStream() {
        return ServletActionContext.getServletContext().getResourceAsStream("/" + PIC_SAVE_DIRECTORY_PATH + "/" + id + ".jpg");
    }
    
    /* getter */
    public CatService getCatService() { return catService; }
    public PicService getPicService() { return picService; }
    public UserActService getUserActService() { return userActService; }
    public Cat getCat() { return cat; }
    public List<Cat> getCats() { return cats; }
    public Pic getPic() { return pic; }
    public List<Pic> getPics() { return pics; }
    public Long getId() { return id; }
    public boolean isMore() { return more; }
    public String getPIC_SAVE_DIRECTORY_PATH() { return PIC_SAVE_DIRECTORY_PATH; }
    /* setter */
    public void setCatService(CatService catService) { this.catService = catService; }
    public void setPicService(PicService picService) { this.picService = picService; }
    public void setUserActService(UserActService userActService) { this.userActService = userActService; }
    public void setCat(Cat cat) { this.cat = cat; }
    public void setCats(List<Cat> cats) { this.cats = cats; }
    public void setPic(Pic pic) { this.pic = pic; }
    public void setPics(List<Pic> pics) { this.pics = pics; }
    public void setId(Long id) { this.id = id; }
    public void setMore(boolean more) { this.more = more; }
    public void setPIC_SAVE_DIRECTORY_PATH(String PIC_SAVE_DIRECTORY_PATH) { this.PIC_SAVE_DIRECTORY_PATH = PIC_SAVE_DIRECTORY_PATH; }

}
