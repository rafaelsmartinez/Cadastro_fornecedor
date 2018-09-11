using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;
using System.Data;

namespace Cadastro_fornecedor.Util
{
    public class Conexao
    {
        private static string stringconexao = "SERVER=localhost;DATABASE=sys;UID=root;PASSWORD=tor123;SslMode=none;";

        private static MySqlConnection conexao = new MySqlConnection(stringconexao);

        private static void abrirConexao()
        {
            conexao.Open();
        }
        private static void fecharConexao()
        {
            conexao.Close();
        }

        public static void modificarTabela(string query)
        {
            abrirConexao();

            MySqlCommand comando = new MySqlCommand(query, conexao);

            comando.ExecuteNonQuery();

            fecharConexao();
        }

        public static DataTable carregarTabela(string query)
        {
            abrirConexao();

            MySqlCommand comando = new MySqlCommand(query, conexao);
            MySqlDataReader dataReader = comando.ExecuteReader();
            DataTable resultado = new DataTable();
            resultado.Load(dataReader);

            fecharConexao();

            return resultado;
        }
    }
}