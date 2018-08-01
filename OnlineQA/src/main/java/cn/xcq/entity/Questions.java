package cn.xcq.entity;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * Created by Administrator
 * User:xcq
 * Date:2018/7/10
 * Time:13:50
 */
public class Questions {
    private Integer id;
    private String title;
    private String detailDesc;
    private Integer answerCount;
    private Date lastModified;
    private List<Answers> answerss =new ArrayList<>();

    public List<Answers> getAnswerss() {
        return answerss;
    }

    public void setAnswerss(List<Answers> answerss) {
        this.answerss = answerss;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDetailDesc() {
        return detailDesc;
    }

    public void setDetailDesc(String detailDesc) {
        this.detailDesc = detailDesc;
    }

    public Integer getAnswerCount() {
        return answerCount;
    }

    public void setAnswerCount(Integer answerCount) {
        this.answerCount = answerCount;
    }

    public String getLastModified() {
        SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        return sdf.format(lastModified);
    }

    public void setLastModified(Date lastModified) {
        this.lastModified = lastModified;
    }
}
