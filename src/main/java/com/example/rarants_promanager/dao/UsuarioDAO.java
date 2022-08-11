package com.example.rarants_promanager.dao;

import com.example.rarants_promanager.connection.Conexao;
import com.example.rarants_promanager.model.Usuario;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UsuarioDAO {
    public Usuario getUsuario(String email) throws SQLException, ClassNotFoundException {
        PreparedStatement stmt = null;
        ResultSet rs = null;
        Usuario usuario = new Usuario();
        try (Connection con = Conexao.getConnection()) {
            stmt = con.prepareStatement("SELECT * FROM usuarios WHERE email = ?");
            stmt.setString(1, email);
            rs = stmt.executeQuery();
            while (rs.next()) {
                usuario = new Usuario();
                usuario.setId(rs.getInt("id"));
                usuario.setNome(rs.getString("nome"));
                usuario.setEmail(rs.getString("email"));
                usuario.setSenha(rs.getString("senha"));
            }
        } catch(SQLException ex){
            System.out.println(ex);
        }
        return usuario;
    }

    public boolean postUsuario(Usuario user) throws ClassNotFoundException {
        PreparedStatement stmt = null;
        int rs = 0;
        try (Connection con = Conexao.getConnection()) {
            stmt = con.prepareStatement("INSERT INTO usuarios VALUES (DEFAULT, ?, ?, ?, true)");
            stmt.setString(1, user.getNome());
            stmt.setString(2, user.getEmail());
            stmt.setString(3, user.getSenha());
            rs = stmt.executeUpdate();
            return true;
        } catch(SQLException ex){
            System.out.println(ex);
        }
        return false;
    }
}