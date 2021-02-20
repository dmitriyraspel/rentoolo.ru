﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Threading.Tasks;
using System.Web.Http;
using System.Web;
using Rentoolo.Model;
using System.Drawing;

namespace Rentoolo
{
    public class UpiController : ApiController
    {
        // GET api/<controller>
        public IEnumerable<string> Get()
        {
            return new string[] { "value1", "value2" };
        }

        public async Task<HttpResponseMessage> Post()
        {
            try
            {
                var httpRequest = HttpContext.Current.Request;

                foreach (string file in httpRequest.Files)
                {
                    HttpResponseMessage response = Request.CreateResponse(HttpStatusCode.Created);

                    var postedFile = httpRequest.Files[file];

                    var ext = postedFile.FileName.Substring(postedFile.FileName.LastIndexOf('.'));
                    string base64Guid = Convert.ToBase64String(Guid.NewGuid().ToByteArray());
                    base64Guid = base64Guid.Substring(0, base64Guid.Length - 2).Replace("_", "").Replace("/", "").Replace("-", "").Replace("+", "");
                    string filePath = HttpContext.Current.Server.MapPath("~/img/a/" + base64Guid + ext);

                    string fileUrl = string.Format("/img/a/{0}{1}", base64Guid, ext);

                    if (postedFile != null && postedFile.ContentLength > 0)
                    {
                        int MaxContentLength = 1024 * 1024 * 4; //Size = 4 MB

                        IList<string> AllowedFileExtensions = new List<string> { ".jpg", ".jpeg", ".gif", ".png" };

                        var extension = ext.ToLower();
                        if (!AllowedFileExtensions.Contains(extension))
                        {
                            return Request.CreateResponse(HttpStatusCode.BadRequest, string.Format("Please Upload image of type .jpg,.gif,.png."));
                        }
                        else if (postedFile.ContentLength > MaxContentLength)
                        {
                            return Request.CreateResponse(HttpStatusCode.BadRequest, string.Format("Please Upload a file upto 1 mb."));
                        }
                        else
                        {
                            Image image = Image.FromStream(postedFile.InputStream);
                            if(image.Width < 100 || image.Height < 100)
                            {
                                return Request.CreateResponse(HttpStatusCode.BadRequest, string.Format("Please Upload image with a minimum resolution of 100x100px"));
                            }
                            //if needed write the code to update the table

                            //Userimage myfolder name where i want to save my image
                            postedFile.SaveAs(filePath);
                        }
                    }

                    return Request.CreateResponse(HttpStatusCode.Created, fileUrl);
                }
                return Request.CreateResponse(HttpStatusCode.NotFound, string.Format("Please Upload a image."));
            }
            catch (Exception ex)
            {
                return Request.CreateResponse(HttpStatusCode.NotFound, string.Format("some Message"));
            }
        }

        // PUT api/<controller>/5
        public void Put(int id, [FromBody]string value)
        {
            int ttt = 10;
        }

        // DELETE api/<controller>/5
        public void Delete(int id)
        {
            int ttt = 10;
        }
    }
}