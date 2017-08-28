package com.xd.zijing.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by lenovo on 2017/8/27.
 */
@Controller
public class ReportFormController {

    @RequestMapping(value = "/reportForm/PV",method = RequestMethod.GET)
    public String pvIndex(){
        return "lbq/fbms/pv";
    }

    @RequestMapping(value = "/reportForm/userProportion",method = RequestMethod.GET)
    public String userProportionIndex(){
        return "lbq/fbms/userProportion";
    }




    @RequestMapping(value ="/reportForm/PVJSON",method = RequestMethod.GET,produces = "application/json")
    public @ResponseBody List<PV> getPVInJSON(){

        List<PV> pvs=new ArrayList<>();

        PV pv0=new PV("0","0");
        PV pv1=new PV("1","3");
        PV pv2=new PV("2","5");
        PV pv3=new PV("3","6");
        PV pv4=new PV("4","4");
        PV pv5=new PV("5","5");
        PV pv6=new PV("6","6");
        PV pv7=new PV("7","7");
        PV pv8=new PV("8","8");
        PV pv9=new PV("9","7");
        PV pv10=new PV("10","8");
        PV pv11=new PV("11","9");
        PV pv12=new PV("12","10");

        pvs.add(pv0);
        pvs.add(pv1);
        pvs.add(pv2);
        pvs.add(pv3);
        pvs.add(pv4);
        pvs.add(pv5);
        pvs.add(pv6);
        pvs.add(pv7);
        pvs.add(pv8);
        pvs.add(pv9);
        pvs.add(pv10);
        pvs.add(pv11);
        pvs.add(pv12);
        return pvs;
    }

    @RequestMapping(value = "/reportForm/userProportionJSON",method = RequestMethod.GET,produces = "application/json")
    public @ResponseBody List<UserProportion> getUserProportionJSON(){
        List<UserProportion> userProportions=new ArrayList<>();


        UserProportion userProportion1=new UserProportion("普通",500);
        UserProportion userProportion2=new UserProportion("白银",400);
        UserProportion userProportion3=new UserProportion("黄金",200);
        UserProportion userProportion4=new UserProportion("钻石",100);

        userProportions.add(userProportion1);
        userProportions.add(userProportion2);
        userProportions.add(userProportion3);
        userProportions.add(userProportion4);

        return userProportions;
    }

    class PV {
        private String month;
        private String PV;

        PV(String month, String PV) {
            this.month = month;
            this.PV = PV;
        }

        public String getMonth() {
            return month;
        }

        public void setMonth(String month) {
            this.month = month;
        }

        public String getPV() {
            return PV;
        }

        public void setPV(String PV) {
            this.PV = PV;
        }
    }

    class UserProportion{
        private String rank;
        private int count;

        UserProportion(String rank, int count) {
            this.rank = rank;
            this.count = count;
        }

        public String getRank() {
            return rank;
        }

        public void setRank(String rank) {
            this.rank = rank;
        }

        public int getCount() {
            return count;
        }

        public void setCount(int count) {
            this.count = count;
        }
    }
}
