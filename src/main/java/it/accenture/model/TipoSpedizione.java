package it.accenture.model;

public enum TipoSpedizione {
<<<<<<< HEAD
//commento
	IN_GIORNATA(10),
	NORMALE(5),
	GRATUITA(0);
	
	private int IncrementoSpedizione;

	private TipoSpedizione(int incrementoSpedizione) {
		IncrementoSpedizione = incrementoSpedizione;
	}

	public int getIncrementoSpedizione() {
		return IncrementoSpedizione;
	}

	public void setIncrementoSpedizione(int incrementoSpedizione) {
		IncrementoSpedizione = incrementoSpedizione;
				}
=======
	
	IN_GIORNATA(10),
	NORMALE(5),
	GRATUITA(0);

	private int IncrementoSpedizione;
	
	private TipoSpedizione(int incrementoSpedizione){
		IncrementoSpedizione = incrementoSpedizione;
	}

	public int getIncrementoSpedizione() {
		return IncrementoSpedizione;
	}

	public void setIncrementoSpedizione(int incrementoSpedizione) {
		IncrementoSpedizione = incrementoSpedizione;
	}
	
	
>>>>>>> branch 'master' of https://github.com/Mary1910/Shop
}
