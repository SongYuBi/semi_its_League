package com.kh.semi.league.vo;

import java.sql.Date;

public class League_vo implements java.io.Serializable{
	private String lgId;
	private String lgHost;
	private int lgMinPlayer;
	private int lgSubPlayer;
	private int lgMaxPlayer;
	private int lgPlayer;
	private Date lgSDate;
	private Date lgEDate;
	private String lgReward;
	private String areaCode;
	private int stdFid;
	private int stdSid;
	
	public League_vo() {
		
	}

	public League_vo(String lgId, String lgHost, int lgMinPlayer, int lgSubPlayer, int lgMaxPlayer, int lgPlayer,
			Date lgSDate, Date lgEDate, String lgReward, String areaCode, int stdFid, int stdSid) {
		super();
		this.lgId = lgId;
		this.lgHost = lgHost;
		this.lgMinPlayer = lgMinPlayer;
		this.lgSubPlayer = lgSubPlayer;
		this.lgMaxPlayer = lgMaxPlayer;
		this.lgPlayer = lgPlayer;
		this.lgSDate = lgSDate;
		this.lgEDate = lgEDate;
		this.lgReward = lgReward;
		this.areaCode = areaCode;
		this.stdFid = stdFid;
		this.stdSid = stdSid;
	}

	@Override
	public String toString() {
		return "League_vo [lgId=" + lgId + ", lgHost=" + lgHost + ", lgMinPlayer=" + lgMinPlayer + ", lgSubPlayer="
				+ lgSubPlayer + ", lgMaxPlayer=" + lgMaxPlayer + ", lgPlayer=" + lgPlayer + ", lgSDate=" + lgSDate
				+ ", lgEDate=" + lgEDate + ", lgReward=" + lgReward + ", areaCode=" + areaCode + ", stdFid=" + stdFid
				+ ", stdSid=" + stdSid + "]";
	}

	public String getLgId() {
		return lgId;
	}

	public void setLgId(String lgId) {
		this.lgId = lgId;
	}

	public String getLgHost() {
		return lgHost;
	}

	public void setLgHost(String lgHost) {
		this.lgHost = lgHost;
	}

	public int getLgMinPlayer() {
		return lgMinPlayer;
	}

	public void setLgMinPlayer(int lgMinPlayer) {
		this.lgMinPlayer = lgMinPlayer;
	}

	public int getLgSubPlayer() {
		return lgSubPlayer;
	}

	public void setLgSubPlayer(int lgSubPlayer) {
		this.lgSubPlayer = lgSubPlayer;
	}

	public int getLgMaxPlayer() {
		return lgMaxPlayer;
	}

	public void setLgMaxPlayer(int lgMaxPlayer) {
		this.lgMaxPlayer = lgMaxPlayer;
	}

	public int getLgPlayer() {
		return lgPlayer;
	}

	public void setLgPlayer(int lgPlayer) {
		this.lgPlayer = lgPlayer;
	}

	public Date getLgSDate() {
		return lgSDate;
	}

	public void setLgSDate(Date lgSDate) {
		this.lgSDate = lgSDate;
	}

	public Date getLgEDate() {
		return lgEDate;
	}

	public void setLgEDate(Date lgEDate) {
		this.lgEDate = lgEDate;
	}

	public String getLgReward() {
		return lgReward;
	}

	public void setLgReward(String lgReward) {
		this.lgReward = lgReward;
	}

	public String getAreaCode() {
		return areaCode;
	}

	public void setAreaCode(String areaCode) {
		this.areaCode = areaCode;
	}

	public int getStdFid() {
		return stdFid;
	}

	public void setStdFid(int stdFid) {
		this.stdFid = stdFid;
	}

	public int getStdSid() {
		return stdSid;
	}

	public void setStdSid(int stdSid) {
		this.stdSid = stdSid;
	}
	
	
	
}
