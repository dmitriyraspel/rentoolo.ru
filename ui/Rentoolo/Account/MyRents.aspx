﻿<%@ Page Title="Мои аренды" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MyRents.aspx.cs" Inherits="Rentoolo.Account.MyRents" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <script src="/assets/js/jquery-2.2.4.js"></script>
    <link href="/assets/css/jQuery.Brazzers-Carousel.css" rel="stylesheet">
    <script src="/assets/js/jQuery.Brazzers-Carousel.js"></script>

    <script>
        $(document).ready(function () {
            $(".photoContainer").each(function (index) {
                var htmlString = '';
                var imgUrls = $(this).attr("data");
                JSON.parse(imgUrls,
                    function (k, v) {
                        if (k != "") {
                            htmlString += "<img src='" + v + "' style='height: 120px; width: 170px;' class='advert-img' alt='' />";
                        }
                    });

                $(this).html(htmlString);
            });

            $(".photoContainer").brazzersCarousel();

        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <ul class="list-group media-list media-list-stream mb-4">
        <li class="media list-group-item p-4">
            <div class="media-body">
                <div class="media-heading">
                    <small class="float-right text-muted"><%=ListItems.Count %> rents</small>
                    <h6>Мои аренды:</h6>
                </div>
                <div class="media-body-inline-grid">
                    <%foreach (var item in ListItems)
                      { %>
                          <div class="list-item-wrap" style="display: none">
                              <a href="/Rent.aspx?id=<%=item.Id%>" title="<%=item.Title%>">
                                  <div class="photoContainer" data='<%=item.ImgUrls%>'></div>
                              </a>
                              
                              <div class="item-wrap-content">
                                  <div class="item-wrap-cost"><%=item.DayRentPrice%> ₽<%--<%=item.CurrencyAcronim%>--%></div>
                                  <div class="item-wrap__description">
                                      <div class="item-wrap__data"><%=item.Created.ToString("dd.MM.yyyy HH:mm")%></div>
                                  </div>
                              </div>
                          </div>
                    <%} %>
                </div>
            </div>
        </li>
    </ul>
</asp:Content>