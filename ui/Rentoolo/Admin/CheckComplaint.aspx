﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CheckComplaint.aspx.cs" Inherits="Rentoolo.Admin.CheckComplaint" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div>

        <h4>
            <a href="<%= NavLink %>">
                перейти к обьявлению для проверки
            </a>
        </h4>
        <div>
            <div><%=Complaint.Id%></div>
            <div><%=Complaint.Message%></div>
            <div><%=Complaint.Data%></div>
            <div><%=Complaint.ObjectId%></div>
            <div><%=Complaint.ObjectType%></div>
        </div>
        <input type="text" list="complaintTypes" name="status" />
        <datalist id="complaintTypes">
            <%--see values in StructsHelper ComplaintStatus struct--%>
            <option>block advert</option>
            <option>reject complaint</option>
        </datalist>
        <asp:Button ID="ButtonChangeStatus" runat="server" Text="set status" OnClick="ButtonChangeStatus_Click" />


    </div>
</asp:Content>
