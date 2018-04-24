using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Game : System.Web.UI.Page
{
    Random rand = new Random();
    int x ;
    int z;
    bool isGenerate = false ;
    protected void Page_Load(object sender, EventArgs e)
    {

       
    }
   

    private void GenerateNumber()
    {
        
        if (isGenerate == false)
        {
            x = rand.Next(0, 100);
            Response.Cookies["GameData"]["Number"] = x.ToString();
            Label1.Text = x.ToString();
            isGenerate = true;
        }
        


    }
    public void Poznai()
   {
        z = Int32.Parse(TextBox1.Text);
        if (z == Int32.Parse(Request.Cookies["GameData"]["Number"]))
        {
            Label1.Text = "Pozna";
        }
        else if (z > Int32.Parse(Request.Cookies["GameData"]["Number"]))
        {
            Label1.Text = "Probvaite s po malko chislo";
        }
        else if (z < Int32.Parse(Request.Cookies["GameData"]["Number"]))
        {
            Label1.Text = "Probvaite s po golqmo chislo";
        }

        Label1.Text += x.ToString();
        
    }




    protected void Button1_Click(object sender, EventArgs e)
    {
        Poznai();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        GenerateNumber();
    }
}