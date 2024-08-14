using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Dapper;
using System.Data;
using MySql;
using MySql.Data.MySqlClient;
using log4net;

namespace LogParserAndTransfer.DB
{
    public class AWSDB
    {
        
        private static readonly string Config = "server=aws41sztedb01.corp.logitech.com;port=3306;database=product_eis;uid=root;pwd=logitech;Pooling=false";
        private static readonly MySqlConnection Conn = new MySqlConnection(Config);
        private static readonly ILog m_log = LogManager.GetLogger("log");

        

        public static AccountPassword SelectAccount(string accountStr)
        {
            AccountPassword account = null;
            IDbTransaction trans = null;

            try
            {
                if (Conn.State != ConnectionState.Open)
                    Conn.Open();
                trans = Conn.BeginTransaction();
                if (trans == null)
                    return null;

                string query1 = "SELECT * FROM product_eis.account_password where Account='{0}';";
                string query = String.Format(query1, accountStr);
                account = Conn.Query<AccountPassword>(query).SingleOrDefault();
                trans.Commit();
            }
            catch (Exception e)
            {
                string mess = e.ToString();
                m_log.Error(mess);
                trans.Rollback();
            }
            finally
            {
                Close();
            }
            return account;
        }

        public static List<ProductWarnningSpec> SelectAllProductsSpec()
        {
            List<ProductWarnningSpec> list = null;
            IDbTransaction trans = null;
            try
            {
                if (Conn.State != ConnectionState.Open)
                    Conn.Open();
                trans = Conn.BeginTransaction();
                if (trans == null)
                    return null;

                string query = "SELECT * FROM product_eis.product_warnning_spec";
                list = Conn.Query<ProductWarnningSpec>(query).AsList();
                trans.Commit();
            }
            catch (Exception e)
            {
                string mess = e.ToString();
                m_log.Error(mess);
                trans.Rollback();
            }
            finally
            {
                Close();
            }

            return list;
        }

        public static List<ProductWarnningSpec> SelectProductsSpecForAllStations(string product)
        {
            List<ProductWarnningSpec> list = null;
            IDbTransaction trans = null;
            try
            {
                if (Conn.State != ConnectionState.Open)
                    Conn.Open();
                trans = Conn.BeginTransaction();
                if (trans == null)
                    return null;

                string query = string.Format("SELECT * FROM product_eis.product_warnning_spec where Product = '{0}'", product);
                list = Conn.Query<ProductWarnningSpec>(query).AsList();
                trans.Commit();
            }
            catch (Exception e)
            {
                string mess = e.ToString();
                m_log.Error(mess);
                trans.Rollback();
            }
            finally
            {
                Close();
            }

            return list;
        }

        public static ProductWarnningSpec SelectProductStationSpec(string product,string station)
        {
            List<ProductWarnningSpec> list = null;
            IDbTransaction trans = null;
            try
            {
                if (Conn.State != ConnectionState.Open)
                    Conn.Open();
                trans = Conn.BeginTransaction();
                if (trans == null)
                    return null;

                string query = string.Format("SELECT * FROM product_eis.product_warnning_spec where Product = '{0}' and Station like '%{1}%' ", product, station);
                list = Conn.Query<ProductWarnningSpec>(query).AsList();
                trans.Commit();
            }
            catch (Exception e)
            {
                string mess = e.ToString();
                m_log.Error(mess);
                trans.Rollback();
            }
            finally
            {
                Close();
            }

            if (list.Count > 0)
                return list[0];
            else
                return null;
        }

        public static void UpdateProductsSpec(ProductWarnningSpec productSpec)
        {
            IDbTransaction trans = null;
            try
            {
                if (Conn.State != ConnectionState.Open)
                    Conn.Open();
                trans = Conn.BeginTransaction();
                if (trans == null)
                {
                    m_log.Error("Begin Transaction Failed.");
                    return;
                }
                    
                string sqlCommandText = @"UPDATE product_warnning_spec SET Product=@Product,Station=@Station,Spec_Percent=@Spec_Percent,
                last_updated_date=@last_updated_date where Product=@Product and Station=@Station";
                Conn.Execute(sqlCommandText, productSpec, trans, null, null);
                trans.Commit();
            }
            catch (Exception e)
            {
                string mess = e.ToString();
                m_log.Error(mess);
                trans.Rollback();
            }
            finally
            {
                Close();
            }
        }

        public static void UpdateProductsSpec(List<ProductWarnningSpec> productSpecList)
        {
            IDbTransaction trans = null;
            try
            {
                if (Conn.State != ConnectionState.Open)
                    Conn.Open();
                trans = Conn.BeginTransaction();
                if (trans == null)
                {
                    m_log.Error("Begin Transaction Failed.");
                    return;
                }
                string query = "SELECT * FROM product_eis.product_warnning_spec";
                List<ProductWarnningSpec> allInDB = Conn.Query<ProductWarnningSpec>(query).AsList();

                string sqlCommandText = @"UPDATE product_warnning_spec SET Product=@Product,Station=@Station,Spec_Percent=@Spec_Percent,
                last_updated_date=@last_updated_date where Product=@Product and Station=@Station";
                foreach(ProductWarnningSpec oneSpec in productSpecList)
                {
                    foreach (ProductWarnningSpec specInDB in allInDB)
                    {
                        if(oneSpec.Product==specInDB.Product && 
                            oneSpec.Station==specInDB.Station)
                        {
                            if(oneSpec.Spec_Percent != specInDB.Spec_Percent)
                                Conn.Execute(sqlCommandText, oneSpec, trans, null, null);
                            break;
                        }
                    }
                }
                trans.Commit();
            }
            catch (Exception e)
            {
                string mess = e.ToString();
                m_log.Error(mess);
            }
            finally
            {
                Close();
            }
        }

        public static void InsertProductsSpec(ProductWarnningSpec productSpec)
        {
            IDbTransaction trans = null;
            try
            {
                if (Conn.State != ConnectionState.Open)
                    Conn.Open();
                trans = Conn.BeginTransaction();
                if (trans == null)
                {
                    m_log.Error("Begin Transaction Failed.");
                    return;
                }

                string sqlCommandText = @"INSERT INTO product_warnning_spec(Product,Station,Spec_Percent,last_updated_date) VALUES(@Product,@Station,@Spec_Percent,@last_updated_date)";
                Conn.Execute(sqlCommandText, productSpec, trans, null, null);
                trans.Commit();
            }
            catch (Exception e)
            {
                string mess = e.ToString();
                m_log.Error(mess);
                trans.Rollback();
            }
            finally
            {
                Close();
            }
        }

        public static void InsertProductsSpec(List<ProductWarnningSpec> productSpecList)
        {
            IDbTransaction trans = null;
            try
            {
                if (Conn.State != ConnectionState.Open)
                    Conn.Open();
                trans = Conn.BeginTransaction();
                if (trans == null)
                {
                    m_log.Error("Begin Transaction Failed.");
                    return;
                }

                string sqlCommandText = @"INSERT INTO product_warnning_spec(Product,Station,Spec_Percent,last_updated_date) VALUES(@Product,@Station,@Spec_Percent,@last_updated_date)";
                
                foreach(ProductWarnningSpec spec in productSpecList)
                {
                    Conn.Execute(sqlCommandText, spec, trans, null, null);
                }
                trans.Commit();
            }
            catch (Exception e)
            {
                string mess = e.ToString();
                m_log.Error(mess);
                trans.Rollback();
            }
            finally
            {
                Close();
            }
        }

        public static void DelProductsSpec(string product,string station)
        {
            IDbTransaction trans = null;
            try
            {
                if (Conn.State != ConnectionState.Open)
                    Conn.Open();
                trans = Conn.BeginTransaction();
                if (trans == null)
                {
                    m_log.Error("Begin Transaction Failed.");
                    return;
                }

                string query = string.Format("delete FROM product_eis.product_warnning_spec where Product ='{0}' and Station='{1}'", product, station);
                Conn.Query<ProductWarnningSpec>(query).AsList();
                trans.Commit();
            }
            catch (Exception e)
            {
                string mess = e.ToString();
                m_log.Error(mess);
                trans.Rollback();
            }
            finally
            {
                Close();
            }
        }

        public static void Close()
        {
            if (Conn.State == ConnectionState.Open)
                Conn.Close();
        }
    }
}
