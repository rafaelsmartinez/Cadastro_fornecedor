using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

namespace Cadastro_fornecedor.Negocio
{
    public class nProduto : Entidade.eProduto
    {
        public void salvar()
        {
            string query = "INSERT INTO produto(Nome_Prod) VALUES (";
            query = query + "'" + nome_prod + "'); ";

            Util.Conexao.modificarTabela(query);
        }

        public DataTable consultar()
        {
            //string query = "SELECT Nome, Cpf AS CPF, Data_Nasc AS 'Data de Nascimento', Email AS 'E-mail' FROM pessoa";
            string query = "SELECT * FROM produto";
            DataTable dados = new DataTable();
            dados = Util.Conexao.carregarTabela(query);

            return dados;

        }

        public void excluir()
        {
            string query = "DELETE FROM produto WHERE idproduto = " + idproduto;

            Util.Conexao.carregarTabela(query);
        }
    }
}