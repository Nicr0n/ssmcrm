package net.wanho.service;

import net.wanho.exception.ServiceException;
import net.wanho.model.LogIn;

/**
 * Created by sapling on 2017-12-25.
 */
public interface LoginService {
    LogIn login(LogIn logIn) ;
    public void updatePassword(LogIn logIn);
}
