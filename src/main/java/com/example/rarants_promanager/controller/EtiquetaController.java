package com.example.rarants_promanager.controller;

import com.example.rarants_promanager.dao.ColunasDAO;
import com.example.rarants_promanager.dao.EtiquetasDAO;
import com.example.rarants_promanager.dao.QuadrosDAO;
import com.example.rarants_promanager.model.Coluna;
import com.example.rarants_promanager.model.Etiqueta;
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

import javax.servlet.http.HttpSession;
import java.sql.SQLException;
import java.util.ArrayList;

@Controller
@RequestMapping("/usuario/etiquetas")
public class EtiquetaController {
    @RequestMapping("/quadro/{idQuadro}/etiquetas")
    public String get(
            @PathVariable("idQuadro") int idQuadro,
            Model model,
            HttpSession session) {
        Usuario usuario = (Usuario) session.getAttribute("usuario_logado");
        if (usuario == null)
            if (usuario == null) {
                model.addAttribute("usuario", new Usuario());
                return "login";
            };
        QuadroService service = new QuadroService();
        Quadro quadro = null;
        try {
            quadro = service.getQuadro(idQuadro, usuario);
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
        quadro.setUsuario(usuario);
        model.addAttribute("quadro", quadro);
        return "etiquetas";
    }

    @RequestMapping("/quadro/{idQuadro}/etiqueta/nova")
    public String nova(
            HttpSession session,
            @PathVariable("idQuadro") int idQuadro,
            Model model) {
        Usuario usuario = (Usuario) session.getAttribute("usuario_logado");
        if (usuario == null)
            if (usuario == null) {
                model.addAttribute("usuario", new Usuario());
                return "login";
            };
        QuadroService service = new QuadroService();
        Quadro quadro = null;
        try {
            quadro = service.getQuadro(idQuadro, usuario);
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
        quadro.setUsuario(usuario);

        model.addAttribute("quadro", quadro);
        model.addAttribute("etiqueta", new Etiqueta());
        return "nova_etiqueta";
    }

    @RequestMapping("/quadro/{idQuadro}/etiqueta/{idEtiqueta}/editar")
    public String editar(
            HttpSession session,
            @PathVariable("idQuadro") int idQuadro,
            @PathVariable("idEtiqueta") int idEtiqueta,
            Model model) {
        Usuario usuario = (Usuario) session.getAttribute("usuario_logado");
        if (usuario == null)
            if (usuario == null) {
                model.addAttribute("usuario", new Usuario());
                return "login";
            };
        QuadroService service = new QuadroService();
        Quadro quadro = null;
        try {
            quadro = service.getQuadro(idQuadro, usuario);
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
        quadro.setUsuario(usuario);

        Etiqueta etiqueta = new Etiqueta();
        etiqueta.setId(idEtiqueta);
        EtiquetasDAO dao = new EtiquetasDAO();

        try {
            etiqueta = dao.getEtiqueta(etiqueta);
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }

        etiqueta.setQuadro(quadro);

        model.addAttribute("quadro", quadro);
        model.addAttribute("etiqueta", etiqueta);
        return "editar_etiqueta";
    }

    @PostMapping("/quadro/{idQuadro}/etiqueta/{idEtiqueta}/salvar")
    public RedirectView put(
            Model model,
            HttpSession session,
            RedirectAttributes attributes,
            @ModelAttribute("etiqueta") Etiqueta etiqueta,
            @PathVariable("idQuadro") int idQuadro,
            @PathVariable("idEtiqueta") int idEtiqueta) {
        Usuario usuario = (Usuario) session.getAttribute("usuario_logado");
        if (usuario == null)
            if (usuario == null) {
                model.addAttribute("usuario", new Usuario());
                return new RedirectView("/login", true);
            };
        String url = "/usuario/dashboard/quadros/ver/" + idQuadro;
        Etiqueta etiqueta_atualizada = new Etiqueta();
        EtiquetasDAO dao = new EtiquetasDAO();
        etiqueta.setId(idEtiqueta);
        try {
            etiqueta_atualizada = dao.putEtiqueta(etiqueta);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        if (etiqueta_atualizada == null) {
            attributes.addAttribute("error", "Erro ao salvar alterações!");
            url = "/etiquetas/quadro/" + idQuadro + "/etiqueta/" + idEtiqueta + "/editar";
        }
        RedirectView redirect = new RedirectView(url, true);
        return redirect;
    }

    @PostMapping("/quadro/{idQuadro}/etiqueta/nova")
    public RedirectView post(
            Model model,
            HttpSession session,
            RedirectAttributes attributes,
            @ModelAttribute("etiqueta") Etiqueta nova_etiqueta,
            @PathVariable("idQuadro") int idQuadro) {
        Usuario usuario = (Usuario) session.getAttribute("usuario_logado");
        if (usuario == null)
            if (usuario == null) {
                model.addAttribute("usuario", new Usuario());
                return new RedirectView("/login", true);
            };
        String url = "/usuario/dashboard/quadros/ver/" + idQuadro;
        EtiquetasDAO dao = new EtiquetasDAO();
        Quadro quadro = new Quadro();
        quadro.setId(idQuadro);
        nova_etiqueta.setQuadro(quadro);
        try {
            nova_etiqueta = dao.postEtiqueta(nova_etiqueta);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        if (nova_etiqueta != null) {
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
            attributes.addAttribute("error", "Erro ao cadastrar a etiqueta!");
            url = "/usuario/etiquetas/quadro/" + idQuadro + "/etiqueta/nova";
        }
        RedirectView redirect = new RedirectView(url, true);
        return redirect;
    }

    @RequestMapping("/quadro/{idQuadro}/etiqueta/{idEtiqueta}/remover")
    public RedirectView delete(
            Model model,
            HttpSession session,
            RedirectAttributes attributes,
            @ModelAttribute("etiqueta") Etiqueta etiqueta,
            @PathVariable("idQuadro") int idQuadro,
            @PathVariable("idEtiqueta") int idEtiqueta) {
        Usuario usuario = (Usuario) session.getAttribute("usuario_logado");
        if (usuario == null)
            if (usuario == null) {
                model.addAttribute("usuario", new Usuario());
                return new RedirectView("/login", true);
            };
        String url = "/usuario/dashboard/quadros/ver/" + idQuadro;
        Boolean deleted = false;
        EtiquetasDAO dao = new EtiquetasDAO();
        etiqueta.setId(idEtiqueta);
        try {
            deleted = dao.deleteEtiqueta(etiqueta.getId());
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        if (deleted == false) {
            attributes.addAttribute("error", "Erro ao remover a etiqueta!");
            url = "/etiquetas/quadro/" + idQuadro + "/etiqueta/" + idEtiqueta + "/editar";
        }
        RedirectView redirect = new RedirectView(url, true);
        return redirect;
    }
}
