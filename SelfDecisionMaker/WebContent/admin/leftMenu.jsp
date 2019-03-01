<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<div class="app-sidebar sidebar-slide-left">
				<div class="text-right">
					<button type="button" class="btn btn-sidebar"
						data-dismiss="sidebar">
						<span class="x"></span>
					</button>
				</div>
				<div class="sidebar-header">
					<img src="admin/assets/img/john-doe.png" class="user-photo">
					<p class="username">
						<c:out value="${userName}"/> <small><c:out value="${role}"/></small>
					</p>
				</div>
				<div id="sidebar" class="sidebar-nav">
					
					<div class="sidebar-nav-group">
						<a href="#input-controls" class="sidebar-nav-link" data-toggle="collapse"><i class="icon-note"></i>Administration</a>
						<div id="input-controls" class="sidebar-nav-group collapse" data-parent="#sidebar">
							<a href="#"
								class="sidebar-nav-link">Search User</a> 
								<a href="addMember.action"
								class="sidebar-nav-link">Add New Member</a> 
								<a href="#"
								class="sidebar-nav-link">Change Password</a> 
						</div>
					</div>
					<div class="sidebar-nav-group">
						<a href="#device-controls" class="sidebar-nav-link"
							data-toggle="collapse"><i class="icon-screen-tablet"></i>
							Sale/Purchase</a>
						<div id="device-controls" class="sidebar-nav-group collapse"
							data-parent="#sidebar">
							<a href="#"
								class="sidebar-nav-link">Total Sale</a> <a
								href="#"
								class="sidebar-nav-link">Total Purchase</a>
						</div>
					</div>
					<div class="sidebar-nav-group">
						<a href="#content" class="sidebar-nav-link" data-toggle="collapse"><i
							class="icon-doc"></i> Binary Tree</a>
						<div id="content" class="collapse" data-parent="#sidebar">
							<a href="#"
								class="sidebar-nav-link">View Binary</a> 
						</div>
					</div>
					<div class="sidebar-nav-group">
						<a href="#forms" class="sidebar-nav-link" data-toggle="collapse"><i
							class="icon-pencil"></i> User Zone</a>
						<div id="forms" class="collapse" data-parent="#sidebar">
							<a href=".#"
								class="sidebar-nav-link">View Basic Info</a> <a
								href="#"
								class="sidebar-nav-link">Update Info</a> <a
								href="#"
								class="sidebar-nav-link">Change Password</a>
						</div>
					</div>
					
				</div>
				<div class="sidebar-footer">
					<a href="#" data-toggle="tooltip"
						title="Support"><i class="fa fa-comment"></i> </a><a
						href="#" data-toggle="tooltip"
						title="Settings"><i class="fa fa-cog"></i> </a><a
						href="logOut.action" data-toggle="tooltip"
						title="Logout"><i class="fa fa-power-off"></i></a>
				</div>
			</div>