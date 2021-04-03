using Dapper;
using MySql.Data.MySqlClient;
using SideLine.Models.Entity;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;

namespace SideLine.Helpers
{
    public class DatabaseHelper
    {
        private static string _connectionString;

        public static void InitConnectionString()
        {
            _connectionString = ConfigurationManager.ConnectionStrings["Sideline"].ConnectionString;
        }

        public static bool ExistUtenteByEmail(string email)
        {
            using (var connection = new MySqlConnection(_connectionString))
            {
                var sql = "SELECT id FROM utenti WHERE email=@email and password <>'' ";
                var id = connection.Query<int>(sql, new { email }).FirstOrDefault();
                return id > 0;
            }

        }

        public static int InsertUtente(Utenti utenti)
        {
            var id = 0;
            try
            {
                using (var connection = new MySqlConnection(_connectionString))
                {
                    var sql = "INSERT INTO utenti(nome, cognome, email, password, sesso, privacy) " +
                    "VALUES(@nome,@cognome,@email,@password,@sesso,1); "+"SELECT LAST_INSERT_ID();";
                    id = connection.Query<int>(sql, utenti).First();
                }
            }
            catch (Exception ex)
            {

            }
            return id;
        }

        public static bool UpdatePassword(int id, string password)
        {
            try
            {
                using (var connection = new MySqlConnection(_connectionString))
                {
                    var sql = "UPDATE Utenti SET password=@password WHERE id=@id AND password<>'';";
                    connection.Query(sql, new { id, password });
                }
            }
            catch (Exception ex)
            {
                return false;
            }
            return true;
        }
        public static Utenti GetUtenteByEmail(string email)
        {
            using (var connection = new MySqlConnection(_connectionString))
            {
                var sql = "SELECT * FROM utenti WHERE email=@email and password<>'' ";
                return connection.Query<Utenti>(sql, new { email }).FirstOrDefault();
            }

        }
        public static bool UpdateNome(int id, string nome)
        {
            try
            {
                using (var connection = new MySqlConnection(_connectionString))
                {
                    var sql = "UPDATE Utenti SET nome=@nome WHERE id=@id AND password<>'';";
                    connection.Query(sql, new { id, nome });
                }
            }
            catch (Exception ex)
            {
                return false;
            }
            return true;
        }
    }
}