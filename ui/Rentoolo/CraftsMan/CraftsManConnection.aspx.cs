﻿using Rentoolo.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Rentoolo.CraftsMan
{
    public partial class CraftsManConnection : System.Web.UI.Page
    {
        public Rentoolo.Model.CraftsManOrder order;
        public Rentoolo.Model.CraftsMan craftsMan;

        protected void Page_Load(object sender, EventArgs e)
        {
            string strId = Request.QueryString["Id"];
            int id = Convert.ToInt32(strId);

            order = CraftsManDataHelper.GetCraftsManOrderById(id);

            craftsMan = CraftsManDataHelper.GetCraftsManById(id);
        }
    }
}