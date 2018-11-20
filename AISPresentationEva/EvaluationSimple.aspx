<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EvaluationSimple.aspx.cs" Inherits="AISPresentationEva.EvaluationSimple" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title></title>
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

            document.getElementById('dvTotalMarks').innerHTML = totalMarks; // + "/48 " + "  =  " + Math.round((totalMarks/48) * 100) + "%";
			document.getElementById('hdfTotalMarks').value = totalMarks;

			

			$("input:radio").closest('label').css("background", "");
			$("input:radio" ).closest('label').css("color", "white");
			$("input:checked").closest('label').css("background", "palegreen");
			$("input:checked" ).closest('label').css("color", "black");
		}

	</script>
	<style type="text/css">
		.radioClass {
			visibility: hidden;
			width: 100%;
		}

		.form-check-label
		{
			width:100%;
		}

	   input[type="radio"], label {
		cursor : pointer
		}
	   
	   .bg-warning
	   {
		   background-color:#f7931d !important;
	   }

	
</style>
    <script type="text/javascript" >
		function CustomValidator1_ClientValidate(source,args)
		{   
			if(document.getElementById("<%= rbFocusE.ClientID %>").checked || document.getElementById("<%= rbFocusG.ClientID %>").checked || document.getElementById("<%= rbFocusF.ClientID %>").checked || document.getElementById("<%= rbFocusP.ClientID %>").checked)
			{
			args.IsValid = true;
			}
			else
			{
			args.IsValid = false;
			}
	
			}
		function CustomValidator2_ClientValidate(source,args)
		{   
			if(document.getElementById("<%= rbOrganizationE.ClientID %>").checked || document.getElementById("<%= rbOrganizationG.ClientID %>").checked || document.getElementById("<%= rbOrganizationF.ClientID %>").checked || document.getElementById("<%= rbOrganizationP.ClientID %>").checked)
			{
			args.IsValid = true;
			}
			else
			{
			args.IsValid = false;
			}
	
			}
		function CustomValidator3_ClientValidate(source,args)
		{   
			if(document.getElementById("<%= rbVisualE.ClientID %>").checked || document.getElementById("<%= rbVisualG.ClientID %>").checked || document.getElementById("<%= rbVisualF.ClientID %>").checked || document.getElementById("<%= rbVisualP.ClientID %>").checked)
			{
			args.IsValid = true;
			}
			else
			{
			args.IsValid = false;
			}
	
			}
		function CustomValidator4_ClientValidate(source,args)
		{   
			if(document.getElementById("<%= rbQuestionE.ClientID %>").checked || document.getElementById("<%= rbQuestionG.ClientID %>").checked || document.getElementById("<%= rbQuestionF.ClientID %>").checked || document.getElementById("<%= rbQuestionP.ClientID %>").checked)
			{
			args.IsValid = true;
			}
			else
			{
			args.IsValid = false;
			}
	
			}

		function CustomValidator5_ClientValidate(source,args)
		{   
			if(document.getElementById("<%= rbEyeE.ClientID %>").checked || document.getElementById("<%= rbEyeG.ClientID %>").checked || document.getElementById("<%= rbEyeF.ClientID %>").checked || document.getElementById("<%= rbEyeP.ClientID %>").checked)
			{
			args.IsValid = true;
			}
			else
			{
			args.IsValid = false;
			}
	
			}

		function CustomValidator6_ClientValidate(source,args)
		{   
			if(document.getElementById("<%= rbEnthuE.ClientID %>").checked || document.getElementById("<%= rbEnthuG.ClientID %>").checked || document.getElementById("<%= rbEnthuF.ClientID %>").checked || document.getElementById("<%= rbEnthuP.ClientID %>").checked)
			{
			args.IsValid = true;
			}
			else
			{
			args.IsValid = false;
			}
	
			}


		function CustomValidator7_ClientValidate(source,args)
		{   
			if(document.getElementById("<%= rbElocutionE.ClientID %>").checked || document.getElementById("<%= rbElocutionG.ClientID %>").checked || document.getElementById("<%= rbElocutionF.ClientID %>").checked || document.getElementById("<%= rbElocutionP.ClientID %>").checked)
			{
			args.IsValid = true;
			}
			else
			{
			args.IsValid = false;
			}
	
			}
			function CustomValidator8_ClientValidate(source,args)
		{   
			if(document.getElementById("<%= rbKnowledgeE.ClientID %>").checked || document.getElementById("<%= rbKnowledgeG.ClientID %>").checked || document.getElementById("<%= rbKnowledgeF.ClientID %>").checked || document.getElementById("<%= rbKnowledgeP.ClientID %>").checked)
			{
			args.IsValid = true;
			}
			else
			{
			args.IsValid = false;
			}
	
			}
			function CustomValidator9_ClientValidate(source,args)
		{   
			if(document.getElementById("<%= rbResearchE.ClientID %>").checked || document.getElementById("<%= rbResearchG.ClientID %>").checked || document.getElementById("<%= rbResearchF.ClientID %>").checked || document.getElementById("<%= rbResearchP.ClientID %>").checked)
			{
			args.IsValid = true;
			}
			else
			{
			args.IsValid = false;
			}
	
			}
			function CustomValidator10_ClientValidate(source,args)
		{   
			if(document.getElementById("<%= rbDiscussionE.ClientID %>").checked || document.getElementById("<%= rbDiscussionG.ClientID %>").checked || document.getElementById("<%= rbDiscussionF.ClientID %>").checked || document.getElementById("<%= rbDiscussionP.ClientID %>").checked)
			{
			args.IsValid = true;
			}
			else
			{
			args.IsValid = false;
			}
	
			}
			function CustomValidator11_ClientValidate(source,args)
		{   
			if(document.getElementById("<%= rbArgumentE.ClientID %>").checked || document.getElementById("<%= rbArgumentG.ClientID %>").checked || document.getElementById("<%= rbArgumentF.ClientID %>").checked || document.getElementById("<%= rbArgumentP.ClientID %>").checked)
			{
			args.IsValid = true;
			}
			else
			{
			args.IsValid = false;
			}
	
			}
			function CustomValidator12_ClientValidate(source,args)
		{   
			if(document.getElementById("<%= rbQuestionsE.ClientID %>").checked || document.getElementById("<%= rbQuestionsG.ClientID %>").checked || document.getElementById("<%= rbQuestionsF.ClientID %>").checked || document.getElementById("<%= rbQuestionsP.ClientID %>").checked)
			{
			args.IsValid = true;
			}
			else
			{
			args.IsValid = false;
			}
	
		}
		//-->
		</script>
</head>
<body>
	<form id="form1" runat="server">		
		<div class="text-center mt-2 mb-2">
			&nbsp;<h1 class="mt-3 mb-5 text-danger">Presentation Marking Helper</h1>
		</div>

        <table>
            <tr>
                <td>Student name</td>
                <td><asp:TextBox ID="TxtStudentName" runat="server" class="form-control" ></asp:TextBox></td>
                <td>Student ID</td>
                <td><asp:TextBox ID="TxtStudentID" runat="server" class="form-control"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Topic of presentation</td>
                <td><asp:TextBox ID="TxtTopic" runat="server" class="form-control" ></asp:TextBox></td>
            </tr>
        </table>

			

		<div>

			<br />

			<asp:HiddenField ID="hdfFocus" runat="server" value="0" />
			<asp:HiddenField ID="hdfOrganization" runat="server" value="0" />
			<asp:HiddenField ID="hdfVisual" runat="server" value="0" />
			<asp:HiddenField ID="hdfQuestion" runat="server" value="0" />

			<table id="tbContent" runat="server" border="1" style=" border-collapse:collapse; border-color:Black; width: 100%"  >
				<tr>
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
					   <asp:RadioButton class="" id="rbFocusE" Text="Purpose of presentation is clear from the outset. Supporting ideas maintain clear focus on the topic. " Checked="false" GroupName="RadioGroupF" runat="server" onclick="Focus(this, 4)" />
					   
					</td>
					<td>
					   <asp:RadioButton class="" id="rbFocusG" Text="Topic of the presentation is clear. Content generally supports the purpose" Checked="false" GroupName="RadioGroupF" runat="server" onclick="Focus(this, 3)" />
					</td>
					<td>
					   <asp:RadioButton class="" id="rbFocusF" Text="Presentation lacks clear direction. Big ideas not specifically identified." Checked="false" GroupName="RadioGroupF" runat="server" onclick="Focus(this, 2)" />
					</td>
					<td>
					   <asp:RadioButton class="" id="rbFocusP" Text="No focus at all. Audience cannot determine purpose of presentation." Checked="false" GroupName="RadioGroupF" runat="server" onclick="Focus(this, 1)" />
					</td>
				</tr>
				<tr>
					<td>
						Organization
					</td>
					<td>
						<asp:RadioButton class="" id="rbOrganizationE" Text="Student presents information in logical, interesting sequence that audience follows." Checked="false" GroupName="RadioGroupO" runat="server" onclick="Organization(this, 4)" />
					</td>
					<td>
						<asp:RadioButton class="" id="rbOrganizationG" Text="Student presents information in logical sequence that audience can follow" Checked="false" GroupName="RadioGroupO" runat="server" onclick="Organization(this, 3)" />
					</td>
					<td>
						<asp:RadioButton class="" id="rbOrganizationF" Text="Audience has difficulty following because student jumps around." Checked="false" GroupName="RadioGroupO" runat="server" onclick="Organization(this, 2)" />
					</td>
					<td>
						<asp:RadioButton class="" id="rbOrganizationP" Text="Audience cannot understand because there is no sequence of information" Checked="false" GroupName="RadioGroupO" runat="server" onclick="Organization(this, 1)" />									
					</td>
				</tr>
				<tr>
					<td>
						Visual Aids
					</td>
					<td>
						<asp:RadioButton class="" id="rbVisualE" Text="Visual aids are readable, clear and professional looking, enhancing the message." Checked="false" GroupName="RadioGroupV" runat="server" onclick="Visual(this, 4)" />
					</td>
					<td>
						<asp:RadioButton class="" id="rbVisualG" Text="Visual aids are mostly readable, clear and professional looking." Checked="false" GroupName="RadioGroupV" runat="server" onclick="Visual(this, 3)" />
					</td>
					<td>
						<asp:RadioButton class="" id="rbVisualF" Text="Significant problems with readability, clarity, professionalism of visual aids." Checked="false" GroupName="RadioGroupV" runat="server" onclick="Visual(this, 2)" />
					</td>
					<td>
						<asp:RadioButton class="" id="rbVisualP" Text="Visual aids are all unreadable, unclear and/or unprofessional." Checked="false" GroupName="RadioGroupV" runat="server" onclick="Visual(this, 1)" />
					</td>
				</tr>
				<tr>
					<td>
						Question & Answer
					</td>
					<td>
						<asp:RadioButton class="" id="rbQuestionE" Text="Speaker has prepared relevant questions for opening up the discussion and is able to stimulate discussion." Checked="false" GroupName="RadioGroupQ" runat="server" onclick="Question(this, 4)" />
					</td>
					<td>
						<asp:RadioButton class="" id="rbQuestionG" Text="Speaker has prepared relevant questions for opening up the discussion and is somewhat able to stimulate discussion" Checked="false" GroupName="RadioGroupQ" runat="server" onclick="Question(this, 3)" />
					</td>
					<td>
						<asp:RadioButton class="" id="rbQuestionF" Text="Speaker has prepared questions but is not really able to stimulate discussion" Checked="false" GroupName="RadioGroupQ" runat="server" onclick="Question(this, 2)" />
					</td>
					<td>
					    <asp:RadioButton class="" id="rbQuestionP" Text="Speaker has not prepared questions" Checked="false" GroupName="RadioGroupQ" runat="server" onclick="Question(this, 1)" />
					</td>
				</tr>
			</table>

			<br />

			<asp:HiddenField ID="hdfEye" runat="server" value="0" />
			<asp:HiddenField ID="hdfEnthusiasm" runat="server" value="0" />
			<asp:HiddenField ID="hdfElocution" runat="server" value="0" />

			<table id="tbLanguage" runat="server" border="1" style=" border-collapse:collapse; border-color:Black; width: 100%" >
				<tr>
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
						<asp:RadioButton class="" id="rbEyeE" Text="Holds attention of entire audience with the use of direct eye contact, seldom looking at notes" Checked="false" GroupName="RadioGroupE" runat="server" onclick="Eye(this, 4)" />
					</td>
					<td>
						<asp:RadioButton class="" id="rbEyeG" Text="Consistent use of direct eye contact with audience, but often returns to notes" Checked="false" GroupName="RadioGroupE" runat="server" onclick="Eye(this, 3)" />
					</td>
					<td>
						<asp:RadioButton class="" id="rbEyeF" Text="Displays minimal eye contact with audience, while reading mostly from the notes." Checked="false" GroupName="RadioGroupE" runat="server" onclick="Eye(this, 2)" />
					</td>
					<td>
						<asp:RadioButton class="" id="rbEyeP" Text="No eye contact with audience; entire presentation is read from notes" Checked="false" GroupName="RadioGroupE" runat="server" onclick="Eye(this, 1)" />
					</td>
				</tr>
				<tr>
					<td>
						Enthusiasm
					</td>
					<td>
						<asp:RadioButton class="" id="rbEnthuE" Text="Demonstrates a strong, positive feeling about topic during entire presentation." Checked="false" GroupName="RadioGroupEn" runat="server" onclick="Enthusiasm(this, 4)" />
							
					</td>
					<td>
						<asp:RadioButton class="" id="rbEnthuG" Text="Mostly shows positive feelings about topic." Checked="false" GroupName="RadioGroupEn" runat="server" onclick="Enthusiasm(this, 3)" />
							
					</td>
					<td>
						<asp:RadioButton class="" id="rbEnthuF" Text="Shows some negativity toward topic presented." Checked="false" GroupName="RadioGroupEn" runat="server" onclick="Enthusiasm(this, 2)" />
							
					</td>
					<td>
						<asp:RadioButton class="" id="rbEnthuP" Text="Shows no interest in topic presented." Checked="false" GroupName="RadioGroupEn" runat="server" onclick="Enthusiasm(this, 1)" />

					</td>
				</tr>
				<tr>
					<td>
						Elocution
					</td>
					<td>
						<asp:RadioButton class="" id="rbElocutionE" Text="Student uses a clear voice so that all audience members can hear presentation" Checked="false" GroupName="RadioGroupEl" runat="server" onclick="Elocution(this, 4)" />

					</td>
					<td>
						<asp:RadioButton class="" id="rbElocutionG" Text="Student’s voice is clear. Most audience members can hear presentation." Checked="false" GroupName="RadioGroupEl" runat="server" onclick="Elocution(this, 3)" />
						
					</td>
					<td>
						<asp:RadioButton class="" id="rbElocutionF" Text="Student’s voice is low. Audience has difficulty hearing presentation." Checked="false" GroupName="RadioGroupEl" runat="server" onclick="Elocution(this, 2)" />
							
					</td>
					<td>
						<asp:RadioButton class="" id="rbElocutionP" Text="Student mumbles, speaks too quietly for a majority of audience to hear." Checked="false" GroupName="RadioGroupEl" runat="server" onclick="Elocution(this, 1)" />
							
					</td>
				</tr>
			</table>

			<br />

			<asp:HiddenField ID="hdfKnowledge" runat="server" value="0" />
			<asp:HiddenField ID="hdfResearch" runat="server" value="0" />
			<asp:HiddenField ID="hdfDiscussion" runat="server" value="0" />
			<asp:HiddenField ID="hdfArgument" runat="server" value="0" />
			<asp:HiddenField ID="hdfQuestions" runat="server" value="0" />

			<table id="tbTechnical" runat="server" border="1" style=" border-collapse:collapse; border-color:Black; width: 100%" >
				<tr>
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
						<asp:RadioButton class="" id="rbKnowledgeE" Text="Demonstrate clear knowledge and understanding of the subject" Checked="false" GroupName="RadioGroupK" runat="server" onclick="Knowledge(this, 4)" />
							
					</td>
					<td>
						<asp:RadioButton class="" id="rbKnowledgeG" Text="Show clear knowledge and understanding of most subject area" Checked="false" GroupName="RadioGroupK" runat="server" onclick="Knowledge(this, 3)" />
							
					</td>
					<td>
						<asp:RadioButton class="" id="rbKnowledgeF" Text="Show some knowledge and understanding of the subject area" Checked="false" GroupName="RadioGroupK" runat="server" onclick="Knowledge(this, 2)" />
							
					</td>
					<td>
						<asp:RadioButton class="" id="rbKnowledgeP" Text="Show no knowledge and understanding of the subject area" Checked="false" GroupName="RadioGroupK" runat="server" onclick="Knowledge(this, 1)" />
							
					</td>
				</tr>
				<tr>
					<td>
						Research
					</td>
					<td>
						<asp:RadioButton class="" id="rbResearchE" Text="Evidence of thorough research and preparation" Checked="false" GroupName="RadioGroupRs" runat="server" onclick="Research(this, 4)" />
							
					</td>
					<td>
						<asp:RadioButton class="" id="rbResearchG" Text="Evidence of sufficient research and preparation" Checked="false" GroupName="RadioGroupRs" runat="server" onclick="Research(this, 3)" />
							
					</td>
					<td>
						<asp:RadioButton class="" id="rbResearchF" Text="Evidence of some research and preparation" Checked="false" GroupName="RadioGroupRs" runat="server" onclick="Research(this, 2)" />
							
					</td>
					<td>
						<asp:RadioButton class="" id="rbResearchP" Text="Evidence of no research and preparation" Checked="false" GroupName="RadioGroupRs" runat="server" onclick="Research(this, 1)" />
							
					</td>
				</tr>
				<tr>
					<td>
						Discussion of new ideas
					</td>
					<td>
						<asp:RadioButton class="" id="rbDiscussionE" Text="Demonstrate thorough knowledge while discussing new ideas" Checked="false" GroupName="RadioGroupDi" runat="server" onclick="Discussion(this, 4)" />
							
					</td>
					<td>
						<asp:RadioButton class="" id="rbDiscussionG" Text="Show sufficient knowledge while discussing new ideas" Checked="false" GroupName="RadioGroupDi" runat="server" onclick="Discussion(this, 3)" />
							
					</td>
					<td>
						<asp:RadioButton class="" id="rbDiscussionF" Text="Show some knowledge while discussing new ideas" Checked="false" GroupName="RadioGroupDi" runat="server" onclick="Discussion(this, 2)" />
							
					</td>
					<td>
						<asp:RadioButton class="" id="rbDiscussionP" Text="Show no knowledge while discussing new ideas" Checked="false" GroupName="RadioGroupDi" runat="server" onclick="Discussion(this, 1)" />
							
					</td>
				</tr>
				<tr>
					<td>
						Argument
					</td>
					<td>
						<asp:RadioButton class="" id="rbArgumentE" Text="Opinion set out in a concise and persuasive manner" Checked="false" GroupName="RadioGroupAr" runat="server" onclick="Argument(this, 4)" />
							
					</td>
					<td>
						<asp:RadioButton class="" id="rbArgumentG" Text="Opinion is not concise and persuasive manner" Checked="false" GroupName="RadioGroupAr" runat="server" onclick="Argument(this, 3)" />
							
					</td>
					<td>
						<asp:RadioButton class="" id="rbArgumentF" Text="Opinion is clearly demonstrated but not persuasive " Checked="false" GroupName="RadioGroupAr" runat="server" onclick="Argument(this, 2)" />
							
					</td>
					<td>
						<asp:RadioButton class="" id="rbArgumentP" Text="Opinion is not demonstrated or highlighted" Checked="false" GroupName="RadioGroupAr" runat="server" onclick="Argument(this, 1)" />
							
					</td>
				</tr>
				<tr>
					<td>
						Questions
					</td>
					<td>
						<asp:RadioButton class="" id="rbQuestionsE" Text="Responded very well to technical questions" Checked="false" GroupName="RadioGroupQu" runat="server" onclick="Questions(this, 4)" />
							
					</td>
					<td>
						<asp:RadioButton class="" id="rbQuestionsG" Text="Could answer most technical questions related to the presentation " Checked="false" GroupName="RadioGroupQu" runat="server" onclick="Questions(this, 3)" />
							
					</td>
					<td>
						<asp:RadioButton class="" id="rbQuestionsF" Text="Could answer some technical questions related to the presentation" Checked="false" GroupName="RadioGroupQu" runat="server" onclick="Questions(this, 2)" />
							
					</td>
					<td>
						<asp:RadioButton class="" id="rbQuestionsP" Text="Could not answer any technical questions related to the presentation" Checked="false" GroupName="RadioGroupQu" runat="server" onclick="Questions(this, 1)" />
							
					</td>
				</tr>
			</table>

		</div>

        <div  >

			<table class="table table-hover bg-dark">
				<tbody>
					<tr class="table-active">
						<td><h2 >TOTAL MARKS:</h2></td>
                    </tr>
                    <tr>
						<td><div id="dvTotalMarks" runat="server" style="font-size:larger; color: orangered" ></div></td>
					</tr>
				</tbody>
			</table>
			
			<asp:HiddenField ID="hdfTotalMarks" runat="server" />          
			

		</div>

		<div >

		<asp:Button ID="btnSaveDoc" runat="server" class="btn btn-primary btn-lg" Text="Save & Generate Report" OnClick="btnSaveDoc_Click" />
 
		</div>
		

		

		
	</form>
</body>
</html>
