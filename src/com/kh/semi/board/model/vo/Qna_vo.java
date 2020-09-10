package com.kh.semi.board.model.vo;

public class Qna_vo implements java.io.Serializable {
	private int qnaId;
	private int bid;
	private String qnaItems;
	private String qnaTitle;
	private String qnaContent;
	
	
	public Qna_vo () {}


	public Qna_vo(int qnaId, int bid, String qnaItems, String qnaTitle, String qnaContent) {
		super();
		this.qnaId = qnaId;
		this.bid = bid;
		this.qnaItems = qnaItems;
		this.qnaTitle = qnaTitle;
		this.qnaContent = qnaContent;
	}


	public int getQnaId() {
		return qnaId;
	}


	public void setQnaId(int qnaId) {
		this.qnaId = qnaId;
	}


	public int getBid() {
		return bid;
	}


	public void setBid(int bid) {
		this.bid = bid;
	}


	public String getQnaItems() {
		return qnaItems;
	}


	public void setQnaItems(String qnaItems) {
		this.qnaItems = qnaItems;
	}


	public String getQnaTitle() {
		return qnaTitle;
	}


	public void setQnaTitle(String qnaTitle) {
		this.qnaTitle = qnaTitle;
	}


	public String getQnaContent() {
		return qnaContent;
	}


	public void setQnaContent(String qnaContent) {
		this.qnaContent = qnaContent;
	}


	@Override
	public String toString() {
		return "Qna_vo [qnaId=" + qnaId + ", bid=" + bid + ", qnaItems=" + qnaItems + ", qnaTitle=" + qnaTitle
				+ ", qnaContent=" + qnaContent + "]";
	}

	
	
}
