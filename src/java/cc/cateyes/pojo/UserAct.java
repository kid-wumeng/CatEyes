package cc.cateyes.pojo;

public class UserAct {
    
    private Long userActId;
    private String userIPAddress;
    private String catId;
    private boolean more;

    /* getter */
    public Long getUserActId() { return userActId; }
    public String getUserIPAddress() { return userIPAddress; }
    public String getCatId() { return catId; }
    public boolean isMore() { return more; }
    /* setter */
    public void setUserActId(Long userActId) { this.userActId = userActId; }
    public void setUserIPAddress(String userIPAddress) { this.userIPAddress = userIPAddress; }
    public void setCatId(String catId) { this.catId = catId; }
    public void setMore(boolean more) { this.more = more; }
    
}
