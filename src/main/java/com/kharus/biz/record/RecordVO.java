package com.kharus.biz.record;

public class RecordVO
{
	private String nickName; //�����г���
	private String record; //���Ƚ�� ���ڿ�
	
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
