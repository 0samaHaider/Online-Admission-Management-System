<%@ Page Title="" Language="C#" MasterPageFile="~/MenuAndFooter.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="Online_Admission.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script language="javascript">
        function printdiv(printpage) {
            var headstr = "<html><head><title></title></head><body>";
            var footstr = "</body>";
            var newstr = document.all.item(printpage).innerHTML;
            var oldstr = document.body.innerHTML;
            document.body.innerHTML = headstr + newstr + footstr;
            window.print();
            document.body.innerHTML = oldstr;
            return false;
        }
    </script>


    <form id="form1" runat="server">
        <table class="w-100" style="height: 52px; margin-top: 0px; background-color: #999999;">
            <tr>
                <td style="width: 198px"><strong><span style="font-size: medium">Search By Program :</span></strong></td>
                <td style="width: 236px">
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="Degree" DataValueField="Degree" Font-Bold="True" Font-Size="Medium" Height="28px" Width="195px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
        </asp:DropDownList>
                </td>
                <td style="width: 131px">
        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Search" BackColor="#CCFFCC" BorderColor="Black" Font-Bold="True" Font-Size="Medium" Height="31px" Width="109px" />
                </td>
                <td style="width: 173px"><strong><span style="font-size: medium">&nbsp;&nbsp;
        Generate ID Card :</span></strong></td>
                <td>
        <asp:Button ID="Button4" runat="server" OnClick="Button4_Click2" Text="Search" BackColor="#CCFFCC" BorderColor="Black" Font-Bold="True" Font-Size="Medium" Height="31px" style="margin-top: 14" Width="109px" />

                </td>
            </tr>
        </table>
        <p>

        &nbsp;<strong><span style="font-size: medium">&nbsp; </span></strong>&nbsp;<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DbProjectConnectionString %>" SelectCommand="SELECT DISTINCT [Degree] FROM [Data_Enter_by_Candidate]" OnSelecting="SqlDataSource2_Selecting"></asp:SqlDataSource>

        </p>
        <asp:Panel ID="Panel3" runat="server" Height="101px">
            <table class="w-100" style="height: 52px; background-color: #999999; margin-top: 0px;">
                <tr>
                    <td style="width: 237px; height: 50px; font-size: medium;"><strong>Enter Student Roll Number :</strong></td>
                    <td style="height: 50px">
                        <asp:TextBox ID="TextBox4" runat="server" Height="28px" Width="182px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 237px">&nbsp;</td>
                    <td>
                        <asp:Button ID="Button5" runat="server" Height="36px" OnClick="Button5_Click" Text="Submit" Width="145px" BackColor="#00CC99" BorderColor="Black" BorderStyle="Solid" Font-Bold="True" Font-Size="Medium" />
                        <br />
                        <asp:Label ID="Label7" runat="server" ForeColor="Red"></asp:Label>
                    </td>
                </tr>
            </table>
            <br />
            <br />
            <br />
            <br />
            <br />
        </asp:Panel>
        <p>

        </p>
        <div class="text-sm-center">
        <asp:Panel ID="Panel4" runat="server" BorderStyle="Dotted" Height="198px" Width="813px">
            <div id="div_print">

            <table class="w-100" style="width: 92%; height: 131px;  background-color: #CCFFFF">
                <tr>
                    <td class="text-sm-center" colspan="3" style="font-size: x-large"><strong>University Of Rawalpindi</strong></td>
                </tr>
                <tr>
                    <td class="text-sm-left" style="width: 298px; font-size: large;"><strong>Roll Number :</strong></td>
                    <td class="text-sm-left" style="width: 291px">
                        <asp:Label ID="Label3" runat="server" style="font-size: medium" Text="Label"></asp:Label>
                    </td>
                    <td class="text-sm-center" rowspan="4">
                        <asp:Image ID="Image1" runat="server" Height="151px" Width="218px" />
                    </td>
                </tr>
                <tr>
                    <td  class="text-sm-left"style="width: 298px; font-size: large;"><strong>Name :</strong></td>
                    <td class="text-sm-left" style="width: 291px">
                        <asp:Label ID="Label4" runat="server" style="font-size: medium" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="text-sm-left" style="width: 298px; font-size: large;"><strong>Degree :</strong></td>
                    <td class="text-sm-left" style="width: 291px">
                        <asp:Label ID="Label5" runat="server" style="font-size: medium" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="text-sm-left" style="width: 298px; font-size: large;"><strong>Phone Number :</strong></td>
                    <td class="text-sm-left" style="width: 291px">
                        <asp:Label ID="Label6"  runat="server" style="font-size: medium" Text="Label"></asp:Label>
                    </td>
                </tr>
            </table>
                </div>
            <input name="b_print" type="button" class="ipt" onclick="printdiv('div_print');" value=" Print Card ">

            </asp:Panel>
        </div>
        <p>

            &nbsp;

        </p>
        <asp:Panel ID="Panel2" runat="server">
            <table class="w-100" style="height: 52px; margin-top: 0px; background-color: #999999;">
                <tr>
                    <td style="width: 172px">
                        <asp:Button ID="Button1" runat="server" BackColor="#00CC99" BorderColor="Black" BorderStyle="Solid" CssClass="auto-style4" Font-Bold="True" Height="32px" OnClick="Button1_Click" OnCommand="Button1_Command" OnPreRender="Button1_PreRender" Text="Rejected" Width="137px" />
                    </td>
                    <td style="width: 169px">
                        <asp:Label ID="Label1" runat="server"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                    <td style="width: 152px">
                        <asp:Button ID="Button2" runat="server" BackColor="#00CC99" BorderColor="Black" BorderStyle="Solid" CssClass="auto-style4" Font-Bold="True" Height="32px" OnClick="Button2_Click" Text="Accepted" Width="137px" />
                    </td>
                    <td>
                        <asp:Label ID="Label2" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
            <div class="text-sm-center">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="ID" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" Height="0px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" ShowHeaderWhenEmpty="True" style="font-size: small; margin-top: 15px;" Width="1090px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField ButtonType="Button" HeaderText="Operations" ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True">
                        <HeaderStyle HorizontalAlign="Center" />
                        </asp:CommandField>
                        <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID">
                        <HeaderStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name">
                        <HeaderStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="CNIC" HeaderText="CNIC" SortExpression="CNIC" />
                        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                        <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                        <asp:BoundField DataField="FName" HeaderText="F Name" SortExpression="FName" />
                        <asp:BoundField DataField="FCNIC" HeaderText="F CNIC" SortExpression="FCNIC" />
                        <asp:BoundField DataField="Adress" HeaderText="Adress" SortExpression="Adress" />
                        <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                        <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                        <asp:BoundField DataField="FPhone" HeaderText="F Phone" SortExpression="FPhone" />
                        <asp:BoundField DataField="MMarks" HeaderText="Matric %" SortExpression="MMarks" />
                        <asp:BoundField DataField="IMarks" HeaderText="Inter %" SortExpression="IMarks" />
                        <asp:BoundField DataField="Degree" HeaderText="Degree" SortExpression="Degree" />
                        <asp:ImageField DataImageUrlField="Pic" HeaderText="Image">
                            <ControlStyle Height="50px" Width="70px" />
                        </asp:ImageField>
                    </Columns>
                    <FooterStyle BackColor="#CCCC99" />
                    <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                    <RowStyle BackColor="#F7F7DE" />
                    <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" Font-Size="XX-Small" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#FBFBF2" />
                    <SortedAscendingHeaderStyle BackColor="#848384" />
                    <SortedDescendingCellStyle BackColor="#EAEAD3" />
                    <SortedDescendingHeaderStyle BackColor="#575357" />
                </asp:GridView>
            </div>
        </asp:Panel>
        <p>

        </p>
        <p>

            &nbsp;</p>
        <p>

&nbsp;&nbsp;
        &nbsp;</p>


            <div class="text-sm-center">
                <br />
            </div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DbProjectConnectionString %>" DeleteCommand="DELETE FROM [Data_Enter_by_Candidate] WHERE [ID] = @ID" InsertCommand="INSERT INTO [Data_Enter_by_Candidate] ([Name], [CNIC], [Email], [Gender], [FName], [FCNIC], [Adress], [City], [Phone], [FPhone], [MMarks], [IMarks], [Degree], [Pic]) VALUES (@Name, @CNIC, @Email, @Gender, @FName, @FCNIC, @Adress, @City, @Phone, @FPhone, @MMarks, @IMarks, @Degree, @Pic)" SelectCommand="SELECT * FROM [Data_Enter_by_Candidate] WHERE ([Degree] = @Degree)" UpdateCommand="UPDATE [Data_Enter_by_Candidate] SET [Name] = @Name, [CNIC] = @CNIC, [Email] = @Email, [Gender] = @Gender, [FName] = @FName, [FCNIC] = @FCNIC, [Adress] = @Adress, [City] = @City, [Phone] = @Phone, [FPhone] = @FPhone, [MMarks] = @MMarks, [IMarks] = @IMarks, [Degree] = @Degree, [Pic] = @Pic WHERE [ID] = @ID">
                <DeleteParameters>
                    <asp:Parameter Name="ID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="CNIC" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="Gender" Type="String" />
                    <asp:Parameter Name="FName" Type="String" />
                    <asp:Parameter Name="FCNIC" Type="String" />
                    <asp:Parameter Name="Adress" Type="String" />
                    <asp:Parameter Name="City" Type="String" />
                    <asp:Parameter Name="Phone" Type="String" />
                    <asp:Parameter Name="FPhone" Type="String" />
                    <asp:Parameter Name="MMarks" Type="String" />
                    <asp:Parameter Name="IMarks" Type="String" />
                    <asp:Parameter Name="Degree" Type="String" />
                    <asp:Parameter Name="Pic" Type="String" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="Degree" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="CNIC" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="Gender" Type="String" />
                    <asp:Parameter Name="FName" Type="String" />
                    <asp:Parameter Name="FCNIC" Type="String" />
                    <asp:Parameter Name="Adress" Type="String" />
                    <asp:Parameter Name="City" Type="String" />
                    <asp:Parameter Name="Phone" Type="String" />
                    <asp:Parameter Name="FPhone" Type="String" />
                    <asp:Parameter Name="MMarks" Type="String" />
                    <asp:Parameter Name="IMarks" Type="String" />
                    <asp:Parameter Name="Degree" Type="String" />
                    <asp:Parameter Name="Pic" Type="String" />
                    <asp:Parameter Name="ID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:Panel ID="Panel1" runat="server" Visible="False">
                <asp:TextBox ID="TextBox1" runat="server" Width="216px"></asp:TextBox>
                <br />
                <asp:TextBox ID="TextBox2" runat="server" Width="218px">Confirmation Message</asp:TextBox>
                <br />
                <asp:TextBox ID="TextBox3" runat="server" Width="216px">Ops !!
You Are Rejected .
 Best of Luck For Next Time !!
</asp:TextBox>
                <br />
                <br />
                <br />
                <br />
                <br />
            </asp:Panel>
    </form>
</asp:Content>
