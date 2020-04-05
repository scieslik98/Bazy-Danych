<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Rejestracja.aspx.cs" Inherits="Bazy_Danych_Zal.Rejestracja" MasterPageFile="~/Site.Master" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
        <div class ="row">
                    <% if (Session["login"] == null){ %>
                        <h1>Rejestracja</h1>
                        <label>Login</label>
                        <input type="text" class="form-control" id="login" name="login" required />
                        <label>Hasło</label>
                        <input type="password" class="form-control" id="haslo" name="haslo" required />
                        <label>Email</label>
                        <input type="password" class="form-control" id="email" name="email" required />
                        <asp:Button runat="server" CommandName="Rejestracja" Text="Zarejestruj" OnClick="Rejestracja_uzyt"/>
                        <div id="invalidDataRegister" runat="server"></div>
                    <% }

                    else { %>
                        <h1>Użytkownik który jest już zalogowany nie może się zalogować wyloguj się aby się zarejestrować</h1>
                   <% } %>
</asp:Content>
