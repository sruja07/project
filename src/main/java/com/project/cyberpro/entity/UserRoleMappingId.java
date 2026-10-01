package com.project.cyberpro.entity;

import java.io.Serializable;
import java.util.Objects;

public class UserRoleMappingId implements Serializable {
	private static final long serialVersionUID = 1L;
    private int userId;
    private int roleId;

    public UserRoleMappingId() {
    }

    public UserRoleMappingId(int userId, int roleId) {
        this.userId = userId;
        this.roleId = roleId;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public int getRoleId() {
        return roleId;
    }

    public void setRoleId(int roleId) {
        this.roleId = roleId;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;

        if (!(o instanceof UserRoleMappingId)) return false;

        UserRoleMappingId that = (UserRoleMappingId) o;

        return userId == that.userId &&
               roleId == that.roleId;
    }

    @Override
    public int hashCode() {
        return Objects.hash(userId, roleId);
    }
}