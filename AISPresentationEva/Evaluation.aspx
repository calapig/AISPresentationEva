<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Evaluation.aspx.cs" Inherits="AISPresentationEva.Evaluation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/css/bootstrap.min.css" integrity="sha384-Smlep5jCw/wG7hdkwQ/Z5nLIefveQRIY9nfy6xoR1uRYBtpZgI6339F5dgvm/e9B" crossorigin="anonymous" />
    <script src="https://code.jquery.com/jquery-3.3.1.js" ></script>
    <script>
        function Focus(element, score) {
            document.getElementById('hdfFocus').value = score;

            var id = $(element).attr('id');
            $("#tbContent input[id=" + id + "]").closest('tr').children().css( "background-color", "white" );;
            $(element).closest('td').css("background", "palegreen");

            Total();
        }

        function Organization(element, score) {
            document.getElementById('hdfOrganization').value = score;

            var id = $(element).attr('id');
            $("#tbContent input[id=" + id + "]").closest('tr').children().css( "background-color", "white" );;
            $(element).closest('td').css("background", "palegreen");

            Total();
        }

        function Visual(element, score) {
            document.getElementById('hdfVisual').value = score;

            var id = $(element).attr('id');
            $("#tbContent input[id=" + id + "]").closest('tr').children().css( "background-color", "white" );;
            $(element).closest('td').css("background", "palegreen");

            Total();
        }

        function Question(element, score) {
            document.getElementById('hdfQuestion').value = score;

            var id = $(element).attr('id');
            $("#tbContent input[id=" + id + "]").closest('tr').children().css( "background-color", "white" );;
            $(element).closest('td').css("background", "palegreen");

            Total();
        }



        function Eye(element, score) {
            document.getElementById('hdfEye').value = score;

            var id = $(element).attr('id');
            $("#tbLanguage input[id=" + id + "]").closest('tr').children().css( "background-color", "white" );;
            $(element).closest('td').css("background", "palegreen");

            Total();
        }

        function Enthusiasm(element, score) {
            document.getElementById('hdfEnthusiasm').value = score;

            var id = $(element).attr('id');
            $("#tbLanguage input[id=" + id + "]").closest('tr').children().css( "background-color", "white" );;
            $(element).closest('td').css("background", "palegreen");

            Total();
        }

        function Elocution(element, score) {
            document.getElementById('hdfElocution').value = score;

            var id = $(element).attr('id');
            $("#tbLanguage input[id=" + id + "]").closest('tr').children().css( "background-color", "white" );;
            $(element).closest('td').css("background", "palegreen");

            Total();
        }



        function Knowledge(element, score) {
            document.getElementById('hdfKnowledge').value = score;

            var id = $(element).attr('id');
            $("#tbTechnical input[id=" + id + "]").closest('tr').children().css( "background-color", "white" );;
            $(element).closest('td').css("background", "palegreen");

            Total();
        }

        function Research(element, score) {
            document.getElementById('hdfResearch').value = score;

            var id = $(element).attr('id');
            $("#tbTechnical input[id=" + id + "]").closest('tr').children().css( "background-color", "white" );;
            $(element).closest('td').css("background", "palegreen");

            Total();
        }

        function Discussion(element, score) {
            document.getElementById('hdfDiscussion').value = score;

            var id = $(element).attr('id');
            $("#tbTechnical input[id=" + id + "]").closest('tr').children().css( "background-color", "white" );;
            $(element).closest('td').css("background", "palegreen");

            Total();
        }

        function Argument(element, score) {
            document.getElementById('hdfArgument').value = score;

            var id = $(element).attr('id');
            $("#tbTechnical input[id=" + id + "]").closest('tr').children().css( "background-color", "white" );;
            $(element).closest('td').css("background", "palegreen");

            Total();
        }

        function Questions(element, score) {
            document.getElementById('hdfQuestions').value = score;

            var id = $(element).attr('id');
            $("#tbTechnical input[id=" + id + "]").closest('tr').children().css( "background-color", "white" );;
            $(element).closest('td').css("background", "palegreen");

            Total();
        }

        function Total() {
            var focus = parseInt(document.getElementById('hdfFocus').value);
            var organization = parseInt(document.getElementById('hdfOrganization').value);
            var visual = parseInt(document.getElementById('hdfVisual').value);
            var question = parseInt(document.getElementById('hdfQuestion').value);


            var eye = parseInt(document.getElementById('hdfEye').value);
            var enthusiasm = parseInt(document.getElementById('hdfEnthusiasm').value);
            var elocution = parseInt(document.getElementById('hdfElocution').value);


            var knowledge = parseInt(document.getElementById('hdfKnowledge').value);
            var research = parseInt(document.getElementById('hdfResearch').value);
            var discussion = parseInt(document.getElementById('hdfDiscussion').value);
            var argument = parseInt(document.getElementById('hdfArgument').value);
            var questions = parseInt(document.getElementById('hdfQuestions').value);


            totalMarks = focus + organization + visual + question + eye + enthusiasm + elocution + knowledge + research + discussion + argument + questions;

            document.getElementById('dvTotalMarks').innerHTML = totalMarks + "/ 48";
            document.getElementById('hdfTotalMarks').value = totalMarks;

            $("input:radio").closest('label').css("background", "");
            $("input:radio" ).closest('label').css("color", "white");
            $("input:checked").closest('label').css("background", "palegreen");
            $("input:checked" ).closest('label').css("color", "black");
        }

    </script>
</head>
<body>
    <form id="form1" runat="server">

        <nav class="navbar navbar-expand-lg  navbar-ligh bg-light">

            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerLogo" aria-controls="navbarTogglerLogo" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            
            <a class="navbar-brand" runat="server" >
                <img src="Images/AISlogo.PNG"  alt="" />
            </a>  
            
            <div class="collapse navbar-collapse" id="navbarTogglerLogo">
                <ul class="navbar-nav justify-content-end mr-auto mt-2 mt-lg-0">
                  <li class="nav-item active">
                  </li>
                </ul>
                <h1>Presentation marking helper</h1>
            </div>

        </nav>


        <div class="container">

            <div class="row">

				<div class="col-sm">
                    
                    <div class="form-group">
						<label for="TxtStudentID">Student ID</label>
						<asp:TextBox ID="TxtStudentID" runat="server" class="form-control" ></asp:TextBox>
						<%--<div class="col-sm-5 messages"></div>--%>
					</div>

                    <div class="form-group">
						<label for="TxtStudentName">Student name</label>
						<asp:TextBox ID="TxtStudentName" runat="server" class="form-control" ></asp:TextBox>
						<%--<div class="col-sm-5 messages"></div>--%>
					</div>

					<div class="form-group">
						<label for="TxtCourseCode">Course Code</label>
						<asp:TextBox ID="TxtCourseCode" runat="server" class="form-control" ></asp:TextBox>
						<%--<div class="col-sm-5 messages"></div>--%>
					</div>

                </div>

                <div class="col-sm">

                    <div class="form-group">
						<label for="txtSemester">Semester</label>
						<asp:TextBox ID="txtSemester" runat="server" class="form-control" ></asp:TextBox>
						<%--<div class="col-sm-5 messages"></div>--%>
					</div>

                    <div class="form-group">
						<label for="TxtTopicId">Topic Id</label>
						<asp:TextBox ID="TxtTopicId" runat="server" class="form-control" ></asp:TextBox>
						<%--<div class="col-sm-5 messages"></div>--%>
					</div>

                    <div class="form-group">
						<label for="TxtTopic">Topic of presentation (This presentation has a value of <b>30%</b> over this course)</label>
						<asp:TextBox ID="TxtTopic" runat="server" class="form-control" ></asp:TextBox>
						<%--<div class="col-sm-5 messages"></div>--%>
					</div>

                </div>

            </div>

        </div>


        <div class="container">

          <div class="card text-white bg-dark mb-3" >
              <h3 class="card-header">Content structure / ideas</h3>
              <div class="card-body">
                    <%--<div class="row">

                        <div class="col-sm">--%>

                            <fieldset>
                                <legend>Focus</legend>
            
                                <div class="form-check">
                                    <label class="form-check-label">
                                        <asp:RadioButton id="rbFocusE" Text="" Checked="false" GroupName="RadioGroupF" runat="server" onclick="Focus(this, 4)" />
                                        <b>Excellent – </b> Purpose of presentation is clear from the outset. Supporting ideas maintain clear focus on the topic. <b>(+4)</b>
                                    </label>
                                </div>
                                <div class="form-check">
                                    <label class="form-check-label">
                                        <asp:RadioButton id="rbFocusG" Text="" Checked="false" GroupName="RadioGroupF" runat="server" onclick="Focus(this, 3)" />
                                        <b>Good – </b> Topic of the presentation is clear. Content generally supports the purpose <b>(+3)</b>
                                    </label>
                                </div>
                                <div class="form-check">
                                    <label class="form-check-label">
                                        <asp:RadioButton id="rbFocusF" Text="" Checked="false" GroupName="RadioGroupF" runat="server" onclick="Focus(this, 2)" />
                                        <b>Fair – </b> Presentation lacks clear direction. Big ideas not specifically identified. <b>(+2)</b>
                                    </label>
                                </div>
                                <div class="form-check">
                                    <label class="form-check-label">
                                        <asp:RadioButton id="rbFocusP" Text="" Checked="false" GroupName="RadioGroupF" runat="server" onclick="Focus(this, 1)" />
                                        <b>Poor – </b> No focus at all. Audience cannot determine purpose of presentation. <b>(+1)</b>
                                    </label>
                                </div>

                            </fieldset>

                            <fieldset>
                                <legend>Organization</legend>

                                <div class="form-check">
                                    <label class="form-check-label">
                                        <asp:RadioButton id="rbOrganizationE" Text="" Checked="false" GroupName="RadioGroupO" runat="server" onclick="Organization(this, 4)" />
                                        <b>Excellent – </b> Student presents information in logical, interesting sequence that audience follows. <b>(+4)</b>
                                    </label>
                                </div>
                                <div class="form-check">
                                    <label class="form-check-label">
                                        <asp:RadioButton id="rbOrganizationG" Text="" Checked="false" GroupName="RadioGroupO" runat="server" onclick="Organization(this, 3)" />
                                        <b>Good – </b> Student presents information in logical sequence that audience can follow <b>(+3)</b>
                                    </label>
                                </div>
                                <div class="form-check">
                                    <label class="form-check-label">
                                        <asp:RadioButton id="rbOrganizationF" Text="" Checked="false" GroupName="RadioGroupO" runat="server" onclick="Organization(this, 2)" />
                                        <b>Fair – </b> Audience has difficulty following because student jumps around. <b>(+2)</b>
                                    </label>
                                </div>
                                <div class="form-check">
                                    <label class="form-check-label">
                                        <asp:RadioButton id="rbOrganizationP" Text="" Checked="false" GroupName="RadioGroupO" runat="server" onclick="Organization(this, 1)" />
                                        <b>Poor – </b> Audience cannot understand because there is no sequence of information <b>(+1)</b>
                                    </label>
                                </div>

                            </fieldset>

                            <fieldset>
                                <legend>Visual Aids</legend>

                                <div class="form-check">
                                    <label class="form-check-label">
                                        <asp:RadioButton id="rbVisualE" Text="" Checked="false" GroupName="RadioGroupV" runat="server" onclick="Visual(this, 4)" />
                                        <b>Excellent – </b> Visual aids are readable, clear and professional looking, enhancing the message. <b>(+4)</b>
                                    </label>
                                </div>
                                <div class="form-check">
                                    <label class="form-check-label">
                                        <asp:RadioButton id="rbVisualG" Text="" Checked="false" GroupName="RadioGroupV" runat="server" onclick="Visual(this, 3)" />
                                        <b>Good – </b> Visual aids are mostly readable, clear and professional looking. <b>(+3)</b>
                                    </label>
                                </div>
                                <div class="form-check">
                                    <label class="form-check-label">
                                        <asp:RadioButton id="rbVisualF" Text="" Checked="false" GroupName="RadioGroupV" runat="server" onclick="Visual(this, 2)" />
                                        <b>Fair – </b> Significant problems with readability, clarity, professionalism of visual aids. <b>(+2)</b>
                                    </label>
                                </div>
                                <div class="form-check">
                                    <label class="form-check-label">
                                        <asp:RadioButton id="rbVisualP" Text="" Checked="false" GroupName="RadioGroupV" runat="server" onclick="Visual(this, 1)" />
                                        <b>Poor – </b> Visual aids are all unreadable, unclear and/or unprofessional. <b>(+1)</b>
                                    </label>
                                </div>

                            </fieldset>

                            <fieldset>
                                <legend>Question & Answer</legend>

                                <div class="form-check">
                                    <label class="form-check-label">
                                        <asp:RadioButton id="rbQuestionE" Text="" Checked="false" GroupName="RadioGroupQ" runat="server" onclick="Question(this, 4)" />
                                        <b>Excellent – </b> Speaker has prepared relevant questions for opening up the discussion and is able to stimulate discussion. <b>(+4)</b>
                                    </label>
                                </div>
                                <div class="form-check">
                                    <label class="form-check-label">
                                        <asp:RadioButton id="rbQuestionG" Text="" Checked="false" GroupName="RadioGroupQ" runat="server" onclick="Question(this, 3)" />
                                        <b>Good – </b> Speaker has prepared relevant questions for opening up the discussion and is somewhat able to stimulate discussion <b>(+3)</b>
                                    </label>
                                </div>
                                <div class="form-check">
                                    <label class="form-check-label">
                                        <asp:RadioButton id="rbQuestionF" Text="" Checked="false" GroupName="RadioGroupQ" runat="server" onclick="Question(this, 2)" />
                                        <b>Fair – </b> Speaker has prepared questions but is not really able to stimulate discussion <b>(+2)</b>
                                    </label>
                                </div>
                                <div class="form-check">
                                    <label class="form-check-label">
                                        <asp:RadioButton id="rbQuestionP" Text="" Checked="false" GroupName="RadioGroupQ" runat="server" onclick="Question(this, 1)" />
                                        <b>Poor – </b> Speaker has not prepared questions <b>(+1)</b>
                                    </label>
                                </div>

                            </fieldset>

                        <%--</div>

                    </div>--%>
              </div>
          </div> 

          <div class="card text-white bg-warning mb-3" >
              <h3 class="card-header">Language and Delivery</h3>
              <div class="card-body">

                <fieldset>
                    <legend>Eye Contact</legend>
            
                    <div class="form-check">
                        <label class="form-check-label">
                            <asp:RadioButton id="rbEyeE" Text="" Checked="false" GroupName="RadioGroupE" runat="server" onclick="Eye(this, 4)" />
                            <b>Excellent – </b> Holds attention of entire audience with the use of direct eye contact, seldom looking at notes <b>(+4)</b>
                        </label>
                    </div>
                    <div class="form-check">
                        <label class="form-check-label">
                            <asp:RadioButton id="rbEyeG" Text="" Checked="false" GroupName="RadioGroupE" runat="server" onclick="Eye(this, 3)" />
                            <b>Good – </b> Consistent use of direct eye contact with audience, but often returns to notes <b>(+3)</b>
                        </label>
                    </div>
                    <div class="form-check">
                        <label class="form-check-label">
                            <asp:RadioButton id="rbEyeF" Text="" Checked="false" GroupName="RadioGroupE" runat="server" onclick="Eye(this, 2)" />
                            <b>Fair – </b> Displays minimal eye contact with audience, while reading mostly from the notes. <b>(+2)</b>
                        </label>
                    </div>
                    <div class="form-check">
                        <label class="form-check-label">
                            <asp:RadioButton id="rbEyeP" Text="" Checked="false" GroupName="RadioGroupE" runat="server" onclick="Eye(this, 1)" />
                            <b>Poor – </b> No eye contact with audience; entire presentation is read from notes <b>(+1)</b>
                        </label>
                    </div>

                </fieldset>
                <fieldset>
                    <legend>Enthusiasm</legend>
            
                    <div class="form-check">
                        <label class="form-check-label">
                            <asp:RadioButton id="rbEnthuE" Text="" Checked="false" GroupName="RadioGroupEn" runat="server" onclick="Enthusiasm(this, 4)" />
                            <b>Excellent – </b> Demonstrates a strong, positive feeling about topic during entire presentation. <b>(+4)</b>
                        </label>
                    </div>
                    <div class="form-check">
                        <label class="form-check-label">
                            <asp:RadioButton id="rbEnthuG" Text="" Checked="false" GroupName="RadioGroupEn" runat="server" onclick="Enthusiasm(this, 3)" />
                            <b>Good – </b> Mostly shows positive feelings about topic. <b>(+3)</b>
                        </label>
                    </div>
                    <div class="form-check">
                        <label class="form-check-label">
                            <asp:RadioButton id="rbEnthuF" Text="" Checked="false" GroupName="RadioGroupEn" runat="server" onclick="Enthusiasm(this, 2)" />
                            <b>Fair – </b> Shows some negativity toward topic presented. <b>(+2)</b>
                        </label>
                    </div>
                    <div class="form-check">
                        <label class="form-check-label">
                            <asp:RadioButton id="rbEnthuP" Text="" Checked="false" GroupName="RadioGroupEn" runat="server" onclick="Enthusiasm(this, 1)" />
                            <b>Poor – </b> Shows no interest in topic presented. <b>(+1)</b>
                        </label>
                    </div>

                </fieldset>
                <fieldset>
                    <legend>Elocution</legend>
            
                    <div class="form-check">
                        <label class="form-check-label">
                            <asp:RadioButton id="rbElocutionE" Text="" Checked="false" GroupName="RadioGroupEl" runat="server" onclick="Elocution(this, 4)" />
                            <b>Excellent – </b> Student uses a clear voice so that all audience members can hear presentation <b>(+4)</b>
                        </label>
                    </div>
                    <div class="form-check">
                        <label class="form-check-label">
                            <asp:RadioButton id="rbElocutionG" Text="" Checked="false" GroupName="RadioGroupEl" runat="server" onclick="Elocution(this, 3)" />
                            <b>Good – </b> Student’s voice is clear. Most audience members can hear presentation. <b>(+3)</b>
                        </label>
                    </div>
                    <div class="form-check">
                        <label class="form-check-label">
                            <asp:RadioButton id="rbElocutionF" Text="" Checked="false" GroupName="RadioGroupEl" runat="server" onclick="Elocution(this, 2)" />
                            <b>Fair – </b> Student’s voice is low. Audience has difficulty hearing presentation. <b>(+2)</b>
                        </label>
                    </div>
                    <div class="form-check">
                        <label class="form-check-label">
                            <asp:RadioButton id="rbElocutionP" Text="" Checked="false" GroupName="RadioGroupEl" runat="server" onclick="Elocution(this, 1)" />
                            <b>Poor – </b> Student mumbles, speaks too quietly for a majority of audience to hear. <b>(+1)</b>
                        </label>
                    </div>

                </fieldset>

              </div>
          </div> 


          <div class="card text-white bg-danger mb-3" >
              <h3 class="card-header">Technical</h3>
              <div class="card-body">

                <fieldset>
                    <legend>Knowledge</legend>
            
                    <div class="form-check">
                        <label class="form-check-label">
                            <asp:RadioButton id="rbKnowledgeE" Text="" Checked="false" GroupName="RadioGroupK" runat="server" onclick="Knowledge(this, 4)" />
                            <b>Excellent – </b> Demonstrate clear knowledge and understanding of the subject <b>(+4)</b>
                        </label>
                    </div>
                    <div class="form-check">
                        <label class="form-check-label">
                            <asp:RadioButton id="rbKnowledgeG" Text="" Checked="false" GroupName="RadioGroupK" runat="server" onclick="Knowledge(this, 3)" />
                            <b>Good – </b> Show clear knowledge and understanding of most subject area <b>(+3)</b>
                        </label>
                    </div>
                    <div class="form-check">
                        <label class="form-check-label">
                            <asp:RadioButton id="rbKnowledgeF" Text="" Checked="false" GroupName="RadioGroupK" runat="server" onclick="Knowledge(this, 2)" />
                            <b>Fair – </b> Show some knowledge and understanding of the subject area <b>(+2)</b>
                        </label>
                    </div>
                    <div class="form-check">
                        <label class="form-check-label">
                            <asp:RadioButton id="rbKnowledgeP" Text="" Checked="false" GroupName="RadioGroupK" runat="server" onclick="Knowledge(this, 1)" />
                            <b>Poor – </b> Show no knowledge and understanding of the subject area <b>(+1)</b>
                        </label>
                    </div>

                </fieldset>
                <fieldset>
                    <legend>Research</legend>
            
                    <div class="form-check">
                        <label class="form-check-label">
                            <asp:RadioButton id="rbResearchE" Text="" Checked="false" GroupName="RadioGroupRs" runat="server" onclick="Research(this, 4)" />
                            <b>Excellent – </b> Evidence of thorough research and preparation <b>(+4)</b>
                        </label>
                    </div>
                    <div class="form-check">
                        <label class="form-check-label">
                            <asp:RadioButton id="rbResearchG" Text="" Checked="false" GroupName="RadioGroupRs" runat="server" onclick="Research(this, 3)" />
                            <b>Good – </b> Evidence of sufficient research and preparation <b>(+3)</b>
                        </label>
                    </div>
                    <div class="form-check">
                        <label class="form-check-label">
                            <asp:RadioButton id="rbResearchF" Text="" Checked="false" GroupName="RadioGroupRs" runat="server" onclick="Research(this, 2)" />
                            <b>Fair – </b> Evidence of some research and preparation <b>(+2)</b>
                        </label>
                    </div>
                    <div class="form-check">
                        <label class="form-check-label">
                            <asp:RadioButton id="rbResearchP" Text="" Checked="false" GroupName="RadioGroupRs" runat="server" onclick="Research(this, 1)" />
                            <b>Poor – </b> Evidence of no research and preparation <b>(+1)</b>
                        </label>
                    </div>

                </fieldset>
                <fieldset>
                    <legend>Discussion of new ideas</legend>
            
                    <div class="form-check">
                        <label class="form-check-label">
                            <asp:RadioButton id="rbDiscussionE" Text="" Checked="false" GroupName="RadioGroupDi" runat="server" onclick="Discussion(this, 4)" />
                            <b>Excellent – </b> Demonstrate thorough knowledge while discussing new ideas <b>(+4)</b>
                        </label>
                    </div>
                    <div class="form-check">
                        <label class="form-check-label">
                            <asp:RadioButton id="rbDiscussionG" Text="" Checked="false" GroupName="RadioGroupDi" runat="server" onclick="Discussion(this, 3)" />
                            <b>Good – </b> Show sufficient knowledge while discussing new ideas <b>(+3)</b>
                        </label>
                    </div>
                    <div class="form-check">
                        <label class="form-check-label">
                            <asp:RadioButton id="rbDiscussionF" Text="" Checked="false" GroupName="RadioGroupDi" runat="server" onclick="Discussion(this, 2)" />
                            <b>Fair – </b> Show some knowledge while discussing new ideas <b>(+2)</b>
                        </label>
                    </div>
                    <div class="form-check">
                        <label class="form-check-label">
                            <asp:RadioButton id="rbDiscussionP" Text="" Checked="false" GroupName="RadioGroupDi" runat="server" onclick="Discussion(this, 1)" />
                            <b>Poor – </b> Show no knowledge while discussing new ideas <b>(+1)</b>
                        </label>
                    </div>

                </fieldset>
                <fieldset>
                    <legend>Argument</legend>
            
                    <div class="form-check">
                        <label class="form-check-label">
                            <asp:RadioButton id="rbArgumentE" Text="" Checked="false" GroupName="RadioGroupAr" runat="server" onclick="Argument(this, 4)" />
                            <b>Excellent – </b> Opinion set out in a concise and persuasive manner <b>(+4)</b>
                        </label>
                    </div>
                    <div class="form-check">
                        <label class="form-check-label">
                            <asp:RadioButton id="rbArgumentG" Text="" Checked="false" GroupName="RadioGroupAr" runat="server" onclick="Argument(this, 3)" />
                            <b>Good – </b> Opinion is not concise and persuasive manner <b>(+3)</b>
                        </label>
                    </div>
                    <div class="form-check">
                        <label class="form-check-label">
                            <asp:RadioButton id="rbArgumentF" Text="" Checked="false" GroupName="RadioGroupAr" runat="server" onclick="Argument(this, 2)" />
                            <b>Fair – </b> Opinion is clearly demonstrated but not persuasive <b>(+2)</b>
                        </label>
                    </div>
                    <div class="form-check">
                        <label class="form-check-label">
                            <asp:RadioButton id="rbArgumentP" Text="" Checked="false" GroupName="RadioGroupAr" runat="server" onclick="Argument(this, 1)" />
                            <b>Poor – </b> Opinion is not demonstrated or highlighted <b>(+1)</b>
                        </label>
                    </div>

                </fieldset>
                <fieldset>
                    <legend>Questions</legend>
            
                    <div class="form-check">
                        <label class="form-check-label">
                            <asp:RadioButton id="rbQuestionsE" Text="" Checked="false" GroupName="RadioGroupQu" runat="server" onclick="Questions(this, 4)" />
                            <b>Excellent – </b> Responded very well to technical questions<b>(+4)</b>
                        </label>
                    </div>
                    <div class="form-check">
                        <label class="form-check-label">
                            <asp:RadioButton id="rbQuestionsG" Text="" Checked="false" GroupName="RadioGroupQu" runat="server" onclick="Questions(this, 3)" />
                            <b>Good – </b> Could answer most technical questions related to the presentation <b>(+3)</b>
                        </label>
                    </div>
                    <div class="form-check">
                        <label class="form-check-label">
                            <asp:RadioButton id="rbQuestionsF" Text="" Checked="false" GroupName="RadioGroupQu" runat="server" onclick="Questions(this, 2)" />
                            <b>Fair – </b> Could answer some technical questions related to the presentation <b>(+2)</b>
                        </label>
                    </div>
                    <div class="form-check">
                        <label class="form-check-label">
                            <asp:RadioButton id="rbQuestionsP" Text="" Checked="false" GroupName="RadioGroupQu" runat="server" onclick="Questions(this, 1)" />
                            <b>Poor – </b> Could not answer any technical questions related to the presentation <b>(+1)</b>
                        </label>
                    </div>

                </fieldset>

            </div>
          </div> 


        </div>



        <div>

            <br />

            <asp:HiddenField ID="hdfFocus" runat="server" value="0" />
            <asp:HiddenField ID="hdfOrganization" runat="server" value="0" />
            <asp:HiddenField ID="hdfVisual" runat="server" value="0" />
            <asp:HiddenField ID="hdfQuestion" runat="server" value="0" />

            <table id="tbContent" runat="server" border="1" style=" border-collapse:collapse; border-color:Black; width: 100%"  >
                <%--<tr>
                    <th style="width:20%">
                        Content structure / ideas
                    </th>
                    <th style="width:20%">
                        4 – Excellent
                    </th>
                    <th style="width:20%">
                        3 – Good
                    </th>
                    <th style="width:20%">
                        2 – Fair
                    </th>
                    <th style="width:20%">
                        1 – Poor
                    </th>
                </tr>
                <tr>
                    <td>
                        Focus
                    </td>
                    <td>
                       
                    </td>
                    <td>
                       
                    </td>
                    <td>
                       
                    </td>
                    <td>
                       
                    </td>
                </tr>
                <tr>
                    <td>
                        Organization
                    </td>
                    <td>
                        
                    </td>
                    <td>
                        
                    </td>
                    <td>
                        
                    </td>
                    <td>
                        
                    </td>
                </tr>
                <tr>
                    <td>
                        Visual Aids
                    </td>
                    <td>
                        
                    </td>
                    <td>
                        
                    </td>
                    <td>
                        
                    </td>
                    <td>
                        
                    </td>
                </tr>
                <tr>
                    <td>
                        Question & Answer
                    </td>
                    <td>
                        
                    </td>
                    <td>
                        
                    </td>
                    <td>
                        
                    </td>
                    <td>
                        
                    </td>
                </tr>--%>
            </table>

            <br />

            <asp:HiddenField ID="hdfEye" runat="server" value="0" />
            <asp:HiddenField ID="hdfEnthusiasm" runat="server" value="0" />
            <asp:HiddenField ID="hdfElocution" runat="server" value="0" />

            <table id="tbLanguage" runat="server" border="1" style=" border-collapse:collapse; border-color:Black; width: 100%" >
                <%--<tr>
                    <th style="width:20%">
                        Language and Delivery
                    </th>
                    <th style="width:20%">
                        4 – Excellent
                    </th>
                    <th style="width:20%">
                        3 – Good
                    </th>
                    <th style="width:20%">
                        2 – Fair
                    </th>
                    <th style="width:20%">
                        1 – Poor
                    </th>
                </tr>
                <tr>
                    <td>
                        Eye Contact
                    </td>
                    <td>
                        
                    </td>
                    <td>
                        
                    </td>
                    <td>
                        
                    </td>
                    <td>
                        
                    </td>
                </tr>
                <tr>
                    <td>
                        Enthusiasm
                    </td>
                    <td>
                        
                    </td>
                    <td>
                        
                    </td>
                    <td>
                        
                    </td>
                    <td>
                        
                    </td>
                </tr>
                <tr>
                    <td>
                        Elocution
                    </td>
                    <td>
                        
                    </td>
                    <td>
                        
                    </td>
                    <td>
                        
                    </td>
                    <td>
                        
                    </td>
                </tr>--%>
            </table>

            <br />

            <asp:HiddenField ID="hdfKnowledge" runat="server" value="0" />
            <asp:HiddenField ID="hdfResearch" runat="server" value="0" />
            <asp:HiddenField ID="hdfDiscussion" runat="server" value="0" />
            <asp:HiddenField ID="hdfArgument" runat="server" value="0" />
            <asp:HiddenField ID="hdfQuestions" runat="server" value="0" />

            <table id="tbTechnical" runat="server" border="1" style=" border-collapse:collapse; border-color:Black; width: 100%" >
                <%--<tr>
                    <th style="width:20%">
                        Technical
                    </th>
                    <th style="width:20%">
                        4 – Excellent
                    </th>
                    <th style="width:20%">
                        3 – Good
                    </th>
                    <th style="width:20%">
                        2 – Fair
                    </th>
                    <th style="width:20%">
                        1 – Poor
                    </th>
                </tr>
                <tr>
                    <td>
                        Knowledge
                    </td>
                    <td>
                        
                    </td>
                    <td>
                        
                    </td>
                    <td>
                        
                    </td>
                    <td>
                        
                    </td>
                </tr>
                <tr>
                    <td>
                        Research
                    </td>
                    <td>
                        
                    </td>
                    <td>
                        
                    </td>
                    <td>
                        
                    </td>
                    <td>
                        
                    </td>
                </tr>
                <tr>
                    <td>
                        Discussion of new ideas
                    </td>
                    <td>
                        
                    </td>
                    <td>
                        
                    </td>
                    <td>
                        
                    </td>
                    <td>
                        
                    </td>
                </tr>
                <tr>
                    <td>
                        Argument
                    </td>
                    <td>
                        
                    </td>
                    <td>
                        
                    </td>
                    <td>
                        
                    </td>
                    <td>
                        
                    </td>
                </tr>
                <tr>
                    <td>
                        Questions
                    </td>
                    <td>
                        
                    </td>
                    <td>
                        
                    </td>
                    <td>
                        
                    </td>
                    <td>
                        
                    </td>
                </tr>--%>
            </table>

        </div>

        <div class="container">

        <asp:Button ID="btnSaveDoc" runat="server" class="btn btn-primary btn-lg" Text="Save & Generate Report" OnClick="btnSaveDoc_Click" />

        </div>

        <div class="container" style="position: fixed; left: 70%; top: 15%; width:30%; z-index: 10; " >

            <table class="table table-hover bg-dark">
                <tbody>
                    <tr class="table-active">
                        <td><h2 style="color: orangered" >TOTAL MARKS:</h2></td>
                        <td><div id="dvTotalMarks" runat="server" style="font-size:larger; color: orangered" ></div></td>
                    </tr>
                </tbody>
            </table>
            
            <asp:HiddenField ID="hdfTotalMarks" runat="server" />

            

        </div>

    </form>
</body>
</html>
