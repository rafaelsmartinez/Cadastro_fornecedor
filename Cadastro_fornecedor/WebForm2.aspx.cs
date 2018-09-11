using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Cadastro_fornecedor
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Negocio.nFornecedor fornecedor = new Negocio.nFornecedor();

            DataTable dt = new DataTable();
            dt = fornecedor.consultar();
            gv_fornecedor.DataSource = dt;
            gv_fornecedor.DataBind();
        }

        protected void gv_fornecedor_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "excluir")
            {
                Negocio.nFornecedor fornecedor = new Negocio.nFornecedor();
                fornecedor.idfornecedor = Convert.ToInt32(e.CommandArgument);
                fornecedor.excluir();

                Response.Redirect("WebForm2.aspx");
            }
        }

        protected void Btn_novo_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm1.aspx");
        }
    }
}