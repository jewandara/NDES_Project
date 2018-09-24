<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="NDES._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
		<!-- BEGIN LOGIN FORM -->
		<form class="form-vertical login-form">
			<h3 class="form-title">LOGIN NDES ACCOUNT</h3>
            <asp:Login ID="LoginUser" runat="server" EnableViewState="false" RenderOuterTable="false">
                <LayoutTemplate>
			        <div class="alert alert-error hide">
				        <button class="close" data-dismiss="alert"></button>
                        <span class="failureNotification">
                            <asp:Literal ID="FailureText" runat="server"></asp:Literal>
                        </span>
			        </div>
                    <asp:ValidationSummary ID="LoginUserValidationSummary" runat="server" CssClass="failureNotification" ValidationGroup="LoginUserValidationGroup"/>
			        
                    <div class="control-group">
				        <label class="control-label visible-ie8 visible-ie9">Username</label>
				        <div class="controls">
					        <div class="input-icon left">
						        <i class="icon-user"></i>
                                <asp:TextBox ID="UserName" runat="server" CssClass="m-wrap placeholder-no-fix" autocomplete="off" placeholder="Username" name="username"></asp:TextBox>
					                <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" 
                                     CssClass="failureNotification" ErrorMessage="User Name is required." ToolTip="User Name is required." 
                                     ValidationGroup="LoginUserValidationGroup">*</asp:RequiredFieldValidator>
                            </div>
				        </div>
			        </div>

			        <div class="control-group">
				        <label class="control-label visible-ie8 visible-ie9">Password</label>
				        <div class="controls">
					        <div class="input-icon left">
						        <i class="icon-lock"></i>
                                <asp:TextBox ID="Password" runat="server" CssClass="m-wrap placeholder-no-fix" TextMode="Password" autocomplete="off" placeholder="Password" name="password"></asp:TextBox>
						            <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" 
                                        CssClass="failureNotification" ErrorMessage="Password is required." ToolTip="Password is required." 
                                        ValidationGroup="LoginUserValidationGroup">*</asp:RequiredFieldValidator>
					        </div>
				        </div>
			        </div>

			        <div class="form-actions">
				        <label class="checkbox">
                            <asp:CheckBox ID="RememberMe" runat="server" Text="Remember Me" name="remember" value="1"/>
				        </label>
                        <asp:Button ID="LoginButton" runat="server" CommandName="Login" Text="LOGIN" ValidationGroup="LoginUserValidationGroup" CssClass="btn blue pull-right" />
			        </div>

			        <div class="forget-password">
                        <p><a href="javascript:;"  id="forget-password"><h4>Forgot Your Password ?</h4></a></p>
			        </div>

			        <div class="create-account">
				        <p>
					        Don't have an Account yet ?&nbsp; <a href="javascript:;" id="register-btn" >Register Account</a>
				        </p>
			        </div>

                </LayoutTemplate>
            </asp:Login>
		</form>
		<!-- END LOGIN FORM -->
</asp:Content>
