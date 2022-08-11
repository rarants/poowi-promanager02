package com.example.rarants_promanager.controller;

import com.example.rarants_promanager.dao.CartoesDAO;
import com.example.rarants_promanager.dao.ColunasDAO;
import com.example.rarants_promanager.model.Cartao;
import com.example.rarants_promanager.model.Coluna;
import com.example.rarants_promanager.model.Quadro;
import com.example.rarants_promanager.model.Usuario;
import com.example.rarants_promanager.service.ColunaService;
import com.example.rarants_promanager.service.QuadroService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.view.RedirectView;

import javax.servlet.http.HttpSession;
import java.sql.Date;
import java.sql.SQLException;
import java.util.ArrayList;

@Controller
@RequestMapping("/usuario/colunas")
public class CartaoController {
    @RequestMapping("/quadro/{idQuadro}/coluna/{idColuna}/cartao/novo")
    public String novo(HttpSession session,
                       @PathVariable("idQuadro") int idQuadro,
                       @PathVariable("idColuna") int idColuna,  Model model) {
        Usuario usuario = (Usuario) session.getAttribute("usuario_logado");
        QuadroService service = new QuadroService();
        ColunaService colunaService = new ColunaService();
        Quadro quadro = null;
        Coluna coluna = null;
        try {
            quadro = service.getQuadro(idQuadro, usuario);
            coluna = colunaService.getColuna(idColuna, quadro);
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
        quadro.setUsuario(usuario);
        coluna.setQuadro(quadro);
        model.addAttribute("quadro", quadro);
        model.addAttribute("coluna", coluna);
        model.addAttribute("cartao", new Cartao());
        return "novo_cartao";
    }

    @RequestMapping("/quadro/{idQuadro}/coluna/{idColuna}/cartao/{idCartao}/editar")
    public String editar(HttpSession session,
                         @PathVariable("idQuadro") int idQuadro,
                         @PathVariable("idColuna") int idColuna,
                         @PathVariable("idCartao") int idCartao, Model model) {
        Usuario usuario = (Usuario) session.getAttribute("usuario_logado");
        QuadroService service = new QuadroService();
        ColunaService colunaService = new ColunaService();
        Quadro quadro = null;
        Coluna coluna = null;
        try {
            quadro = service.getQuadro(idQuadro, usuario);
            coluna = colunaService.getColuna(idColuna, quadro);
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
        quadro.setUsuario(usuario);
        coluna.setQuadro(quadro);

        Cartao cartao = new Cartao();
        cartao.setId(idCartao);
        CartoesDAO dao = new CartoesDAO();

        try {
            cartao = dao.getCartao(cartao);
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }

        cartao.setColuna(coluna);

        model.addAttribute("quadro", quadro);
        model.addAttribute("coluna", coluna);
        model.addAttribute("cartao", cartao);
        return "editar_cartao";
    }

    @PostMapping("/quadro/{idQuadro}/coluna/{idColuna}/cartao/{idCartao}/salvar")
    public RedirectView put(RedirectAttributes attributes,
                            @ModelAttribute("cartao") Cartao cartao,
                            @PathVariable("idQuadro") int idQuadro,
                            @PathVariable("idColuna") int idColuna ,
                            @PathVariable("idCartao") int idCartao) {
        String url = "/usuario/dashboard/quadros/ver/" + idQuadro;
        Cartao cartao_atualizado = new Cartao();
        CartoesDAO dao = new CartoesDAO();
        cartao.setId(idCartao);
        System.out.println(cartao.getDataInicio());
        System.out.println(cartao.getDataTermino());
        Date dataInicio = null, dataTermino = null;
        if (cartao.getDataInicio() != null && !cartao.getDataInicio().equals("")) {
            dataInicio =  cartao.getDataInicio();
        }
        if (cartao.getDataTermino() != null && !cartao.getDataTermino().equals("")) {
            dataTermino = cartao.getDataTermino();
        }
        cartao.setDataInicio(dataInicio);
        cartao.setDataTermino(dataTermino);
        try {
            cartao_atualizado = dao.putCartao(cartao);
            System.out.println(cartao_atualizado.getDataInicio());
            System.out.println(cartao_atualizado.getDataTermino());
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        if (cartao_atualizado == null) {
            attributes.addAttribute("error", "Erro ao salvar alterações!");
            url = "/colunas/quadro/" + idQuadro + "/coluna/" + idColuna + "/quadro/" + idQuadro + "/editar";
        }
        RedirectView redirect = new RedirectView(url, true);
        return redirect;
    }

    @PostMapping("/quadro/{idQuadro}/coluna/{idColuna}/cartao/novo")
    public RedirectView post(HttpSession session, RedirectAttributes attributes,
                             @ModelAttribute("cartao") Cartao novo_cartao,
                             @PathVariable("idQuadro") int idQuadro,
                             @PathVariable("idColuna") int idColuna) {
        Usuario usuario = (Usuario)session.getAttribute("usuario_logado");
        String url = "/usuario/dashboard/quadros/ver/" + idQuadro;
        CartoesDAO dao = new CartoesDAO();
        Quadro quadro = new Quadro();
        quadro.setId(idQuadro);
        Coluna coluna = new Coluna();
        coluna.setId(idColuna);
        coluna.setQuadro(quadro);
        novo_cartao.setColuna(coluna);

        Date dataInicio = null, dataTermino = null;
        if (novo_cartao.getDataInicio() != null && !novo_cartao.getDataInicio().equals("")) {
            dataInicio = novo_cartao.getDataInicio();
        }
        if (novo_cartao.getDataTermino() != null && !novo_cartao.getDataTermino().equals("")) {
            dataTermino = novo_cartao.getDataTermino();
        }
        novo_cartao.setDataInicio(dataInicio);
        novo_cartao.setDataTermino(dataTermino);


        try {
            novo_cartao = dao.postCartao(novo_cartao);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        if (novo_cartao == null) {
            attributes.addAttribute("error", "Erro ao cadastrar o cartão!");
            url = "/usuario/colunas/quadro/" + idQuadro + "/coluna/" + idColuna + "cartao/novo";
        }
        RedirectView redirect = new RedirectView(url, true);
        return redirect;
    }

    @RequestMapping("/quadro/{idQuadro}/coluna/{idColuna}/cartao/{idCartao}/remover")
    public RedirectView delete(RedirectAttributes attributes,
                               @ModelAttribute("cartao") Cartao cartao,
                               @PathVariable("idQuadro") int idQuadro,
                               @PathVariable("idColuna") int idColuna,
                               @PathVariable("idCartao") int idCartao) {
        String url = "/usuario/dashboard/quadros/ver/" + idQuadro;
        Boolean deleted = false;
        CartoesDAO dao = new CartoesDAO();
        cartao.setId(idCartao);
        try {
            deleted = dao.deleteCartao(cartao.getId());
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        if (deleted == false) {
            attributes.addAttribute("error", "Erro ao remover a coluna!");
            url = "/colunas/quadro/" + idQuadro + "/coluna/" + idColuna + "/quadro/" + idQuadro + "/editar";
        }
        RedirectView redirect = new RedirectView(url, true);
        return redirect;
    }
}
