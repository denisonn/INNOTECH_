using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Page_PRuta : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        RadioButtonList1.RepeatDirection = RepeatDirection.Horizontal;
        string DayOfWeek = DateTime.Now.DayOfWeek.ToString("D");

        #region
        /*
         * Días de la semana:
         * 1 - Lunes; 
         * 2 - Martes; 
         * 3 - Miercoles; 
         * 4 - Jueves;
         * 5 - Viernes;
         * 6 - Sabado;
         * 7 - Domingo;
        */
        #endregion

        Debug.WriteLine("DayOfWeek: " + DayOfWeek);

        switch (DayOfWeek)
        {
            case "1": //Lunes
                RadioButtonList1.Items[1].Selected = true;
                break;
            case "2": //Martes
                RadioButtonList1.Items[2].Selected = true;
                break;
            case "3": //Miercoles
                RadioButtonList1.Items[3].Selected = true;
                break;
            case "4": //Jueves
                RadioButtonList1.Items[4].Selected = true;
                break;
            case "5": //Viernes
                RadioButtonList1.Items[5].Selected = true;
                break;
            case "6": //Sabado
                RadioButtonList1.Items[6].Selected = true;
                break;
            case "7": //Domingo
                RadioButtonList1.Items[0].Selected = true;
                break;
        }
    }
}