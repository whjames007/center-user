package com.changinye.www.user.model;

import java.util.Date;

public class UserInfo {
    private Integer userId;

    private String userAccount;

    private String userPassword;

    private String nickName;

    private String userEmail;

    private Integer roleId;

    private String userStatus;

    private Integer firstCreateBy;

    private Date firstCreateDate;

    private String description;

    private Integer lastUpdateBy;

    private Date lastUpdateDate;

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getUserAccount() {
        return userAccount;
    }

    public void setUserAccount(String userAccount) {
        this.userAccount = userAccount;
    }

    public String getUserPassword() {
        return userPassword;
    }

    public void setUserPassword(String userPassword) {
        this.userPassword = userPassword;
    }

    public String getNickName() {
        return nickName;
    }

    public void setNickName(String nickName) {
        this.nickName = nickName;
    }

    public String getUserEmail() {
        return userEmail;
    }

    public void setUserEmail(String userEmail) {
        this.userEmail = userEmail;
    }

    public Integer getRoleId() {
        return roleId;
    }

    public void setRoleId(Integer roleId) {
        this.roleId = roleId;
    }

    public String getUserStatus() {
        return userStatus;
    }

    public void setUserStatus(String userStatus) {
        this.userStatus = userStatus;
    }

    public Integer getFirstCreateBy() {
        return firstCreateBy;
    }

    public void setFirstCreateBy(Integer firstCreateBy) {
        this.firstCreateBy = firstCreateBy;
    }

    public Date getFirstCreateDate() {
        return firstCreateDate;
    }

    public void setFirstCreateDate(Date firstCreateDate) {
        this.firstCreateDate = firstCreateDate;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Integer getLastUpdateBy() {
        return lastUpdateBy;
    }

    public void setLastUpdateBy(Integer lastUpdateBy) {
        this.lastUpdateBy = lastUpdateBy;
    }

    public Date getLastUpdateDate() {
        return lastUpdateDate;
    }

    public void setLastUpdateDate(Date lastUpdateDate) {
        this.lastUpdateDate = lastUpdateDate;
    }
}