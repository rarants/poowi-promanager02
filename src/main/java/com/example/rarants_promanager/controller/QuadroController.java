package com.example.rarants_promanager.controller;

import com.example.rarants_promanager.dao.QuadrosDAO;
import com.example.rarants_promanager.model.Quadro;
import com.example.rarants_promanager.model.Usuario;
import com.example.rarants_promanager.service.QuadroService;
import com.example.rarants_promanager.service.UsuarioService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.view.RedirectView;

import javax.servlet.http.HttpSession;
import java.sql.SQLException;
import java.util.ArrayList;

@Controller
@RequestMapping("/usuario/dashboard")
public class QuadroController {
    @RequestMapping("")
    public RedirectView get(
            Model model,
            HttpSession session,
            RedirectAttributes attributes) {
        Usuario usuario = (Usuario) session.getAttribute("usuario_logado");
        if (usuario == null)
            if (usuario == null) {
                model.addAttribute("usuario", new Usuario());
                return new RedirectView("/login", true);
            };
        QuadroService qs = new QuadroService();
        ArrayList<Quadro> quadros = null;
        try {
            quadros = qs.getQuadros(usuario);
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
        attributes.addFlashAttribute("quadros", quadros);
        return new RedirectView("/usuario/dashboard/quadros", true);
    }

    @PostMapping("quadros/novo")
    public RedirectView post(
            Model model,
            HttpSession session,
            @ModelAttribute("quadro") Quadro novo_quadro,
            RedirectAttributes attributes) {
        Usuario usuario = (Usuario) session.getAttribute("usuario_logado");
        if (usuario == null)
            if (usuario == null) {
                model.addAttribute("usuario", new Usuario());
                return new RedirectView("/login", true);
            };
        String url = "/usuario/dashboard";
        QuadrosDAO qdr_dao = new QuadrosDAO();
        novo_quadro.setUsuario(usuario);
        try {
            novo_quadro = qdr_dao.postQuadro(novo_quadro);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        if (novo_quadro != null) {
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
            url = "/usuario/dashboard/quadros/novo_quadro";
        }
        RedirectView redirect = new RedirectView(url, true);
        return redirect;
    }

    @PostMapping("quadros/editar/{id}")
    public RedirectView put(
            Model model,
            HttpSession session,
            @PathVariable("id") int id,
            @ModelAttribute("quadro") Quadro quadro,
            RedirectAttributes attributes) {
        Usuario usuario = (Usuario) session.getAttribute("usuario_logado");
        if (usuario == null)
            if (usuario == null) {
                model.addAttribute("usuario", new Usuario());
                return new RedirectView("/login", true);
            };
        String url = "/usuario/dashboard";
        QuadroService service = new QuadroService();
        try {
            quadro.setId(id);
            quadro.setUsuario(usuario);
            quadro = service.putQuadro(quadro, usuario);
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        if (quadro == null) {
            attributes.addAttribute("msg_error", "Erro ao salvar alterações!");
            url = "/usuario/dashboard/quadros/novo";
        }
        RedirectView redirect = new RedirectView(url, true);
        return redirect;
    }

    @RequestMapping("quadros/remover/{id}")
    public RedirectView delete(
            Model model,
            HttpSession session,
            RedirectAttributes attributes,
            @PathVariable("id") int id) {
        Usuario usuario = (Usuario) session.getAttribute("usuario_logado");
        if (usuario == null)
            if (usuario == null) {
                model.addAttribute("usuario", new Usuario());
                return new RedirectView("/login", true);
            };
        QuadroService service = new QuadroService();
        Boolean deleted = false;
        try {
            deleted = service.deleteQuadro(usuario, id);
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
        if (deleted == false) {
            attributes.addAttribute("msg_error", "Erro ao salvar alterações!");
        }
        RedirectView redirect = new RedirectView("/usuario/dashboard", true);
        return redirect;
    }

    @RequestMapping("quadros/ver/{id}")
    public String show(
            HttpSession session,
            @PathVariable("id") int id,
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
            quadro = service.getQuadro(id, usuario);
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
        quadro.setUsuario(usuario);
        model.addAttribute("quadro", quadro);
        return "quadro";
    }

    @RequestMapping("quadros")
    public String verQuadros() {
        return "dashboard";
    }

    @RequestMapping("quadros/novo")
    public String novo(
            HttpSession session,
            Model model) {
        Usuario usuario = (Usuario) session.getAttribute("usuario_logado");
        if (usuario == null)
            if (usuario == null) {
                model.addAttribute("usuario", new Usuario());
                return "login";
            };
        model.addAttribute("quadro", new Quadro());
        return "novo_quadro";
    }

    @RequestMapping("quadros/editar/{id}")
    public String editar(
            HttpSession session,
            @PathVariable("id") int id,
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
            quadro = service.getQuadro(id, usuario);
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
        quadro.setUsuario(usuario);
        model.addAttribute("quadro", quadro);
        return "editar_quadro";
    }

}
