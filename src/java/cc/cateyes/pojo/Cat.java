package cc.cateyes.pojo;

public class Cat {
    
    private String catId;
    private String catName;
    private String catEnglishName;
    private String catColor;
    
    /* getter */
    public String getCatId() { return catId; }
    public String getCatName() { return catName; }
    public String getCatEnglishName() { return catEnglishName; }
    public String getCatColor() { return catColor; }
    /* setter */
    public void setCatName(String catName) { this.catName = catName; }
    public void setCatId(String catId) { this.catId = catId; }
    public void setCatEnglishName(String catEnglishName) { this.catEnglishName = catEnglishName; }
    public void setCatColor(String catColor) { this.catColor = catColor; }

}
