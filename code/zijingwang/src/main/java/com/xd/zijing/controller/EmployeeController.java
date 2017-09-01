package com.six.FilmAndTelevisionBusiness.controller;

import com.six.FilmAndTelevisionBusiness.entity.Employee;
import com.six.FilmAndTelevisionBusiness.entity.Page;
import com.six.FilmAndTelevisionBusiness.service.EmployeeManage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * @author Archibald
 * @version:
 * @time: 8/20/2017.
 */
@Controller
public class EmployeeController {
    @Autowired
    private EmployeeManage employeeManage;



    @RequestMapping("/AddEmployee")
    public String addEmployee(){
        return "AddEmployee";
    }

    @RequestMapping(value = "/AddEmployee.do",method = {RequestMethod.GET})
    public String addEmployee(HttpServletRequest request){
        Employee employee = new Employee();

        employee.setUsername(request.getParameter("e_name"));
        employee.setAccount(request.getParameter("e_username"));
        employee.setPassword(request.getParameter("e_password"));
//        employee.setAge(Integer.valueOf(request.getParameter("e_age")));
        employee.setGender(request.getParameter("e_gender"));
//        employee.setPhone(Integer.valueOf(request.getParameter("e_telephone")));
        employee.setEmail(request.getParameter("e_mail"));
        employee.setTitle(request.getParameter("e_title"));
        employee.setDepartment(request.getParameter("e_department"));
        employee.setLeader(request.getParameter("e_leader"));

        employeeManage.insertEmployee(employee);
        return "EmployeeManage";
    }

    @RequestMapping("/EmployeeManage")
    public String EmployeeManage(){
        return "EmployeeManage";
    }

    @RequestMapping(value = "/selectEmployee.do")
    public String selectEmployee( HttpSession session){
        List<Employee> employees = employeeManage.selectAllEmployee(0,5);
        session.setAttribute("employees",employees);
        return "redirect:/EmployeeManage";
    }

    @RequestMapping("/EmployeeDetailUpdate")
    public String UpdateEmployee(HttpServletRequest request){
        Employee employee = employeeManage.selectEmployeeById(Long.parseLong(request.getParameter("userid")));
        request.setAttribute("employee",employee);

        return "EmployeeDetailUpdate";
    }



    @RequestMapping(value = "/EmployeeDetailUpdate.do",method = {RequestMethod.GET})
    public String updateEmployee(HttpServletRequest request){
        Employee employee = employeeManage.selectEmployeeById(Long.parseLong(request.getParameter("id")));

        employee.setUsername(request.getParameter("name"));
        employee.setAge(Integer.valueOf(request.getParameter("age")));
        employee.setGender(request.getParameter("gender"));
        employee.setTitle(request.getParameter("title"));
        employee.setDepartment(request.getParameter("department"));
        employee.setLeader(request.getParameter("leader"));

        employeeManage.updateEmployee(employee);
        return "redirect:/selectEmployee.do";
    }


    @RequestMapping(value = "/deleteEmployee.do",method = {RequestMethod.GET})
    public String deleteEmployee(HttpServletRequest request){
        employeeManage.deleteEmployee(Long.parseLong(request.getParameter("userid")));
        return "redirect:/selectEmployee.do";
    }

}