using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;

namespace CellsAtWork
{
    public class Controller
    {
        DBManager dbMan;

        public Controller()
        {
            dbMan = new DBManager();
        }


        public void TerminateConnection()
        {
            dbMan.CloseConnection();
        }

        public string GetPatientName(string id)
        {

            string PatientName = StoredProcedures.PatientName;
            Dictionary<string, object> paramaters = new Dictionary<string, object>();
            paramaters.Add("@ID", id);
            paramaters.Add("@name", null);
            return dbMan.ExecuteScalarString(PatientName, paramaters, 50);


        }
        public string CheckLogin(string credential, string type,string pass,string id)
        {

            string CheckLogin = StoredProcedures.CheckLogin;
            Dictionary<string, object> paramaters = new Dictionary<string, object>();
            paramaters.Add("@credential", credential);
            paramaters.Add("@PASSWORD", pass);
            paramaters.Add("@accountType", type);
            paramaters.Add("@returnID",id);
        return  dbMan.ExecuteScalarString(CheckLogin, paramaters, 14);
            

        }
        public string GetPatientEmail(string id)
        {

            string PatientEmail = StoredProcedures.PatientEmail;
            Dictionary<string, object> paramaters = new Dictionary<string, object>();
            paramaters.Add("@ID", id);
            paramaters.Add("@Email", null);
            return dbMan.ExecuteScalarString(PatientEmail, paramaters, 50);


        }

        public string GetPatientGender(string id)
        {

            string PatientGender = StoredProcedures.PatientGender;
            Dictionary<string, object> paramaters = new Dictionary<string, object>();
            paramaters.Add("@ID", id);
            paramaters.Add("@Gender", null);
            return dbMan.ExecuteScalarString(PatientGender, paramaters, 10);
        }

        public string GetPatientPhone(string id)
        {

            string PatientPhone = StoredProcedures.PatientPhone;
            Dictionary<string, object> paramaters = new Dictionary<string, object>();
            paramaters.Add("@ID", id);
            paramaters.Add("@Phone", null);
            return dbMan.ExecuteScalarString(PatientPhone, paramaters, 11);
        }

        public string GetPatientBirth(string id)
        {

            string PatientBirth = StoredProcedures.PatientBirth;
            Dictionary<string, object> paramaters = new Dictionary<string, object>();
            paramaters.Add("@ID", id);
            paramaters.Add("@Birth", null);
            return dbMan.ExecuteScalarString(PatientBirth, paramaters, 10);
        }

        public string GetPatientAddress(string id)
        {

            string PatientAddress = StoredProcedures.PatientAddress;
            Dictionary<string, object> paramaters = new Dictionary<string, object>();
            paramaters.Add("@ID", id);
            paramaters.Add("@Address", null);
            return dbMan.ExecuteScalarString(PatientAddress, paramaters, 300);
        }

        public string GetPatientBlood(string id)
        {

            string PatientBloodType = StoredProcedures.PatientBloodType;
            Dictionary<string, object> paramaters = new Dictionary<string, object>();
            paramaters.Add("@ID", id);
            paramaters.Add("@Blood", null);
            return dbMan.ExecuteScalarString(PatientBloodType, paramaters, 3);
        }

        public DataTable GetPatientDiagnosis(string id)
        {

            string PatientDiagnosis = StoredProcedures.PatientDiagnosis;
            Dictionary<string, object> paramaters = new Dictionary<string, object>();
            paramaters.Add("@ID", id);
            return dbMan.ExecuteReader(PatientDiagnosis, paramaters);
        }

        public DataTable GetPatientAppointments(string id)
        {

            string PatientAppointments = StoredProcedures.PatientAppointments;
            Dictionary<string, object> paramaters = new Dictionary<string, object>();
            paramaters.Add("@ID", id);
            return dbMan.ExecuteReader(PatientAppointments, paramaters);
        }

        public DataTable GetPatientAppointmentsAll(string id)
        {

            string PatientAppointmentsAll = StoredProcedures.PatientAppointmentsAll;
            Dictionary<string, object> paramaters = new Dictionary<string, object>();
            paramaters.Add("@ID", id);
            return dbMan.ExecuteReader(PatientAppointmentsAll, paramaters);
        }

        public DataTable GetSpecializationClinics(int Specialization, string drname, string address)
        {

            string SpecializationClinics = StoredProcedures.SpecializationClinics;
            Dictionary<string, object> paramaters = new Dictionary<string, object>();
            paramaters.Add("@Specialization", Specialization);
            if (drname != null)
            {
                paramaters.Add("@Drname", drname);
            }

            if (address != null)
            {
                paramaters.Add("@Address", address);
            }

            return dbMan.ExecuteReader(SpecializationClinics, paramaters);
        }
        public DataTable GetAllClinics(int Specialization, string drname, string address)
        {

            string Allclinics = StoredProcedures.Allclinics;
            Dictionary<string, object> paramaters = new Dictionary<string, object>();
            paramaters.Add("@Specialization", Specialization);
            if (drname != "")
            {
                paramaters.Add("@Drname", drname);
            }
            if (address != "")
            {
                paramaters.Add("@Address", address);
            }
            return dbMan.ExecuteReader(Allclinics, paramaters);
        }

        public DataTable GetHospitals(int Specialization, string Hname, string address)
        {

            string Hospitals = StoredProcedures.Hospitals;
            Dictionary<string, object> paramaters = new Dictionary<string, object>();

            if (Specialization != 0)
            {
                paramaters.Add("@Specialization", Specialization);
            }

            if (Hname != null)
            {
                paramaters.Add("@Hname", Hname);
            }

            if (address != null)
            {
                paramaters.Add("@Address", address);
            }

            return dbMan.ExecuteReader(Hospitals, paramaters);
        }

        public DataTable GetHospitalsPhones(string Hname, string address)
        {

            string Hospitalsphones = StoredProcedures.HospitalsPhones;
            Dictionary<string, object> paramaters = new Dictionary<string, object>();


            if (Hname != null)
            {
                paramaters.Add("@Hname", Hname);
            }

            if (address != null)
            {
                paramaters.Add("@Address", address);
            }

            return dbMan.ExecuteReader(Hospitalsphones, paramaters);
        }

        public void UpdatePatientAccount(string Email, string Password, string Username, string id)
        {
            String UpdatePatientEmail = StoredProcedures.UpdatePatientEmail;
            Dictionary<string, object> Parameters = new Dictionary<string, object>();
            Parameters.Add("@ID", id);
            if (Email != null)
            {
                Parameters.Add("@Email", Email);
            }

            dbMan.ExecuteNonQuery(UpdatePatientEmail, Parameters);
            String UpdatePatientPass = StoredProcedures.UpdatePatientPass;
            Dictionary<string, object> Parameters1 = new Dictionary<string, object>();
            Parameters1.Add("@ID", id);
            if (Password != null)
            {
                Parameters1.Add("@Pass", Password);
            }

            dbMan.ExecuteNonQuery(UpdatePatientPass, Parameters1);
            String UpdatePatientUsername = StoredProcedures.UpdatePatientUsername;
            Dictionary<string, object> Parameters2 = new Dictionary<string, object>();
            Parameters2.Add("@ID", id);
            if (Username != null)
            {
                Parameters2.Add("@Username", Username);
            }

            dbMan.ExecuteNonQuery(UpdatePatientUsername, Parameters2);
        }

        public DataTable getdepcodes()
        {
            String GetDepCodes = StoredProcedures.GetDepCodes;
            return dbMan.ExecuteReader(GetDepCodes, null);
        }

        public void UpdatePatientInfo(string Address, string phone, string Blood, string id)
        {
            String UpdatePatientaddress = StoredProcedures.UpdatePatientaddress;
            Dictionary<string, object> Parameters = new Dictionary<string, object>();
            Parameters.Add("@ID", id);
            if (Address != null)
            {
                Parameters.Add("@Address", Address);
            }

            dbMan.ExecuteNonQuery(UpdatePatientaddress, Parameters);
            String UpdatePatientPhone = StoredProcedures.UpdatePatientPhone;
            Dictionary<string, object> Parameters1 = new Dictionary<string, object>();
            Parameters1.Add("@ID", id);
            if (phone != null)
            {
                Parameters1.Add("@Phone", phone);
            }

            dbMan.ExecuteNonQuery(UpdatePatientPhone, Parameters1);
            String UpdatePatientBlood = StoredProcedures.UpdatePatientBlood;
            Dictionary<string, object> Parameters2 = new Dictionary<string, object>();
            Parameters2.Add("@ID", id);
            if (Blood != null)
            {
                Parameters2.Add("@Blood", Blood);
            }

            dbMan.ExecuteNonQuery(UpdatePatientBlood, Parameters2);
        }
        ///////////////Menna

        //reserrve
        public int getmaxapp(string drid)
        {
            String StoredProcedureName = StoredProcedures.GetMaxAppointment;
            Dictionary<string, object> Parameters = new Dictionary<string, object>();
            Parameters.Add("@drid", drid);
            return (int) dbMan.ExecuteScalar(StoredProcedureName, Parameters);
        }

        public int getcountapp(string drid, string date)
        {
            String StoredProcedureName = StoredProcedures.CountAppointment;
            Dictionary<string, object> Parameters = new Dictionary<string, object>();
            Parameters.Add("@drid", drid);
            Parameters.Add("@appdate", date);
            return (int) dbMan.ExecuteScalar(StoredProcedureName, Parameters);
        }

        public int makeapp(string drid, string pid, string date)
        {
            String StoredProcedureName = StoredProcedures.MakeAppointment;
            Dictionary<string, object> Parameters = new Dictionary<string, object>();
            Parameters.Add("@drid", drid);
            Parameters.Add("@pid", pid);
            Parameters.Add("@appdate", date);
            return dbMan.ExecuteNonQuery(StoredProcedureName, Parameters);
        }
        public int AddBloodBankAdmin(int hid,int A, int Acost, int B, int Bcost, int AB, int ABcost, int Ocost, int O, int AP, int APcost, int BP, int BPcost, int ABP, int ABPcost, int OP, int OPcost)
        {
            String AddBloodBank = StoredProcedures.AddBloodBank;
            Dictionary<string, object> Parameters = new Dictionary<string, object>();
            
            Parameters.Add("A",A);
            Parameters.Add("Acost",Acost);
            Parameters.Add("B",B);
            Parameters.Add("Bcost", Bcost);
            Parameters.Add("AB", AB);
            Parameters.Add("ABcost", ABcost);
            Parameters.Add("O", O);
            Parameters.Add("Ocost", Ocost);
            Parameters.Add("AP", AP);
            Parameters.Add("APcost", APcost);
            Parameters.Add("BP", BP);
            Parameters.Add("BPcost", BPcost);
            Parameters.Add("ABP", ABP);
            Parameters.Add("ABPcost", ABPcost);
            Parameters.Add("OP", OP);
            Parameters.Add("OPcost", OPcost);
            Parameters.Add("Hid", hid);
            return dbMan.ExecuteNonQuery(AddBloodBank, Parameters);
        }
        //bloodbank
        public DataTable ViewBloodBank(string wid)
        {
            String StoredProcedureName = StoredProcedures.ViewBloodBank;
            Dictionary<string, object> Parameters = new Dictionary<string, object>();
            Parameters.Add("@wid", wid);
            return dbMan.ExecuteReader(StoredProcedureName, Parameters);

        }

        public string CheckBloodAmount(string wid, string btype)
        {
            String StoredProcedureName = StoredProcedures.CheckBloodAmount;

            Dictionary<string, object> Parameters = new Dictionary<string, object>();
            Parameters.Add("@wid", wid);
            Parameters.Add("@btype", btype);
            DataTable d = dbMan.ExecuteReader(StoredProcedureName, Parameters);
            string tosend = d.Rows[0][0].ToString();
            return tosend;
        }

        public string CheckBloodType(string pid)
        {
            String StoredProcedureName = StoredProcedures.CheckBloodTypePAtient;

            Dictionary<string, object> Parameters = new Dictionary<string, object>();
            Parameters.Add("@pid", pid);

            DataTable d = dbMan.ExecuteReader(StoredProcedureName, Parameters);
            string tosend = d.Rows[0].Field<string>(0);
            return tosend;
        }

        public void BloodBankTransaction(string pid, string wid, int amount, string type)
        {
            String StoredProcedureName;
            if (type == "Donate")
            {
                StoredProcedureName = StoredProcedures.DonateBlood;
            }
            else
            {
                StoredProcedureName = StoredProcedures.TakeBlood;
            }

            Dictionary<string, object> Parameters = new Dictionary<string, object>();
            Parameters.Add("@pid", pid);
            Parameters.Add("@wid", wid);
            Parameters.Add("@amount", amount);
            dbMan.ExecuteNonQuery(StoredProcedureName, Parameters);
        }

        public DataTable GetPatient()
        {
            String StoredProcedureName = StoredProcedures.GetPatientID;
            Dictionary<string, object> Parameters = new Dictionary<string, object>();
            return dbMan.ExecuteReader(StoredProcedureName, Parameters);

        }

        public DataTable GetDoctor(string drid)
        {
            String StoredProcedureName = StoredProcedures.GetDoctor;
            Dictionary<string, object> Parameters = new Dictionary<string, object>();
            Parameters.Add("@drid", drid);
            return dbMan.ExecuteReader(StoredProcedureName, Parameters);

        }

        public int UpdateDrInfo(string email, string phone, string ldegree, string id)
        {
            String StoredProcedureName = StoredProcedures.updateDr;
            Dictionary<string, object> Parameters = new Dictionary<string, object>();
            Parameters.Add("@drid", id);
            Parameters.Add("@Ldegree", ldegree);
            Parameters.Add("@phnumber", phone);
            Parameters.Add("@email", email);
            return dbMan.ExecuteNonQuery(StoredProcedureName, Parameters);
        }

        public int adddiagnosis(string did, string pid, string cc, string ill, string prescription)
        {
            String StoredProcedureName = StoredProcedures.NewDiagnosis;
            Dictionary<string, object> Parameters = new Dictionary<string, object>();
            Parameters.Add("@drid", did);
            Parameters.Add("@pid ", pid);
            Parameters.Add("@complain", cc);
            Parameters.Add("@ill", ill);
            Parameters.Add("@prescribe", prescription);
            return dbMan.ExecuteNonQuery(StoredProcedureName, Parameters);
        }

        public int addallergy(string pid, string name, string type)
        {
            String StoredProcedureName = StoredProcedures.AddAllergy;
            Dictionary<string, object> Parameters = new Dictionary<string, object>();
            Parameters.Add("@pid ", pid);
            Parameters.Add("@type", type);
            Parameters.Add("@name", name);
            return dbMan.ExecuteNonQuery(StoredProcedureName, Parameters);
        }

        public DataTable getclinicphones(string id)
        {
            String StoredProcedureName = StoredProcedures.clinicphones;
            Dictionary<string, object> Parameters = new Dictionary<string, object>();
            Parameters.Add("@drid", id);
            return dbMan.ExecuteReader(StoredProcedureName, Parameters);
        }

        public DataTable getdocHospitals(string id)
        {
            String StoredProcedureName = StoredProcedures.Doctorhospital;
            Dictionary<string, object> Parameters = new Dictionary<string, object>();
            Parameters.Add("@drid", id);
            return dbMan.ExecuteReader(StoredProcedureName, Parameters);
        }

        public DataTable GetDoctorClinic(string id)
        {
            String StoredProcedureName = StoredProcedures.GetDoctorClinic;
            Dictionary<string, object> Parameters = new Dictionary<string, object>();
            Parameters.Add("@did", id);
            return dbMan.ExecuteReader(StoredProcedureName, Parameters);
        }

        public SqlDataReader DiagnosisReport(int Year)
        {
            String StoredProcedureName = StoredProcedures.YearlyDiagnosis;
            Dictionary<string, object> Parameters = new Dictionary<string, object>();
            Parameters.Add("@YearChosen", Year);
            return dbMan.ExecuteReaderChart(StoredProcedureName, Parameters);
        }

        public SqlDataReader MaleFemaleReport(string illness)
        {
            String StoredProcedureName = StoredProcedures.CountFemaleMale;
            Dictionary<string, object> Parameters = new Dictionary<string, object>();
            Parameters.Add("@IllnessDiagnosed", illness);
            return dbMan.ExecuteReaderChart(StoredProcedureName, Parameters);
        }

        public SqlDataReader DiagnosisPerCity(int Year, string city)
        {
            String StoredProcedureName = StoredProcedures.YearlyDiagnosisCity;
            Dictionary<string, object> Parameters = new Dictionary<string, object>();
            Parameters.Add("@YearChosen", Year);
            Parameters.Add("@city", city);
            return dbMan.ExecuteReaderChart(StoredProcedureName, Parameters);
        }

        public DataTable GetDiagnosisTbl()
        {
            String StoredProcedureName = StoredProcedures.Getillness;
            Dictionary<string, object> Parameters = new Dictionary<string, object>();
            return dbMan.ExecuteReader(StoredProcedureName, Parameters);
        }

        //
        public DataTable Appointments(string id)
        {
            String StoredProcedureName = StoredProcedures.GetAppointments;
            Dictionary<string, object> Parameters = new Dictionary<string, object>();
            Parameters.Add("@drid", id);
            return dbMan.ExecuteReader(StoredProcedureName, Parameters);
        }

        public DataTable GeneralPatientInfo(string id)
        {
            String StoredProcedureName = StoredProcedures.GetPatientGeneral;
            Dictionary<string, object> Parameters = new Dictionary<string, object>();
            Parameters.Add("@pid", id);
            return dbMan.ExecuteReader(StoredProcedureName, Parameters);
        }

        public DataTable getsurgeries(string id)
        {
            String StoredProcedureName = StoredProcedures.GetSurgeries;
            Dictionary<string, object> Parameters = new Dictionary<string, object>();
            Parameters.Add("@pid", id);
            return dbMan.ExecuteReader(StoredProcedureName, Parameters);
        }

        public DataTable prediagnosis(string id)
        {
            String StoredProcedureName = StoredProcedures.GetPreDiagnosis;
            Dictionary<string, object> Parameters = new Dictionary<string, object>();
            Parameters.Add("@pid", id);
            return dbMan.ExecuteReader(StoredProcedureName, Parameters);
        }

        public DataTable Getallergies(string id)
        {
            String StoredProcedureName = StoredProcedures.GetAllergies;
            Dictionary<string, object> Parameters = new Dictionary<string, object>();
            Parameters.Add("@pid", id);
            return dbMan.ExecuteReader(StoredProcedureName, Parameters);
        }

        public DataTable bloodtransfer(string id)
        {
            String StoredProcedureName = StoredProcedures.BloodTrans;
            Dictionary<string, object> Parameters = new Dictionary<string, object>();
            Parameters.Add("@pid", id);
            return dbMan.ExecuteReader(StoredProcedureName, Parameters);
        }

        public void deleteclinicphone(string phone)
        {
            String StoredProcedureName = StoredProcedures.deleteClinicPhone;
            Dictionary<string, object> Parameters = new Dictionary<string, object>();
            Parameters.Add("@phoneno", phone);

            dbMan.ExecuteNonQuery(StoredProcedureName, Parameters);
        }

        public void deleteAppointment(string drid, string pid, string date)
        {
            String DeleteAppointments = StoredProcedures.DeleteAppointments;
            Dictionary<string, object> Parameters = new Dictionary<string, object>();
            Parameters.Add("@DID", drid);
            Parameters.Add("@PID", pid);
            Parameters.Add("@date", date);

            dbMan.ExecuteNonQuery(DeleteAppointments, Parameters);
        }

        public int deletehospital(string id, int hid)
        {
            String StoredProcedureName = StoredProcedures.DelDoctorHospital;
            Dictionary<string, object> Parameters = new Dictionary<string, object>();
            Parameters.Add("@drid", id);
            Parameters.Add("@hid", hid);

            return dbMan.ExecuteNonQuery(StoredProcedureName, Parameters);
        }

        public int doctorhospital(string id, int hid)
        {
            String StoredProcedureName = StoredProcedures.StartDoctorHospital;
            Dictionary<string, object> Parameters = new Dictionary<string, object>();
            Parameters.Add("@hid", hid);
            Parameters.Add("@drid", id);
            return dbMan.ExecuteNonQuery(StoredProcedureName, Parameters);
        }

        public int DeleteClinic(string id)
        {
            String StoredProcedureName = StoredProcedures.DeleteClinic;
            Dictionary<string, object> Parameters = new Dictionary<string, object>();
            Parameters.Add("@drid", id);
            return dbMan.ExecuteNonQuery(StoredProcedureName, Parameters);
        }

        public int addclinicphone(string id, string phone)
        {
            String StoredProcedureName = StoredProcedures.addClinicPhone;
            Dictionary<string, object> Parameters = new Dictionary<string, object>();
            Parameters.Add("@phoneno", phone);
            Parameters.Add("@drid", id);
            return dbMan.ExecuteNonQuery(StoredProcedureName, Parameters);
        }

        //nerdeen///////
        // presenting the rooms
        public DataTable presenting_Rooms(string status, string worker_id)
        {
            string presenting_rooms = StoredProcedures.Presenting_Rooms;
            Dictionary<string, object> paramaters = new Dictionary<string, object>();
            paramaters.Add("@status", status);
            paramaters.Add("@w_ID", worker_id);
            return dbMan.ExecuteReader(presenting_rooms, paramaters);
        }
        //end of presenting the rooms


        //reserving a room
        public void Reserve_A_Room(int roomnumber, string patientID, string startdate, string workerID)
        {
            string reserving_room = StoredProcedures.ReservingRoom;
            Dictionary<string, object> paramaters = new Dictionary<string, object>();
            paramaters.Add("@room_num", roomnumber);
            paramaters.Add("@p_id", patientID);
            paramaters.Add("@startdate", startdate);
            paramaters.Add("@w_id", workerID);
            dbMan.ExecuteNonQuery(reserving_room, paramaters);
        }
        // end of reserving a room

        // checking out

        public void Checking_Out(int roomnumber, string enddate, string workerID,int sum,int days)

      
        {
            string leaving_room = StoredProcedures.Check_out;
            Dictionary<string, object> paramaters = new Dictionary<string, object>();
            paramaters.Add("@room_num", roomnumber);
            paramaters.Add("@end_date", enddate);
            paramaters.Add("@w_id", workerID);
            paramaters.Add("@sum", sum);
            paramaters.Add("@days", days);
            dbMan.ExecuteNonQuery(leaving_room, paramaters);
        }

        // end of checking out
        //reserving surgery
        public void Reserve_Surgery(string p_id, string w_id, string dr_id, string s_date, string s_type, int s_cost)
        {
            string reserving_surgery = StoredProcedures.Reserving_Surgery;
            Dictionary<string, object> paramaters = new Dictionary<string, object>();
            paramaters.Add("@p_id", p_id);
            paramaters.Add("@Dr_id", dr_id);
            paramaters.Add("@w_id", w_id);
            paramaters.Add("@s_date", s_date);
            paramaters.Add("@s_cost", s_cost);
            paramaters.Add("@s_type", s_type);
            dbMan.ExecuteNonQuery(reserving_surgery, paramaters);
        }

        //end of reserving surgery
        // add admin 
        public void Add_Admin(int a_id, string a_name)
        {
            string Adding_Admin = StoredProcedures.Add_Admin;
            Dictionary<string, object> paramaters = new Dictionary<string, object>();
            paramaters.Add("@admin_name", a_name);
            paramaters.Add("@admin_id", a_id);
            dbMan.ExecuteNonQuery(Adding_Admin, paramaters);
        }

        // end of add admin
        // add hospital 
        public void Add_Hospital(int h_id, string h_name, string h_adress)
        {
            string Adding_Hospital = StoredProcedures.Add_Hospital;
            Dictionary<string, object> paramaters = new Dictionary<string, object>();
            paramaters.Add("@Hospital_name", h_name);
            paramaters.Add("@Hospital_ID", h_id);
            paramaters.Add("@Hospital_Adress", h_adress);
            dbMan.ExecuteNonQuery(Adding_Hospital, paramaters);
        }

        // end of add hospital
        // add hospital 
        public void Add_Room(int room_num, int room_cost, string floor, string w_id)
        {
            string Adding_Room = StoredProcedures.Add_Room;
            Dictionary<string, object> paramaters = new Dictionary<string, object>();
            paramaters.Add("@room_num", room_num);
            paramaters.Add("@room_cost", room_cost);
            paramaters.Add("@floor", floor);
            paramaters.Add("@w_id", w_id);
            dbMan.ExecuteNonQuery(Adding_Room, paramaters);
        }

        // end of add hospital
        // admin name 
        public string GetAdminName(int id)
        {

            string AdminName = StoredProcedures.GetAdminName;
            Dictionary<string, object> paramaters = new Dictionary<string, object>();
            paramaters.Add("@a_id", id);
            paramaters.Add("@a_name", null);
            return dbMan.ExecuteScalarString(AdminName, paramaters, 50);
        }

        // end of admin name
        //report by admin
        //get surgieries in database
        public DataTable Get_Surgeries()
        {


            String sur_name = StoredProcedures.sur_name;
            Dictionary<string, object> Parameters = new Dictionary<string, object>();

            return dbMan.ExecuteReader(sur_name, Parameters);
        }

        public SqlDataReader Hospital_Surgeries(int Year, string s_name)
        {
            String Hos_Sur = StoredProcedures.hospital_surgeries;
            Dictionary<string, object> Parameters = new Dictionary<string, object>();
            Parameters.Add("@s_year", Year);
            Parameters.Add("@s_name", s_name);
            return dbMan.ExecuteReaderChart(Hos_Sur, Parameters);
        }

        //end of get surgeries in DB
        //get Hospitals in DB
        public DataTable Get_Hospitals()
        {
            String hos_name = StoredProcedures.Get_Hospitals;
            Dictionary<string, object> Parameters = new Dictionary<string, object>();
            return dbMan.ExecuteReader(hos_name, Parameters);
        }

        //END of get hospitals in DB
        //GET surgieries in specific hospital
        public SqlDataReader Get_Surgeries(string h_name)
        {
            String Hos_Sur = StoredProcedures.Get_Surgeries;
            Dictionary<string, object> Parameters = new Dictionary<string, object>();

            Parameters.Add("@H_name", h_name);
            return dbMan.ExecuteReaderChart(Hos_Sur, Parameters);
        }

        //end of GET surgieries in specific hospital
        //Get doctors in a hospital
        public DataTable Get_Doctor_Hospital(string h_name)
        {
            String StoredProcedureName = StoredProcedures.Get_Doctor_Hospital;
            Dictionary<string, object> Parameters = new Dictionary<string, object>();
            Parameters.Add("@H_Name", h_name);
            return dbMan.ExecuteReader(StoredProcedureName, Parameters);
        }
        // end of  Get doctors in a hospital
        //end of report by admin 



        //omar

        public int AddClinic(string did, int fees, string address, int maxapp, string start, string end)
        {
            String StoredProcedureName = StoredProcedures.AddClinic;
            Dictionary<string, object> Parameters = new Dictionary<string, object>();
            Parameters.Add("@did", did);

            Parameters.Add("@fees", fees);
            Parameters.Add("@address", address);
            Parameters.Add("@maxapp", maxapp);
            Parameters.Add("@start", start);
            Parameters.Add("@end", end);
            return dbMan.ExecuteNonQuery(StoredProcedureName, Parameters);
        }

        public int UpdateClinic(string did, int fees, string address, int maxapp, string start, string end)
        {
            String StoredProcedureName = StoredProcedures.UpdateClinic;
            Dictionary<string, object> Parameters = new Dictionary<string, object>();
            Parameters.Add("@did", did);

            Parameters.Add("@fees", fees);
            Parameters.Add("@address", address);
            Parameters.Add("@maxapp", maxapp);
            Parameters.Add("@start", start);
            Parameters.Add("@end", end);
            return dbMan.ExecuteNonQuery(StoredProcedureName, Parameters);
        }

        public string DeleteAccount(string id)
        {
            string createAccount = StoredProcedures.DeleteAccount;
            Dictionary<string, object> parameters = new Dictionary<string, object>();

            parameters.Add("@ID", id);

            int result = dbMan.ExecuteNonQuery(createAccount, parameters);

            if (result == 0)
                return null;

            return id;
        }


        public string CreateAccount(string id, string username, string password, string firstName, string lastName,
            string email, string phoneNumber, string gender)
        {
            string createAccount = StoredProcedures.CreateAccount;
            Dictionary<string, object> parameters = new Dictionary<string, object>();

            string errorMessage = null;
            parameters.Add("@ID", id);
            parameters.Add("@UserName", username);
            parameters.Add("@Password", password);
            parameters.Add("@Fname", firstName);
            parameters.Add("@Lname", lastName);
            parameters.Add("@Email", email);
            parameters.Add("@PhoneNumber", phoneNumber);
            parameters.Add("@Gender", gender);
            parameters.Add("@errorMessage", errorMessage);

            errorMessage = dbMan.ExecuteScalarString(createAccount, parameters, 100);

            return errorMessage ?? id;
        }


        public string CreatePatientAccount(string id, string birthdate, string address, string bloodType)
        {
            string CreatePatientAccount = StoredProcedures.CreatePatientAccount;
            Dictionary<string, object> parameters = new Dictionary<string, object>();

            parameters.Add("@PatientID", id);
            parameters.Add("@BirthDate", birthdate);
            parameters.Add("@Address", address);
            parameters.Add("@BloodType", bloodType);


            int result = dbMan.ExecuteNonQuery(CreatePatientAccount, parameters);

            if (result == 0)
                return null;
            return id;
        }


        public string CreateDoctorAccount(string id, int departmentCode, string lastDegree)
        {
            string CreateDoctorAccount = StoredProcedures.CreateDoctorAccount;
            Dictionary<string, object> parameters = new Dictionary<string, object>();

            parameters.Add("@DoctorID", id);
            parameters.Add("@Department_Code", departmentCode);
            parameters.Add("@Lastdegree", lastDegree);

            int result = dbMan.ExecuteNonQuery(CreateDoctorAccount, parameters);

            if (result == 0)
                return null;
            return id;
        }


        public string CreateWorkerAccount(string id, int hospitalID)
        {
            string createAccount = StoredProcedures.CreateWorkerAccount;
            Dictionary<string, object> parameters = new Dictionary<string, object>();

            parameters.Add("@WorkerID", id);
            parameters.Add("@HID", hospitalID);

            int result = dbMan.ExecuteNonQuery(createAccount, parameters);

            if (result == 0)
                return null;
            return id;
        }


        public bool IsAvailableID(string id)
        {
            string CheckID = StoredProcedures.CheckID;
            Dictionary<string, object> parameters = new Dictionary<string, object>();

            parameters.Add("@ID", id);
            DataTable dt = dbMan.ExecuteReader(CheckID, parameters);
            return dt == null;
        }


        public bool IsAvailableUsername(string username)
        {
            string CheckID = StoredProcedures.CheckUserName;
            Dictionary<string, object> parameters = new Dictionary<string, object>();

            parameters.Add("@UserName", username);
            DataTable dt = dbMan.ExecuteReader(CheckID, parameters);
            return dt == null;
        }



        public bool IsAvailableEmail(string email)
        {
            string CheckID = StoredProcedures.CheckEmail;
            Dictionary<string, object> parameters = new Dictionary<string, object>();

            parameters.Add("@Email", email);
            DataTable dt = dbMan.ExecuteReader(CheckID, parameters);
            return dt == null;
        }


        public bool IsAvailableAdmin(int adminID)
        {
            string CheckAdmin = StoredProcedures.CheckAdmin;
            Dictionary<string, object> parameters = new Dictionary<string, object>();

            parameters.Add("@admin_id", adminID);
            DataTable dt = dbMan.ExecuteReader(CheckAdmin, parameters);
            return dt != null;
        }


        public bool IsAvailablePhoneNumber(string phoneNumber)
        {
            string CheckID = StoredProcedures.CheckPhoneNumber;
            Dictionary<string, object> parameters = new Dictionary<string, object>();

            parameters.Add("@PhoneNumber", phoneNumber);
            DataTable dt = dbMan.ExecuteReader(CheckID, parameters);
            return dt == null;
        }

        public bool IsHospitalExists(int Hospital_ID)
        {
            string IsHospitalExists = StoredProcedures.IsHospitalExists;
            Dictionary<string, object> parameters = new Dictionary<string, object>();

            parameters.Add("@Hospital_ID", Hospital_ID);
            DataTable dt = dbMan.ExecuteReader(IsHospitalExists, parameters);
            return dt != null;
        }

        //admin department
        public int AddHosDept(int deptcode, int hid)
        {
            String StoredProcedureName = StoredProcedures.AddHospitalDept;
            Dictionary<string, object> Parameters = new Dictionary<string, object>();
            Parameters.Add("@hid", hid);
            Parameters.Add("@dcode", deptcode);
            return dbMan.ExecuteNonQuery(StoredProcedureName, Parameters);
        }

        public int AddDept(string name, int deptcode)
        {
            String StoredProcedureName = StoredProcedures.AddGeneralDept;
            Dictionary<string, object> Parameters = new Dictionary<string, object>();
            Parameters.Add("@dname", name);
            Parameters.Add("@dcode", deptcode);
            return dbMan.ExecuteNonQuery(StoredProcedureName, Parameters);
        }

        public DataTable SelectDept()
        {
            String StoredProcedureName = StoredProcedures.SelectDept;
            Dictionary<string, object> Parameters = new Dictionary<string, object>();

            return dbMan.ExecuteReader(StoredProcedureName, Parameters);
        }
        //get_Sgate
        public DataTable Get_Sdate(int r_num, string worker_id)
        {
            string get_sdate = StoredProcedures.Get_Sdate;
            Dictionary<string, object> paramaters = new Dictionary<string, object>();
            paramaters.Add("@room_num", r_num);
            paramaters.Add("@W_ID", worker_id);
            return dbMan.ExecuteReader(get_sdate, paramaters);
        }
        //end of get s date
        public DataTable GET_BAmount(int r_num, string worker_id)
        {
            string get_sdate = StoredProcedures.Get_Sdate;
            Dictionary<string, object> paramaters = new Dictionary<string, object>();
            paramaters.Add("@room_num", r_num);
            paramaters.Add("@w_ID", worker_id);
            return dbMan.ExecuteReader(get_sdate, paramaters);
        }

        public DataTable GetHospitalDepartments(int Hospital_ID)
        {
            string GetHospitalDepartments = StoredProcedures.GetHospitalDepartments;
            Dictionary<string, object> parameters = new Dictionary<string, object>();
            parameters.Add("@Hospital_ID", Hospital_ID);
            return dbMan.ExecuteReader(GetHospitalDepartments, parameters);
        }

        public DataTable SetDoctorWorksAtHospital(string Doctor_ID, int Hospital_ID, int Department_ID)
        {
            string SetDoctorWorksAtHospital = StoredProcedures.SetDoctorWorksAtHospital;
            Dictionary<string, object> parameters = new Dictionary<string, object>();
            parameters.Add("@Doctor_ID", Doctor_ID);
            parameters.Add("@Hospital_ID", Hospital_ID);
            parameters.Add("@Department_ID", Department_ID);
            return dbMan.ExecuteReader(SetDoctorWorksAtHospital, parameters);
        }

    }
}
