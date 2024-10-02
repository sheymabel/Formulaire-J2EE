package forms;


	import java.util.ArrayList;
	import java.util.List;

	public class plann<Intervention> {
		private List<Intervention> interventions;

	    public plann() {
	        interventions = new ArrayList<Intervention>();
	    }

	    public List<Intervention> getInterventions() {
	        return interventions;
	    }

	    public void setInterventions(List<Intervention> interventions) {
	        this.interventions = interventions;
	    }

	    public void addIntervention(Intervention intervention) {
	        interventions.add(intervention);
	    }

	    public void removeIntervention(Intervention intervention) {
	        interventions.remove(intervention);
	    }

	    public void clearInterventions() {
	        interventions.clear();}
	}

