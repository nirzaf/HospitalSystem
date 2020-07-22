using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace CellsAtWork
{
    public class StoredProcedures
    {
     public static string PatientName = "GetPatientName";
     public static string PatientEmail = "GetPatientEmail";
     public static string PatientPhone = "GetPatientPhone";
     public static string PatientGender = "GetPatientGender";
     public static string PatientBirth = "GetPatientBirth";
     public static string PatientAddress = "GetPatientAddress";
     public static string PatientBloodType = "GetPatientBloodType";
     public static string PatientDiagnosis = "GetPatientDiagnosis";
     public static string PatientAppointments = "GetPatientAppointments";
     public static string SpecializationClinics = "GetSpecializationClinics";
     public static string Hospitals = "GetHospitals";
     public static string HospitalsPhones = "GetHospitalPhone";
     
        public static string PatientAppointmentsAll = "GetPatientAppointmentsAll";
     
        public static string DeleteAppointments = "DeleteAppointments";
        public static string AddBloodBank = "AddBloodBank";
    
        public static string UpdatePatientaddress = "UpdatePatientAddress";
        public static string UpdatePatientPhone = "UpdatePatientPhone";
        public static string UpdatePatientBlood = "UpdatePatientBlood";
        public static string UpdatePatientEmail = "UpdatePatientEmail";
        public static string UpdatePatientPass = "UpdatePatientPass";
        public static string UpdatePatientUsername = "UpdatePatientUsername";
        public static string GetDepCodes = "GetDepCodes";
        public static string CheckLogin = "CheckLogin";
        


        //Menna
        public static string GetWorkerHospital = "GetWorkerHospital";
        //blood bank procedures
     public static string ViewBloodBank = "ViewBloodBank";
     public static string TakeBlood = "TakeBlood";
     public static string DonateBlood = "DonateBlood";
     public static string CheckBloodTypePAtient = "CheckBloodTypePAtient";
     public static string CheckBloodAmount = "CheckBloodAmount";
        //doctor info
        public static string GetDoctor = "GetDoctor";
        //doctor Functionalities
        public static string updateDr = "updateDR";

        public static string UpdateClinic = "UpdateClinic";
        public static string AddClinic = "AddClinic";
        public static string DeleteClinic = "DeleteClinic";
        public static string clinicphones = "GetClinicPhone";
        public static string deleteClinicPhone = "DeleteClinicPhone";
        public static string addClinicPhone = "AddClinicPhone";
        public static string Allclinics = "GetAllClinics";
        
        public static string Doctorhospital = "DoctorHospital";
        public static string DelDoctorHospital = "LeaveHospital";

        public static string StartDoctorHospital = "StartDoctorHospital";

        public static string GetAppointments = "GetAppointments";
        public static string GetDoctorClinic = "GetDoctorClinic";
        //
        public static string NewDiagnosis = "NewDiagnosis";
        public static string AddAllergy = "AddAllergy";
        //patient info viewed to doctor
        public static string BloodTrans = "BloodTrans";
        public static string GetPreDiagnosis = "GetPreDiagnosis";
        public static string GetSurgeries = "GetSurgeries";
        public static string GetAllergies = "GetAllergies";
        public static string GetPatientGeneral = "GetPatientGeneral";
        //
        public static string GetPatientID = "GetPatientID";
        //research
        public static string YearlyDiagnosis = "YearlyDiagnosis";
        public static string YearlyDiagnosisCity = "YearlyDiagnosisCity";
        public static string CountFemaleMale = "CountFemaleMale";
        public static string Getillness = "Getillness";
        //Reserve
        public static string MakeAppointment = "MakeAppointment";
        public static string CountAppointment = "CountAppointment";
        public static string GetMaxAppointment = "GetMaxAppointment";
        //reserving a room 
        public static string Presenting_Rooms = "present_rooms";
        public static string ReservingRoom = "reserve_a_room";
        // checking out 
        public static string Get_Sdate = "Get_Sdate";
        public static string Check_out = "check_out";
        //reserve a surgery
        public static string Reserving_Surgery="Reserving_surgery";
        // Admin view page 
        //admin name 
        public static string GetAdminName = "Get_Admin_Name";
        // add admin
        public static string Add_Admin = "Add_Admin";
        //add hospital 
        public static string Add_Hospital = "Add_Hospital";
        //end of admin view page
        // monthly report

        //end of monthly report
        // adding a room
        public static string Add_Room = "Add_Room";
        public static string CreateAccount = "CreateAccount";
        public static string DeleteAccount = "DeleteAccount";
        public static string CreatePatientAccount = "CreatePatientAccount";
        public static string CreateDoctorAccount = "CreateDoctorAccount";
        public static string CreateWorkerAccount = "CreateWorkerAccount";

        public static string CheckID = "CheckID";
        public static string CheckUserName = "CheckUserName";
        public static string CheckPhoneNumber = "CheckPhoneNumber";
        public static string CheckEmail = "CheckEmail";
        public static string SetDoctorWorksAtHospital = "SetDoctorWorksAtHospital";
        public static string GetHospitalDepartments = "GetHospitalDepartments";
        public static string IsHospitalExists = "IsHospitalExists";

        //Admin department

        public static string SelectDept = "SelectDept";
        public static string AddHospitalDept = "AddHospitalDept";
        public static string AddGeneralDept = "AddGeneralDept";
        public static string CheckAdmin = "CheckAdmin";




        //end of adding a room
        //get name of surgeries in DB
        public static string sur_name = "get_surgery_name";
        // end of get name of surgeries in DB
        //view surgeries in hospital
        public static string hospital_surgeries = "Sur_Hos_Month";
        //end of view surgeries in hospital
        //get hospitals in DB 2 uses
        public static string Get_Hospitals = "Get_Hospitals";

        //end of get hospitals in DB
        // surgeries of hospitals
        public static string Get_Surgeries = "Surgeries_Hospitals";
        //end of surgeries of hospitals
        //Get doctors in a hospital
        public static string Get_Doctor_Hospital = "Get_Doctor_Hospital";
        //end of Get doctors in a hospital
        public static string Counting_blood = " BloodCounting";
    }
}
