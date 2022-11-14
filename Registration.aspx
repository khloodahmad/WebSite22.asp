<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            color: #990000;
            font-size: xx-large;
        }
        .auto-style2 {
            width: 100%;
            border-left-style: solid;
            border-left-width: 4px;
            border-right: 4px solid #C0C0C0;
            border-top-style: solid;
            border-top-width: 4px;
            border-bottom: 4px solid #C0C0C0;
            background-color: #FFCC66;
        }
        .auto-style3 {
            width: 695px;
            text-align: right;
        }
        .auto-style9 {
            text-align: right;
        }
        .auto-style10 {
            font-size: large;
        }
        .auto-style11 {
            width: 695px;
            text-align: right;
            height: 49px;
        }
        .auto-style12 {
            height: 49px;
        }
        .auto-style13 {
            width: 695px;
            text-align: right;
            height: 37px;
        }
        .auto-style14 {
            height: 37px;
        }
        .auto-style15 {
            font-size: large;
            color: #000000;
        }
        .auto-style16 {
            width: 740px;
            height: 169px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
    </p>
    <img alt="" class="auto-style16" src="صور/blognew.png" /><div class="auto-style1">
        <div class="auto-style9">
            <strong style="background-color: #99CCFF">&nbsp;&nbsp; مستشفى اليمن السعيد&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; يرحب بكم<br />
        </div>
        <div>
            <table cellpadding="4" class="auto-style2" style="background-color: #9999FF; color: #3333CC">
                <tr>
                    <td class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" CssClass="auto-style15" ErrorMessage="يجب ادخال الاسم"></asp:RequiredFieldValidator>
&nbsp;<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                    <td>الاسم</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                    <td>العمر</td>
                </tr>
                <tr>
                    <td class="auto-style11">
                        <asp:TextBox ID="TextBox3" runat="server" Width="114px"></asp:TextBox>
                    </td>
                    <td class="auto-style12">الجنس</td>
                </tr>
                <tr>
                    <td class="auto-style13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style14">التلفون</td>
                </tr>
                <tr>
                    <td class="auto-style11">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox5" CssClass="auto-style15" ErrorMessage="يجب تعبئة الحقل"></asp:RequiredFieldValidator>
                        </strong>&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style12">العنوان</td>
                </tr>
            </table>
        </div>
        </strong>
    </div>
    <p style="background-color: #FFFF99">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="AccessDataSource1" EnableModelValidation="True" Width="439px" BackColor="#FFFF99" BorderColor="#CC3300" BorderWidth="3px">
            <Columns>
                <asp:BoundField DataField="الاسم" HeaderText="الاسم" SortExpression="الاسم" />
                <asp:BoundField DataField="العمر" HeaderText="العمر" SortExpression="العمر" />
                <asp:BoundField DataField="الجنس" HeaderText="الجنس" SortExpression="الجنس" />
                <asp:BoundField DataField="التلفون" HeaderText="التلفون" SortExpression="التلفون" />
                <asp:BoundField DataField="العنوان" HeaderText="العنوان" SortExpression="العنوان" />
            </Columns>
        </asp:GridView>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/patients.mdb" SelectCommand="SELECT * FROM [ppp]"></asp:AccessDataSource>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong><asp:Button ID="Button1" runat="server" CssClass="auto-style10" OnClick="Button1_Click" Text="حفظ البيانات" BackColor="#CCFFFF" />
        </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </p>
    </asp:Content>

