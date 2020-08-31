package org.edu.vo;

import java.util.Date;

public class MemberVO {
	
		private String user_id;
		private String user_pw;
		private String user_name;
		private String email;
		private Date reg_date;
		private String levels;
		private Boolean enabled;
		public String getUser_id() { //값을  return받게
			return user_id;
		}
		public void setUser_id(String user_id) { //값은 저장(셋팅)
			this.user_id = user_id;
		}
		public String getUser_pw() {
			return user_pw;
		}
		public void setUser_pw(String user_pw) {
			this.user_pw = user_pw;
		}
		public String getUser_name() {
			return user_name;
		}
		public void setUser_name(String user_name) {
			this.user_name = user_name;
		}
		public String getemail() {
			return email;
		}
		public void setemail(String email) {
			this.email = email;
		}
		public Date getReg_date() {
			return reg_date;
		}
		public void setReg_date(Date reg_date) {
			this.reg_date = reg_date;
		}
		public String getLevels() {
			return levels;
		}
		public void setLevels(String levels) {
			this.levels = levels;
		}
		public Boolean getEnabled() {
			return enabled;
		}
		public void setEnabled(Boolean enabled) {
			this.enabled = enabled;
		}
		
		@Override
		public String toString() {
			return "MemberVO [user_id=" + user_id + ", user_pw=" + user_pw + ", user_name=" + user_name
					+ ", email=" + email + ", reg_date=" + reg_date + ", levels=" + levels + ", enabled="
					+ enabled + "]";
		}
		
		
		
		
	

}