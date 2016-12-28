using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SimpleCalculator;

public partial class lab2 : System.Web.UI.Page
{
    double a, b, result;
    int action;
    protected void Page_Load(object sender, EventArgs e) { }
    //Додавання 
    protected void ButtonAdd_Click(object sender, EventArgs e)
    {
        ActionControl(1);
    }
    //Віднімання 
    protected void ButtonMin_Click(object sender, EventArgs e)
    {
        ActionControl(2);
    }
    //Множення 
    protected void ButtonMul_Click(object sender, EventArgs e)
    {
        ActionControl(3);
    }
    //Ділення 
    protected void ButtonDiv_Click(object sender, EventArgs e)
    {
        ActionControl(4);
    }
    //Дорівнює 
    protected void ButtonResult_Click(object sender, EventArgs e)
    {
        try
        {
            a = (double)ViewState["a"];
            b = Convert.ToDouble(TextBox1.Text);
            action = (int)ViewState["action"];
            switch (action)
            {
                case 1:
                    TextBox1.Text = Convert.ToString(SCClass.Addition(a, b));
                    ViewState["b"] = TextBox1.Text;
                    break;
                case 2:
                    TextBox1.Text = Convert.ToString(SCClass.Subtraction(a, b));
                    ViewState["b"] = TextBox1.Text;
                    break;
                case 3:
                    TextBox1.Text = Convert.ToString(SCClass.Multiplication(a, b));
                    ViewState["b"] = TextBox1.Text;
                    break;
                case 4:
                    TextBox1.Text = Convert.ToString(SCClass.Division(a, b));
                    ViewState["b"] = TextBox1.Text;
                    break;
            }
        }
        catch
        {
            ERROR();
        }
    }
    //Операції 
    public void ActionControl(int act)
    {
        try
        {
            if (ViewState["b"] != null)
            {
                a = (double)ViewState["b"];
                action = (int)ViewState["action"];
                b = Convert.ToDouble(TextBox1.Text);
                switch (action)
                {
                    case 1:
                        result = (SCClass.Addition(a, b));
                        ViewState["b"] = result;
                        break;
                    case 2:
                        result = (SCClass.Subtraction(a, b));
                        ViewState["b"] = result;
                        break;
                    case 3:
                        result = (SCClass.Multiplication(a, b));
                        ViewState["b"] = result;
                        break;
                    case 4:
                        result = (SCClass.Division(a, b));
                        ViewState["b"] = result;
                        break;
                }
                ViewState["a"] = result;
                ViewState["action"] = act;
                TextBox1.Text = null;
            }
            else
            {
                a = Convert.ToDouble(TextBox1.Text);
                ViewState["a"] = a;
                ViewState["b"] = a;
                ViewState["action"] = act;
                TextBox1.Text = null;
            }
        }
        catch { ERROR(); }
    }
    // Очищення 
    protected void ButtonDel_Click(object sender, EventArgs e)
    {
        ViewState["a"] = null;
        ViewState["b"] = null;
        ViewState["action"] = null;
        TextBox1.Text = null;
        a = 0;
        b = 0;
    }
    // Помилка 
    public void ERROR()
    {
        Label1.Text = "Неправильний ввід, насисніть C і повторіть спробу !";
    }

    protected void Button_Click(object sender, EventArgs e)
    {

    }
}
