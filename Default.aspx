<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register TagPrefix="my" TagName="MainMenu" Src="~/moduls/MainMenu.ascx" %>
<%@ Register TagPrefix="my" TagName="Footer" Src="~/moduls/Footer.ascx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Menu" runat="Server">
    <my:MainMenu ID="MainMenu" runat="server" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="Server">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h3>ViewState Example</h3> 
            </div>
        </div>
        <div class="row">
            <div class="col-md-6">
                <asp:Label ID="LabelFirstName" runat="server" Text="FirstName"></asp:Label><br />
                <asp:TextBox ID="TextBoxFirstName" runat="server"></asp:TextBox><br />
                <asp:Label ID="LabelLastName" runat="server" Text="LastName"></asp:Label><br />
                <asp:TextBox ID="TextBoxLastName" runat="server"></asp:TextBox><br />
                <asp:Label ID="LabelPhone" runat="server" Text="Phone"></asp:Label><br />
                <asp:TextBox ID="TextBoxPhone" runat="server"></asp:TextBox><br />
                <br />
                <asp:Button ID="ButtonSaveInViewState" runat="server" Text="Save in ViewState" OnClick="ButtonSaveInViewState_Click" />
            </div>
            <div class="col-md-6">
                <asp:Label ID="LabelFName" runat="server" Text="FirstName"></asp:Label><br />
                <asp:TextBox ID="TextBoxFName" runat="server" Enabled="False"></asp:TextBox><br />
                <asp:Label ID="LabelLName" runat="server" Text="LastName"></asp:Label><br />
                <asp:TextBox ID="TextBoxLName" runat="server" Enabled="False"></asp:TextBox><br />
                <asp:Label ID="LabelvPhone" runat="server" Text="Phone"></asp:Label><br />
                <asp:TextBox ID="TextBoxvPhone" runat="server" Enabled="False"></asp:TextBox><br />
                <br />
                <asp:Button ID="ButtonLoadFromViewState" runat="server" Text="Load from ViewState" OnClick="ButtonLoadFromViewState_Click" />
                <asp:Button ID="ButtonClearViewState" runat="server" Text="Clear ViewState" OnClick="ButtonClearViewState_Click" />
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <h3>Cookie Example</h3>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6">
                <asp:Label ID="LabelCookieName" runat="server" Text="Name"></asp:Label><br />
                <asp:TextBox ID="TextBoxCookieName" runat="server"></asp:TextBox><br />
                <asp:Label ID="LabelCookiePhone" runat="server" Text="Phone"></asp:Label><br />
                <asp:TextBox ID="TextBoxCookiePhone" runat="server"></asp:TextBox><br />
                <br />
                <asp:Button ID="ButtonSaveInCookie" runat="server" Text="Save in Cookie" OnClick="ButtonSaveInCookie_Click" /><br />
            </div>
            <div class="col-md-6">
            <asp:Label ID="LabelCookieInfo" runat="server" Text="Label"></asp:Label>
             <asp:Button ID="ButtonLoadFromCookie" runat="server" Text="LoadCookie" OnClick="ButtonLoadFromCookie_Click" />
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Footer" runat="Server">
    <my:Footer ID="Footer" runat="server" />
</asp:Content>

