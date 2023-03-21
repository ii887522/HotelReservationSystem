using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HotelReservationSystem
{
    public partial class ForgotPassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ddlRecoverBy_SelectedIndexChanged(object sender, EventArgs e)
        {
            switch (ddlRecoverBy.SelectedValue)
            {
                case "Email Address":
                    lblRecoverMethod.Text = "Email address";
                    txtRecover.TextMode = TextBoxMode.SingleLine;
                    txtRecover.Text = "";
                    break;

                case "Mobile Phone":
                    lblRecoverMethod.Text = "Mobile phone";
                    txtRecover.TextMode = TextBoxMode.Phone;
                    txtRecover.Text = "";
                    break;
            }
        }
    }
}
