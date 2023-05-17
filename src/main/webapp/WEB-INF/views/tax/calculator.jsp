<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Tax Calculator</title>
</head>
<body align="center">

<h1>Income Tax</h1>
<input align="center" type="button" value="Home" onclick="window.location.href='/taxcalculator/';return false;">


<form:form action="calculate" modelAttribute="tax">
            <table align="center" style="font-size:2vw;">
				<tr>
					<td>
						<fieldset>
							<legend><b>Income: </b></legend>
                            <table align="center"  border='1' cellpadding='4' width='100%' style="background-color:LightGrey;">

                                <tr>
                                    <th>
                                        <label for="categoryType">Category:</label>
                                    </th>
                                    <td>
                                        <form:select path="categoryType" id="categoryType">
                                            <c:forEach items="${categories}" var="category">

                                            <option value="${category}">${category}</option>
                                            </c:forEach>
                                        </form:select>
                                    </td>
                                    <td>
                                        <form:errors path="categoryType"/>
                                    </td>
                                </tr>
                                <tr>
                                    <th>
                                        <label for="zone">Zone:</label>
                                    </th>
                                    <td>
                                        <form:select path="zone" id="zone">
                                            <c:forEach items="${zones}" var="zone">

                                            <option value="${zone}">${zone}</option>
                                            </c:forEach>
                                        </form:select>
                                    </td>
                                    <td>
                                        <form:errors path="zone"/>
                                    </td>
                                </tr>

                                <tr>
                                    <th>
                                        <label for="basicSalary">Basic Salary:</label>
                                    </th>
                                    <td>
                                        <form:input type="number" path="basicSalary" id="basicSalary"/>
                                    </td>
                                    <td>
                                        <form:errors path="basicSalary"/>
                                    </td>
                                </tr>

                                <tr>
                                    <th>
                                        <label for="houseRent">House Rent:</label>
                                    </th>
                                    <td>
                                        <form:input type="number" path="houseRent" id="houseRent"/>
                                    </td>
                                    <td>
                                        <form:errors path="houseRent"/>
                                    </td>
                                </tr>

                                <tr>
                                    <th>
                                        <label for="medicalAllowance">Medical Allowance:</label>
                                    </th>
                                    <td>
                                        <form:input type="number" path="medicalAllowance" id="medicalAllowance"/>
                                    </td>
                                    <td>
                                        <form:errors path="medicalAllowance"/>
                                    </td>
                                </tr>

                                <tr>
                                    <th>
                                        <label for="conveyance">Conveyance:</label>
                                    </th>
                                    <td>
                                        <form:input type="number" path="conveyance" id="conveyance"/>
                                    </td>
                                    <td>
                                        <form:errors path="conveyance"/>
                                    </td>
                                </tr>

                                <tr>
                                    <th>
                                        <label for="incentive">Incentive/OT:</label>
                                    </th>
                                    <td>
                                        <form:input type="number" path="incentive" id="incentive"/>
                                    </td>
                                    <td>
                                        <form:errors path="incentive"/>
                                    </td>
                                </tr>

                                <tr>
                                    <th>
                                        <label for="festivalBonus">Festival Bonus:</label>
                                    </th>
                                    <td>
                                        <form:input type="number" path="festivalBonus" id="festivalBonus"/>
                                    </td>
                                    <td>
                                        <form:errors path="festivalBonus"/>
                                    </td>
                                </tr>

                                <tr>
                                    <th>
                                        <label for="investment">Investment:</label>
                                    </th>
                                    <td>
                                        <form:input type="number" path="investment" id="investment"/>
                                    </td>
                                    <td>
                                        <form:errors path="investment"/>
                                    </td>
                                </tr>



                                <tr>
                                    <th></th>
                                    <td></td>
                                    <td>
                                        <input type="submit" value="calculate">
                                    </td>
                                </tr>
                             </table>
						</fieldset>
					</td>
				</tr>
			</table>
</form:form>

</body>
</html>
