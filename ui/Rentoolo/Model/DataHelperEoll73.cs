﻿using System.Collections.Generic;
using System.Linq;

namespace Rentoolo.Model
{
    public static class DataHelperEoll73
    {
        public static List<NewsEoll73> GetActiveNews()
        {
            using (var ctx = new RentooloEntities())
            {
                var list = ctx.NewsEoll73.Where(x => x.Active).OrderByDescending(x => x.Date).ToList();

                return list;
            }
        }

        public static void AddNews(NewsEoll73 item)
        {
            using (var ctx = new RentooloEntities())
            {

                ctx.NewsEoll73.Add(item);

                try
                {
                    ctx.SaveChanges();
                }
                catch (System.Exception ex)
                {
                    DataHelper.AddException(ex);
                }
            }
        }
    }
}
