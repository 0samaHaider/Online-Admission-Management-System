<%@ Page Title="" Language="C#" MasterPageFile="~/MenuAndFooter.Master" AutoEventWireup="true" CodeBehind="ApplyOnline.aspx.cs" Inherits="Online_Admission.ApplyOnline" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>

         .auto-style11 {
        height: 43px;
            margin-top: 0;
        }
           .auto-style8 {
        height: 39px;
    }
    </style>
   
     <p class="auto-style11">
         <marquee  color= black behavior="scroll" direction="left" class="auto-style8">Our vision is to create an institution, built on the foundation of providing quality education to the youth of Pakistan.</marquee>
    </p><h2 class="auto-style14">
        Fill The Admission Form !!
    </h2>
    <form id="form1" runat="server">
    
        <p class="auto-style14">
                <asp:Label ID="Label15" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#0099CC"></asp:Label>
    </p>
        <table align="center" class="w-100">
            <tr>
                <td class="auto-style16">
                <asp:TextBox ID="TextBox1" runat="server" Height="34px" Width="434px" placeholder ="Enter You Name"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter Your Name" Font-Bold="True" Font-Size="Medium" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style17">
                <asp:TextBox ID="TextBox4" runat="server" Height="34px" Width="434px"  placeholder ="Enter You Father Name"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox4" ErrorMessage="Enter Your F Name" Font-Bold="True" Font-Size="Medium" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style15">
                <asp:TextBox ID="TextBox2" runat="server" Height="34px" Width="434px" placeholder ="Enter Your CNIC"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter Your CNIC" Font-Bold="True" Font-Size="Medium" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
                <td>
                <asp:TextBox ID="TextBox5" runat="server" Height="34px" Width="434px" placeholder ="Enter Your Father CNIC"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox5" ErrorMessage="Enter Your F CNIC " Font-Bold="True" Font-Size="Medium" ForeColor="#CC0000" placeholder ="Enter Your Father CNIC"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style15">
                <asp:TextBox ID="TextBox3" runat="server" Height="34px" Width="434px" placeholder ="Enter Your Email "></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Enter Your Email " Font-Bold="True" Font-Size="Medium" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="Invalid Email Id " Font-Bold="True" Font-Size="Small" ForeColor="#CC0000" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
                <td>
                <asp:TextBox ID="TextBox6" runat="server" Height="34px" Width="434px" OnTextChanged="TextBox6_TextChanged" placeholder ="Enter Your Adress"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox6" ErrorMessage="Enter Your Adress" Font-Bold="True" Font-Size="Medium" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style15">
                <asp:DropDownList ID="DropDownList2" runat="server" Font-Bold="True" Height="34px" Width="434px">
                    <asp:ListItem>Choose Gender</asp:ListItem>
                    <asp:ListItem>MALE</asp:ListItem>
                    <asp:ListItem>FEMALE</asp:ListItem>
                </asp:DropDownList>
                    <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="DropDownList2" ErrorMessage="Enter Your Gender" Font-Bold="True" Font-Size="Medium" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
                <td>
                <asp:TextBox ID="TextBox7" runat="server" Height="34px" Width="434px" placeholder ="Enter Your City"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox3" ErrorMessage="Enter Your City " Font-Bold="True" Font-Size="Medium" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style15">
                <asp:TextBox ID="TextBox8" runat="server" Height="34px" Width="434px" placeholder ="Enter Your Phone "></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBox8" ErrorMessage="Enter Your Phone " Font-Bold="True" Font-Size="Medium" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox8" ErrorMessage="Invalid Phone #" Font-Bold="True" Font-Size="Small" ForeColor="#CC0000" ValidationExpression="\d{11}"></asp:RegularExpressionValidator>
                </td>
                <td>
                <asp:TextBox ID="TextBox9" runat="server" Height="34px" Width="434px" OnTextChanged="TextBox9_TextChanged" CssClass="auto-style18" placeholder ="Enter Your Father Phone #"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="TextBox9" ErrorMessage="Enter Your F Phone #" Font-Bold="True" Font-Size="Medium" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox9" ErrorMessage="Invalid Phone #" Font-Bold="True" Font-Size="Small" ForeColor="#CC0000" ValidationExpression="\d{11}"></asp:RegularExpressionValidator>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style15">
                <asp:TextBox ID="TextBox10" runat="server" Height="34px" Width="434px" placeholder ="Enter Your Matric Percentage "></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="TextBox10" ErrorMessage="Enter Your Matric %" Font-Bold="True" Font-Size="Medium" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    </td>
                <td>
                <asp:TextBox ID="TextBox11" runat="server" Height="34px" Width="434px" placeholder ="Enter Your Inter Percentage "></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="TextBox11" ErrorMessage="Enter Your Inter %" Font-Bold="True" Font-Size="Medium" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style15">
                <asp:DropDownList ID="DropDownList1" runat="server" Font-Bold="True" Height="34px" Width="434px">
                    <asp:ListItem>Choose Course</asp:ListItem>
                    <asp:ListItem>BSCS</asp:ListItem>
                    <asp:ListItem>BSIT</asp:ListItem>
                    <asp:ListItem>MIT</asp:ListItem>
                    <asp:ListItem>MCS</asp:ListItem>
                    <asp:ListItem>BBA</asp:ListItem>
                    <asp:ListItem>MBA</asp:ListItem>
                </asp:DropDownList>
                    <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="DropDownList1" ErrorMessage="Select Degree " Font-Bold="True" Font-Size="Medium" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
                <td>
                <asp:FileUpload ID="FileUpload1" runat="server" Height="34px" Width="434px " placeholder ="Upload Your Latest Pic" />
                </td>
            </tr>
            <tr>
                <td class="auto-style15">
                <asp:Button ID="Button1" runat="server" BackColor="#00CC99" BorderColor="Black" BorderStyle="Solid" CssClass="auto-style4" ForeColor="Black" Height="37px" Text="SUBMIT" Width="157px" OnClick="Button1_Click" />
                    <br />
                    <br />
                    <br />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
<style>
body {
     background: url('https://images.unsplash.com/photo-1582738411706-bfc8e691d1c2?ixlib=rb-1.2.1&w=1000&q=80') fixed;
    background-size: cover;
}

*[role="form"] {
    max-width: 530px;
    padding: 15px;
    margin: 0 auto;
    border-radius: 0.3em;
    background-color: #f2f2f2;
}

*[role="form"] h2 { 
    font-family: 'Open Sans' , sans-serif;
    font-size: 40px;
    font-weight: 600;
    color: #000000;
    margin-top: 5%;
    text-align: center;
    text-transform: uppercase;
    letter-spacing: 4px;
}


    .auto-style4 {
        font-weight: bold;
    }


    .auto-style14 {
        text-align: center;
        height: 27px;
    }
    .auto-style15 {
        width: 602px;
    }
    .auto-style16 {
        width: 602px;
        height: 50px;
    }
    .auto-style17 {
        height: 50px;
    }
    .auto-style18 {
        margin-left: 24;
    }


</style>

    <body>

                   </form> <!-- /form -->
        </div> <!-- ./container -->
</body>
</form>
</asp:Content>
