package tax.service;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import tax.domain.CategoryType;
import tax.domain.Slab;
import tax.domain.Tax;

@Service
@Transactional
public class SlabService {

    public Slab sum(Slab slab){
        slab.setTotal( slab.getFirst() + slab.getSecond() + slab.getThird() + slab.getForth() + slab.getFifth() + slab.getSixth());
        return slab;
    }

    public Slab getMax(Tax taxable){

        Slab max = new Slab();
        if(taxable.getCategoryType() == CategoryType.FEMALE || taxable.getCategoryType() == CategoryType.SENIOR_CITIZEN )
        {
            max.setFirst(350000L);

        }
        else if (taxable.getCategoryType() == CategoryType.DISABLED){
            max.setFirst(450000L);
        }
        else if (taxable.getCategoryType() == CategoryType.FREEDOM_FIGHTER){
            max.setFirst(475000L);
        }
        else{
            max.setFirst(300000L);
        }

        max.setSecond(100000L);
        max.setThird(300000L);
        max.setForth(400000L);
        max.setFifth(500000L);

        return max;
    }

    public Slab getAmount(Tax taxable){

        Long income = taxable.getTotal();
        Slab slab = new Slab();

        Slab max = this.getMax(taxable);

        if(income>=max.getFirst()){
            slab.setFirst(max.getFirst());
            income -= max.getFirst();
        }
        else{
            slab.setFirst(income);
            income = 0L;
        }
        if(income>=max.getSecond()){
            slab.setSecond(max.getSecond());
            income -= max.getSecond();
        }
        else{
            slab.setSecond(income);
            income = 0L;
        }
        if(income>=max.getThird()){
            slab.setThird(max.getThird());
            income -= max.getThird();
        }
        else{
            slab.setThird(income);
            income = 0L;
        }

        if(income>=max.getForth()){
            slab.setForth(max.getForth());
            income -= max.getForth();
        }
        else{
            slab.setForth(income);
            income = 0L;
        }

        if(income>=max.getFifth()){
            slab.setFifth(max.getFifth());
            income -= max.getFifth();
        }
        else{
            slab.setFifth(income);
            income = 0L;
        }
        if(income>=0){
            slab.setSixth(income);
            income = 0L;
        }


        return slab;
    }
    public Slab getTax(Slab slabAmount){
        Slab slabTax = new Slab();

        slabTax.setFirst(0L);
        slabTax.setSecond((long)(slabAmount.getSecond()*0.05));
        slabTax.setThird((long)(slabAmount.getThird()*0.1));

        slabTax.setForth((long)(slabAmount.getForth()*0.15));

        slabTax.setFifth((long)(slabAmount.getFifth()*0.20));

        slabTax.setSixth((long)(slabAmount.getSixth()*0.25));

        slabTax.setTotal(this.sum(slabTax).getTotal());

        return slabTax;
    }
}
