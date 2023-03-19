package com.mybusan.schedule;

public class ScheduleDetailDTO {
	private int d_no;
    private int s_no;
    private int p_code;
    
    public ScheduleDetailDTO() {
		// TODO Auto-generated constructor stub
	}
    
    
	public int getD_no() {
		return d_no;
	}
	public void setD_no(int d_no) {
		this.d_no = d_no;
	}
	public int getS_no() {
		return s_no;
	}
	public void setS_no(int s_no) {
		this.s_no = s_no;
	}
	public int getP_code() {
		return p_code;
	}
	public void setP_code(int p_code) {
		this.p_code = p_code;
	}
	@Override
	public String toString() {
		return "ScheduleDetailDTO [d_no=" + d_no + ", s_no=" + s_no + ", p_code=" + p_code + "]";
	}
   
 
}