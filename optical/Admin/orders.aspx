<%@ Page Title="Admin Control Panel - Outstanding Orders" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="orders.aspx.vb" Inherits="Admin_orders" %>

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
    <section id="content">
        <div class="container bg1">
            <div class="row">
                <div class="col-md-1"></div>
                <div class="col-md-10 text">
                    <p>A table displaying a list of orders that have been placed since the last CSV export, with the ability to change any field, allowing for the correction of mistakes.</p>
                    <p>There will also be a button to export all orders to a CSV file which can be uploaded to the Gino system.</p>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
