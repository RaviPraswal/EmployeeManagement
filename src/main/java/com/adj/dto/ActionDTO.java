package com.adj.dto;

import java.util.List;

public class ActionDTO {

	String actionClass;
	String actionName;
	List<ForwardDTO> forwardList;
	public String getActionClass() {
		return actionClass;
	}
	public void setActionClass(String actionClass) {
		this.actionClass = actionClass;
	}
	public String getActionName() {
		return actionName;
	}
	public void setActionName(String actionName) {
		this.actionName = actionName;
	}
	public List<ForwardDTO> getForwardList() {
		return forwardList;
	}
	public void setForwardList(List<ForwardDTO> forwardList) {
		this.forwardList = forwardList;
	}
	public ActionDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}
