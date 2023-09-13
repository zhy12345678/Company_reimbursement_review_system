package mine.design.oa.global;

import java.util.ArrayList;
import java.util.List;

public class Contant {
    public static final Integer COMMENT_SN=5;
    public static final Integer COMMENT_Article=5;
    //    职务
    public static final String POST_STAFF="员工";
    public static final String POST_FM="部门经理";
    public static final String POST_GM="总经理";
    public static final String POST_CASHIER="财务";
    //因为在创建员工的时候可能会需要去选择职务所以我们把这些职务封装成一个集合供到时候可以到页面去传递
    public static List<String> getPosts(){
        List<String> list=new ArrayList<String>();
        list.add(POST_STAFF);
        list.add(POST_FM);
        list.add(POST_GM);
        list.add(POST_CASHIER);
        return list;
    }
    //费用类别
    public static List<String> getItems(){
        List<String> list=new ArrayList<String>();
        list.add("交通");
        list.add("餐饮");
        list.add("住宿");
        list.add("办公");
        return list;
    }
    //报销单状态
    public static final String CLAIMVOUCHER_CREATED="新创建";
    public static final String CLAIMVOUCHER_SUBMIT="已提交";
    public static final String CLAIMVOUCHER_APPROVED="已审核";
    public static final String CLAIMVOUCHER_BACK="已打回";
    public static final String CLAIMVOUCHER_TERMINATED="已终止";
    public static final String CLAIMVOUCHER_RECHECK="待复审";
    public static final String CLAIMVOUCHER_PAID="已打款";
//审核额度
    public static final double LIMIT_CHECK=5000.00;
    //报销单处理方式
    public static final String DEAL_CREATE="创建";
    public static final String DEAL_SUBMIT="提交";
    public static final String DEAL_UPDATE="修改";
    public static final String DEAL_BACK="打回";
    public static final String DEAL_REJECT="拒绝";
    public static final String DEAL_PASS="通过";
    public static final String DEAL_PAID="打款";
//维持时间
    public static List<String> getTime(){
    List<String> list=new ArrayList<String>();
    list.add("三个月");
    list.add("六个月");
    list.add("九个月");
    list.add("一年");
    return list;
    }



}
