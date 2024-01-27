package model;

public class Shipping_rate {
    private int idShippingFee;
    private String name;
    private double weightRangeFrom;
    private double weightRangeTo;
    private double basePrice;
    private double additionalPricePerKg;
    private double codFeePercent;

    public Shipping_rate(int idShippingFee, String name, double basePrice, double additionalPricePerKg, double codFeePercent) {
        this.idShippingFee = idShippingFee;
        this.name = name;
        this.basePrice = basePrice;
        this.additionalPricePerKg = additionalPricePerKg;
        this.codFeePercent = codFeePercent;
    }

    public Shipping_rate(int idShippingFee, String name, double weightRangeFrom, double weightRangeTo, double basePrice, double additionalPricePerKg, double codFeePercent) {
        this.idShippingFee = idShippingFee;
        this.name = name;
        this.weightRangeFrom = weightRangeFrom;
        this.weightRangeTo = weightRangeTo;
        this.basePrice = basePrice;
        this.additionalPricePerKg = additionalPricePerKg;
        this.codFeePercent = codFeePercent;
    }

    public Shipping_rate() {
    }

    public int getIdShippingFee() {
        return idShippingFee;
    }

    public void setIdShippingFee(int idShippingFee) {
        this.idShippingFee = idShippingFee;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public double getWeightRangeFrom() {
        return weightRangeFrom;
    }

    public void setWeightRangeFrom(double weightRangeFrom) {
        this.weightRangeFrom = weightRangeFrom;
    }

    public double getWeightRangeTo() {
        return weightRangeTo;
    }

    public void setWeightRangeTo(double weightRangeTo) {
        this.weightRangeTo = weightRangeTo;
    }

    public double getBasePrice() {
        return basePrice;
    }

    public void setBasePrice(double basePrice) {
        this.basePrice = basePrice;
    }

    public double getAdditionalPricePerKg() {
        return additionalPricePerKg;
    }

    public void setAdditionalPricePerKg(double additionalPricePerKg) {
        this.additionalPricePerKg = additionalPricePerKg;
    }

    public double getCodFeePercent() {
        return codFeePercent;
    }

    public void setCodFeePercent(double codFeePercent) {
        this.codFeePercent = codFeePercent;
    }
}
