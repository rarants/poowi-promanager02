package com.example.rarants_promanager.service;


import com.example.rarants_promanager.dao.CartoesDAO;
import com.example.rarants_promanager.model.Cartao;
import com.example.rarants_promanager.model.Usuario;

import java.sql.SQLException;

public class CartaoService {
    public Cartao owner (Usuario usuario, Cartao cartao) throws SQLException, ClassNotFoundException {
        CartoesDAO crt_dao = new CartoesDAO();
        cartao = crt_dao.getCartao(cartao);
        if (crt_dao.getCartao(cartao).getColuna().getQuadro().getUsuario().getId() == usuario.getId())
            return cartao;
        return null;
    }
}
