package com.six.FilmAndTelevisionBusiness.service.impl;

import com.six.FilmAndTelevisionBusiness.entity.Admin;
import com.six.FilmAndTelevisionBusiness.mapper.AdminMapper;
import com.six.FilmAndTelevisionBusiness.service.AdminManage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author Archibald
 * @version:
 * @time: 8/31/2017.
 */
@Service
public class AdminManageImp implements AdminManage{
    @Autowired
    private AdminMapper adminMapper;

    public int insertAdmin(Admin admin) {
        /**
         * @Author: Caihongyang
         * @Date: 3:23 PM 8/19/2017
         *
         * @Description: 新增一个Admin
         * @Param: [Admin]
         * @Return: int
         */
        int i = adminMapper.insert(admin);
        return i;
    }

    public int updateAdmin(Admin admin) {
        /**
         * @Author: Caihongyang
         * @Date: 3:23 PM 8/19/2017
         *
         * @Description: 更新一个Admin的信息
         * @Param: [Admin]
         * @Return: int
         */
        int i = adminMapper.updateByPrimaryKey(admin);
        return i;
    }

    public int deleteAdmin(long id) {
        /**
         * @Author: Caihongyang
         * @Date: 3:26 PM 8/19/2017
         *
         * @Description: 删除一个Admin
         * @Param: long
         * @Return: int
         */
        int i = adminMapper.deleteByPrimaryKey((int) id);
        return i;
    }

    public Admin selectAdminById(long id) {
        /**
         * @Author: Caihongyang
         * @Date: 3:26 PM 8/19/2017
         *
         * @Description: 通过ID查找一个Admin
         * @Param: [id]
         * @Return: com.six.FilmAndTelevisionBusiness.entity.Admin
         */

        return adminMapper.selectByPrimaryKey((int) id);
    }
    public List<Admin> selectAllAdmin(int offset, int size) {
        /**
         * @Author: Caihongyang
         * @Date: 3:34 PM 8/19/2017
         *
         * @Description: 查找offset后的所有Admin的信息，每页显示size个
         * @Param: [offset：起始ID值, size：每页显示数]
         * @Return: java.util.List<com.six.FilmAndTelevisionBusiness.entity.Admin>
         */
        List<Admin> admins = adminMapper.selectAll(offset, size);
        return admins;
    }
}
