<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

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
     
        Loan Amount:<asp:TextBox ID="tb_loanAmount" runat="server" ></asp:TextBox>
         <span class="errorMessage">
             <asp:RequiredFieldValidator ID="rfv_loanAmount" runat="server" 
                 ControlToValidate="tb_loanAmount"
                 ErrorMessage="**Please enter a loan amount**"></asp:RequiredFieldValidator>  
          </span>           
        <br /><br />      
        
        Annual Interest %: <asp:TextBox ID="tb_AnnualInterest" runat="server" ></asp:TextBox>
        <span class="errorMessage">
            <asp:RequiredFieldValidator ID="rfv_annualInterest" runat="server" 
                ControlToValidate="tb_AnnualInterest"
                ErrorMessage="**Please enter annual interest**">

            </asp:RequiredFieldValidator>
        </span>
        
        <br /><br />

        Loan Term (Yrs): <asp:TextBox ID="tb_LoanTerm" runat="server" ></asp:TextBox>
        <span class="errorMessage">
            <asp:RequiredFieldValidator ID="rfv_LoanTerm" runat="server" 
                ControlToValidate="tb_LoanTerm"
                ErrorMessage="**Please enter your loan term **"></asp:RequiredFieldValidator>
        </span>

        <br /><br />

        <asp:Button ID="btnCalcPmt" runat="server" Text="Calculate" /> 

        &nbsp;&nbsp;&nbsp;&nbsp; 

        <asp:Button ID="btn_remove" runat="server" Text="Clear" Width="61px" />
        
        <br /><br />
                
        Monthly Payment: &nbsp; <asp:Label ID="lbl_MonthlyPmt" runat="server"></asp:Label>
        
        <br /><br />
        
        <asp:GridView ID="loanGridView" runat="server" />
            
    </div>
    </form>
</body>
</html>
