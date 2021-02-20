﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CreateTender.aspx.cs" Inherits="Rentoolo.Account.TenderViews.CreateTender" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div>

        <%--<asp:TextBox ID="TextBoxTName" runat="server" ToolTip="название тендера"></asp:TextBox>
        <asp:TextBox ID="TextBoxTDescription" runat="server" ToolTip="описание" ></asp:TextBox>
        <asp:TextBox ID="TextBoxTCost" runat="server" ToolTip="стоимость" ></asp:TextBox>--%>

        <div>
            Создать тендер:<br />
            <input name="tenderName" type="text" placeholder="название тендера" value="<%=CurrentTender.Name %>" />
            <input name="tenderCost" type="number" placeholder="стартовая цена" value="<%=CurrentTender.Cost %>" />
            <input name="tenderDescription" type="text" placeholder="описание" value="<%=CurrentTender.Description %>" />
            <br />
            <asp:Button ID="ButtonAddRequest" runat="server" Text="Создать/редактировать тендер" OnClick="ButtonAddTender_Click" />
        </div>



    </div>

</asp:Content>
