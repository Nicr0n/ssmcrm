package net.wanho.mapper;

import net.wanho.model.LogIn;
import tk.mybatis.mapper.common.Mapper;

public interface LogInMapper extends Mapper<LogIn> {
    LogIn login(LogIn logIn) ;

    void updatePassword(LogIn logIn);
}