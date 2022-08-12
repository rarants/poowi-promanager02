package com.example.rarants_promanager.dao;

import com.example.rarants_promanager.connection.Conexao;
import com.example.rarants_promanager.model.Coluna;
import com.example.rarants_promanager.model.Etiqueta;
import com.example.rarants_promanager.model.Quadro;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class EtiquetasDAO {
    public Etiqueta getEtiqueta(Etiqueta etiqueta) throws SQLException, ClassNotFoundException {
        Quadro quadro = etiqueta.getQuadro();
        PreparedStatement stmt = null;
        ResultSet rs = null;
        try (Connection con = Conexao.getConnection()) {
            stmt = con.prepareStatement("SELECT * FROM etiquetas WHERE id = ?");
            stmt.setInt(1, etiqueta.getId());
            rs = stmt.executeQuery();
            while (rs.next()) {
                etiqueta = new Etiqueta();
                etiqueta.setId(rs.getInt("id"));
                etiqueta.setTitulo(rs.getString("titulo"));
                etiqueta.setCor(rs.getString("cor"));
                etiqueta.setQuadro(quadro);
            }
        } catch(SQLException ex){
            System.out.println(ex);
        }
        return etiqueta;
    }

    public Etiqueta postEtiqueta(Etiqueta etiqueta) throws ClassNotFoundException {
        PreparedStatement stmt = null;
        ResultSet rs = null;
        try (Connection con = Conexao.getConnection()) {
            stmt = con.prepareStatement("INSERT INTO etiquetas VALUES (DEFAULT, ?, ?, ?)");
            stmt.setString(1, etiqueta.getTitulo());
            stmt.setString(2, etiqueta.getCor());
            stmt.setInt(3, etiqueta.getQuadro().getId());
            stmt.executeUpdate();
            rs = stmt.getGeneratedKeys();
            while (rs.next()) {
                etiqueta.setId(rs.getInt("id"));
            }
            return etiqueta;
        } catch(SQLException ex){
            System.out.println(ex);
        }
        return null;
    }

    public Etiqueta putEtiqueta(Etiqueta etiqueta) throws ClassNotFoundException {
        PreparedStatement stmt = null;
        ResultSet rs = null;
        try (Connection con = Conexao.getConnection()) {
            stmt = con.prepareStatement("UPDATE etiquetas SET titulo = ?, SET color = ? WHERE id = ?");
            stmt.setString(1, etiqueta.getTitulo());
            stmt.setString(2, etiqueta.getCor());
            stmt.setInt(2, etiqueta.getId());
            stmt.executeUpdate();
            rs = stmt.getGeneratedKeys();
            while (rs.next()) {
                etiqueta.setId(rs.getInt("id"));
            }
            return etiqueta;
        } catch(SQLException ex){
            System.out.println(ex);
        }
        return null;
    }

    public Boolean deleteEtiqueta(Integer id) throws ClassNotFoundException {
        PreparedStatement stmt = null;
        ResultSet rs = null;
        try (Connection con = Conexao.getConnection()) {
            stmt = con.prepareStatement("DELETE FROM etiquetas WHERE id = ?");
            stmt.setInt(1, id);
            stmt.executeUpdate();
            return true;
        } catch(SQLException ex){
            System.out.println(ex);
        }
        return false;
    }
}
