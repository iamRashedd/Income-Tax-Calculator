<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Generated Tax</title>
</head>
<body align="center">

<h1>Generated Tax</h1>
<input align="center" type="button" value="Home" onclick="window.location.href='/taxcalculator/';return false;">



            <table align="center" style="font-size:2vw;">
				<tr>
					<td>
						<fieldset>
							<legend><b>Taxable Income: </b></legend>
                            <table align="center"  border='1' cellpadding='4' width='100%' style="background-color:LightGrey;">

                                <tr>
                                    <th></th>
                                    <td>Amount</td>
                                    <td>
                                        Exemption
                                    </td>
                                    <td>
                                        Taxable
                                    </td>
                                </tr>
                                <tr>
                                    <th>
                                        <label for="categoryType">Category:</label>
                                    </th>
                                    <td>
                                        ${amount.categoryType}

                                    </td>
                                    <td>

                                    </td>
                                    <td>
                                    </td>
                                </tr>
                                <tr>
                                    <th>
                                        <label for="zone">Zone:</label>
                                    </th>
                                    <td>
                                        ${amount.zone}
                                    </td>
                                    <td>

                                    </td>
                                    <td>
                                    </td>
                                </tr>

                                <tr>
                                    <th>
                                        <label for="basicSalary">Basic Salary:</label>
                                    </th>
                                    <td>
                                        ${amount.basicSalary}
                                    </td>
                                    <td>
                                        ${exemption.basicSalary}
                                    </td>
                                    <td>
                                        ${taxable.basicSalary}
                                    </td>
                                </tr>

                                <tr>
                                    <th>
                                        <label for="houseRent">House Rent:</label>
                                    </th>
                                    <td>
                                        ${amount.houseRent}
                                    </td>
                                    <td>
                                        ${exemption.houseRent}
                                    </td>
                                    <td>
                                        ${taxable.houseRent}
                                    </td>
                                </tr>

                                <tr>
                                    <th>
                                        <label for="medicalAllowance">Medical Allowance:</label>
                                    </th>
                                    <td>
                                        ${amount.medicalAllowance}
                                    </td>
                                    <td>
                                        ${exemption.medicalAllowance}
                                    </td>
                                    <td>
                                        ${taxable.medicalAllowance}
                                    </td>
                                </tr>

                                <tr>
                                    <th>
                                        <label for="conveyance">Conveyance:</label>
                                    </th>
                                    <td>
                                        ${amount.conveyance}
                                    </td>
                                    <td>
                                        ${exemption.conveyance}
                                    </td>
                                    <td>
                                        ${taxable.conveyance}
                                    </td>
                                </tr>

                                <tr>
                                    <th>
                                        <label for="incentive">Incentive/OT:</label>
                                    </th>
                                    <td>
                                        ${amount.incentive}
                                    </td>
                                    <td>
                                        ${exemption.incentive}
                                    </td>
                                    <td>
                                        ${taxable.incentive}
                                    </td>
                                </tr>

                                <tr>
                                    <th>
                                        <label for="festivalBonus">Festival Bonus:</label>
                                    </th>
                                    <td>
                                        ${amount.festivalBonus}
                                    </td>
                                    <td>
                                        ${exemption.festivalBonus}
                                    </td>
                                    <td>
                                        ${taxable.festivalBonus}
                                    </td>
                                </tr>

                                <tr>
                                    <th>
                                        <label for="total">Total:</label>
                                    </th>
                                    <th>
                                        ${amount.total}
                                    </th>
                                    <th>
                                        ${exemption.total}
                                    </th>
                                    <th>
                                        ${taxable.total}
                                    </td>
                                </tr>
                             </table>
						</fieldset>
					</td>
				</tr>
			</table>




			<table align="center" style="font-size:2vw;">
            				<tr>
            					<td>
            						<fieldset>
            							<legend><b>Gross Tax Liability: </b></legend>
                                        <table align="center"  border='1' cellpadding='4' width='100%' style="background-color:LightGrey;">

                                            <tr>
                                                <th></th>
                                                <td>Tax%</td>
                                                <td>
                                                    Amount
                                                </td>
                                                <td>
                                                    Tax
                                                </td>
                                            </tr>
                                            <tr>
                                                <th>
                                                    Upto 300,000 Taka
                                                </th>
                                                <td>
                                                    0%
                                                </td>
                                                <td>
                                                    ${slabAmount.first}
                                                </td>
                                                <td>
                                                    ${slabTax.first}
                                                </td>
                                            </tr>
                                            <tr>
                                                <th>
                                                    On the Next 100,000 Taka
                                                </th>
                                                <td>
                                                    5%
                                                </td>
                                                <td>
                                                    ${slabAmount.second}
                                                </td>
                                                <td>
                                                    ${slabTax.second}
                                                </td>
                                            </tr>

                                            <tr>
                                                <th>
                                                    On the Next 300,000 Taka
                                                </th>
                                                <td>
                                                    10%
                                                </td>
                                                <td>
                                                    ${slabAmount.third}
                                                </td>
                                                <td>
                                                    ${slabTax.third}
                                                </td>
                                            </tr>

                                            <tr>
                                                <th>
                                                    On the Next 400,000 Taka
                                                </th>
                                                <td>
                                                    15%
                                                </td>
                                                <td>
                                                    ${slabAmount.forth}
                                                </td>
                                                <td>
                                                    ${slabTax.forth}
                                                </td>
                                            </tr>

                                            <tr>
                                                <th>
                                                    On the Next 500,000 Taka
                                                </th>
                                                <td>
                                                    20%
                                                </td>
                                                <td>
                                                    ${slabAmount.fifth}
                                                </td>
                                                <td>
                                                    ${slabTax.fifth}
                                                </td>
                                            </tr>

                                            <tr>
                                                <th>
                                                    Above
                                                </th>
                                                <td>
                                                    25%
                                                </td>
                                                <td>
                                                    ${slabAmount.sixth}
                                                </td>
                                                <td>
                                                    ${slabTax.sixth}
                                                </td>
                                            </tr>

                                            <tr>
                                                <th>
                                                    Gross Tax Liability
                                                </th>
                                                <th>
                                                    -
                                                </th>
                                                <th>
                                                    ${slabAmount.total}
                                                </th>
                                                <th>
                                                    ${slabTax.total}
                                                </th>
                                            </tr>

                                        </table>
            						</fieldset>
            					</td>
            				</tr>
            			</table>



            			<table align="center" style="font-size:2vw;">
                                    				<tr>
                                    					<td>
                                    						<fieldset>
                                    							<legend><b>Rebate: </b></legend>
                                                                <table align="center"  border='1' cellpadding='4' width='100%' style="background-color:LightGrey;">

                                                                    <tr>
                                                                        <th>Eligible Amount</th>
                                                                        <td>
                                                                            ${rebate.eligibleAmount}
                                                                        </td>
                                                                    </tr>

                                                                    <tr>
                                                                        <th>
                                                                            Accepted Investment
                                                                        </th>
                                                                        <td>
                                                                            ${rebate.acceptedinvestment}
                                                                        </td>
                                                                    </tr>

                                                                    <tr>
                                                                        <th>
                                                                            Rebate
                                                                        </th>
                                                                        <td>
                                                                            ${rebate.rebate}
                                                                        </td>
                                                                    </tr>

                                                                 </table>
                                    						</fieldset>
                                    					</td>
                                    				</tr>
                        </table>

                        <table align="center" style="font-size:2vw;">
                                                    <tr>
                                                        <td>
                                                            <fieldset>
                                                                <legend><b>Net Tax Payable: </b></legend>
                                                                <table align="center"  border='1' cellpadding='4' width='100%' style="background-color:LightGrey;">

                                                                    <tr>
                                                                        <th>Gross Tax Liability (BDT)</th>
                                                                        <td>
                                                                            ${slabTax.total}
                                                                        </td>
                                                                    </tr>

                                                                    <tr>
                                                                        <th>
                                                                            Tax after Rebate (BDT)
                                                                        </th>
                                                                        <td>
                                                                            ${rebate.rebate}
                                                                        </td>
                                                                    </tr>

                                                                    <tr>
                                                                        <th>
                                                                            Net Tax Payable (BDT)
                                                                        </th>
                                                                        <td>
                                                                            ${netPayable}
                                                                        </td>
                                                                    </tr>

                                                                 </table>
                                                            </fieldset>
                                                        </td>
                                                    </tr>
                        </table>


</body>
</html>
