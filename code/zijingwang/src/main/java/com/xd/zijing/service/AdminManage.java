package com.xd.zijing.service;

import com.xd.zijing.entity.Admin;

import java.util.List;

/**
 * @author Archibald
 * @version:
 * @time: 8/31/2017.
 */
public interface AdminManage {
    int insertAdmin(Admin admin);
    /**
     * @Author: Caihongyang
     * @Date: 3:23 PM 8/19/2017
     *
     * @Description: 新增一个Admin
     * @Param: [Admin]
     * @Return: int
     */

    int updateAdmin(Admin admin);
    /**
     * @Author: Caihongyang
     * @Date: 3:23 PM 8/19/2017
     *
     * @Description: 更新一个Admin的信息
     * @Param: [Admin]
     * @Return: int
     */

    int deleteAdmin(long id);
    /**
     * @Author: Caihongyang
     * @Date: 3:26 PM 8/19/2017
     *
     * @Description: 删除一个Admin
     * @Param: long
     * @Return: int
     */

    Admin selectAdminById(long id);
    /**
     * @Author: Caihongyang
     * @Date: 3:26 PM 8/19/2017
     *
     * @Description: 通过ID查找一个Admin
     * @Param: [id]
     * @Return: Admin
     */

    List<Admin> selectAllAdmin(int offset, int size);/**
     * @Author: Caihongyang
     * @Date: 3:34 PM 8/19/2017
     *
     * @Description: 查找offset后的所有Admin的信息，每页显示size个
     * @Param: [offset：起始ID值, size：每页显示数]
     * @Return: java.util.List<Admin>
     */

}
