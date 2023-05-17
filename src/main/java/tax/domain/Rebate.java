package tax.domain;

public class Rebate {
    private Long eligibleAmount;
    private Long acceptedinvestment;
    private Long rebate;

    public Long getEligibleAmount() {
        return eligibleAmount;
    }

    public void setEligibleAmount(Long eligibleAmount) {
        this.eligibleAmount = eligibleAmount;
    }

    public Long getAcceptedinvestment() {
        return acceptedinvestment;
    }

    public void setAcceptedinvestment(Long acceptedinvestment) {
        this.acceptedinvestment = acceptedinvestment;
    }

    public Long getRebate() {
        return rebate;
    }

    public void setRebate(Long rebate) {
        this.rebate = rebate;
    }
}
