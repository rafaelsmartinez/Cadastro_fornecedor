using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cadastro_fornecedor
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_enviar_Click(object sender, EventArgs e)
        {
            Negocio.nFornecedor negocio = new Negocio.nFornecedor();

            negocio.nome_forn = in_nome_forn.Value;
            negocio.cnpj = in_cnpj.Value;

            Negocio.nProduto negocio2 = new Negocio.nProduto();

            negocio2.nome_prod = in_nome_prod.Value;

            negocio.salvar();
            negocio2.salvar();
        }
    }
}