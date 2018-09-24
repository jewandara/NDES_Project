using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NDES
{
    public partial class Recover : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void backButton_Click(object sender, EventArgs e)
        {
        }

        protected void submitButton_Click(object sender, EventArgs e)
        {
            ndesResetPanelOne.Visible = false;
            ndesResetOkPanel.Visible = true;
        }

        protected void okButton_Click(object sender, EventArgs e)
        {
        }
    }
}