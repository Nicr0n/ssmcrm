package net.wanho.service.impl;

import net.wanho.mapper.MenuMapper;
import net.wanho.model.Menu;
import net.wanho.service.MenuService;
import org.springframework.stereotype.Service;
import tk.mybatis.mapper.entity.Example;

import javax.annotation.Resource;
import java.sql.Timestamp;
import java.util.Date;
import java.util.List;
@Service
public class MenuServiceImpl implements MenuService {
    @Resource
    private MenuMapper menuMapper;

    /**
     * 或许所有的菜单信息
     * @return 菜单列表
     */
    @Override
    public List<Menu> getAllMenu() {
        return menuMapper.selectAll();
    }

    /**
     * 获取所有父级菜单
     * @return 父级菜单列表
     */
    @Override
    public List<Menu> getAllParentMenu() {
        Example example = new Example(Menu.class);
        Example.Criteria criteria = example.createCriteria();
        criteria.andIsNull("parentMenuId");
        return menuMapper.selectByExample(example);
    }

    /**
     * 新增菜单
     * @param menu 菜单信息
     * @return 新增的菜单的主键
     */
    @Override
    public int addMenu(Menu menu) {
        menu.setCreateTime(new Timestamp(new Date().getTime()));
        menu.setUpdateTime(new Timestamp(new  Date().getTime()));
        return menuMapper.insertSelective(menu);
    }

    /**
     * 逻辑删除菜单
     * @param id 删除菜单的ID
     * @return 删除的菜单的ID
     */
    @Override
    public int deleteMenuById(int id) {
        Menu menu = new Menu();
        menu.setMenuId(id);
        menu.setStatus("0");
        menu.setUpdateTime(new Timestamp(new Date().getTime()));
        return menuMapper.updateByPrimaryKeySelective(menu);
    }

    /**
     * 修改菜单信息
     * @param menu 菜单信息
     * @return 修改的菜单的主键
     */
    @Override
    public int updateMenu(Menu menu) {
        menu.setUpdateTime(new Timestamp(new Date().getTime()));
        return menuMapper.updateByPrimaryKeySelective(menu);
    }

    @Override
    public List<Menu> queryWithBindPosition() {
        return menuMapper.queryWithBindPosition();
    }
}
