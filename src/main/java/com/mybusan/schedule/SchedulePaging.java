package com.mybusan.schedule;

	
	public class SchedulePaging {
		private int startPage;
		private int endPage;
		
	
		

		public SchedulePaging(int totalRowCount) {
		
			
			this.endPage = (int) (Math.ceil(totalRowCount/ 10.0))-10;
			this.startPage = this.endPage - 10;
		
		
		}
	}