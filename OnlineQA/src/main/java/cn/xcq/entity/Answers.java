package cn.xcq.entity;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Created by Administrator
 * User:xcq
 * Date:2018/7/10
 * Time:13:52
 */
public class Answers {
    private Integer id;
    private String ansContent;
    private Date ansDate;
    private Integer qid;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getAnsContent() {
        return ansContent;
    }

    public void setAnsContent(String ansContent) {
        this.ansContent = ansContent;
    }

    public String getAnsDate() {
        SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        return sdf.format(ansDate);
    }

    public void setAnsDate(Date ansDate) {
        this.ansDate = ansDate;
    }

    public Integer getQid() {
        return qid;
    }

    public void setQid(Integer qid) {
        this.qid = qid;
    }
}
