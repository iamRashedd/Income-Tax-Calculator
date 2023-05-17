package tax.domain;

import javax.persistence.Entity;


public class Tax {
    private CategoryType categoryType;
    private Zone zone;
    private Long basicSalary;
    private Long houseRent;
    private Long medicalAllowance;
    private Long conveyance;
    private Long incentive;
    private Long festivalBonus;

    private Long investment;

    private Long total;

    public Tax() {
        this.categoryType = null;
        this.zone = null;
        this.basicSalary = 0L;
        this.houseRent = 0L;
        this.medicalAllowance = 0L;
        this.conveyance = 0L;
        this.incentive = 0L;
        this.festivalBonus = 0L;
        this.investment = 0L;
        this.total = 0L;
    }

    public Tax(CategoryType categoryType, Zone zone, Long basicSalary, Long houseRent, Long medicalAllowance, Long conveyance, Long incentive, Long festivalBonus,Long investment, Long total) {
        this.categoryType = categoryType;
        this.zone = zone;
        this.basicSalary = basicSalary;
        this.houseRent = houseRent;
        this.medicalAllowance = medicalAllowance;
        this.conveyance = conveyance;
        this.incentive = incentive;
        this.festivalBonus = festivalBonus;
        this.investment = investment;
        this.total = total;
    }

    public CategoryType getCategoryType() {
        return categoryType;
    }

    public void setCategoryType(CategoryType categoryType) {
        this.categoryType = categoryType;
    }

    public Zone getZone() {
        return zone;
    }

    public void setZone(Zone zone) {
        this.zone = zone;
    }

    public Long getBasicSalary() {
        return basicSalary;
    }

    public void setBasicSalary(Long basicSalary) {
        this.basicSalary = basicSalary;
    }

    public Long getHouseRent() {
        return houseRent;
    }

    public void setHouseRent(Long houseRent) {
        this.houseRent = houseRent;
    }

    public Long getMedicalAllowance() {
        return medicalAllowance;
    }

    public void setMedicalAllowance(Long medicalAllowance) {
        this.medicalAllowance = medicalAllowance;
    }

    public Long getConveyance() {
        return conveyance;
    }

    public void setConveyance(Long conveyance) {
        this.conveyance = conveyance;
    }

    public Long getIncentive() {
        return incentive;
    }

    public void setIncentive(Long incentive) {
        this.incentive = incentive;
    }

    public Long getFestivalBonus() {
        return festivalBonus;
    }

    public void setFestivalBonus(Long festivalBonus) {
        this.festivalBonus = festivalBonus;
    }

    public Long getInvestment() {
        return investment;
    }

    public void setInvestment(Long investment) {
        this.investment = investment;
    }

    public Long getTotal() {
        return total;
    }

    public void setTotal(Long total) {
        this.total = total;
    }
}
