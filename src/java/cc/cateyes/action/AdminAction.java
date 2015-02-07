package cc.cateyes.action;

import cc.cateyes.pojo.Admin;
import cc.cateyes.pojo.Cat;
import cc.cateyes.pojo.Pic;
import cc.cateyes.service.AdminService;
import cc.cateyes.service.CatService;
import cc.cateyes.service.PicService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import java.io.File;
import java.util.Date;
import java.util.List;
import org.apache.struts2.ServletActionContext;

public class AdminAction extends ActionSupport {
    
    private AdminService adminService;
    private CatService catService;
    private PicService picService;
    private Admin admin;
    private Cat cat;
    private List<Cat> cats;
    private List<Pic> pics;
    
    private List<File> file;
    private List<String> fileFileName;
    private List<String> fileContentType;
    private String PIC_SAVE_DIRECTORY_PATH;
    
    public String login() {
        admin = adminService.selectAdmin(getAdmin());
        if(admin != null) {
            ActionContext.getContext().getSession().put("ADMIN", admin);
            return SUCCESS;        
        }
        else {
            return ERROR;  //管理员查询失败
        }
    }

    public String uploadPics() {
        if(file != null) {
            String savePath = ServletActionContext.getServletContext().getRealPath(PIC_SAVE_DIRECTORY_PATH);  //获取保存路径
            pics = picService.addPics(file, fileFileName, savePath);
            cats = catService.selectCats("all");
            ActionContext.getContext().put("cats", cats);
            ActionContext.getContext().put("pics", getPics());
            return SUCCESS;
        }
        else {
            ActionContext.getContext().put("errorReason", "上传失败！");
            return ERROR;
        }
    }
    
    public String editPics() {
        boolean flag = picService.modifyPics(pics);
        if(flag) {
            return SUCCESS;
        }
        else {
            ActionContext.getContext().put("errorReason", "编辑失败！");
            return ERROR;
        }
    }

    public String showMaxPublishDateTime() {
        Date dateTime = picService.selectMaxPublishDateTime(cat.getCatId());
        ActionContext.getContext().put("maxPublishDateTime", dateTime);
        return SUCCESS;
    }
    
    /* getter */
    public AdminService getAdminService() { return adminService; }
    public CatService getCatService() { return catService; }
    public PicService getPicService() { return picService; }
    public Admin getAdmin() { return admin; }
    public Cat getCat() { return cat; }
    public List<Pic> getPics() { return pics; }
    public List<File> getFile() { return file; }
    public List<String> getFileFileName() { return fileFileName; }
    public List<String> getFileContentType() { return fileContentType; }
    public String getPIC_SAVE_DIRECTORY_PATH() { return PIC_SAVE_DIRECTORY_PATH; }
    /* setter */
    public void setAdminService(AdminService adminService) { this.adminService = adminService; }
    public void setCatService(CatService catService) { this.catService = catService; }
    public void setPicService(PicService picService) { this.picService = picService; }
    public void setAdmin(Admin admin) { this.admin = admin; }
    public void setCat(Cat cat) { this.cat = cat; }
    public void setPics(List<Pic> pics) { this.pics = pics; }
    public void setFile(List<File> file) { this.file = file; }
    public void setFileFileName(List<String> fileFileName) { this.fileFileName = fileFileName; }
    public void setFileContentType(List<String> fileContentType) { this.fileContentType = fileContentType; }
    public void setPIC_SAVE_DIRECTORY_PATH(String PIC_SAVE_DIRECTORY_PATH) { this.PIC_SAVE_DIRECTORY_PATH = PIC_SAVE_DIRECTORY_PATH; }
    
}
