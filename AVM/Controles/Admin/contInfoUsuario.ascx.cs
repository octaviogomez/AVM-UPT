﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using Core.Model;
using Core.Presenter;
using Core.View;
using System.Data;

namespace AVM.Controles.Admin
{
    public partial class contInfoUsuario : System.Web.UI.UserControl,IEspecialista
    {
  
        WEspecialista vistEspecialista;
        CEspecialista miEspecialista;
        CEspecialista objLoggerinfEspecialista;

        protected void Page_Load(object sender, EventArgs e)
        {

            objLoggerinfEspecialista = (CEspecialista)Session["UsuarioLogeadoAdministrador"];
            vistEspecialista = new WEspecialista(this);
            if ((objLoggerinfEspecialista != null && objLoggerinfEspecialista.Rol == 3))
            {
                miEspecialista = new CEspecialista();
                vistEspecialista.ConfiguracionEmpleados(UsuarioLogeadoEspecialista, 6);
            }
            else
            {
                Response.Redirect("Default.aspx", true);//
            }

        }

        public DataSet Empleados
        {
            set
            {
               
            }
        }

        public CEspecialista UsuarioLogeadoEspecialista
        {
            get
            {
                CEspecialista objaux = new CEspecialista();
                try
                {
                    string valor = (Request.QueryString["id"].ToString() != null) ? Request.QueryString["id"].ToString() : "";
                    objaux.Numero_Control = valor;
                }
                catch (Exception)
                {
                    objaux.Numero_Control = "0";
                }
                return objaux;
            }
            set {
                if (value != null)
                {
                   
                    try
                    {
                        Cedula1.Text = value.Cedula.ToString().Trim();
                        NumeroControl1.Text = value.Numero_Control.ToString().Trim();
                        Clave1.Text = value.Contrasena.ToString().Trim();
                        Nombre1.Text = value.Nombre.ToString().Trim();
                        Apellido1.Text = value.Apellido.ToString().Trim();

                        DropDownListGenero.SelectedValue = value.Genero.ToString();
                        Direccion1.Text = value.Direccion.ToString();
                        Correo1.Text = value.Correo.ToString();
                        Telefono1.Text = value.Telefono.ToString();

                        DropDownListEspecilaidadesCambio.SelectedValue = value.fk_Especialidad;

                    }
                    catch (Exception)
                    {

                    }

                }
            }
        }
      
        public void Mensaje(string Mensaje, int tipo)
        {
           
        }

        protected void LinkButtonModificar_Click(object sender, EventArgs e)
        {
            Response.Redirect("ModificarUsuario.aspx?id=" + UsuarioLogeadoEspecialista.Numero_Control, true);//
        }
    }
}