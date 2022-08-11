package com.example.rarants_promanager.service;

import com.example.rarants_promanager.dao.ColunasDAO;
import com.example.rarants_promanager.model.Coluna;
import com.example.rarants_promanager.model.Quadro;

import java.sql.SQLException;

public class ColunaService {
    private ColunasDAO dao = new ColunasDAO();

    public Coluna getColuna(Integer id, Quadro quadro) throws SQLException, ClassNotFoundException {
        Coluna coluna = new Coluna();
        coluna.setId(id);
        coluna.setQuadro(quadro);
        Coluna col = dao.getColuna(coluna);
        if (col.getQuadro().equals(quadro)) {
            return col;
        } else return null;
    }
}
