﻿<%@ Page Language="C#" Async="true" AutoEventWireup="true" CodeBehind="MainPage.aspx.cs" Inherits="LectureMe.Webform.MainPage" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <style>
        .img-centered {
            margin: auto;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="row">
            <asp:Image runat="server" ImageUrl="~/Images/Banner.png" CssClass="img-responsive img-centered" />
           
            <div class="col-md-12">
                <div class="panel panel-info">
                    <div class="panel-heading">
                        <h3 class="panel-title">Boredom Level of Lecture</h3>
                    </div>
                    <div class="panel-body">
                        <div class="form-inline">
                            <div class="form-group">
                                <asp:FileUpload ID="FileUpload" runat="server" AllowMultiple="true"/>
                                <br />
                                <asp:Button runat="server" ID="btn_Upload" Text="Upload" CssClass="btn btn-success" OnClick="btn_Upload_Click" />
                                <br /><br />
                                <asp:Label ID="lbl_Score" runat="server"></asp:Label>
                            </div>
                            <div class="form-group">
                                <asp:Chart ID="cht_BarCategory" Height="400px" Width="880px" runat="server">
                                   <Series>
                                        <asp:Series Name="main_Series" ChartType="Line" Font="Trebuchet MS, 12pt, style=Bold" ChartArea="main_Area" IsValueShownAsLabel="true"></asp:Series>
                                   </Series>

                                   <Titles>
                                        <asp:Title Font="Trebuchet MS, 10pt, style=Bold"></asp:Title>
                                   </Titles>

                                   <ChartAreas>
                                        <asp:ChartArea Name="main_Area">
                                            <AxisX Title="Time (Minute)" TitleFont="Trebuchet MS, 10pt, style=Bold"></AxisX>
                                            <AxisY Title="Boredom Level %" TitleFont="Trebuchet MS, 10pt, style=Bold"></AxisY>
                                        </asp:ChartArea>
                                   </ChartAreas>
                              </asp:Chart>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
