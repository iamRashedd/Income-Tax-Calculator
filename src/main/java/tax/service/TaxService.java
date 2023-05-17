package tax.service;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import tax.domain.Rebate;
import tax.domain.Slab;
import tax.domain.Tax;

@Service
@Transactional
public class TaxService {

    public Tax sum(Tax tax){
        tax.setTotal( tax.getBasicSalary() + tax.getHouseRent() + tax.getConveyance() + tax.getIncentive() + tax.getFestivalBonus() + tax.getMedicalAllowance() );
        return tax;
    }

    public Tax getExemption(Tax tax){
        Tax exemptedIncome = new Tax();
        exemptedIncome.setConveyance(120000L);
        exemptedIncome.setHouseRent(150000L);
        exemptedIncome.setMedicalAllowance(120000L);

        if( (long)(tax.getBasicSalary()*0.1) <= exemptedIncome.getMedicalAllowance())
            exemptedIncome.setMedicalAllowance((long)(tax.getBasicSalary()*0.1));

        if( (long)(tax.getBasicSalary()*0.1) <= exemptedIncome.getConveyance())
            exemptedIncome.setConveyance((long)(tax.getBasicSalary()*0.1));

        exemptedIncome.setTotal(this.sum(exemptedIncome).getTotal());


        return exemptedIncome;
    }


    public Tax getTaxable(Tax tax){

        Long houseRent;
        Long conveyanceAllowance;
        Long medicalAllowance;
        Tax exemptedIncome = this.getExemption(tax);

        if(tax.getConveyance() >= exemptedIncome.getConveyance()){
            conveyanceAllowance = tax.getConveyance() - exemptedIncome.getConveyance();
        }
        else{
            conveyanceAllowance = 0L;
        }

        if(tax.getHouseRent() >= exemptedIncome.getHouseRent()){
            houseRent = tax.getHouseRent() - exemptedIncome.getHouseRent();
        }
        else{
            houseRent = 0L;
        }

        if(tax.getMedicalAllowance() >= exemptedIncome.getMedicalAllowance()){
            medicalAllowance = tax.getMedicalAllowance() - exemptedIncome.getMedicalAllowance();
        }
        else{
            medicalAllowance = 0L;
        }


        Tax taxableIncome = new Tax();
        taxableIncome.setCategoryType(tax.getCategoryType());
        taxableIncome.setZone(tax.getZone());
        taxableIncome.setBasicSalary(tax.getBasicSalary());
        taxableIncome.setHouseRent(houseRent);
        taxableIncome.setConveyance(conveyanceAllowance);
        taxableIncome.setMedicalAllowance(medicalAllowance);
        taxableIncome.setIncentive(tax.getIncentive());
        taxableIncome.setFestivalBonus(tax.getFestivalBonus());
        taxableIncome.setInvestment(tax.getInvestment());
        taxableIncome.setTotal(this.sum(taxableIncome).getTotal());

        return taxableIncome;
    }

    public Rebate getRebate(Tax tax){
        Rebate rebate = new Rebate();
        rebate.setEligibleAmount((long)(tax.getTotal()*0.25));

        if(tax.getInvestment() >= rebate.getEligibleAmount()){
            rebate.setAcceptedinvestment(rebate.getEligibleAmount());
        }
        else{
            rebate.setAcceptedinvestment(tax.getInvestment());
        }

        rebate.setRebate((long)(rebate.getAcceptedinvestment()*0.15));

        return rebate;
    }

    public Long getPayable(Slab slabTax, Rebate rebate){

        return slabTax.getTotal() - rebate.getRebate();
    }

}
