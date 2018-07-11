package it.accenture.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import it.accenture.model.Acquisto;
import it.accenture.model.TipoSpedizione;
import it.accenture.utilities.DBUtilityConnection;



public class AcquistoDaoImpl implements AcquistoDao {
	private Connection connection;
	private PreparedStatement prepared;
	

	
	public AcquistoDaoImpl() {
		connection = DBUtilityConnection.getConnection();
	}

	public void insertAcquisto(Acquisto acquisto) {
		String query = "insert into acquisto values "
				+ "(?, ?, ?, ?, ?, ?, ?)";
		try {
			prepared = connection.prepareStatement(query);
			prepared.setInt(1, acquisto.getIdAcquisto());
			prepared.setString(2, acquisto.getTipoSpedizione().toString());
			Date dataInizio = Date.valueOf(acquisto.getDataInizio());
			prepared.setDate(3, dataInizio);
			Date dataFine = Date.valueOf(acquisto.getDataFine());
			prepared.setDate(4, dataFine);
			prepared.setDouble(5, acquisto.getPrezzoTotale());
			prepared.setInt(6, acquisto.getQuantitaAcquistata());
			prepared.setInt(7, acquisto.getIdUtente());
			prepared.setInt(8, acquisto.getIdProdotto());
			prepared.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			if (prepared != null) {
				try {
					prepared.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
	}
	
	
	
	
	
	
	public void close() {
		if (connection != null) {
			try {
				connection.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}

	

	
	
	
	
}
