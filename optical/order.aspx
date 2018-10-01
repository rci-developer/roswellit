<%@ Page Title="Order Form" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="order.aspx.vb" Inherits="Contact" %>
<%@ Import Namespace="Microsoft.AspNet.Identity" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <header id="header">
		<div class="container"> 
		</div>
	</header>
    <section id="title" class="intro-block">
        <div class="container">
            <div class="row bg2">
                <div class="col-md-6 text bg3">
                    <h2>ORDER FORM</h2>
                </div>
                <div class="col-md-4 bg2">

                </div>
                <div class="col-md-2 bg2">
                    <form>
                    <input type="button" id="Abort" value="Log Out" class="btn btn-intro" onclick="window.location = 'default.aspx';" />
                        </form>
                </div>
            </div>
        </div>
    </section>
    <section id="intro" class="intro-block">
		<div class="container">
			<div class="row">
							
				<div class="col-md-12 intro-form text">
					<form role="form"  id="order_form" runat="server">
    <table class="form-group" style="margin: 10px 0px 0px 0px; padding: 10px 0px 0px 0px;">
    <tr class="form-control"><td style="width: 140px;">Patient Name:</td> <td><asp:Label runat="server" ID="lblPatient"></asp:Label></td></tr>
    <!--<tr><td style="width: 140px;">Order Number:</td> <td><asp:TextBox ID="tbxOrder" runat="server" Width="140px"></asp:TextBox></td></tr>-->

    <tr class="form-control"><td style="width: 140px;">Date Sent:</td> <td>
        <script type="text/javascript">
            var currentDate = new Date();
            var dd = currentDate.getDate();
            var mm = currentDate.getMonth()+1;
            var yyyy = currentDate.getFullYear();
            if (dd < 10) { dd = "0" + dd;}
            if (mm < 10) { mm = "0" + mm;}
            document.write(dd + "/" + mm + "/" + yyyy);</script></td></tr>
        
    </table>
        <table class="table-bordered">
        <tr>
            <th></th>
            <th>Index</th>
            <th>Lens Type</th>
            <th>Colour</th>
            <th>Sphere</th>
            <th>Cylinder</th>
            <th>Axe</th>
            <th>Addition</th>
        </tr>
        <tr>
            <th>Right Eye</th>
            <td>
                <asp:DropDownList ID="ddlRIndex" runat="server">
                    <asp:ListItem Value="1.50">1.50</asp:ListItem>
                    <asp:ListItem Value="1.50 Polarized Grey">1.50 Polarized Grey</asp:ListItem>
				    <asp:ListItem Value="1.50 Polarized Brown">1.50 Polarized Brown</asp:ListItem>
				    <asp:ListItem Value="1.50 Transitions Grey">1.50 Transitions Grey</asp:ListItem>
				    <asp:ListItem Value="1.50 Transitions Brown">1.50 Transitions Brown</asp:ListItem>
				    <asp:ListItem Value="1.56">1.56</asp:ListItem>
				    <asp:ListItem Value="1.56 Photo Grey">1.56 Photo Grey</asp:ListItem>
				    <asp:ListItem Value="1.56 Photo Brown">1.56 Photo Brown</asp:ListItem>
				    <asp:ListItem Value="1.59 Poly">1.59 Poly</asp:ListItem>
                    <asp:ListItem Value="1.60 MR-8">1.60 MR-8</asp:ListItem>
				    <asp:ListItem Value="1.6 Transitions Grey">1.6 Transitions Grey</asp:ListItem>
				    <asp:ListItem Value="1.6 Transitions Brown">1.6 Transitions Brown</asp:ListItem>
                    <asp:ListItem Value="1.67">1.67</asp:ListItem>
				    <asp:ListItem Value="1.74">1.74</asp:ListItem>
                </asp:DropDownList> 
            </td>

            <td>
                <asp:DropDownList ID="ddlRType" runat="server">
                    <asp:ListItem Value="SV">SV</asp:ListItem>
                    <asp:ListItem Value="SV HC">SV HC</asp:ListItem>
				    <asp:ListItem Value="SV Multi">SV Multi</asp:ListItem>
				    <asp:ListItem Value="SV Multi K+">SV Multi K+</asp:ListItem>
				    <asp:ListItem Value="SV RX">SV RX</asp:ListItem>
				    <asp:ListItem Value="SV RX HC">SV RX HC</asp:ListItem>
				    <asp:ListItem Value="SV RX Multi">SV RX Multi</asp:ListItem>
				    <asp:ListItem Value="SV RX Multi K+">SV RX Multi K+</asp:ListItem>
				    <asp:ListItem Value="Back aspheric HC">Back aspheric HC</asp:ListItem>
                    <asp:ListItem Value="Back aspheric Multi">Back aspheric Multi</asp:ListItem>
				    <asp:ListItem Value="Back aspheric Multi K+">Back aspheric Multi K+</asp:ListItem>
				    <asp:ListItem Value="My SV (Individual) HC">My SV (Individual) HC</asp:ListItem>
                    <asp:ListItem Value="My SV (Individual) Multi">My SV (Individual) Multi</asp:ListItem>
				    <asp:ListItem Value="My SV (Individual) K+">My SV (Individual) K+</asp:ListItem>
                    <asp:ListItem Value="Vega HD Short">Vega HD Short</asp:ListItem>
				    <asp:ListItem Value="Vega HD Short HC">Vega HD Short HC</asp:ListItem>
                    <asp:ListItem Value="Vega HD Short Multi">Vega HD Short Multi</asp:ListItem>
				    <asp:ListItem Value="Vega HD Short Multi K+">Vega HD Short Multi K+</asp:ListItem>
                    <asp:ListItem Value="Vega HD classic">Vega HD classic</asp:ListItem>
				    <asp:ListItem Value="Vega HD classic HC">Vega HD classic HC</asp:ListItem>
                    <asp:ListItem Value="Vega HD classic Multi">Vega HD classic Multi</asp:ListItem>
				    <asp:ListItem Value="Vega HD classic Multi K+">Vega HD classic Multi K+</asp:ListItem>
                    <asp:ListItem Value="Frezz Std.-12 HC">Frezz Std.-12 HC</asp:ListItem>
				    <asp:ListItem Value="Frezz Std.-12 Multi">Frezz Std.-12 Multi</asp:ListItem>
                    <asp:ListItem Value="Frezz Std.-12 Multi K+">Frezz Std.-12 Multi K+</asp:ListItem>
				    <asp:ListItem Value="Frezz Std.-14 HC">Frezz Std.-14 HC</asp:ListItem>
                    <asp:ListItem Value="Frezz Std.-14 Multi">Frezz Std.-14 Multi</asp:ListItem>
				    <asp:ListItem Value="Frezz Std.-14 Multi K+">Frezz Std.-14 Multi K+</asp:ListItem>
                    <asp:ListItem Value="Frezz Std.-16 HC">Frezz Std.-16 HC</asp:ListItem>
                    <asp:ListItem Value="Frezz Std.-16 Multi">Frezz Std.-16 Multi</asp:ListItem>
				    <asp:ListItem Value="Frezz Std.-16 Multi K+">Frezz Std.-16 Multi K+</asp:ListItem>
                    <asp:ListItem Value="Bifocal">Bifocal</asp:ListItem>
				    <asp:ListItem Value="Bifocal HC">Bifocal HC</asp:ListItem>
                    <asp:ListItem Value="Bifocal Multi">Bifocal Multi</asp:ListItem>
				    <asp:ListItem Value="Frezz Reader HC">Frezz Reader HC</asp:ListItem>
                    <asp:ListItem Value="Frezz Reader Multi">Frezz Reader Multi</asp:ListItem>
				    <asp:ListItem Value="Frezz Reader Multi K+">Frezz Reader Multi K+</asp:ListItem>
                    <asp:ListItem Value="Frezz EasyFit-12 HC">Frezz EasyFit-12 HC</asp:ListItem>
				    <asp:ListItem Value="Frezz EasyFit-12 Multi">Frezz EasyFit-12 Multi</asp:ListItem>
                    <asp:ListItem Value="Frezz EasyFit-12 Multi K+">Frezz EasyFit-12 Multi K+</asp:ListItem>
				    <asp:ListItem Value="Frezz EasyFit-14 HC">Frezz EasyFit-14 HC</asp:ListItem>
                    <asp:ListItem Value="Frezz EasyFit-14 Multi">Frezz EasyFit-14 Multi</asp:ListItem>
                    <asp:ListItem Value="Frezz EasyFit-14 Multi K+">Frezz EasyFit-14 Multi K+</asp:ListItem>
				    <asp:ListItem Value="Frezz EasyFit-16 HC">Frezz EasyFit-16 HC</asp:ListItem>
                    <asp:ListItem Value="Frezz EasyFit-16 Multi">Frezz EasyFit-16 Multi</asp:ListItem>
				    <asp:ListItem Value="Frezz EasyFit-16 Multi K+">Frezz EasyFit-16 Multi K+</asp:ListItem>
                    <asp:ListItem Value="FrezzMiniFit-10 HC">FrezzMiniFit-10 HC</asp:ListItem>
				    <asp:ListItem Value="FrezzMiniFit-10 Multi">FrezzMiniFit-10 Multi</asp:ListItem>
                    <asp:ListItem Value="FrezzMiniFit-10 Multi K+">FrezzMiniFit-10 Multi K+</asp:ListItem>
				    <asp:ListItem Value="Frezz Dynamic-12 HC">Frezz Dynamic-12 HC</asp:ListItem>
                    <asp:ListItem Value="Frezz Dynamic-12 Multi">Frezz Dynamic-12 Multi</asp:ListItem>
				    <asp:ListItem Value="Frezz Dynamic-12 Multi K+">Frezz Dynamic-12 Multi K+</asp:ListItem>
                    <asp:ListItem Value="Frezz Dynamic-14 HC">Frezz Dynamic-14 HC</asp:ListItem>
				    <asp:ListItem Value="Frezz Dynamic-14 Multi">Frezz Dynamic-14 Multi</asp:ListItem>
                    <asp:ListItem Value="Frezz Dynamic-14 Multi K+">Frezz Dynamic-14 Multi K+</asp:ListItem>
                    <asp:ListItem Value="Frezz Dynamic-16 HC">Frezz Dynamic-16 HC</asp:ListItem>
				    <asp:ListItem Value="Frezz Dynamic-16 Multi">Frezz Dynamic-16 Multi</asp:ListItem>
                    <asp:ListItem Value="Frezz Dynamic-16 Multi K+">Frezz Dynamic-16 Multi K+</asp:ListItem>
				    <asp:ListItem Value="Anti-fatigue SV HC">Anti-fatigue SV HC</asp:ListItem>
                    <asp:ListItem Value="Anti-fatigue SV Multi">Anti-fatigue SV Multi</asp:ListItem>
				    <asp:ListItem Value="Anti-fatigue SV Multi K+">Anti-fatigue SV Multi K+</asp:ListItem>
                    <asp:ListItem Value="Frezz Compo-12 HC">Frezz Compo-12 HC</asp:ListItem>
				    <asp:ListItem Value="Frezz Compo-12 Multi">Frezz Compo-12 Multi</asp:ListItem>
                    <asp:ListItem Value="Frezz Compo-12 Multi K+">Frezz Compo-12 Multi K+</asp:ListItem>
				    <asp:ListItem Value="Frezz Compo 14 HC">Frezz Compo 14 HC</asp:ListItem>
                    <asp:ListItem Value="Frezz Compo 14 Multi">Frezz Compo 14 Multi</asp:ListItem>
                    <asp:ListItem Value="Frezz Compo 14 Multi K+">Frezz Compo 14 Multi K+</asp:ListItem>
				    <asp:ListItem Value="Frezz Compo-16 HC">Frezz Compo-16 HC</asp:ListItem>
                    <asp:ListItem Value="Frezz Compo-16 Multi">Frezz Compo-16 Multi</asp:ListItem>
				    <asp:ListItem Value="Frezz Compo-16 Multi K+">Frezz Compo-16 Multi K+</asp:ListItem>
                </asp:DropDownList> 
            </td>

            <td>
                <asp:DropDownList ID="ddlRColour" runat="server">
                    <asp:ListItem Value="BLANK">BLANK</asp:ListItem>
                    <asp:ListItem Value="85%BROWN">85%BROWN</asp:ListItem>
				    <asp:ListItem Value="85%GREY">85%GREY</asp:ListItem>
				    <asp:ListItem Value="85%G15">85%G15</asp:ListItem>
				    <asp:ListItem Value="10%GREY">10%GREY</asp:ListItem>
				    <asp:ListItem Value="10%BROWN">10%BROWN</asp:ListItem>
				    <asp:ListItem Value="10%G15">10%G15</asp:ListItem>
                </asp:DropDownList>
            </td>

            <td>
                <asp:DropDownList ID="ddlRSphere" runat="server">
                    <asp:ListItem Value="-8.00">-8.00</asp:ListItem>
                    <asp:ListItem Value="-7.75">-7.75</asp:ListItem>
				    <asp:ListItem Value="-7.50">-7.50</asp:ListItem>
				    <asp:ListItem Value="-7.25">-7.25</asp:ListItem>
				    <asp:ListItem Value="-7.00">-7.00</asp:ListItem>
				    <asp:ListItem Value="-6.75">-6.75</asp:ListItem>
				    <asp:ListItem Value="-6.50">-6.50</asp:ListItem>
                    <asp:ListItem Value="-6.25">-6.25</asp:ListItem>
                    <asp:ListItem Value="-6.00">-6.00</asp:ListItem>
                    <asp:ListItem Value="-5.75">-5.75</asp:ListItem>
				    <asp:ListItem Value="-5.50">-5.50</asp:ListItem>
				    <asp:ListItem Value="-5.25">-5.25</asp:ListItem>
				    <asp:ListItem Value="-5.00">-5.00</asp:ListItem>
				    <asp:ListItem Value="-4.75">-4.75</asp:ListItem>
                    <asp:ListItem Value="-4.50">-4.50</asp:ListItem>
                    <asp:ListItem Value="-4.25">-4.25</asp:ListItem>
                    <asp:ListItem Value="-4.00">-4.00</asp:ListItem>
                    <asp:ListItem Value="-3.75">-3.75</asp:ListItem>
				    <asp:ListItem Value="-3.50">-3.50</asp:ListItem>
				    <asp:ListItem Value="-3.25">-3.25</asp:ListItem>
				    <asp:ListItem Value="-3.00">-3.00</asp:ListItem>
				    <asp:ListItem Value="-2.75">-2.75</asp:ListItem>
                    <asp:ListItem Value="-2.50">-2.50</asp:ListItem>
                    <asp:ListItem Value="-2.25">-2.25</asp:ListItem>
                    <asp:ListItem Value="-2.00">-2.00</asp:ListItem>
                    <asp:ListItem Value="-1.75">-1.75</asp:ListItem>
				    <asp:ListItem Value="-1.50">-1.50</asp:ListItem>
				    <asp:ListItem Value="-1.25">-1.25</asp:ListItem>
				    <asp:ListItem Value="-1.00">-1.00</asp:ListItem>
				    <asp:ListItem Value="-0.75">-0.75</asp:ListItem>
                    <asp:ListItem Value="-0.50">-0.50</asp:ListItem>
                    <asp:ListItem Value="-0.25">-0.25</asp:ListItem>
                    <asp:ListItem Value="0.00">0.00</asp:ListItem>
                    <asp:ListItem Value="0.25">0.25</asp:ListItem>
				    <asp:ListItem Value="0.50">0.50</asp:ListItem>
				    <asp:ListItem Value="0.75">0.75</asp:ListItem>
                    <asp:ListItem Value="1.00">1.00</asp:ListItem>
                    <asp:ListItem Value="1.25">1.25</asp:ListItem>
				    <asp:ListItem Value="1.50">1.50</asp:ListItem>
				    <asp:ListItem Value="1.75">1.75</asp:ListItem>
                    <asp:ListItem Value="2.00">2.00</asp:ListItem>
                    <asp:ListItem Value="2.25">2.25</asp:ListItem>
				    <asp:ListItem Value="2.50">2.50</asp:ListItem>
				    <asp:ListItem Value="2.75">2.75</asp:ListItem>
                    <asp:ListItem Value="3.00">3.00</asp:ListItem>
                    <asp:ListItem Value="3.25">3.25</asp:ListItem>
				    <asp:ListItem Value="3.50">3.50</asp:ListItem>
				    <asp:ListItem Value="3.75">3.75</asp:ListItem>
                    <asp:ListItem Value="4.00">4.00</asp:ListItem>
                    <asp:ListItem Value="4.25">4.25</asp:ListItem>
				    <asp:ListItem Value="4.50">4.50</asp:ListItem>
				    <asp:ListItem Value="4.75">4.75</asp:ListItem>
                    <asp:ListItem Value="5.00">5.00</asp:ListItem>
                    <asp:ListItem Value="5.25">5.25</asp:ListItem>
				    <asp:ListItem Value="5.50">5.50</asp:ListItem>
				    <asp:ListItem Value="5.75">5.75</asp:ListItem>
                    <asp:ListItem Value="6.00">6.00</asp:ListItem>
                </asp:DropDownList>
            </td>

            <td>
                <asp:DropDownList ID="ddlRCylinder" runat="server">
                    <asp:ListItem Value="-4.00">-4.00</asp:ListItem>
                    <asp:ListItem Value="-3.75">-3.75</asp:ListItem>
				    <asp:ListItem Value="-3.50">-3.50</asp:ListItem>
				    <asp:ListItem Value="-3.25">-3.25</asp:ListItem>
				    <asp:ListItem Value="-3.00">-3.00</asp:ListItem>
				    <asp:ListItem Value="-2.75">-2.75</asp:ListItem>
                    <asp:ListItem Value="-2.50">-2.50</asp:ListItem>
                    <asp:ListItem Value="-2.25">-2.25</asp:ListItem>
                    <asp:ListItem Value="-2.00">-2.00</asp:ListItem>
                    <asp:ListItem Value="-1.75">-1.75</asp:ListItem>
				    <asp:ListItem Value="-1.50">-1.50</asp:ListItem>
				    <asp:ListItem Value="-1.25">-1.25</asp:ListItem>
				    <asp:ListItem Value="-1.00">-1.00</asp:ListItem>
				    <asp:ListItem Value="-0.75">-0.75</asp:ListItem>
                    <asp:ListItem Value="-0.50">-0.50</asp:ListItem>
                    <asp:ListItem Value="-0.25">-0.25</asp:ListItem>
                    <asp:ListItem Value="0.00">0.00</asp:ListItem>
                </asp:DropDownList>
            </td>

            <td><asp:TextBox ID="tbxRAxe" runat="server"></asp:TextBox></td>

            <td>
                <asp:DropDownList ID="ddlRAddition" runat="server">
                    <asp:ListItem Value="None">None</asp:ListItem>
				    <asp:ListItem Value="0.50">0.50</asp:ListItem>
				    <asp:ListItem Value="0.75">0.75</asp:ListItem>
                    <asp:ListItem Value="1.00">1.00</asp:ListItem>
                    <asp:ListItem Value="1.25">1.25</asp:ListItem>
				    <asp:ListItem Value="1.50">1.50</asp:ListItem>
				    <asp:ListItem Value="1.75">1.75</asp:ListItem>
                    <asp:ListItem Value="2.00">2.00</asp:ListItem>
                    <asp:ListItem Value="2.25">2.25</asp:ListItem>
				    <asp:ListItem Value="2.50">2.50</asp:ListItem>
				    <asp:ListItem Value="2.75">2.75</asp:ListItem>
                    <asp:ListItem Value="3.00">3.00</asp:ListItem>
                    <asp:ListItem Value="3.25">3.25</asp:ListItem>
				    <asp:ListItem Value="3.50">3.50</asp:ListItem>
				    <asp:ListItem Value="3.75">3.75</asp:ListItem>
                    <asp:ListItem Value="4.00">4.00</asp:ListItem>
                </asp:DropDownList>
            </td>

            

           
        </tr>
        <tr>
            <th>Left Eye</th>
            <td>
                <asp:DropDownList ID="ddlLIndex" runat="server">
                    <asp:ListItem Value="1.50">1.50</asp:ListItem>
                    <asp:ListItem Value="1.50 Polarized Grey">1.50 Polarized Grey</asp:ListItem>
				    <asp:ListItem Value="1.50 Polarized Brown">1.50 Polarized Brown</asp:ListItem>
				    <asp:ListItem Value="1.50 Transitions Grey">1.50 Transitions Grey</asp:ListItem>
				    <asp:ListItem Value="1.50 Transitions Brown">1.50 Transitions Brown</asp:ListItem>
				    <asp:ListItem Value="1.56">1.56</asp:ListItem>
				    <asp:ListItem Value="1.56 Photo Grey">1.56 Photo Grey</asp:ListItem>
				    <asp:ListItem Value="1.56 Photo Brown">1.56 Photo Brown</asp:ListItem>
				    <asp:ListItem Value="1.59 Poly">1.59 Poly</asp:ListItem>
                    <asp:ListItem Value="1.60 MR-8">1.60 MR-8</asp:ListItem>
				    <asp:ListItem Value="1.6 Transitions Grey">1.6 Transitions Grey</asp:ListItem>
				    <asp:ListItem Value="1.6 Transitions Brown">1.6 Transitions Brown</asp:ListItem>
                    <asp:ListItem Value="1.67">1.67</asp:ListItem>
				    <asp:ListItem Value="1.74">1.74</asp:ListItem>
                </asp:DropDownList>
            </td>

            <td>
                <asp:DropDownList ID="ddlLType" runat="server">
                    <asp:ListItem Value="SV">SV</asp:ListItem>
                    <asp:ListItem Value="SV HC">SV HC</asp:ListItem>
				    <asp:ListItem Value="SV Multi">SV Multi</asp:ListItem>
				    <asp:ListItem Value="SV Multi K+">SV Multi K+</asp:ListItem>
				    <asp:ListItem Value="SV RX">SV RX</asp:ListItem>
				    <asp:ListItem Value="SV RX HC">SV RX HC</asp:ListItem>
				    <asp:ListItem Value="SV RX Multi">SV RX Multi</asp:ListItem>
				    <asp:ListItem Value="SV RX Multi K+">SV RX Multi K+</asp:ListItem>
				    <asp:ListItem Value="Back aspheric HC">Back aspheric HC</asp:ListItem>
                    <asp:ListItem Value="Back aspheric Multi">Back aspheric Multi</asp:ListItem>
				    <asp:ListItem Value="Back aspheric Multi K+">Back aspheric Multi K+</asp:ListItem>
				    <asp:ListItem Value="My SV (Individual) HC">My SV (Individual) HC</asp:ListItem>
                    <asp:ListItem Value="My SV (Individual) Multi">My SV (Individual) Multi</asp:ListItem>
				    <asp:ListItem Value="My SV (Individual) K+">My SV (Individual) K+</asp:ListItem>
                    <asp:ListItem Value="Vega HD Short">Vega HD Short</asp:ListItem>
				    <asp:ListItem Value="Vega HD Short HC">Vega HD Short HC</asp:ListItem>
                    <asp:ListItem Value="Vega HD Short Multi">Vega HD Short Multi</asp:ListItem>
				    <asp:ListItem Value="Vega HD Short Multi K+">Vega HD Short Multi K+</asp:ListItem>
                    <asp:ListItem Value="Vega HD classic">Vega HD classic</asp:ListItem>
				    <asp:ListItem Value="Vega HD classic HC">Vega HD classic HC</asp:ListItem>
                    <asp:ListItem Value="Vega HD classic Multi">Vega HD classic Multi</asp:ListItem>
				    <asp:ListItem Value="Vega HD classic Multi K+">Vega HD classic Multi K+</asp:ListItem>
                    <asp:ListItem Value="Frezz Std.-12 HC">Frezz Std.-12 HC</asp:ListItem>
				    <asp:ListItem Value="Frezz Std.-12 Multi">Frezz Std.-12 Multi</asp:ListItem>
                    <asp:ListItem Value="Frezz Std.-12 Multi K+">Frezz Std.-12 Multi K+</asp:ListItem>
				    <asp:ListItem Value="Frezz Std.-14 HC">Frezz Std.-14 HC</asp:ListItem>
                    <asp:ListItem Value="Frezz Std.-14 Multi">Frezz Std.-14 Multi</asp:ListItem>
				    <asp:ListItem Value="Frezz Std.-14 Multi K+">Frezz Std.-14 Multi K+</asp:ListItem>
                    <asp:ListItem Value="Frezz Std.-16 HC">Frezz Std.-16 HC</asp:ListItem>
                    <asp:ListItem Value="Frezz Std.-16 Multi">Frezz Std.-16 Multi</asp:ListItem>
				    <asp:ListItem Value="Frezz Std.-16 Multi K+">Frezz Std.-16 Multi K+</asp:ListItem>
                    <asp:ListItem Value="Bifocal">Bifocal</asp:ListItem>
				    <asp:ListItem Value="Bifocal HC">Bifocal HC</asp:ListItem>
                    <asp:ListItem Value="Bifocal Multi">Bifocal Multi</asp:ListItem>
				    <asp:ListItem Value="Frezz Reader HC">Frezz Reader HC</asp:ListItem>
                    <asp:ListItem Value="Frezz Reader Multi">Frezz Reader Multi</asp:ListItem>
				    <asp:ListItem Value="Frezz Reader Multi K+">Frezz Reader Multi K+</asp:ListItem>
                    <asp:ListItem Value="Frezz EasyFit-12 HC">Frezz EasyFit-12 HC</asp:ListItem>
				    <asp:ListItem Value="Frezz EasyFit-12 Multi">Frezz EasyFit-12 Multi</asp:ListItem>
                    <asp:ListItem Value="Frezz EasyFit-12 Multi K+">Frezz EasyFit-12 Multi K+</asp:ListItem>
				    <asp:ListItem Value="Frezz EasyFit-14 HC">Frezz EasyFit-14 HC</asp:ListItem>
                    <asp:ListItem Value="Frezz EasyFit-14 Multi">Frezz EasyFit-14 Multi</asp:ListItem>
                    <asp:ListItem Value="Frezz EasyFit-14 Multi K+">Frezz EasyFit-14 Multi K+</asp:ListItem>
				    <asp:ListItem Value="Frezz EasyFit-16 HC">Frezz EasyFit-16 HC</asp:ListItem>
                    <asp:ListItem Value="Frezz EasyFit-16 Multi">Frezz EasyFit-16 Multi</asp:ListItem>
				    <asp:ListItem Value="Frezz EasyFit-16 Multi K+">Frezz EasyFit-16 Multi K+</asp:ListItem>
                    <asp:ListItem Value="FrezzMiniFit-10 HC">FrezzMiniFit-10 HC</asp:ListItem>
				    <asp:ListItem Value="FrezzMiniFit-10 Multi">FrezzMiniFit-10 Multi</asp:ListItem>
                    <asp:ListItem Value="FrezzMiniFit-10 Multi K+">FrezzMiniFit-10 Multi K+</asp:ListItem>
				    <asp:ListItem Value="Frezz Dynamic-12 HC">Frezz Dynamic-12 HC</asp:ListItem>
                    <asp:ListItem Value="Frezz Dynamic-12 Multi">Frezz Dynamic-12 Multi</asp:ListItem>
				    <asp:ListItem Value="Frezz Dynamic-12 Multi K+">Frezz Dynamic-12 Multi K+</asp:ListItem>
                    <asp:ListItem Value="Frezz Dynamic-14 HC">Frezz Dynamic-14 HC</asp:ListItem>
				    <asp:ListItem Value="Frezz Dynamic-14 Multi">Frezz Dynamic-14 Multi</asp:ListItem>
                    <asp:ListItem Value="Frezz Dynamic-14 Multi K+">Frezz Dynamic-14 Multi K+</asp:ListItem>
                    <asp:ListItem Value="Frezz Dynamic-16 HC">Frezz Dynamic-16 HC</asp:ListItem>
				    <asp:ListItem Value="Frezz Dynamic-16 Multi">Frezz Dynamic-16 Multi</asp:ListItem>
                    <asp:ListItem Value="Frezz Dynamic-16 Multi K+">Frezz Dynamic-16 Multi K+</asp:ListItem>
				    <asp:ListItem Value="Anti-fatigue SV HC">Anti-fatigue SV HC</asp:ListItem>
                    <asp:ListItem Value="Anti-fatigue SV Multi">Anti-fatigue SV Multi</asp:ListItem>
				    <asp:ListItem Value="Anti-fatigue SV Multi K+">Anti-fatigue SV Multi K+</asp:ListItem>
                    <asp:ListItem Value="Frezz Compo-12 HC">Frezz Compo-12 HC</asp:ListItem>
				    <asp:ListItem Value="Frezz Compo-12 Multi">Frezz Compo-12 Multi</asp:ListItem>
                    <asp:ListItem Value="Frezz Compo-12 Multi K+">Frezz Compo-12 Multi K+</asp:ListItem>
				    <asp:ListItem Value="Frezz Compo 14 HC">Frezz Compo 14 HC</asp:ListItem>
                    <asp:ListItem Value="Frezz Compo 14 Multi">Frezz Compo 14 Multi</asp:ListItem>
                    <asp:ListItem Value="Frezz Compo 14 Multi K+">Frezz Compo 14 Multi K+</asp:ListItem>
				    <asp:ListItem Value="Frezz Compo-16 HC">Frezz Compo-16 HC</asp:ListItem>
                    <asp:ListItem Value="Frezz Compo-16 Multi">Frezz Compo-16 Multi</asp:ListItem>
				    <asp:ListItem Value="Frezz Compo-16 Multi K+">Frezz Compo-16 Multi K+</asp:ListItem>
                </asp:DropDownList> 
            </td>
            
            <td>
                <asp:DropDownList ID="ddlLColour" runat="server">
                    <asp:ListItem Value="BLANK">BLANK</asp:ListItem>
                    <asp:ListItem Value="85%BROWN">85%BROWN</asp:ListItem>
				    <asp:ListItem Value="85%GREY">85%GREY</asp:ListItem>
				    <asp:ListItem Value="85%G15">85%G15</asp:ListItem>
				    <asp:ListItem Value="10%GREY">10%GREY</asp:ListItem>
				    <asp:ListItem Value="10%BROWN">10%BROWN</asp:ListItem>
				    <asp:ListItem Value="10%G15">10%G15</asp:ListItem>
                </asp:DropDownList>
            </td>

            <td>
                <asp:DropDownList ID="ddlLSphere" runat="server">
                    <asp:ListItem Value="-8.00">-8.00</asp:ListItem>
                    <asp:ListItem Value="-7.75">-7.75</asp:ListItem>
				    <asp:ListItem Value="-7.50">-7.50</asp:ListItem>
				    <asp:ListItem Value="-7.25">-7.25</asp:ListItem>
				    <asp:ListItem Value="-7.00">-7.00</asp:ListItem>
				    <asp:ListItem Value="-6.75">-6.75</asp:ListItem>
				    <asp:ListItem Value="-6.50">-6.50</asp:ListItem>
                    <asp:ListItem Value="-6.25">-6.25</asp:ListItem>
                    <asp:ListItem Value="-6.00">-6.00</asp:ListItem>
                    <asp:ListItem Value="-5.75">-5.75</asp:ListItem>
				    <asp:ListItem Value="-5.50">-5.50</asp:ListItem>
				    <asp:ListItem Value="-5.25">-5.25</asp:ListItem>
				    <asp:ListItem Value="-5.00">-5.00</asp:ListItem>
				    <asp:ListItem Value="-4.75">-4.75</asp:ListItem>
                    <asp:ListItem Value="-4.50">-4.50</asp:ListItem>
                    <asp:ListItem Value="-4.25">-4.25</asp:ListItem>
                    <asp:ListItem Value="-4.00">-4.00</asp:ListItem>
                    <asp:ListItem Value="-3.75">-3.75</asp:ListItem>
				    <asp:ListItem Value="-3.50">-3.50</asp:ListItem>
				    <asp:ListItem Value="-3.25">-3.25</asp:ListItem>
				    <asp:ListItem Value="-3.00">-3.00</asp:ListItem>
				    <asp:ListItem Value="-2.75">-2.75</asp:ListItem>
                    <asp:ListItem Value="-2.50">-2.50</asp:ListItem>
                    <asp:ListItem Value="-2.25">-2.25</asp:ListItem>
                    <asp:ListItem Value="-2.00">-2.00</asp:ListItem>
                    <asp:ListItem Value="-1.75">-1.75</asp:ListItem>
				    <asp:ListItem Value="-1.50">-1.50</asp:ListItem>
				    <asp:ListItem Value="-1.25">-1.25</asp:ListItem>
				    <asp:ListItem Value="-1.00">-1.00</asp:ListItem>
				    <asp:ListItem Value="-0.75">-0.75</asp:ListItem>
                    <asp:ListItem Value="-0.50">-0.50</asp:ListItem>
                    <asp:ListItem Value="-0.25">-0.25</asp:ListItem>
                    <asp:ListItem Value="0.00">0.00</asp:ListItem>
                    <asp:ListItem Value="0.25">0.25</asp:ListItem>
				    <asp:ListItem Value="0.50">0.50</asp:ListItem>
				    <asp:ListItem Value="0.75">0.75</asp:ListItem>
                    <asp:ListItem Value="1.00">1.00</asp:ListItem>
                    <asp:ListItem Value="1.25">1.25</asp:ListItem>
				    <asp:ListItem Value="1.50">1.50</asp:ListItem>
				    <asp:ListItem Value="1.75">1.75</asp:ListItem>
                    <asp:ListItem Value="2.00">2.00</asp:ListItem>
                    <asp:ListItem Value="2.25">2.25</asp:ListItem>
				    <asp:ListItem Value="2.50">2.50</asp:ListItem>
				    <asp:ListItem Value="2.75">2.75</asp:ListItem>
                    <asp:ListItem Value="3.00">3.00</asp:ListItem>
                    <asp:ListItem Value="3.25">3.25</asp:ListItem>
				    <asp:ListItem Value="3.50">3.50</asp:ListItem>
				    <asp:ListItem Value="3.75">3.75</asp:ListItem>
                    <asp:ListItem Value="4.00">4.00</asp:ListItem>
                    <asp:ListItem Value="4.25">4.25</asp:ListItem>
				    <asp:ListItem Value="4.50">4.50</asp:ListItem>
				    <asp:ListItem Value="4.75">4.75</asp:ListItem>
                    <asp:ListItem Value="5.00">5.00</asp:ListItem>
                    <asp:ListItem Value="5.25">5.25</asp:ListItem>
				    <asp:ListItem Value="5.50">5.50</asp:ListItem>
				    <asp:ListItem Value="5.75">5.75</asp:ListItem>
                    <asp:ListItem Value="6.00">6.00</asp:ListItem>
                </asp:DropDownList>
            </td>

            <td>
                <asp:DropDownList ID="ddlLCylinder" runat="server">
                    <asp:ListItem Value="-4.00">-4.00</asp:ListItem>
                    <asp:ListItem Value="-3.75">-3.75</asp:ListItem>
				    <asp:ListItem Value="-3.50">-3.50</asp:ListItem>
				    <asp:ListItem Value="-3.25">-3.25</asp:ListItem>
				    <asp:ListItem Value="-3.00">-3.00</asp:ListItem>
				    <asp:ListItem Value="-2.75">-2.75</asp:ListItem>
                    <asp:ListItem Value="-2.50">-2.50</asp:ListItem>
                    <asp:ListItem Value="-2.25">-2.25</asp:ListItem>
                    <asp:ListItem Value="-2.00">-2.00</asp:ListItem>
                    <asp:ListItem Value="-1.75">-1.75</asp:ListItem>
				    <asp:ListItem Value="-1.50">-1.50</asp:ListItem>
				    <asp:ListItem Value="-1.25">-1.25</asp:ListItem>
				    <asp:ListItem Value="-1.00">-1.00</asp:ListItem>
				    <asp:ListItem Value="-0.75">-0.75</asp:ListItem>
                    <asp:ListItem Value="-0.50">-0.50</asp:ListItem>
                    <asp:ListItem Value="-0.25">-0.25</asp:ListItem>
                    <asp:ListItem Value="0.00">0.00</asp:ListItem>
                </asp:DropDownList>
            </td>
            
            <td><asp:TextBox ID="tbxLAxe" runat="server"></asp:TextBox></td>
            
            <td>
                <asp:DropDownList ID="ddlLAddition" runat="server">
                    <asp:ListItem Value="None">None</asp:ListItem>
				    <asp:ListItem Value="0.50">0.50</asp:ListItem>
				    <asp:ListItem Value="0.75">0.75</asp:ListItem>
                    <asp:ListItem Value="1.00">1.00</asp:ListItem>
                    <asp:ListItem Value="1.25">1.25</asp:ListItem>
				    <asp:ListItem Value="1.50">1.50</asp:ListItem>
				    <asp:ListItem Value="1.75">1.75</asp:ListItem>
                    <asp:ListItem Value="2.00">2.00</asp:ListItem>
                    <asp:ListItem Value="2.25">2.25</asp:ListItem>
				    <asp:ListItem Value="2.50">2.50</asp:ListItem>
				    <asp:ListItem Value="2.75">2.75</asp:ListItem>
                    <asp:ListItem Value="3.00">3.00</asp:ListItem>
                    <asp:ListItem Value="3.25">3.25</asp:ListItem>
				    <asp:ListItem Value="3.50">3.50</asp:ListItem>
				    <asp:ListItem Value="3.75">3.75</asp:ListItem>
                    <asp:ListItem Value="4.00">4.00</asp:ListItem>
                </asp:DropDownList>
            </td>

            

        </tr>
    </table>
                        <table class="table-bordered">
                            <tr>
                                <th></th>
                            <th>Prism1</th>
            <th>Dir1</th>
            <th>Prism2</th>
            <th>Dir2</th>
            <th>PD</th>
            <th>FH</th>
                                </tr>
                            <tr>
                            <th>Right Eye</th>
                            <td><asp:TextBox ID="tbxRPrism1" runat="server"></asp:TextBox></td>
            
            <td>
                <asp:DropDownList ID="ddlRDir1" runat="server">
                    <asp:ListItem Value="NONE">NONE</asp:ListItem>
				    <asp:ListItem Value="UP">UP</asp:ListItem>
				    <asp:ListItem Value="DOWN">DOWN</asp:ListItem>
                    <asp:ListItem Value="IN OUT">IN OUT</asp:ListItem>
                </asp:DropDownList>
            </td>
            
            <td><asp:TextBox ID="tbxRPrism2" runat="server"></asp:TextBox></td>
  
            <td>
                <asp:DropDownList ID="ddlRDir2" runat="server">
                    <asp:ListItem Value="NONE">NONE</asp:ListItem>
				    <asp:ListItem Value="UP">UP</asp:ListItem>
				    <asp:ListItem Value="DOWN">DOWN</asp:ListItem>
                    <asp:ListItem Value="IN OUT">IN OUT</asp:ListItem>
                </asp:DropDownList>
            </td>

            <td>
                <asp:DropDownList ID="ddlRPD" runat="server">
                    <asp:ListItem Value="20.00">20.00</asp:ListItem>
				    <asp:ListItem Value="20.50">20.50</asp:ListItem>
				    <asp:ListItem Value="21.00">21.00</asp:ListItem>
                    <asp:ListItem Value="21.50">21.50</asp:ListItem>
                    <asp:ListItem Value="22.00">22.00</asp:ListItem>
				    <asp:ListItem Value="22.50">22.50</asp:ListItem>
				    <asp:ListItem Value="23.00">23.00</asp:ListItem>
                    <asp:ListItem Value="23.50">23.50</asp:ListItem>
                    <asp:ListItem Value="24.00">24.00</asp:ListItem>
				    <asp:ListItem Value="24.50">24.50</asp:ListItem>
				    <asp:ListItem Value="25.00">25.00</asp:ListItem>
                    <asp:ListItem Value="25.50">25.50</asp:ListItem>
                    <asp:ListItem Value="26.00">26.00</asp:ListItem>
				    <asp:ListItem Value="26.50">26.50</asp:ListItem>
				    <asp:ListItem Value="27.00">27.00</asp:ListItem>
                    <asp:ListItem Value="27.50">27.50</asp:ListItem>
                    <asp:ListItem Value="28.00">28.00</asp:ListItem>
				    <asp:ListItem Value="28.50">28.50</asp:ListItem>
				    <asp:ListItem Value="29.00">29.00</asp:ListItem>
                    <asp:ListItem Value="29.50">29.50</asp:ListItem>
                    <asp:ListItem Value="30.00">30.00</asp:ListItem>
				    <asp:ListItem Value="30.50">30.50</asp:ListItem>
				    <asp:ListItem Value="31.00">31.00</asp:ListItem>
                    <asp:ListItem Value="31.50">31.50</asp:ListItem>
                    <asp:ListItem Value="32.00">32.00</asp:ListItem>
				    <asp:ListItem Value="32.50">32.50</asp:ListItem>
				    <asp:ListItem Value="33.00">33.00</asp:ListItem>
                    <asp:ListItem Value="33.50">33.50</asp:ListItem>
                    <asp:ListItem Value="34.00">34.00</asp:ListItem>
				    <asp:ListItem Value="34.50">34.50</asp:ListItem>
				    <asp:ListItem Value="35.00">35.00</asp:ListItem>
                    <asp:ListItem Value="35.50">35.50</asp:ListItem>
                    <asp:ListItem Value="36.00">36.00</asp:ListItem>
                    <asp:ListItem Value="36.50">36.50</asp:ListItem>
                    <asp:ListItem Value="37.00">37.00</asp:ListItem>
				    <asp:ListItem Value="37.50">37.50</asp:ListItem>
				    <asp:ListItem Value="38.00">38.00</asp:ListItem>
                    <asp:ListItem Value="38.50">38.50</asp:ListItem>
                    <asp:ListItem Value="39.00">39.00</asp:ListItem>
				    <asp:ListItem Value="39.50">39.50</asp:ListItem>
				    <asp:ListItem Value="40.00">40.00</asp:ListItem>
                </asp:DropDownList>
            </td>

            <td>
                <asp:DropDownList ID="ddlRFH" runat="server">
                    <asp:ListItem Value="C+2">C+2</asp:ListItem>
                    <asp:ListItem Value="C">C</asp:ListItem>
                    <asp:ListItem Value="10.00">10.00</asp:ListItem>
                    <asp:ListItem Value="10.50">10.50</asp:ListItem>
				    <asp:ListItem Value="11.00">11.00</asp:ListItem>
                    <asp:ListItem Value="11.50">11.50</asp:ListItem>
                    <asp:ListItem Value="12.00">12.00</asp:ListItem>
				    <asp:ListItem Value="12.50">12.50</asp:ListItem>
				    <asp:ListItem Value="13.00">13.00</asp:ListItem>
                    <asp:ListItem Value="13.50">13.50</asp:ListItem>
                    <asp:ListItem Value="14.00">14.00</asp:ListItem>
				    <asp:ListItem Value="14.50">14.50</asp:ListItem>
				    <asp:ListItem Value="15.00">15.00</asp:ListItem>
                    <asp:ListItem Value="15.50">15.50</asp:ListItem>
                    <asp:ListItem Value="16.00">16.00</asp:ListItem>
				    <asp:ListItem Value="16.50">16.50</asp:ListItem>
				    <asp:ListItem Value="17.00">17.00</asp:ListItem>
                    <asp:ListItem Value="17.50">17.50</asp:ListItem>
                    <asp:ListItem Value="18.00">18.00</asp:ListItem>
				    <asp:ListItem Value="18.50">18.50</asp:ListItem>
				    <asp:ListItem Value="19.00">19.00</asp:ListItem>
                    <asp:ListItem Value="19.50">19.50</asp:ListItem>
                    <asp:ListItem Value="20.00">20.00</asp:ListItem>
				    <asp:ListItem Value="20.50">20.50</asp:ListItem>
				    <asp:ListItem Value="21.00">21.00</asp:ListItem>
                    <asp:ListItem Value="21.50">21.50</asp:ListItem>
                    <asp:ListItem Value="22.00">22.00</asp:ListItem>
				    <asp:ListItem Value="22.50">22.50</asp:ListItem>
				    <asp:ListItem Value="23.00">23.00</asp:ListItem>
                    <asp:ListItem Value="23.50">23.50</asp:ListItem>
                    <asp:ListItem Value="24.00">24.00</asp:ListItem>
				    <asp:ListItem Value="24.50">24.50</asp:ListItem>
				    <asp:ListItem Value="25.00">25.00</asp:ListItem>
                    <asp:ListItem Value="25.50">25.50</asp:ListItem>
                    <asp:ListItem Value="26.00">26.00</asp:ListItem>
				    <asp:ListItem Value="26.50">26.50</asp:ListItem>
				    <asp:ListItem Value="27.00">27.00</asp:ListItem>
                    <asp:ListItem Value="27.50">27.50</asp:ListItem>
                    <asp:ListItem Value="28.00">28.00</asp:ListItem>
				    <asp:ListItem Value="28.50">28.50</asp:ListItem>
				    <asp:ListItem Value="29.00">29.00</asp:ListItem>
                    <asp:ListItem Value="29.50">29.50</asp:ListItem>
                    <asp:ListItem Value="30.00">30.00</asp:ListItem>
				    <asp:ListItem Value="30.50">30.50</asp:ListItem>
				    <asp:ListItem Value="31.00">31.00</asp:ListItem>
                    <asp:ListItem Value="31.50">31.50</asp:ListItem>
                    <asp:ListItem Value="32.00">32.00</asp:ListItem>
				    <asp:ListItem Value="32.50">32.50</asp:ListItem>
                </asp:DropDownList>
            </td>
                            </tr>

                            <tr>
                                <th>Left Eye</th>
                                <td><asp:TextBox ID="tbxLPrism1" runat="server"></asp:TextBox></td>

            <td>
                <asp:DropDownList ID="ddlLDir1" runat="server">
                    <asp:ListItem Value="NONE">NONE</asp:ListItem>
				    <asp:ListItem Value="UP">UP</asp:ListItem>
				    <asp:ListItem Value="DOWN">DOWN</asp:ListItem>
                    <asp:ListItem Value="IN OUT">IN OUT</asp:ListItem>
                </asp:DropDownList>
            </td>
            
            <td><asp:TextBox ID="tbxLPrism2" runat="server"></asp:TextBox></td>
            
            <td>
                <asp:DropDownList ID="ddlLDir2" runat="server">
                    <asp:ListItem Value="NONE">NONE</asp:ListItem>
				    <asp:ListItem Value="UP">UP</asp:ListItem>
				    <asp:ListItem Value="DOWN">DOWN</asp:ListItem>
                    <asp:ListItem Value="IN OUT">IN OUT</asp:ListItem>
                </asp:DropDownList>
            </td>

            <td>
                <asp:DropDownList ID="ddlLPD" runat="server">
                    <asp:ListItem Value="20.00">20.00</asp:ListItem>
				    <asp:ListItem Value="20.50">20.50</asp:ListItem>
				    <asp:ListItem Value="21.00">21.00</asp:ListItem>
                    <asp:ListItem Value="21.50">21.50</asp:ListItem>
                    <asp:ListItem Value="22.00">22.00</asp:ListItem>
				    <asp:ListItem Value="22.50">22.50</asp:ListItem>
				    <asp:ListItem Value="23.00">23.00</asp:ListItem>
                    <asp:ListItem Value="23.50">23.50</asp:ListItem>
                    <asp:ListItem Value="24.00">24.00</asp:ListItem>
				    <asp:ListItem Value="24.50">24.50</asp:ListItem>
				    <asp:ListItem Value="25.00">25.00</asp:ListItem>
                    <asp:ListItem Value="25.50">25.50</asp:ListItem>
                    <asp:ListItem Value="26.00">26.00</asp:ListItem>
				    <asp:ListItem Value="26.50">26.50</asp:ListItem>
				    <asp:ListItem Value="27.00">27.00</asp:ListItem>
                    <asp:ListItem Value="27.50">27.50</asp:ListItem>
                    <asp:ListItem Value="28.00">28.00</asp:ListItem>
				    <asp:ListItem Value="28.50">28.50</asp:ListItem>
				    <asp:ListItem Value="29.00">29.00</asp:ListItem>
                    <asp:ListItem Value="29.50">29.50</asp:ListItem>
                    <asp:ListItem Value="30.00">30.00</asp:ListItem>
				    <asp:ListItem Value="30.50">30.50</asp:ListItem>
				    <asp:ListItem Value="31.00">31.00</asp:ListItem>
                    <asp:ListItem Value="31.50">31.50</asp:ListItem>
                    <asp:ListItem Value="32.00">32.00</asp:ListItem>
				    <asp:ListItem Value="32.50">32.50</asp:ListItem>
				    <asp:ListItem Value="33.00">33.00</asp:ListItem>
                    <asp:ListItem Value="33.50">33.50</asp:ListItem>
                    <asp:ListItem Value="34.00">34.00</asp:ListItem>
				    <asp:ListItem Value="34.50">34.50</asp:ListItem>
				    <asp:ListItem Value="35.00">35.00</asp:ListItem>
                    <asp:ListItem Value="35.50">35.50</asp:ListItem>
                    <asp:ListItem Value="36.00">36.00</asp:ListItem>
                    <asp:ListItem Value="36.50">36.50</asp:ListItem>
                    <asp:ListItem Value="37.00">37.00</asp:ListItem>
				    <asp:ListItem Value="37.50">37.50</asp:ListItem>
				    <asp:ListItem Value="38.00">38.00</asp:ListItem>
                    <asp:ListItem Value="38.50">38.50</asp:ListItem>
                    <asp:ListItem Value="39.00">39.00</asp:ListItem>
				    <asp:ListItem Value="39.50">39.50</asp:ListItem>
				    <asp:ListItem Value="40.00">40.00</asp:ListItem>
                </asp:DropDownList>
            </td>

            <td>
                <asp:DropDownList ID="ddlLFH" runat="server">
                    <asp:ListItem Value="C+2">C+2</asp:ListItem>
                    <asp:ListItem Value="C">C</asp:ListItem>
                    <asp:ListItem Value="10.00">10.00</asp:ListItem>
                    <asp:ListItem Value="10.50">10.50</asp:ListItem>
				    <asp:ListItem Value="11.00">11.00</asp:ListItem>
                    <asp:ListItem Value="11.50">11.50</asp:ListItem>
                    <asp:ListItem Value="12.00">12.00</asp:ListItem>
				    <asp:ListItem Value="12.50">12.50</asp:ListItem>
				    <asp:ListItem Value="13.00">13.00</asp:ListItem>
                    <asp:ListItem Value="13.50">13.50</asp:ListItem>
                    <asp:ListItem Value="14.00">14.00</asp:ListItem>
				    <asp:ListItem Value="14.50">14.50</asp:ListItem>
				    <asp:ListItem Value="15.00">15.00</asp:ListItem>
                    <asp:ListItem Value="15.50">15.50</asp:ListItem>
                    <asp:ListItem Value="16.00">16.00</asp:ListItem>
				    <asp:ListItem Value="16.50">16.50</asp:ListItem>
				    <asp:ListItem Value="17.00">17.00</asp:ListItem>
                    <asp:ListItem Value="17.50">17.50</asp:ListItem>
                    <asp:ListItem Value="18.00">18.00</asp:ListItem>
				    <asp:ListItem Value="18.50">18.50</asp:ListItem>
				    <asp:ListItem Value="19.00">19.00</asp:ListItem>
                    <asp:ListItem Value="19.50">19.50</asp:ListItem>
                    <asp:ListItem Value="20.00">20.00</asp:ListItem>
				    <asp:ListItem Value="20.50">20.50</asp:ListItem>
				    <asp:ListItem Value="21.00">21.00</asp:ListItem>
                    <asp:ListItem Value="21.50">21.50</asp:ListItem>
                    <asp:ListItem Value="22.00">22.00</asp:ListItem>
				    <asp:ListItem Value="22.50">22.50</asp:ListItem>
				    <asp:ListItem Value="23.00">23.00</asp:ListItem>
                    <asp:ListItem Value="23.50">23.50</asp:ListItem>
                    <asp:ListItem Value="24.00">24.00</asp:ListItem>
				    <asp:ListItem Value="24.50">24.50</asp:ListItem>
				    <asp:ListItem Value="25.00">25.00</asp:ListItem>
                    <asp:ListItem Value="25.50">25.50</asp:ListItem>
                    <asp:ListItem Value="26.00">26.00</asp:ListItem>
				    <asp:ListItem Value="26.50">26.50</asp:ListItem>
				    <asp:ListItem Value="27.00">27.00</asp:ListItem>
                    <asp:ListItem Value="27.50">27.50</asp:ListItem>
                    <asp:ListItem Value="28.00">28.00</asp:ListItem>
				    <asp:ListItem Value="28.50">28.50</asp:ListItem>
				    <asp:ListItem Value="29.00">29.00</asp:ListItem>
                    <asp:ListItem Value="29.50">29.50</asp:ListItem>
                    <asp:ListItem Value="30.00">30.00</asp:ListItem>
				    <asp:ListItem Value="30.50">30.50</asp:ListItem>
				    <asp:ListItem Value="31.00">31.00</asp:ListItem>
                    <asp:ListItem Value="31.50">31.50</asp:ListItem>
                    <asp:ListItem Value="32.00">32.00</asp:ListItem>
				    <asp:ListItem Value="32.50">32.50</asp:ListItem>
                </asp:DropDownList>
            </td>
                            </tr>
                        </table>
    <table class="form-group" style="padding: 10px 0px 0px 0px; margin: 10px 0px 0px 0px;">
    <tr class="form-control"><td style="width: 140px">Frame Details:</td> <td><asp:DropDownList ID="ddlFrameDetails" runat="server" Width="140px">
                    <asp:ListItem Value="Frame Enclosed">Frame Enclosed</asp:ListItem>
				    <asp:ListItem Value="Supply Frame">Supply Frame</asp:ListItem>
				    <asp:ListItem Value="Frame to Follow">Frame to Follow</asp:ListItem>
                </asp:DropDownList></td></tr>
    <tr class="form-control"><td style="width: 140px">Frame Style:</td> <td><asp:TextBox ID="tbxFrame" runat="server" Width="140px"></asp:TextBox></td></tr>
    <tr class="form-control"><td style="width: 140px">Frame Colour:</td> <td><asp:TextBox ID="tbxColour" runat="server" Width="140px"></asp:TextBox></td></tr>
    <tr class="form-control"><td style="width: 140px">Special Instructions:</td> <td><asp:TextBox ID="tbxSpecial" runat="server" Width="280px" Height="48px" Rows="2" TextMode="MultiLine"></asp:TextBox></td></t>
    <tr class="form-control"><td><asp:Button ID="btnSubmit" text="Submit" CssClass="btn-default" runat="server"></asp:Button></td></tr>
    </table>
                        </form>
                </div>
            </div>
            </div>
        </section>
       
</asp:Content>
