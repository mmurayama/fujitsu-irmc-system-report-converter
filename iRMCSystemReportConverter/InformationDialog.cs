using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Windows.Forms;

namespace iRMCSystemReportConverter
{
    public partial class InformationDialog : Form
    {
        public InformationDialog()
        {
            InitializeComponent();

            Assembly mainAssembly = Assembly.GetEntryAssembly();
            string appCopyright = "-";
            object[] CopyrightArray =
              mainAssembly.GetCustomAttributes(
                typeof(AssemblyCopyrightAttribute), false);
            if ((CopyrightArray != null) && (CopyrightArray.Length > 0))
            {
                appCopyright =
                  ((AssemblyCopyrightAttribute)CopyrightArray[0]).Copyright;
            }

            label12.Text = Application.ProductName;
            label2.Text = Application.ProductVersion;
            label4.Text = "Masahiro Murayama";
            label6.Text = appCopyright;

        }
    }
}
