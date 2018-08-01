package cn.xcq.dao;

import cn.xcq.entity.Answers;
import cn.xcq.entity.Questions;

import java.util.Date;
import java.util.List;

/**
 * Created by Administrator
 * User:xcq
 * Date:2018/7/10
 * Time:13:55
 */
public interface IQuestionsDAO {
    //01.查询所有问答信息
    public List<Questions> findAllQuestions();
    //01.根据id查询当前标题的所有信息
    public Questions findByIdQuestion(Integer qid);

    //添加评论
    public int AddAnswer(Answers answers);

    //添加问题
    public int AddQuestion(Questions questions);

    //修改
    public int updateQuestion(int qid, Date date);


}
