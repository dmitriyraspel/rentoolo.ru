﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ExchangeItemRequest.aspx.cs" Inherits="Rentoolo.Account.ExchangeItemRequest" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div>



        
    <div class="advert">

        <div>
            <h5>
                <a href="/Advert.aspx?id=<%= ExchangeAdvert.Id %>">
                    Navigate to Advert Page
                </a>
            </h5>
        </div>

        <div class="media-body-inline-grid" data-grid="images">
            <div class="photoContainer" data='<%= ExchangeAdvert.ImgUrls%>'></div>
        </div>
        <div class="additem-category">
        </div>
        <div class="additem-category">
            <div class="additem-left">
                <span>Категория</span>
            </div>
            <div class="additem-right additem__way" cid="1001">
                <a href="#" id="category">Category</a>
                <input type="hidden" id="category_hidden" value="1001" runat="server" />
            </div>
        </div>
        <div class="additem-category">
            <div class="additem-left">
                <span class="additem-title">Название объявления</span>
            </div>
            <div class="additem-right">
                <%=ExchangeAdvert.Name %>
            </div>
        </div>

        <div class="additem-category additem-text__wrap">
            <div class="additem-left">
                <span class="additem-title">Описание объявления</span>
            </div>
            <div class="additem-right advert-description">
                <%=ExchangeAdvert.Description %>
            </div>
        </div>

        <div class="additem-category">
            <div class="additem-left">
                <span class="additem-title">Цена</span>
            </div>
            <div class="additem-right">
                <%=ExchangeAdvert.Price %>
                <span class="price__value">₽</span>
            </div>

        </div>

        <div class="additem-category">
            <div class="additem-left">
                <span class="additem-title">Видео с Youtube</span>
            </div>
            <div class="additem-right additem__video">
                <%=ExchangeAdvert.YouTubeUrl %>
            </div>
        </div>
        <div class="additem-category">
            <div class="additem-left additem-contact">
                Контактная информация
            </div>

        </div>




        <div class="additem-category">
            <div class="additem-left ">
            </div>
            <div class="additem-right additem-map">
                <div class="additem-map">
                    <div id="map"></div>
                    <script>
                        // Initialize and add the map
                        function initMap() {
                            // The location of Uluru
                            var uluru = { lat: 55.751244, lng: 37.618423 };
                            // The map, centered at Uluru
                            var map = new google.maps.Map(
                                document.getElementById('map'), { zoom: 16, center: uluru });
                            // The marker, positioned at Uluru
                            var marker = new google.maps.Marker({ position: uluru, map: map });
                        }
                    </script>
                    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAEM6pBamtfcOxQiIHbO9HY76xvNiUxgIo&callback=initMap" async defer></script>
                </div>
            </div>
        </div>
        <div class="additem-category">
            <div class="additem-left">
                <span class="additem-title">Телефон</span>
            </div>
            <div class="additem-right additem-phone">
                <%=ExchangeAdvert.Phone %>
            </div>
        </div>

    </div>



    <hr /><hr /><hr />

    
    <div class="advert">

        <div>
            <h5>
                <a href="/Advert.aspx?id=<%= WantedAdvert.Id %>">
                    Navigate to Advert Page
                </a>
            </h5>
        </div>

        <div class="media-body-inline-grid" data-grid="images">
            <div class="photoContainer" data='<%=WantedAdvert.ImgUrls%>'></div>
        </div>
        <div class="additem-category">
        </div>
        <div class="additem-category">
            <div class="additem-left">
                <span>Категория</span>
            </div>
            <div class="additem-right additem__way" cid="1001">
                <a href="#" id="category">Category</a>
                <input type="hidden" id="Hidden1" value="1001" runat="server" />
            </div>
        </div>
        <div class="additem-category">
            <div class="additem-left">
                <span class="additem-title">Название объявления</span>
            </div>
            <div class="additem-right">
                <%=WantedAdvert.Name %>
            </div>
        </div>

        <div class="additem-category additem-text__wrap">
            <div class="additem-left">
                <span class="additem-title">Описание объявления</span>
            </div>
            <div class="additem-right advert-description">
                <%=WantedAdvert.Description %>
            </div>
        </div>

        <div class="additem-category">
            <div class="additem-left">
                <span class="additem-title">Цена</span>
            </div>
            <div class="additem-right">
                <%=WantedAdvert.Price %>
                <span class="price__value">₽</span>
            </div>

        </div>

        <div class="additem-category">
            <div class="additem-left">
                <span class="additem-title">Видео с Youtube</span>
            </div>
            <div class="additem-right additem__video">
                <%=WantedAdvert.YouTubeUrl %>
            </div>
        </div>
        <div class="additem-category">
            <div class="additem-left additem-contact">
                Контактная информация
            </div>

        </div>




        <div class="additem-category">
            <div class="additem-left ">
            </div>
            <div class="additem-right additem-map">
                <div class="additem-map">
                    <div id="map"></div>
                    <script>
                        // Initialize and add the map
                        function initMap() {
                            // The location of Uluru
                            var uluru = { lat: 55.751244, lng: 37.618423 };
                            // The map, centered at Uluru
                            var map = new google.maps.Map(
                                document.getElementById('map'), { zoom: 16, center: uluru });
                            // The marker, positioned at Uluru
                            var marker = new google.maps.Marker({ position: uluru, map: map });
                        }
                    </script>
                    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAEM6pBamtfcOxQiIHbO9HY76xvNiUxgIo&callback=initMap" async defer></script>
                </div>
            </div>
        </div>
        <div class="additem-category">
            <div class="additem-left">
                <span class="additem-title">Телефон</span>
            </div>
            <div class="additem-right additem-phone">
                <%=WantedAdvert.Phone %>
            </div>
        </div>

    </div>


        <hr /><hr /><hr /><hr /><hr /><hr />
        
        <asp:Button ID="ButtonAcceptRequest" runat="server" Text="Select Request to Exchange" OnClick="ButtonAcceptRequest_Click" />


    </div>
</asp:Content>
