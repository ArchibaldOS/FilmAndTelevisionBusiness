package com.xd.zijing.service.impl;

import com.xd.zijing.entity.Employee;
import com.xd.zijing.mapper.EmployeeMapper;
import com.xd.zijing.service.EmployeeManage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author Archibald
 * @version:
 * @time: 8/19/2017.
 */
@Service
public class EmployeeManageImp implements EmployeeManage {
    @Autowired
    private EmployeeMapper employeeMapper;

    public int insertEmployee(Employee employee){
        /**
         * @Author: Caihongyang
         * @Date: 3:23 PM 8/19/2017
         *
         * @Description: 新增一个Employee
         * @Param: [employee]
         * @Return: int
         */
        int i = employeeMapper.insert(employee);
        return i;
    }

    public int updateEmployee(Employee employee) {
        /**
         * @Author: Caihongyang
         * @Date: 3:23 PM 8/19/2017
         *
         * @Description: 更新一个Employee的信息
         * @Param: [employee]
         * @Return: int
         */
        int i = employeeMapper.updateByPrimaryKey(employee);
        return i;
    }

    public int deleteEmployee(long id) {
        /**
         * @Author: Caihongyang
         * @Date: 3:26 PM 8/19/2017
         *
         * @Description: 删除一个Employee
         * @Param: long
         * @Return: int
         */
        int i = employeeMapper.deleteByPrimaryKey(id);
        return i;
    }

    public Employee selectEmployeeById(long id) {
        /**
         * @Author: Caihongyang
         * @Date: 3:26 PM 8/19/2017
         *
         * @Description: 通过ID查找一个Employee
         * @Param: [id]
         * @Return: Employee
         */

        return employeeMapper.selectByPrimaryKey(id);
    }
    public List<Employee> selectAllEmployee(int offset, int size) {
        /**
         * @Author: Caihongyang
         * @Date: 3:34 PM 8/19/2017
         *
         * @Description: 查找offset后的所有Employee的信息，每页显示size个
         * @Param: [offset：起始ID值, size：每页显示数]
         * @Return: java.util.List<Employee>
         */
        List<Employee> employees = employeeMapper.selectAll(offset, size);
        return employees;
    }
}
