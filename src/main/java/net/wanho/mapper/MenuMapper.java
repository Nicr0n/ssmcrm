package net.wanho.mapper;

import net.wanho.model.Menu;
import tk.mybatis.mapper.common.Mapper;

import java.util.List;

public interface MenuMapper extends Mapper<Menu> {
    List<Menu> queryWithBindPosition();
}