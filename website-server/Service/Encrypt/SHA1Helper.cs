using System;
using System.Collections.Generic;
using System.Text;
using System.Security.Cryptography;

namespace Encrypt
{
    public class SHA1Helper
    {
        /// <summary>
        /// SHA1 加密，返回大写字符串
        /// </summary>
        /// <param name="content">需要加密字符串</param>
        /// <returns>返回40位UTF8 大写</returns>
        public static string SHA1Encode(string content)
        {
            return SHA1Encode(content, Encoding.UTF8);
        }
        /// <summary>
        /// SHA1 加密，返回大写字符串
        /// </summary>
        /// <param name="content">需要加密字符串</param>
        /// <param name="encode">指定加密编码</param>
        /// <returns>返回40位大写字符串</returns>
        public static string SHA1Encode(string content, Encoding encode)
        {
            try
            {
                byte[] bytes_in = encode.GetBytes(content);
                SHA1 sha1 = SHA1.Create();
                byte[] bytes_out = sha1.ComputeHash(bytes_in);
                sha1.Dispose();
                string result = BitConverter.ToString(bytes_out);
                result = result.Replace("-", "");
                result = result.ToLower();
                return result;
            }
            catch (Exception ex)
            {
                throw new Exception("SHA1加密出错：" + ex.Message);
            }
        }
    }
}
