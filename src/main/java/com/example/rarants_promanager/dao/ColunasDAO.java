package com.example.rarants_promanager.dao;

import com.example.rarants_promanager.connection.Conexao;
import com.example.rarants_promanager.model.Coluna;
import com.example.rarants_promanager.model.Quadro;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class ColunasDAO {
    public Coluna getColuna(Coluna coluna) throws SQLException, ClassNotFoundException {
        Quadro quadro = coluna.getQuadro();
        PreparedStatement stmt = null;
        ResultSet rs = null;
        try (Connection con = Conexao.getConnection()) {
            stmt = con.prepareStatement("SELECT * FROM colunas WHERE id = ?");
            stmt.setInt(1, coluna.getId());
            rs = stmt.executeQuery();
            while (rs.next()) {
                coluna = new Coluna();
                coluna.setId(rs.getInt("id"));
                coluna.setTitulo(rs.getString("titulo"));
                coluna.setQuadro(quadro);
            }
        } catch(SQLException ex){
            System.out.println(ex);
        }
        return coluna;
    }

    public Coluna postColuna(Coluna coluna) throws ClassNotFoundException {
        PreparedStatement stmt = null;
        ResultSet rs = null;
        try (Connection con = Conexao.getConnection()) {
            stmt = con.prepareStatement("INSERT INTO colunas VALUES (DEFAULT, ?, DEFAULT, ?)");
            stmt.setString(1, coluna.getTitulo());
            stmt.setInt(2, coluna.getQuadro().getId());
            stmt.executeUpdate();
            rs = stmt.getGeneratedKeys();
            while (rs.next()) {
                coluna.setId(rs.getInt("id"));
            }
            return coluna;
        } catch(SQLException ex){
            System.out.println(ex);
        }
        return null;
    }

    public Coluna putColuna(Coluna coluna) throws ClassNotFoundException {
        PreparedStatement stmt = null;
        ResultSet rs = null;
        try (Connection con = Conexao.getConnection()) {
            stmt = con.prepareStatement("UPDATE colunas SET titulo = ? WHERE id = ?");
            stmt.setString(1, coluna.getTitulo());
            stmt.setInt(2, coluna.getId());
            stmt.executeUpdate();
            rs = stmt.getGeneratedKeys();
            while (rs.next()) {
                coluna.setId(rs.getInt("id"));
            }
            return coluna;
        } catch(SQLException ex){
            System.out.println(ex);
        }
        return null;
    }

    public Boolean deleteColuna(Integer id) throws ClassNotFoundException {
        PreparedStatement stmt = null;
        ResultSet rs = null;
        try (Connection con = Conexao.getConnection()) {
            stmt = con.prepareStatement("DELETE FROM colunas WHERE id = ?");
            stmt.setInt(1, id);
            stmt.executeUpdate();
            return true;
        } catch(SQLException ex){
            System.out.println(ex);
        }
        return false;
    }
}
