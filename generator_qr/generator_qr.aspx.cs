using iTextSharp.text;
using iTextSharp.text.pdf;
using System;
using System.IO;
using System.Web.UI.WebControls;
using Image = iTextSharp.text.Image;

namespace generator_qr
{
    public partial class generator_qr : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ViewState["key"] = 4;
            }
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            TextBox text = new TextBox();
            text.ID = "text";
            text.Attributes.Add("runat", "server");
            text.Attributes.Add("placeholder", "Ingresar nombre");
            text.Attributes.Add("class", "from-control");            
            form1.Controls.Add(text);            
        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {
            Document doc = new Document(PageSize.A4);
            PdfWriter.GetInstance(doc, new FileStream(@"C:\prueba.pdf", FileMode.Create));

            doc.Open();

            BarcodeQRCode barcodeQRCode = new BarcodeQRCode("https://www.google.com", 1000, 1000, null);
            Image codeQRImage = barcodeQRCode.GetImage();
            codeQRImage.ScaleAbsolute(200, 200);
            doc.Add(codeQRImage);

            doc.Close();
        }
    }
}