package com.example.rarants_promanager.controller;

import com.example.rarants_promanager.dao.ColunasDAO;
import com.example.rarants_promanager.dao.QuadrosDAO;
import com.example.rarants_promanager.model.Coluna;
import com.example.rarants_promanager.model.Quadro;
import com.example.rarants_promanager.model.Usuario;
import com.example.rarants_promanager.service.QuadroService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.view.RedirectView;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpSession;
import java.sql.SQLException;
import java.util.ArrayList;

@Controller
@RequestMapping("/usuario/colunas")
public class ColunaController {
    @RequestMapping("/quadro/{idQuadro}/coluna/nova")
    public String nova(HttpSession session, @PathVariable("idQuadro") int idQuadro,  Model model) {
        Usuario usuario = (Usuario) session.getAttribute("usuario_logado");
        QuadroService service = new QuadroService();
        Quadro quadro = null;
        try {
            quadro = service.getQuadro(idQuadro, usuario);
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
        quadro.setUsuario(usuario);

        model.addAttribute("quadro", quadro);
        model.addAttribute("coluna", new Coluna());
        return "nova_coluna";
    }

    @RequestMapping("/quadro/{idQuadro}/coluna/{idColuna}/editar")
    public String editar(HttpSession session, @PathVariable("idQuadro") int idQuadro, @PathVariable("idColuna") int idColuna,  Model model) {
        Usuario usuario = (Usuario) session.getAttribute("usuario_logado");
        QuadroService service = new QuadroService();
        Quadro quadro = null;
        try {
            quadro = service.getQuadro(idQuadro, usuario);
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
        quadro.setUsuario(usuario);

        Coluna coluna = new Coluna();
        coluna.setId(idColuna);
        ColunasDAO dao = new ColunasDAO();

        try {
            coluna = dao.getColuna(coluna);
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }

        coluna.setQuadro(quadro);

        model.addAttribute("quadro", quadro);
        model.addAttribute("coluna", coluna);
        return "editar_coluna";
    }

    @PostMapping("/quadro/{idQuadro}/coluna/{idColuna}/salvar")
    public RedirectView put(RedirectAttributes attributes, @ModelAttribute("coluna") Coluna coluna, @PathVariable("idQuadro") int idQuadro, @PathVariable("idColuna") int idColuna) {
        String url = "/usuario/dashboard/quadros/ver/" + idQuadro;
        Coluna coluna_atualizada = new Coluna();
        ColunasDAO dao = new ColunasDAO();
        coluna.setId(idColuna);
        try {
            coluna_atualizada = dao.putColuna(coluna);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        if (coluna_atualizada == null) {
            attributes.addAttribute("error", "Erro ao salvar alterações!");
            url = "/colunas/quadro/" + idQuadro + "/coluna/" + idColuna + "/editar";
        }
        RedirectView redirect = new RedirectView(url, true);
        return redirect;
    }

    @PostMapping("/quadro/{idQuadro}/coluna/nova")
    public RedirectView post(HttpSession session, RedirectAttributes attributes, @ModelAttribute("coluna") Coluna nova_coluna, @PathVariable("idQuadro") int idQuadro) {
        Usuario usuario = (Usuario)session.getAttribute("usuario_logado");
        String url = "/usuario/dashboard/quadros/ver/" + idQuadro;
        ColunasDAO dao = new ColunasDAO();
        Quadro quadro = new Quadro();
        quadro.setId(idQuadro);
        nova_coluna.setQuadro(quadro);
        try {
            nova_coluna = dao.postColuna(nova_coluna);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        if (nova_coluna != null) {
            ArrayList<Quadro> quadros = null;
            try {
                quadros = new QuadroService().getQuadros(usuario);
            } catch (SQLException e) {
                e.printStackTrace();
            } catch (ClassNotFoundException e) {
                e.printStackTrace();
            }
            attributes.addFlashAttribute("quadros", quadros);
        } else {
            attributes.addAttribute("error", "Erro ao cadastrar o quadro!");
            url = "/usuario/colunas/quadro/" + idQuadro + "/coluna/nova";
        }
        RedirectView redirect = new RedirectView(url, true);
        return redirect;
    }

    @RequestMapping("/quadro/{idQuadro}/coluna/{idColuna}/remover")
    public RedirectView delete(RedirectAttributes attributes, @ModelAttribute("coluna") Coluna coluna, @PathVariable("idQuadro") int idQuadro, @PathVariable("idColuna") int idColuna) {
        String url = "/usuario/dashboard/quadros/ver/" + idQuadro;
        Boolean deleted = false;
        ColunasDAO dao = new ColunasDAO();
        coluna.setId(idColuna);
        try {
            deleted = dao.deleteColuna(coluna.getId());
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        if (deleted == false) {
            attributes.addAttribute("error", "Erro ao remover a coluna!");
            url = "/colunas/quadro/" + idQuadro + "/coluna/" + idColuna + "/editar";
        }
        RedirectView redirect = new RedirectView(url, true);
        return redirect;
    }
}
