<%@ Page Title="Admin Control Panel - Home" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="index.aspx.vb" Inherits="Admin" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <header id="header">
		<div class="container"> 
		</div>
	</header>
    <section id="title" class="intro-block">
        <div class="container">
            <div class="row bg2">
                <div class="col-md-6 text bg3">
                    <h2>ADMIN CONTROL PANEL</h2>
                </div>
                <div class="col-md-2 bg2">
                    <input type="button" id="New" value="Users" class="btn btn-intro" onclick="window.location = 'users.aspx';" />
                </div>
                <div class="col-md-2 bg2">
                    <input type="button" id="View" value="Orders" class="btn btn-intro" onclick="window.location = 'orders.aspx';" />
                </div>
                <div class="col-md-2 bg2">
                    <input type="button" id="Abort" value="Log Out" class="btn btn-intro" onclick="window.location = '../default.aspx';" />
                </div>
            </div>
        </div>
    </section>
</asp:Content>
