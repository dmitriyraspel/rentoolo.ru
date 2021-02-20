﻿using System.Collections.Generic;
using System.Linq;

namespace Rentoolo.Model
{
    public static class DataHelperIlya
    {
        public static List<NewsIlya> GetActiveNews()
        {
            using (var ctx = new RentooloEntities())
            {
                var list = ctx.NewsIlya.Where(x => x.Active).OrderByDescending(x => x.Date).ToList();

                return list;
            }
        }
    }
}