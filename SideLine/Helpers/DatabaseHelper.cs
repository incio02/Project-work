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
                var sql = "SELECT ID FROM utenti WHERE email=@email and password <>''";
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
                    "VALUES (@nome,@cognome,@email,@password,@sesso,1); "+"SELECT LAST_INSERT_ID()";
                    id = connection.Query<int>(sql, utenti).First();
                }
            }
            catch (Exception ex)
            {
                return 0;
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
        public static List<Classifica> GetClassifica(int fk_campionato)
        {
            var classifica=new List<Classifica>();
            using (var connection = new MySqlConnection(_connectionString))
            {
                var sql = "SELECT * FROM classifica WHERE fk_campionati=@fk_campionato ORDER BY Posizione_Classifica";
                classifica=connection.Query<Classifica>(sql, new { fk_campionato }).ToList();
            }
            return classifica;
        }
        public static List<Società_sportiva> GetSquadre(int fk_campionato)
        {
            var squadre = new List<Società_sportiva>();
            using (var connection = new MySqlConnection(_connectionString))
            {
                var sql = "SELECT * FROM Societa_Sportiva,classifica WHERE Classifica.fk_campionati=@fk_campionato and Classifica.FK_Societa_sportiva= Societa_sportiva.id ORDER BY posizione_classifica ";
                squadre = connection.Query<Società_sportiva>(sql, new { fk_campionato }).ToList();
            }
            return squadre;
        }
        public static Società_sportiva GetSquadra(int id)
        {
            var squadra=new Società_sportiva();
            using (var connection = new MySqlConnection(_connectionString))
            {
                var sql = "SELECT * FROM società sportiva WHERE id=@id ";
                squadra = connection.Query<Società_sportiva>(sql, new { id }).FirstOrDefault();
            }
            return squadra;
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
        public static Campionati GetCampionatoById(int id)
        {
            var campionato = new Campionati();
            using (var connection = new MySqlConnection(_connectionString))
            {
                var sql = "SELECT * FROM campionati WHERE id = @id";
                campionato = connection.Query<Campionati>(sql, new { id }).FirstOrDefault();
            }
            return campionato;
        }
    }
}