package com.hendisantika.springsecuritysample.entity;

import lombok.Data;

import javax.persistence.*;

/**
 * Created by IntelliJ IDEA.
 * Project : spring-security-sample
 * User: hendisantika
 * Email: hendisantika@gmail.com
 * Telegram : @hendisantika34
 * Date: 08/10/18
 * Time: 03.43
 * To change this template use File | Settings | File Templates.
 */
@Entity
@Table(name = "role")
@Data
public class Role {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "role_id")
    private int id;

    @Column(name = "role")
    private String role;

}