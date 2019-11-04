using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Encrypt;
using Microsoft.AspNetCore.Mvc;
using Model.Server.Args;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace Server.Controllers
{
    [Route("api/[controller]")]
    public class WxController : Controller
    {

        // GET: api/Wx/verify_token
        [HttpGet("verify_token")]
        public string VerifyToken(string signature, string timestamp, string nonce, string echostr)
        {
            string encode = SHA1Helper.SHA1Encode("2b496fe26972bef1b9fd402f06b617d5" + timestamp + nonce, System.Text.Encoding.UTF8);
            if (encode == signature)
                return echostr;
            else
                return "";
        }

        // POST: api/Wx/verify_token
        [HttpPost("verify_token")]
        public string VerifyToken(WxRequest request)
        {
            return "";
        }
    }
}
