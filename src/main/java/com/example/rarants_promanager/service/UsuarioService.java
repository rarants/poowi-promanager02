package com.example.rarants_promanager.service;


import com.example.rarants_promanager.dao.UsuarioDAO;
import com.example.rarants_promanager.model.Usuario;

import java.sql.SQLException;

public class UsuarioService {
    public Usuario autenticado (String email, String senha) throws SQLException, ClassNotFoundException {
        UsuarioDAO usr_dao = new UsuarioDAO();
        Usuario usuario = usr_dao.getUsuario(email);
        if (usuario != null && usuario.getEmail() != null && usuario.getEmail().equals(email) && usuario.getSenha().equals(senha)) {
            return usuario;
        }
        else return null;
    }
}
