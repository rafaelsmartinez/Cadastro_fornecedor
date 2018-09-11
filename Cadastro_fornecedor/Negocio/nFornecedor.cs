using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

namespace Cadastro_fornecedor.Negocio
{
    public class nFornecedor : Entidade.eFornecedor
    {
        public void salvar()
        {
            string query = "INSERT INTO fornecedor(Nome_Forn, CNPJ) VALUES (";
            query = query + "'" + nome_forn + "','" + cnpj + "'); ";

            Util.Conexao.modificarTabela(query);
        }

        public DataTable consultar()
        {
            //string query = "SELECT Nome, Cpf AS CPF, Data_Nasc AS 'Data de Nascimento', Email AS 'E-mail' FROM pessoa";
            string query = "SELECT * FROM fornecedor";
            DataTable dados = new DataTable();
            dados = Util.Conexao.carregarTabela(query);

            return dados;

        }

        public void excluir()
        {
            string query = "DELETE FROM fornecedor WHERE idfornecedor = " + idfornecedor;

            Util.Conexao.carregarTabela(query);
        }
    }
}