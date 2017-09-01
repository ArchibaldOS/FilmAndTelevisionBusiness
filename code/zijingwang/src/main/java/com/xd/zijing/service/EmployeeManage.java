package com.xd.zijing.service;

import com.xd.zijing.entity.Employee;

import java.util.List;

/**
 * @author Archibald
 * @version:
 * @time: 8/19/2017.
 */
public interface EmployeeManage {
   
    int insertEmployee(Employee employee);
    /**
     * @Author: Caihongyang
     * @Date: 3:23 PM 8/19/2017
     *
     * @Description: 新增一个Employee
     * @Param: [employee]
     * @Return: int
     */
    
    int updateEmployee(Employee employee);
    /**
     * @Author: Caihongyang
     * @Date: 3:23 PM 8/19/2017
     *
     * @Description: 更新一个Employee的信息
     * @Param: [employee]
     * @Return: int
     */
   
    int deleteEmployee(long id);
    /**
    * @Author: Caihongyang
    * @Date: 3:26 PM 8/19/2017
    *  
    * @Description: 删除一个Employee
    * @Param: long
    * @Return: int
    */
    
    Employee selectEmployeeById(long id);
    /**
    * @Author: Caihongyang
    * @Date: 3:26 PM 8/19/2017
    *  
    * @Description: 通过ID查找一个Employee
    * @Param: [id]
    * @Return: Employee
    */
    
    List<Employee> selectAllEmployee(int offset, int size);/**
    * @Author: Caihongyang
    * @Date: 3:34 PM 8/19/2017
    *
    * @Description: 查找offset后的所有Employee的信息，每页显示size个
    * @Param: [offset：起始ID值, size：每页显示数]
    * @Return: java.util.List<Employee>
    */

}
