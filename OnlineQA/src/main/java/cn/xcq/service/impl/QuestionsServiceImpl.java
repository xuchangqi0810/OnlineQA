package cn.xcq.service.impl;

import cn.xcq.dao.IQuestionsDAO;
import cn.xcq.entity.Answers;
import cn.xcq.entity.Questions;
import cn.xcq.service.IQuestionsService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;

/**
 * Created by Administrator
 * User:xcq
 * Date:2018/7/10
 * Time:14:00
 */
@Service("questionsService")
public class QuestionsServiceImpl implements IQuestionsService {
    //注入dao层对象
    @Resource(name = "IQuestionsDAO")
    private IQuestionsDAO questionsDAO;

    @Override
    public List<Questions> findAllQuestions() {
        return questionsDAO.findAllQuestions();
    }

    @Override
    public Questions findByIdQuestion(Integer qid) {
        return questionsDAO.findByIdQuestion(qid);
    }

    @Override
    public int AddAnswer(Answers answers) {
        return questionsDAO.AddAnswer(answers);
    }

    @Override
    public int AddQuestion(Questions questions) {
        return questionsDAO.AddQuestion(questions);
    }

    @Override
    public int updateQuestion(int qid, Date date) {
        return questionsDAO.updateQuestion(qid,date);
    }

    public IQuestionsDAO getQuestionsDAO() {
        return questionsDAO;
    }

    public void setQuestionsDAO(IQuestionsDAO questionsDAO) {
        this.questionsDAO = questionsDAO;
    }
}
