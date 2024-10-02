package forms;

import java.util.Date;

public class Interventio {
	private String label;
	private Date date;
	private String HeureDebut;
	private int dur�e;
	private String intervenant;
	private String client;

	public Interventio(String label, Date date, String heureDebut, int dur�e, String intervenant, String client) {
		super();
		this.label = label;
		this.date = date;
		HeureDebut = heureDebut;
		this.dur�e = dur�e;
		this.intervenant = intervenant;
		this.client = client;
	}

	public String getLabel() {
		return label;
	}

	public void setLabel(String label) {
		this.label = label;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public String getHeureDebut() {
		return HeureDebut;
	}

	public void setHeureDebut(String heureDebut) {
		HeureDebut = heureDebut;
	}

	public int getDur�e() {
		return dur�e;
	}

	public void setDur�e(int dur�e) {
		this.dur�e = dur�e;
	}

	public String getIntervenant() {
		return intervenant;
	}

	public void setIntervenant(String intervenant) {
		this.intervenant = intervenant;
	}

	public String getClient() {
		return client;
	}

	public void setClient(String client) {
		this.client = client;
	}

}

