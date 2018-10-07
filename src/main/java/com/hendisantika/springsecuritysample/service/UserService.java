package com.hendisantika.springsecuritysample.service;

import com.hendisantika.springsecuritysample.entity.User;

/**
 * Created by IntelliJ IDEA.
 * Project : spring-security-sample
 * User: hendisantika
 * Email: hendisantika@gmail.com
 * Telegram : @hendisantika34
 * Date: 08/10/18
 * Time: 04.00
 * To change this template use File | Settings | File Templates.
 */
public interface UserService {
    User findUserByEmail(String email);

    void saveUser(User user);
}