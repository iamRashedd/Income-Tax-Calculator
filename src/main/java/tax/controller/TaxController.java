package tax.controller;


import org.apache.log4j.Category;
import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import tax.domain.*;
import tax.service.SlabService;
import tax.service.TaxService;

import javax.validation.Valid;
import java.sql.SQLException;
import java.util.List;

@Controller
@RequestMapping("/tax")
public class TaxController {

    private TaxService taxService;
    private SlabService slabService;

    public TaxController(TaxService taxService, SlabService slabService) {
        this.taxService = taxService;
        this.slabService = slabService;
    }

    @InitBinder
    public void initBinder(WebDataBinder webDataBinder) {
        StringTrimmerEditor stringTrimmerEditor = new StringTrimmerEditor(true);
        webDataBinder.registerCustomEditor(String.class, stringTrimmerEditor);
    }



    @RequestMapping("/home")
    public String home(Model model) {
        model.addAttribute("tax", new Tax());
        model.addAttribute("categories", CategoryType.values());
        model.addAttribute("zones", Zone.values());
        return "tax/calculator";
    }

    @RequestMapping("/calculate")
    public String store(Model model,@Valid @ModelAttribute("tax") Tax tax, BindingResult bindingResult) throws SQLException {
        if (bindingResult.hasErrors()) {
            return "redirect:/tax/home";
        }
        model.addAttribute("amount", taxService.sum(tax));
        model.addAttribute("exemption", taxService.getExemption(tax));
        Tax taxable = taxService.getTaxable(tax);
        model.addAttribute("taxable", taxable);
        Slab slabAmount = slabService.getAmount(taxable);
        model.addAttribute("slabAmount", slabAmount);
        Slab slabTax = slabService.getTax(slabAmount);
        model.addAttribute("slabTax", slabTax);
        Rebate rebate = taxService.getRebate(taxable);
        model.addAttribute("rebate", rebate);
        model.addAttribute("netPayable", taxService.getPayable(slabTax,rebate));


        return "tax/result";
    }

}
