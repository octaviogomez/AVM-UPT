﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="contReportesCuestionarioMedico.ascx.cs" Inherits="AVM.Controles.Admin.contReportesCuestionarioMedico" %>
<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=12.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>
<div class="container colorBlanco">

    <br />
    <div class="form-row">
                <div class="col-md-5 mb-5">
                    <strong>
                        <label for="DropDownListReporte">1. Seleccione reporte</label></strong>
                    <asp:DropDownList ID="DropDownListReporte" runat="server" CssClass="form-control" required="Se necesita seleccionar reporte" OnSelectedIndexChanged="DropDownClick"  AutoPostBack="true">
                        <asp:ListItem Selected="False" Value="0" Text="Seleccione reporte" Enabled="true"></asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="col-md-2 mb-2">
                </div>
                <div class="col-md-5 mb-5">
                    <strong>
                        <label for="DropDownListEspecialista">2. Exportar a:</label></strong>
                    <asp:DropDownList ID="DropDownListExportar" runat="server" CssClass="form-control" required="Se necesita seleccionar reporte" OnSelectedIndexChanged="DropDownClickExportar" AutoPostBack="true"></asp:DropDownList>
                </div>
            </div>
              
                <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
              
                <rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" Font-Size="8pt" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Width="824px" Height="614px" Style="margin-top: 23px" ShowBackButton="False" ShowExportControls="False" ShowFindControls="False" ShowPageNavigationControls="False" ShowPrintButton="False" ShowRefreshButton="False" ShowZoomControl="False">
                    <LocalReport ReportPath="Report.rdlc">
                        <DataSources>
                            <rsweb:ReportDataSource DataSourceId="ObjectDataSource3" Name="DataSet1" />
                        </DataSources>
                    </LocalReport>
                </rsweb:ReportViewer>
                <asp:ObjectDataSource ID="ObjectDataSource3" runat="server" TypeName="dsReporteTableAdapters."></asp:ObjectDataSource>
               
</div>