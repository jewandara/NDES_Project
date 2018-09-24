<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Recover.aspx.cs" Inherits="NDES.Recover" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">


		<!-- BEGIN FORGOT PASSWORD FORM -->
		<form class="form-vertical forget-form">
            <h3 >RESET PASSWORD</h3>

            <asp:Panel ID="ndesResetPanelOne" runat="server">

     	        <p>Enter Your E-mail Address and Username Below to Reset Your Password.</p>

			    <div class="control-group">
				    <div class="controls">
					    <div class="input-icon left">
						    <i class="icon-envelope"></i>
						    <input class="m-wrap placeholder-no-fix" type="text" placeholder="Email" autocomplete="off" name="email" />
					    </div>
				    </div>
			    </div>

			    <div class="control-group">
				    <label class="control-label visible-ie8 visible-ie9">Username</label>
				    <div class="controls">
					    <div class="input-icon left">
						    <i class="icon-user"></i>
						    <input class="m-wrap placeholder-no-fix" type="text" autocomplete="off" placeholder="Username" name="username"/>
					    </div>
				    </div>
			    </div>

   			    <div class="form-actions">
                    <asp:Button ID="backButton" runat="server" Text="BACK" CssClass="btn" onclick="backButton_Click"/>
                    <asp:Button ID="submitForm" runat="server" Text="SUBMIT" CssClass="btn blue pull-right" onclick="submitButton_Click" />
			    </div>

            </asp:Panel>




            <asp:Panel ID="ndesResetOkPanel" runat="server" Visible="False">
     	        <p>Your Password has been Successfully Sent to Your E-mail Address.<br />If Not Call administrator.</p>

                <div class="form-actions">
                    <asp:Button ID="Button2" runat="server" Text="OK" CssClass="btn blue pull-right" onclick="okButton_Click" />
			    </div>
            </asp:Panel>

		</form>
		<!-- END FORGOT PASSWORD FORM -->






</asp:Content>
