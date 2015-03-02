﻿<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Loan Calculator With Amortization Table</title>
    <link rel="stylesheet" type="text/css" href="CSS.css"/>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     Sam&#39;s Loan Calculator
        
        <br /><br />
     
        Loan Amount:<asp:TextBox ID="tbLoanAmt" runat="server" ></asp:TextBox>
                
         <span class="errorMessage">
              &nbsp;<asp:Label ID="lbl_amountError" runat="server"></asp:Label>  
          </span>           
        <br /><br />      
        
        Annual Interest %: <asp:TextBox ID="tbAnnualInterest" runat="server" ></asp:TextBox>
        <span class="errorMessage">
            <asp:Label ID="lbl_interestError" runat="server"></asp:Label>
        </span>
        
        <br /><br />

        Loan Term (Yrs): <asp:TextBox ID="tbLoanTerm" runat="server" ></asp:TextBox>
        <span class="errorMessage">
              <asp:Label ID="lbl_termError" runat="server"></asp:Label>
        </span>

        <br /><br />

        <asp:Button ID="btnCalcPmt" runat="server" Text="Calculate" /> 

        &nbsp;&nbsp;&nbsp;&nbsp; 

        <asp:Button ID="btn_remove" runat="server" Text="Clear" Width="61px" />
        
        <br /><br />
                
        Monthly Payment: &nbsp; <asp:Label ID="lblMonthlyPmt" runat="server"></asp:Label>
        
        <br /><br />
        
        <asp:GridView ID="loanGridView" runat="server" />
            
    </div>
    </form>
</body>
</html>
