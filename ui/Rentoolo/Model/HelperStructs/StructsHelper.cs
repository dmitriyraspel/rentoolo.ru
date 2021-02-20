﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Rentoolo.Model.HelperStructs
{

    public enum ComplaintType
    {
        Insult = 1,
        Spam
    }


    public enum ComplaintObjType
    {
        Advert = 1,
        Tender,
        Auction
    }

    public static class StructsHelper
    {


        public static class HelperWithEnums
        {
            public static Dictionary<ComplaintType, string> complaintTypeName = new Dictionary<ComplaintType, string>()
        {
            {ComplaintType.Insult, "insult" },
            {ComplaintType.Spam, "spam" }
        };


            public static Dictionary<ComplaintObjType, string> complaintObjTypeName = new Dictionary<ComplaintObjType, string>()
        {
            {ComplaintObjType.Advert, "Advert" },
            {ComplaintObjType.Auction, "Auction" },
            {ComplaintObjType.Tender, "Tender" }
        };
        }


        public static Dictionary<int, string> ComplaintTypePageName = new Dictionary<int, string>()
        {
            {1, "Advert" },
            {2, "Account/AuctionInfo" },
            {3, "Tender" }
        };



        public static Dictionary<int, string> ComplaintTypeName = new Dictionary<int, string>()
        {
            {1, "insult" },
            {2, "spam" }
        };


        public static Dictionary<int, string> ComplaintObjTypeName = new Dictionary<int, string>()
        {
            {1, "Advert" },
            {2, "Auction" },
            {3, "Tender" }
        };


        public static Dictionary<string, int> ComplaintTypeNameStr = new Dictionary<string, int>()
        {
            { "insult",1 },
            { "spam",2 }
        };


        public static Dictionary<string, int> ComplaintObjTypeNameStr = new Dictionary<string, int>()
        {
            { "Advert",1 },
            { "Auction",2 },
            { "Tender",3 }
        };



        public static Dictionary<string, byte> ComplaintStatus = new Dictionary<string, byte>()
        {
            {"in progress", 0 },
            {"block advert", 1 },
            {"reject complaint", 2 }
        };

        // some Tables have field Type which is assigned to some site section
        //and this struct is made to help get value of Type field 

        // in table UserViews field Type
        public static Dictionary<string, int> ViewedType = new Dictionary<string, int>
        {
            { "product", 1 },
            { "vacancy", 22 },
            { "tender", 2 },
            { "auction", 3 }
        };



        // page name(url) by it category
        public static Dictionary<int, string> TypePage = new Dictionary<int, string>
        {
            { 1, "/Advert.aspx" },
            { 2, "/Tender.aspx" },
            { 3, "/Account/AuctionInfo.aspx" }
        };


        public enum ViewKeys
        {
            Product = 0,
            Vacancy
        }

        public static ViewKeys ViewKeyWords = new ViewKeys();



    }
}