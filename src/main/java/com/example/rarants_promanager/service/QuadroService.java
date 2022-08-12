package com.example.rarants_promanager.service;

import com.example.rarants_promanager.dao.QuadrosDAO;
import com.example.rarants_promanager.model.Quadro;
import com.example.rarants_promanager.model.Usuario;

import java.sql.SQLException;
import java.util.ArrayList;

public class QuadroService {
    private QuadrosDAO dao = new QuadrosDAO();
    public ArrayList<Quadro> getQuadros(Usuario usuario) throws SQLException, ClassNotFoundException {
        return dao.getQuadros(usuario);
    }

    public Quadro getQuadro(Integer id, Usuario usuario) throws SQLException, ClassNotFoundException {
        Quadro quadro = new Quadro();
        quadro.setId(id);
        quadro.setUsuario(usuario);
        Quadro qdr = dao.getQuadro(quadro);
        if ((qdr != null && qdr.getUsuario() != null && qdr.getUsuario().equals(usuario)) ||
                (qdr != null && usuario == null && qdr.getPublico() == true)) {
            return qdr;
        } else return null;
    }

    public Boolean deleteQuadro(Usuario usuario, Integer id) throws SQLException, ClassNotFoundException {
        Quadro qdr = new Quadro();
        qdr.setId(id);
        qdr.setUsuario(usuario);
        qdr = dao.getQuadro(qdr);
        if (qdr.getUsuario().equals(usuario)) {;
            return dao.deleteQuadro(id, usuario.getId());
        } else return false;
    }

    public Quadro putQuadro(Quadro quadro, Usuario usuario) throws SQLException, ClassNotFoundException {
        Quadro qdr = dao.getQuadro(quadro);
        if (qdr.getUsuario().equals(usuario)) {;
            return dao.putQuadro(quadro);
        } else return null;
    }

}
