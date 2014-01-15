package com.fpmislata.banco.datos;
import java.sql.Connection;

public interface ConnectionFactory {
    
    Connection getConnection();
    
}
