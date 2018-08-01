package cn.xcq.controller;

import cn.xcq.entity.Answers;
import cn.xcq.entity.Questions;
import cn.xcq.service.IQuestionsService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;

/**
 * Created by Administrator
 * User:xcq
 * Date:2018/7/10
 * Time:14:01
 */
@Controller
public class QuestionsController {
    //注入Service层对象
    @Resource(name = "questionsService")
    private IQuestionsService questionsService;

    //01.查询所有信息
    @RequestMapping("/findAllQuestions")
    public String findAllQuestions(Model model){
        List<Questions> allQuestions = questionsService.findAllQuestions();
        model.addAttribute("allQuestions",allQuestions);
        return "welcome";
    }

    //01.根据id查询当前标题的所有信息
    @RequestMapping("/findByIdAnswers")
    public String findByIdAnswers(Model model,Integer qid){
        Questions byIdQuestion = questionsService.findByIdQuestion(qid);
        model.addAttribute("byIdAnswers",byIdQuestion);
        return "AnswersInfo";
    }

    //添加
    @RequestMapping("/addAnswer")
    public String addAnswer(String ansContent,int qid){
        Answers answers=new Answers();
        answers.setAnsContent(ansContent);
        answers.setAnsDate(new Date());
        answers.setQid(qid);
        int i = questionsService.AddAnswer(answers);
        //修改信息
        questionsService.updateQuestion(qid,new Date());
        if(i>0){
            return "redirect:findAllQuestions";
        }
        return "ERROR";
    }

    //

    @RequestMapping("/addQuestion")
    public String addQuestion(String title,String detailDesc){
       Questions questions=new Questions();
       questions.setAnswerCount(0);
       questions.setDetailDesc(detailDesc);
       questions.setTitle(title);
       questions.setLastModified(new Date());
        int i = questionsService.AddQuestion(questions);
        if(i>0){
            return "redirect:findAllQuestions";
        }
        return "ERROR";
    }
}
