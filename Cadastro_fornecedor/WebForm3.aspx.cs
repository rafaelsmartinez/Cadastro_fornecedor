using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Cadastro_fornecedor
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Negocio.nProduto produto = new Negocio.nProduto();

            DataTable dt = new DataTable();
            dt = produto.consultar();
            gv_produto.DataSource = dt;
            gv_produto.DataBind();
        }

        protected void gv_produto_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "excluir")
            {
                Negocio.nProduto produto = new Negocio.nProduto();
                produto.idproduto = Convert.ToInt32(e.CommandArgument);
                produto.excluir();

                Response.Redirect("WebForm3.aspx");
            }
        }
    }
}