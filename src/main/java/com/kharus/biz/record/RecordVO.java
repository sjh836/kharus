package com.kharus.biz.record;

public class RecordVO
{
	private String nickName; //유저닉네임
	private String record; //사냥횟수 문자열
	
	public String getNickName() {
		return nickName;
	}
	public void setNickName(String nickName) {
		this.nickName = nickName;
	}
	public String getRecord() {
		return record;
	}
	public void setRecord(String record) {
		this.record = record;
	}
	
	@Override
	public String toString() {
		return "RecordVO [nickName=" + nickName + ", record=" + record + "]";
	}
}
