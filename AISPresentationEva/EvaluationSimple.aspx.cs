using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using Xceed.Words.NET;

namespace AISPresentationEva
{
    public partial class EvaluationSimple : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSaveDoc_Click(object sender, EventArgs e)
        {

            if (Page.IsValid)
            {
                //validate is successful.


                //string file = TxtStudentID.Text;
                string fileName = string.Format(@"{0}-{1}.docx", DateTime.Today.Year.ToString(), TxtStudentID.Text);
                var doc = DocX.Create(Server.MapPath(fileName));

                doc.InsertParagraph("Student ID: " + TxtStudentID.Text);
                doc.InsertParagraph("Student Name: " + TxtStudentName.Text);
                doc.InsertParagraph("Topic of presentation: " + TxtTopic.Text);
                doc.InsertParagraph("");



                #region Section1

                ////Create Table with 5 rows and 5 columns.  
                Xceed.Words.NET.Table t = doc.AddTable(5, 5);
                t.Alignment = Alignment.center;
                t.Design = TableDesign.ColorfulList;


                //int col, row;
                //col = row = 0;
                //foreach (HtmlTableRow tr in tbContent.Rows)
                //{
                //    foreach (HtmlTableCell tc in tr.Cells)
                //    {
                //        if (tc.Controls.Count == 1)
                //            t.Rows[row].Cells[col].Paragraphs.First().Append(tc.InnerText.Trim());
                //        else
                //        {
                //            t.Rows[row].Cells[col].Paragraphs.First().Append(((RadioButton)tc.Controls[1]).Text.Trim());
                //            if (((RadioButton)tc.Controls[1]).Checked) {
                //                t.Rows[row].Cells[col].Paragraphs.First().Bold();
                //                //t.Rows[row].Cells[col].FillColor = WebColorConverter
                //            }
                //        }
                //        col++;
                //    }

                //    col = 0;
                //    row++;
                //}



                t.Rows[0].Cells[0].Paragraphs.First().Append("Content structure / ideas");
                t.Rows[0].Cells[1].Paragraphs.First().Append("4 - Excellent");
                t.Rows[0].Cells[2].Paragraphs.First().Append("3 - Good");
                t.Rows[0].Cells[3].Paragraphs.First().Append("2 - Fair");
                t.Rows[0].Cells[4].Paragraphs.First().Append("1 - Poor");

                t.Rows[1].Cells[0].Paragraphs.First().Append("Focus");
                t.Rows[1].Cells[1].Paragraphs.First().Append("Purpose of presentation is clear from the outset. Supporting ideas maintain clear focus on the topic.");
                t.Rows[1].Cells[2].Paragraphs.First().Append("Topic of the presentation is clear. Content generally supports the purpose");
                t.Rows[1].Cells[3].Paragraphs.First().Append("Presentation lacks clear direction. Big ideas not specifically identified.");
                t.Rows[1].Cells[4].Paragraphs.First().Append("No focus at all. Audience cannot determine purpose of presentation.");

                if (rbFocusE.Checked)
                {
                    t.Rows[1].Cells[1].Paragraphs.First().Bold();
                    t.Rows[1].Cells[1].FillColor = System.Drawing.Color.PaleGreen;
                }

                if (rbFocusG.Checked)
                {
                    t.Rows[1].Cells[2].Paragraphs.First().Bold();
                    t.Rows[1].Cells[2].FillColor = System.Drawing.Color.PaleGreen;
                }

                if (rbFocusF.Checked)
                {
                    t.Rows[1].Cells[3].Paragraphs.First().Bold();
                    t.Rows[1].Cells[3].FillColor = System.Drawing.Color.PaleGreen;
                }

                if (rbFocusP.Checked)
                {
                    t.Rows[1].Cells[4].Paragraphs.First().Bold();
                    t.Rows[1].Cells[4].FillColor = System.Drawing.Color.PaleGreen;
                }



                t.Rows[2].Cells[0].Paragraphs.First().Append("Organization");
                t.Rows[2].Cells[1].Paragraphs.First().Append("Student presents information in logical, interesting sequence that audience follows.");
                t.Rows[2].Cells[2].Paragraphs.First().Append("Student presents information in logical sequence that audience can follow");
                t.Rows[2].Cells[3].Paragraphs.First().Append("Audience has difficulty following because student jumps around.");
                t.Rows[2].Cells[4].Paragraphs.First().Append("Audience cannot understand because there is no sequence of information.");

                if (rbOrganizationE.Checked)
                {
                    t.Rows[2].Cells[1].Paragraphs.First().Bold();
                    t.Rows[2].Cells[1].FillColor = System.Drawing.Color.PaleGreen;
                }

                if (rbOrganizationG.Checked)
                {
                    t.Rows[2].Cells[2].Paragraphs.First().Bold();
                    t.Rows[2].Cells[2].FillColor = System.Drawing.Color.PaleGreen;
                }

                if (rbOrganizationF.Checked)
                {
                    t.Rows[2].Cells[3].Paragraphs.First().Bold();
                    t.Rows[2].Cells[3].FillColor = System.Drawing.Color.PaleGreen;
                }

                if (rbOrganizationP.Checked)
                {
                    t.Rows[2].Cells[4].Paragraphs.First().Bold();
                    t.Rows[2].Cells[4].FillColor = System.Drawing.Color.PaleGreen;
                }



                t.Rows[3].Cells[0].Paragraphs.First().Append("Visual Aids");
                t.Rows[3].Cells[1].Paragraphs.First().Append("Visual aids are readable, clear and professional looking, enhancing the message.");
                t.Rows[3].Cells[2].Paragraphs.First().Append("Visual aids are mostly readable, clear and professional looking.");
                t.Rows[3].Cells[3].Paragraphs.First().Append("Significant problems with readability, clarity, professionalism of visual aids.");
                t.Rows[3].Cells[4].Paragraphs.First().Append("Visual aids are all unreadable, unclear and/or unprofessional.");

                if (rbVisualE.Checked)
                {
                    t.Rows[3].Cells[1].Paragraphs.First().Bold();
                    t.Rows[3].Cells[1].FillColor = System.Drawing.Color.PaleGreen;
                }

                if (rbVisualG.Checked)
                {
                    t.Rows[3].Cells[2].Paragraphs.First().Bold();
                    t.Rows[3].Cells[2].FillColor = System.Drawing.Color.PaleGreen;
                }

                if (rbVisualF.Checked)
                {
                    t.Rows[3].Cells[3].Paragraphs.First().Bold();
                    t.Rows[3].Cells[3].FillColor = System.Drawing.Color.PaleGreen;
                }

                if (rbVisualP.Checked)
                {
                    t.Rows[3].Cells[4].Paragraphs.First().Bold();
                    t.Rows[3].Cells[4].FillColor = System.Drawing.Color.PaleGreen;
                }



                t.Rows[4].Cells[0].Paragraphs.First().Append("Question & Answer");
                t.Rows[4].Cells[1].Paragraphs.First().Append("Speaker has prepared relevant questions for opening up the discussion and is able to stimulate discussion.");
                t.Rows[4].Cells[2].Paragraphs.First().Append("Speaker has prepared relevant questions for opening up the discussion and is somewhat able to stimulate discussion");
                t.Rows[4].Cells[3].Paragraphs.First().Append("Speaker has prepared questions but is not really able to stimulate discussion");
                t.Rows[4].Cells[4].Paragraphs.First().Append("Speaker has not prepared questions");

                if (rbQuestionE.Checked)
                {
                    t.Rows[4].Cells[1].Paragraphs.First().Bold();
                    t.Rows[4].Cells[1].FillColor = System.Drawing.Color.PaleGreen;
                }

                if (rbQuestionG.Checked)
                {
                    t.Rows[4].Cells[2].Paragraphs.First().Bold();
                    t.Rows[4].Cells[2].FillColor = System.Drawing.Color.PaleGreen;
                }

                if (rbQuestionF.Checked)
                {
                    t.Rows[4].Cells[3].Paragraphs.First().Bold();
                    t.Rows[4].Cells[3].FillColor = System.Drawing.Color.PaleGreen;
                }

                if (rbQuestionP.Checked)
                {
                    t.Rows[4].Cells[4].Paragraphs.First().Bold();
                    t.Rows[4].Cells[4].FillColor = System.Drawing.Color.PaleGreen;
                }


                //if (((RadioButton)tc.Controls[1]).Checked)
                //    t.Rows[row].Cells[col].Paragraphs.First().Bold();

                doc.InsertTable(t);

                #endregion


                #region Section2

                Xceed.Words.NET.Table lang = doc.AddTable(4, 5);
                //lang.Alignment = Alignment.center;
                //lang.Design = TableDesign.ColorfulList;

                //col = row = 0;
                //foreach (HtmlTableRow tr in tbLanguage.Rows)
                //{
                //    foreach (HtmlTableCell tc in tr.Cells)
                //    {
                //        if (tc.Controls.Count == 1)
                //            lang.Rows[row].Cells[col].Paragraphs.First().Append(tc.InnerText.Trim());
                //        else
                //        {
                //            lang.Rows[row].Cells[col].Paragraphs.First().Append(((RadioButton)tc.Controls[1]).Text.Trim());
                //            if (((RadioButton)tc.Controls[1]).Checked)
                //                lang.Rows[row].Cells[col].Paragraphs.First().Bold();
                //        }
                //        col++;
                //    }

                //    col = 0;
                //    row++;
                //}

                lang.Rows[0].Cells[0].Paragraphs.First().Append("Language and Delivery");
                lang.Rows[0].Cells[1].Paragraphs.First().Append("4 - Excellent");
                lang.Rows[0].Cells[2].Paragraphs.First().Append("3 - Good");
                lang.Rows[0].Cells[3].Paragraphs.First().Append("2 - Fair");
                lang.Rows[0].Cells[4].Paragraphs.First().Append("1 - Poor");

                lang.Rows[1].Cells[0].Paragraphs.First().Append("Eye Contact");
                lang.Rows[1].Cells[1].Paragraphs.First().Append("Holds attention of entire audience with the use of direct eye contact, seldom looking at notes");
                lang.Rows[1].Cells[2].Paragraphs.First().Append("Consistent use of direct eye contact with audience, but often returns to notes");
                lang.Rows[1].Cells[3].Paragraphs.First().Append("Displays minimal eye contact with audience, while reading mostly from the notes.");
                lang.Rows[1].Cells[4].Paragraphs.First().Append("No eye contact with audience; entire presentation is read from notes");

                if (rbEyeE.Checked)
                {
                    lang.Rows[1].Cells[1].Paragraphs.First().Bold();
                    lang.Rows[1].Cells[1].FillColor = System.Drawing.Color.PaleGreen;
                }

                if (rbEyeG.Checked)
                {
                    lang.Rows[1].Cells[2].Paragraphs.First().Bold();
                    lang.Rows[1].Cells[2].FillColor = System.Drawing.Color.PaleGreen;
                }

                if (rbEyeF.Checked)
                {
                    lang.Rows[1].Cells[3].Paragraphs.First().Bold();
                    lang.Rows[1].Cells[3].FillColor = System.Drawing.Color.PaleGreen;
                }

                if (rbEyeP.Checked)
                {
                    lang.Rows[1].Cells[4].Paragraphs.First().Bold();
                    lang.Rows[1].Cells[4].FillColor = System.Drawing.Color.PaleGreen;
                }



                lang.Rows[2].Cells[0].Paragraphs.First().Append("Enthusiasm");
                lang.Rows[2].Cells[1].Paragraphs.First().Append("Demonstrates a strong, positive feeling about topic during entire presentation.");
                lang.Rows[2].Cells[2].Paragraphs.First().Append("Mostly shows positive feelings about topic.");
                lang.Rows[2].Cells[3].Paragraphs.First().Append("Shows some negativity toward topic presented.");
                lang.Rows[2].Cells[4].Paragraphs.First().Append("Shows no interest in topic presented.");

                if (rbEyeE.Checked)
                {
                    lang.Rows[2].Cells[1].Paragraphs.First().Bold();
                    lang.Rows[2].Cells[1].FillColor = System.Drawing.Color.PaleGreen;
                }

                if (rbEyeG.Checked)
                {
                    lang.Rows[2].Cells[2].Paragraphs.First().Bold();
                    lang.Rows[2].Cells[2].FillColor = System.Drawing.Color.PaleGreen;
                }

                if (rbEyeF.Checked)
                {
                    lang.Rows[2].Cells[3].Paragraphs.First().Bold();
                    lang.Rows[2].Cells[3].FillColor = System.Drawing.Color.PaleGreen;
                }

                if (rbEyeP.Checked)
                {
                    lang.Rows[2].Cells[4].Paragraphs.First().Bold();
                    lang.Rows[2].Cells[4].FillColor = System.Drawing.Color.PaleGreen;
                }




                lang.Rows[3].Cells[0].Paragraphs.First().Append("Elocution");
                lang.Rows[3].Cells[1].Paragraphs.First().Append("Student uses a clear voice so that all audience members can hear presentation");
                lang.Rows[3].Cells[2].Paragraphs.First().Append("Student’s voice is clear. Most audience members can hear presentation.");
                lang.Rows[3].Cells[3].Paragraphs.First().Append("Student’s voice is low. Audience has difficulty hearing presentation.");
                lang.Rows[3].Cells[4].Paragraphs.First().Append("Student mumbles, speaks too quietly for a majority of audience to hear.");

                if (rbElocutionE.Checked)
                {
                    lang.Rows[3].Cells[1].Paragraphs.First().Bold();
                    lang.Rows[3].Cells[1].FillColor = System.Drawing.Color.PaleGreen;
                }

                if (rbElocutionG.Checked)
                {
                    lang.Rows[3].Cells[2].Paragraphs.First().Bold();
                    lang.Rows[3].Cells[2].FillColor = System.Drawing.Color.PaleGreen;
                }

                if (rbElocutionF.Checked)
                {
                    lang.Rows[3].Cells[3].Paragraphs.First().Bold();
                    lang.Rows[3].Cells[3].FillColor = System.Drawing.Color.PaleGreen;
                }

                if (rbElocutionP.Checked)
                {
                    lang.Rows[3].Cells[4].Paragraphs.First().Bold();
                    lang.Rows[3].Cells[4].FillColor = System.Drawing.Color.PaleGreen;
                }


                doc.InsertTable(lang);

                #endregion


                #region Section3

                Xceed.Words.NET.Table tech = doc.AddTable(6, 5);
                //tech.Alignment = Alignment.center;
                //tech.Design = TableDesign.ColorfulList;

                //col = row = 0;
                //foreach (HtmlTableRow tr in tbTechnical.Rows)
                //{
                //    foreach (HtmlTableCell tc in tr.Cells)
                //    {
                //        if (tc.Controls.Count == 1)
                //            tech.Rows[row].Cells[col].Paragraphs.First().Append(tc.InnerText.Trim());
                //        else
                //        {
                //            tech.Rows[row].Cells[col].Paragraphs.First().Append(((RadioButton)tc.Controls[1]).Text.Trim());
                //            if (((RadioButton)tc.Controls[1]).Checked)
                //                tech.Rows[row].Cells[col].Paragraphs.First().Bold();
                //        }
                //        col++;
                //    }

                //    col = 0;
                //    row++;
                //}


                tech.Rows[0].Cells[0].Paragraphs.First().Append("Technical");
                tech.Rows[0].Cells[1].Paragraphs.First().Append("4 - Excellent");
                tech.Rows[0].Cells[2].Paragraphs.First().Append("3 - Good");
                tech.Rows[0].Cells[3].Paragraphs.First().Append("2 - Fair");
                tech.Rows[0].Cells[4].Paragraphs.First().Append("1 - Poor");

                tech.Rows[1].Cells[0].Paragraphs.First().Append("Knowledge");
                tech.Rows[1].Cells[1].Paragraphs.First().Append("Demonstrate clear knowledge and understanding of the subject");
                tech.Rows[1].Cells[2].Paragraphs.First().Append("Show clear knowledge and understanding of most subject area");
                tech.Rows[1].Cells[3].Paragraphs.First().Append("Show some knowledge and understanding of the subject area");
                tech.Rows[1].Cells[4].Paragraphs.First().Append("Show no knowledge and understanding of the subject area");

                if (rbKnowledgeE.Checked)
                {
                    tech.Rows[1].Cells[1].Paragraphs.First().Bold();
                    tech.Rows[1].Cells[1].FillColor = System.Drawing.Color.PaleGreen;
                }

                if (rbKnowledgeG.Checked)
                {
                    tech.Rows[1].Cells[2].Paragraphs.First().Bold();
                    tech.Rows[1].Cells[2].FillColor = System.Drawing.Color.PaleGreen;
                }

                if (rbKnowledgeF.Checked)
                {
                    tech.Rows[1].Cells[3].Paragraphs.First().Bold();
                    tech.Rows[1].Cells[3].FillColor = System.Drawing.Color.PaleGreen;
                }

                if (rbKnowledgeP.Checked)
                {
                    tech.Rows[1].Cells[4].Paragraphs.First().Bold();
                    tech.Rows[1].Cells[4].FillColor = System.Drawing.Color.PaleGreen;
                }



                tech.Rows[2].Cells[0].Paragraphs.First().Append("Research");
                tech.Rows[2].Cells[1].Paragraphs.First().Append("Evidence of thorough research and preparation");
                tech.Rows[2].Cells[2].Paragraphs.First().Append("Evidence of sufficient research and preparation");
                tech.Rows[2].Cells[3].Paragraphs.First().Append("Evidence of some research and preparation");
                tech.Rows[2].Cells[4].Paragraphs.First().Append("Evidence of no research and preparation");

                if (rbResearchE.Checked)
                {
                    tech.Rows[2].Cells[1].Paragraphs.First().Bold();
                    tech.Rows[2].Cells[1].FillColor = System.Drawing.Color.PaleGreen;
                }

                if (rbResearchG.Checked)
                {
                    tech.Rows[2].Cells[2].Paragraphs.First().Bold();
                    tech.Rows[2].Cells[2].FillColor = System.Drawing.Color.PaleGreen;
                }

                if (rbResearchF.Checked)
                {
                    tech.Rows[2].Cells[3].Paragraphs.First().Bold();
                    tech.Rows[2].Cells[3].FillColor = System.Drawing.Color.PaleGreen;
                }

                if (rbResearchP.Checked)
                {
                    tech.Rows[2].Cells[4].Paragraphs.First().Bold();
                    tech.Rows[2].Cells[4].FillColor = System.Drawing.Color.PaleGreen;
                }


                tech.Rows[3].Cells[0].Paragraphs.First().Append("Discussion of new ideas");
                tech.Rows[3].Cells[1].Paragraphs.First().Append("Demonstrate thorough knowledge while discussing new ideas");
                tech.Rows[3].Cells[2].Paragraphs.First().Append("Show sufficient knowledge while discussing new ideas");
                tech.Rows[3].Cells[3].Paragraphs.First().Append("Show some knowledge while discussing new ideas");
                tech.Rows[3].Cells[4].Paragraphs.First().Append("Show no knowledge while discussing new ideas");

                if (rbDiscussionE.Checked)
                {
                    tech.Rows[3].Cells[1].Paragraphs.First().Bold();
                    tech.Rows[3].Cells[1].FillColor = System.Drawing.Color.PaleGreen;
                }

                if (rbDiscussionG.Checked)
                {
                    tech.Rows[3].Cells[2].Paragraphs.First().Bold();
                    tech.Rows[3].Cells[2].FillColor = System.Drawing.Color.PaleGreen;
                }

                if (rbDiscussionF.Checked)
                {
                    tech.Rows[3].Cells[3].Paragraphs.First().Bold();
                    tech.Rows[3].Cells[3].FillColor = System.Drawing.Color.PaleGreen;
                }

                if (rbDiscussionP.Checked)
                {
                    tech.Rows[3].Cells[4].Paragraphs.First().Bold();
                    tech.Rows[3].Cells[4].FillColor = System.Drawing.Color.PaleGreen;
                }


                tech.Rows[4].Cells[0].Paragraphs.First().Append("Argument");
                tech.Rows[4].Cells[1].Paragraphs.First().Append("Opinion set out in a concise and persuasive manner");
                tech.Rows[4].Cells[2].Paragraphs.First().Append("Opinion is not concise and persuasive manner");
                tech.Rows[4].Cells[3].Paragraphs.First().Append("Opinion is clearly demonstrated but not persuasive");
                tech.Rows[4].Cells[4].Paragraphs.First().Append("Opinion is not demonstrated or highlighted");

                if (rbArgumentE.Checked)
                {
                    tech.Rows[4].Cells[1].Paragraphs.First().Bold();
                    tech.Rows[4].Cells[1].FillColor = System.Drawing.Color.PaleGreen;
                }

                if (rbArgumentG.Checked)
                {
                    tech.Rows[4].Cells[2].Paragraphs.First().Bold();
                    tech.Rows[4].Cells[2].FillColor = System.Drawing.Color.PaleGreen;
                }

                if (rbArgumentF.Checked)
                {
                    tech.Rows[4].Cells[3].Paragraphs.First().Bold();
                    tech.Rows[4].Cells[3].FillColor = System.Drawing.Color.PaleGreen;
                }

                if (rbArgumentP.Checked)
                {
                    tech.Rows[4].Cells[4].Paragraphs.First().Bold();
                    tech.Rows[4].Cells[4].FillColor = System.Drawing.Color.PaleGreen;
                }


                tech.Rows[5].Cells[0].Paragraphs.First().Append("Questions");
                tech.Rows[5].Cells[1].Paragraphs.First().Append("Responded very well to technical questions");
                tech.Rows[5].Cells[2].Paragraphs.First().Append("Could answer most technical questions related to the presentation");
                tech.Rows[5].Cells[3].Paragraphs.First().Append("Could answer some technical questions related to the presentation");
                tech.Rows[5].Cells[4].Paragraphs.First().Append("Could not answer any technical questions related to the presentation");

                if (rbArgumentE.Checked)
                {
                    tech.Rows[5].Cells[1].Paragraphs.First().Bold();
                    tech.Rows[5].Cells[1].FillColor = System.Drawing.Color.PaleGreen;
                }

                if (rbArgumentG.Checked)
                {
                    tech.Rows[5].Cells[2].Paragraphs.First().Bold();
                    tech.Rows[5].Cells[2].FillColor = System.Drawing.Color.PaleGreen;
                }

                if (rbArgumentF.Checked)
                {
                    tech.Rows[5].Cells[3].Paragraphs.First().Bold();
                    tech.Rows[5].Cells[3].FillColor = System.Drawing.Color.PaleGreen;
                }

                if (rbArgumentP.Checked)
                {
                    tech.Rows[5].Cells[4].Paragraphs.First().Bold();
                    tech.Rows[5].Cells[4].FillColor = System.Drawing.Color.PaleGreen;
                }


                doc.InsertTable(tech);

                #endregion

                doc.InsertParagraph("TOTAL MARKS: " + hdfTotalMarks.Value );
                


                doc.Save();
                //Process.Start("WINWORD.EXE", Server.MapPath("~\\Attachments\\" + fileName));


                string Filepath = Server.MapPath(fileName);
                DownLoad(Filepath);
            }


        }


        public void DownLoad(string FName)
        {
            string path = FName;
            System.IO.FileInfo file = new System.IO.FileInfo(path);
            if (file.Exists)
            {
                //Response.Clear();
                //Response.AddHeader("Content-Disposition", "attachment; filename=" + file.Name); Response.AddHeader("Content-Length", file.Length.ToString());
                //Response.ContentType = "application/octet-stream"; // download […]
                //Response.ContentType = "application/vnd.openxmlformats-officedocument.wordprocessingml.document";


                using (System.IO.FileStream fileStream = System.IO.File.OpenRead(FName))
                {
                    System.IO.MemoryStream memStream = new System.IO.MemoryStream();
                    memStream.SetLength(fileStream.Length);
                    fileStream.Read(memStream.GetBuffer(), 0, (int)fileStream.Length);

                    Response.Clear();
                    Response.ContentType = "application/vnd.openxmlformats-officedocument.wordprocessingml.document";
                    Response.AddHeader("Content-Disposition", "attachment; filename=" + file.Name);
                    Response.BinaryWrite(memStream.ToArray());
                    Response.Flush();
                    Response.Close();
                    Response.End();
                }


            }
        }

        private void CreateDoc(ref Xceed.Words.NET.Table t)
        {
            throw new NotImplementedException();
        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            args.IsValid = rbFocusE.Checked || rbFocusG.Checked || rbFocusF.Checked || rbFocusP.Checked;
        }

        protected void CustomValidator2_ServerValidate(object source, ServerValidateEventArgs args)
        {
            args.IsValid = rbOrganizationE.Checked || rbOrganizationG.Checked || rbOrganizationF.Checked || rbOrganizationP.Checked;
        }

        protected void CustomValidator3_ServerValidate(object source, ServerValidateEventArgs args)
        {
            args.IsValid = rbVisualE.Checked || rbVisualG.Checked || rbVisualF.Checked || rbVisualP.Checked;
        }

        protected void CustomValidator4_ServerValidate(object source, ServerValidateEventArgs args)
        {
            args.IsValid = rbQuestionE.Checked || rbQuestionG.Checked || rbQuestionF.Checked || rbQuestionP.Checked;
        }

        protected void CustomValidator5_ServerValidate(object source, ServerValidateEventArgs args)
        {
            args.IsValid = rbEyeE.Checked || rbEyeG.Checked || rbEyeF.Checked || rbEyeP.Checked;
        }

        protected void CustomValidator6_ServerValidate(object source, ServerValidateEventArgs args)
        {
            args.IsValid = rbEnthuE.Checked || rbEnthuG.Checked || rbEnthuF.Checked || rbEnthuP.Checked;
        }

        protected void CustomValidator7_ServerValidate(object source, ServerValidateEventArgs args)
        {
            args.IsValid = rbElocutionE.Checked || rbElocutionG.Checked || rbElocutionF.Checked || rbElocutionP.Checked;
        }

        protected void CustomValidator8_ServerValidate(object source, ServerValidateEventArgs args)
        {
            args.IsValid = rbKnowledgeE.Checked || rbKnowledgeG.Checked || rbKnowledgeF.Checked || rbKnowledgeP.Checked;
        }
        protected void CustomValidator9_ServerValidate(object source, ServerValidateEventArgs args)
        {
            args.IsValid = rbResearchE.Checked || rbResearchG.Checked || rbResearchF.Checked || rbResearchP.Checked;
        }
        protected void CustomValidator10_ServerValidate(object source, ServerValidateEventArgs args)
        {
            args.IsValid = rbDiscussionE.Checked || rbDiscussionG.Checked || rbDiscussionF.Checked || rbDiscussionP.Checked;
        }
        protected void CustomValidator11_ServerValidate(object source, ServerValidateEventArgs args)
        {
            args.IsValid = rbArgumentE.Checked || rbArgumentG.Checked || rbArgumentF.Checked || rbArgumentP.Checked;
        }


        protected void CustomValidator12_ServerValidate(object source, ServerValidateEventArgs args)
        {
            args.IsValid = rbQuestionsE.Checked || rbQuestionsG.Checked || rbQuestionsF.Checked || rbQuestionsP.Checked;
        }

    }
}