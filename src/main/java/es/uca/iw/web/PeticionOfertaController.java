package es.uca.iw.web;
import es.uca.iw.domain.Cv;
import es.uca.iw.domain.Oferta;
import es.uca.iw.domain.PeticionOferta;
import es.uca.iw.domain.Usuario;
import es.uca.iw.reference.EstadoPeticionOferta;
import es.uca.iw.reference.TipoUsuario;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@RequestMapping("/peticionofertas")
@Controller
@RooWebScaffold(path = "peticionofertas", formBackingObject = PeticionOferta.class)
public class PeticionOfertaController {

    @RequestMapping(value = "/apuntar/{id}", produces = "text/html")
    public String createForm(@PathVariable("id") Long id, Model uiModel) {
        // La petición la debe iniciar un DEMANDANTE
        Usuario usuario = UsuarioController.getUsuario();
        List<Oferta> ofertas = Arrays.asList(Oferta.findOferta(id));
        uiModel.addAttribute("peticionOferta", new PeticionOferta());
        uiModel.addAttribute("cvs", Cv.findCvsByUsuario(usuario).getResultList());
        uiModel.addAttribute("ofertas", ofertas);
        //uiModel.addAttribute("usuarios", usuarios);
        // uiModel.addAttribute("estadopeticionofertas", Arrays.asList(EstadoPeticionOferta.Recibida));

        //populateEditForm(uiModel, new PeticionOferta());

        return "peticionofertas/create";
    }

    @RequestMapping(value = "/{id}", params = "form", produces = "text/html")
    public String updateForm(@PathVariable("id") Long id, Model uiModel) {
        uiModel.addAttribute("peticionOferta", PeticionOferta.findPeticionOferta(id));
        uiModel.addAttribute("cvs", Cv.findAllCvs());
        uiModel.addAttribute("ofertas", Oferta.findAllOfertas());
        uiModel.addAttribute("usuarios", Usuario.findAllUsuarios());
        uiModel.addAttribute("estadopeticionofertas", Arrays.asList(EstadoPeticionOferta.values()));
        return "peticionofertas/update";
    }


    @RequestMapping(value = "/mis-peticiones", produces = "text/html")
    public String misPeticiones(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, @RequestParam(value = "sortFieldName", required = false) String sortFieldName, @RequestParam(value = "sortOrder", required = false) String sortOrder, Model uiModel) {
        Usuario usuario = UsuarioController.getUsuario();
        uiModel.addAttribute("peticionofertas", PeticionOferta.findPeticionOfertasByUsuario_demandante(usuario).getResultList());
        return "peticionofertas/list";
    }



    @RequestMapping(value = "/todas", produces = "text/html")
    public String list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, @RequestParam(value = "sortFieldName", required = false) String sortFieldName, @RequestParam(value = "sortOrder", required = false) String sortOrder, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("peticionofertas", PeticionOferta.findPeticionOfertaEntries(firstResult, sizeNo, sortFieldName, sortOrder));
            float nrOfPages = (float) PeticionOferta.countPeticionOfertas() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("peticionofertas", PeticionOferta.findAllPeticionOfertas(sortFieldName, sortOrder));
        }
        return "peticionofertas/list";
    }


    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String create(@Valid PeticionOferta peticionOferta, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, peticionOferta);
            return "peticionofertas/create";
        }
        uiModel.asMap().clear();

        Usuario usuario = UsuarioController.getUsuario();
        System.out.println("HACE POST");
        peticionOferta.setUsuario_demandante(usuario);
        peticionOferta.persist();
        return "redirect:/peticionofertas/" + encodeUrlPathSegment(peticionOferta.getId().toString(), httpServletRequest);
    }

}