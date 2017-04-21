package com.hb.guest.model;

import java.sql.Timestamp;

public class GuestDto {
//	idx ,id ,sub ,cntnt ,cnt ,tf
// getter&setter, toString, eq
	private int idx,cnt,tf;
	private String id,sub,cntnt;
	private Timestamp nalja;
	
	public GuestDto() {
	}

	public int getIdx() {
		return idx;
	}

	public void setIdx(int idx) {
		this.idx = idx;
	}

	public int getCnt() {
		return cnt;
	}

	public void setCnt(int cnt) {
		this.cnt = cnt;
	}

	public int getTf() {
		return tf;
	}

	public void setTf(int tf) {
		this.tf = tf;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getSub() {
		return sub;
	}

	public void setSub(String sub) {
		this.sub = sub;
	}

	public String getCntnt() {
		return cntnt;
	}

	public void setCntnt(String cntnt) {
		this.cntnt = cntnt;
	}

	public Timestamp getNalja() {
		return nalja;
	}

	public void setNalja(Timestamp nalja) {
		this.nalja = nalja;
	}

	@Override
	public String toString() {
		return "GuestDto [idx=" + idx + ", cnt=" + cnt + ", tf=" + tf + ", id="
				+ id + ", sub=" + sub + ", cntnt=" + cntnt + ", nalja=" + nalja
				+ "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + cnt;
		result = prime * result + ((cntnt == null) ? 0 : cntnt.hashCode());
		result = prime * result + ((id == null) ? 0 : id.hashCode());
		result = prime * result + idx;
		result = prime * result + ((sub == null) ? 0 : sub.hashCode());
		result = prime * result + tf;
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		GuestDto other = (GuestDto) obj;
		if (cnt != other.cnt)
			return false;
		if (cntnt == null) {
			if (other.cntnt != null)
				return false;
		} else if (!cntnt.equals(other.cntnt))
			return false;
		if (id == null) {
			if (other.id != null)
				return false;
		} else if (!id.equals(other.id))
			return false;
		if (idx != other.idx)
			return false;
		if (sub == null) {
			if (other.sub != null)
				return false;
		} else if (!sub.equals(other.sub))
			return false;
		if (tf != other.tf)
			return false;
		return true;
	}
	
	
}