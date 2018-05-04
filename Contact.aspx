<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Cigars_and_Cigarettes.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Heading2" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Content" runat="server">
    

        <asp:ValidationSummary runat="server" ID="sumarry"></asp:ValidationSummary>
        


        E-Mail:<asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator runat="server" ErrorMessage="Email is required" ForeColor="Red" ID="reqEmail" ControlToValidate="txtEmail" Display="None"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator runat="server" ErrorMessage="RegularExpressionValidator" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ID="ValidEmail" ForeColor="Red" Display="None" ControlToValidate="txtEmail"></asp:RegularExpressionValidator> <br />
        
        Subject:<asp:TextBox ID="txtSubject" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator runat="server" ErrorMessage="Subject is required" ID="reqSubject" ControlToValidate="txtSubject" ForeColor="Red" Display="None"></asp:RequiredFieldValidator> <br />
        
        
        Text Message:<asp:TextBox ID="txtbody" runat="server" TextMode="MultiLine">
        </asp:TextBox><asp:RequiredFieldValidator runat="server" ErrorMessage="Please input your message" ID="reqTxt" ControlToValidate="txtbody" ForeColor="Red" Display="None"></asp:RequiredFieldValidator> <br />
        
        
        <asp:Button ID="btnsend" runat="server" Text="Submit" Onclick="btnsendemail_Click" />
       
        
        <asp:Literal ID="litResult" runat="server"></asp:Literal>

        <br />
        <br />
        <br />
    <div class="mapPETAK">
         <div id="map">
      <script>
       var map;
      function initMap() {
          
              
              var collegeLatLng = { lat: 4.885731, lng: 114.931669 };
              var map = new google.maps.Map(document.getElementById('map'), {
                  zoom: 19,
                  center: collegeLatLng
              });
              
              var contentString1 = '<div id="content">' +
                  '<div id="siteNotice">' +
                  '</div>' +
                  '<h1 id="firstHeading" class="firstHeading">Laksamana College of Business</h1>' +
                  '<div id="bodyContent">' +
                  '<p><b>College located here!</b></p>' +
                  '</div>' +
                  '</div>';
              
              var infowindow1 = new google.maps.InfoWindow({
                  content: contentString1
              });
             
             
              var marker1 = new google.maps.Marker({
                  position: collegeLatLng,
                  map: map,
                  title: 'Laksamana College of Business'
              });
              marker1.addListener('click', function () {
                  infowindow1.open(map, marker1);
              });
      }
            </script>

        <script async defer
      src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBcL2eLG4hQ-Md-6FzzSGns7eAPqdvr_2I&callback=initMap">
    </script>

            </div>
    </div>
        <br />
        <br />
        <br />

       
   
</asp:Content>

