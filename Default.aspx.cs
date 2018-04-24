using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }
    protected void ButtonSaveInViewState_Click(object sender, EventArgs e)
    {
        SaveInViewState();
    }
    protected void ButtonLoadFromViewState_Click(object sender, EventArgs e)
    {
        LoadFromViewState();
    }
    protected void ButtonClearViewState_Click(object sender, EventArgs e)
    {
        ClearViewState();
    }

    protected void ButtonSaveInCookie_Click(object sender, EventArgs e)
    {
        SaveInCookie();
    }

    protected void ButtonLoadFromCookie_Click(object sender, EventArgs e)
    {
        LoadFromCookie();
    }

    private void LoadFromCookie()
    {
        if (Request.Cookies["TestCookies"] != null)
        {
            string roll;
            roll = Request.Cookies["TestCookies"]["Name"];
            roll = roll + " " + Request.Cookies["TestCookies"]["Phone"];
            LabelCookieInfo.Text = roll;
        }
        else
        {
            LabelCookieInfo.Text = "Cookie expire!";
        }
    }

    
    private void SaveInCookie()
    {
        HttpCookie StudentCookies = new HttpCookie("TestCookies");

        Response.Cookies["TestCookies"]["Name"] = TextBoxCookieName.Text;
        Response.Cookies["TestCookies"]["Phone"] = TextBoxCookiePhone.Text;
        Response.Cookies["TestCookies"].Expires = DateTime.Now.AddSeconds(15);
    }

    private void ClearViewState()
    {
        ViewState["FirstName"] = string.Empty;
        ViewState["LastName"] = string.Empty;
        ViewState["Phone"] = string.Empty;
    }

    private void SaveInViewState()
    {
        ViewState["FirstName"] = TextBoxFirstName.Text;
        ViewState["LastName"] = TextBoxLastName.Text;
        ViewState["Phone"] = TextBoxPhone.Text;
    }

    private void LoadFromViewState()
    {
        if (ViewState["FirstName"] != null)
        {
            TextBoxFName.Text = ViewState["FirstName"].ToString();
        }
        if (ViewState["LastName"] != null)
        {
            TextBoxLName.Text = ViewState["LastName"].ToString();
        }
        if (ViewState["Phone"] != null)
        {
            TextBoxvPhone.Text = ViewState["Phone"].ToString();
        }
    }


    protected void ButtonTest_Click(object sender, EventArgs e)
    {
        TextBoxPhone.Text = TextBoxFirstName.Text + " " +TextBoxLastName.Text;

        
    }
}