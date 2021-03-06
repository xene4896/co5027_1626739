﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.Owin.Security;

namespace co5027_1626739_assignment
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            var identityDbContext = new IdentityDbContext("IdentityConnectionString");
            var userStore = new UserStore<IdentityUser>(identityDbContext);
            var userManager = new UserManager<IdentityUser>(userStore);

            var roleStore = new RoleStore<IdentityRole>(identityDbContext);
            var roleManager = new RoleManager<IdentityRole>(roleStore);
            IdentityRole adminRole = new IdentityRole("admin");
            roleManager.Create(adminRole);

            var user = new IdentityUser() { UserName = txtUserName.Text, Email = txtEmail.Text };
            IdentityResult result = userManager.Create(user, txtPassword.Text);
            if (result.Succeeded){
                {
                    userManager.AddToRole(user.Id, "user");
                    userManager.Update(user);
                    litRegisterError.Text = "Registration success.";
                }
            }
            else{
                litRegisterError.Text = "An error has occured: " + result.Errors.FirstOrDefault();
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            var identityDbContext = new IdentityDbContext("IdentityConnectionString");
            var userStore = new UserStore<IdentityUser>(identityDbContext);
            var userManager = new UserManager<IdentityUser>(userStore);
            var user = userManager.Find(txtLogInUser.Text, txtLogInPassword.Text);
            if (user != null)
            {
                LogUserIn(userManager, user);
                litLoginError.Text = "Login successful.";
                Page.Response.Redirect("~/default.aspx");
            }
            else
            {
                litLoginError.Text = "Invalid username or password.";
            }
        }

        private void LogUserIn(UserManager<IdentityUser> userManager, IdentityUser user)
        {
            var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
            var userIdentity = userManager.CreateIdentity(user, DefaultAuthenticationTypes.ApplicationCookie);
            authenticationManager.SignIn(new AuthenticationProperties() { }, userIdentity);
        }
    }
}