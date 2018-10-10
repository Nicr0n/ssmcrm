package net.wanho.service;

import net.wanho.model.Menu;

import java.util.List;

public interface MenuService {
    List<Menu> getAllMenu();

    List<Menu>getAllParentMenu();

    int addMenu(Menu menu);

    int deleteMenuById(int id);

    int updateMenu(Menu menu);

    List<Menu> queryWithBindPosition();

    Menu selectById(Integer id);
}
