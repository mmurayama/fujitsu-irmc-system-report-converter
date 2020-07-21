using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Xml;
using System.Xml.Xsl;

namespace iRMCSystemReportConverter
{
    public partial class MainWindow : Form
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        private void CancelButton_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void InputBrowse_Click(object sender, EventArgs e)
        {
            if (this.openInputFileDialog.ShowDialog() == DialogResult.OK)
            {
                this.InputTextBox.Text = this.openInputFileDialog.FileName;
            }
        }

        private void OutputBrowse_Click(object sender, EventArgs e)
        {
            if (this.outputFolderBrowserDialog.ShowDialog() == DialogResult.OK) 
            {
                this.OutputTextBox.Text = this.outputFolderBrowserDialog.SelectedPath;
            }
        }

        private void CreateButton_Click(object sender, EventArgs e)
        {
            string xmlfilename = "";
            string htmlfilename = "";
            string outdir = "";
            string outfile = "";
            string stylesheet = "";

            if (this.InputTextBox.Text == "")
            {
                MessageBox.Show("Please specify the XML file.", "Error", MessageBoxButtons.OK,  MessageBoxIcon.Error);
                return;
            }

            // if the outpu folder is empty, use the same folder as the input file.
            if (this.OutputTextBox.Text == "")
            {
                outdir = System.IO.Path.GetDirectoryName(InputTextBox.Text);
            }
            else
            {
                outdir = this.OutputTextBox.Text;
            }

            xmlfilename = System.IO.Path.GetFileName(this.InputTextBox.Text);
            htmlfilename = System.IO.Path.ChangeExtension(xmlfilename, "html");
            outfile = outdir + "\\" + htmlfilename;

            try
            {
                // Parse the input XML file.
                XmlDocument xmldoc = new XmlDocument();
                xmldoc.Load(InputTextBox.Text);

                // Check the input XML type; iRMC System Report, PCSysScan, or SVRAIDLog (or OCManager XML)
                XmlNodeList xnl = xmldoc.SelectNodes("/Root/Summary/Created/OS");
            
                if (xnl[0] == null)
                {
                    XmlNodeList xnl2 = xmldoc.SelectNodes("/Hosts");

                    if (xnl2[0] == null)
                    {
                        // RAID Log
                        stylesheet = Properties.Resources.RAIDLog;
                    }
                    else
                    {
                        // OCManager Log
                        stylesheet = Properties.Resources.OCManager;
                    }
                }
                else
                {
                    if (xnl[0].InnerText.Contains("iRMC"))
                    {
                        stylesheet = Properties.Resources.IRMCSystemReport;
                    }
                    else
                    {
                        stylesheet = Properties.Resources.PCSysScan;
                    }
                }
                
                // Load the stylesheet.
                XslCompiledTransform xslt = new XslCompiledTransform();
                xslt.Load(new XmlTextReader(new System.IO.StringReader(stylesheet)));
                using (XmlWriter xw = XmlWriter.Create(outfile))
                {
                    // Convert the XML file to HTML.
                    xslt.Transform(xmldoc, xw);
                    xw.Flush();

                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }
            MessageBox.Show(htmlfilename + " has been generated successfully.", "Result");
            System.Diagnostics.Process.Start(outfile);
        }

        private void quitToolStripMenuItem_Click(object sender, EventArgs e)
        {
            this.Close();
            this.Dispose();
        }

        private void infoToolStripMenuItem_Click(object sender, EventArgs e)
        {
            InformationDialog id = new InformationDialog();
            DialogResult idres = id.ShowDialog(this);
        }

        private void openFileDialog1_FileOk(object sender, CancelEventArgs e)
        {

        }

        private void InputTextBox_DragDrop(object sender, DragEventArgs e)
        {
            var files = e.Data.GetData(DataFormats.FileDrop) as string[];
            string filePath = files.First();
            InputTextBox.Text = filePath;
        }

        private void InputTextBox_DragEnter(object sender, DragEventArgs e)
        {
            if (e.Data.GetDataPresent(DataFormats.FileDrop))
            {
                e.Effect = DragDropEffects.All;
            }
            else
            {
                e.Effect = DragDropEffects.None;
            }

        }
    }
}