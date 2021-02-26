<%@ Page Title="" Language="C#" MasterPageFile="~/MenuAndFooter.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Online_Admission.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
    

<style>
body
{
	background:#00bcd4;
}

h1
{
	color:#fff;
	margin:40px 0 60px 0;
	font-weight:500;
}

.our-team-main
{
	width:100%;
	height:auto;
	border-bottom:5px #323233 solid;
	background:#fff;
	text-align:center;
	border-radius:10px;
	overflow:hidden;
	position:relative;
	transition:0.5s;
	margin-bottom:28px;
}


.our-team-main img
{
	border-radius:50%;
	margin-bottom:20px;
	width: 90px;
}

.our-team-main h3
{
	font-size:30px;
	font-weight:700;
}

.our-team-main p
{
	margin-bottom:0;
}

.team-back
{
	width:100%;
	
	height:auto;
	position:absolute;
	top:0;
	left:0;
	padding:5px 15px 0 15px;
	text-align:left;
	background:#fff;
	
}

.team-front
{
	width:100%;
	height:auto;
	position:relative;
	z-index:10;
	background:#fff;
	padding:15px;
	bottom:0px;
	
	transition: all 0.5s ease;
}

.our-team-main:hover .team-front
{
	bottom:-200px;
	transition: all 0.5s ease;

}

.our-team-main:hover
{
	border-color:#777;
	transition:0.5s;
}

/*our-team-main*/



</style>
<body>

<div class="container">
  
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">

      <div class="item active">
        <img src="https://images.unsplash.com/photo-1523240795612-9a054b0db644?ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80" alt="Good Company" style="width:100%;">
        <div class="carousel-caption">
          <h3>Loveable Company</h3>
          <p></p>
        </div>
      </div>

      <div class="item">
        <img src="https://images.unsplash.com/photo-1522202176988-66273c2fd55f?ixlib=rb-1.2.1&auto=format&fit=crop&w=751&q=80" alt="Campus Life" style="width:100%;">
        <div class="carousel-caption">
          <h3>Campus Life</h3>
          <p>Here You get a good enjoyable Campus life </p>
        </div>
      </div>
    
      <div class="item">
        <img src="https://images.unsplash.com/photo-1530099486328-e021101a494a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=816&q=80" alt="Team Work" style="width:100%;">
        <div class="carousel-caption">
          <h3>Team Work</h3>
          <p>Here You Get a good experience of Team Work</p>
        </div>
      </div>
  
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>
        <!-- yahan py slider khatam hota ha  -->
   <h2 class="text-sm-center">
       &nbsp;</h2>
    
    
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->


    <h1 class="text-center">We Offer </h1>

	
	<div class="container">
	<div class="row">
	
	<!--team-1-->
	<div class="col-lg-4">
	<div class="our-team-main">
	
	<div class="team-front">
	<img src="https://admin.umt.edu.pk/Media/Site/sst1/Programs/635959899954620427462.jpg" class="img-fluid" />
	<h3>BSCS</h3>
	<p>Bachelor in Science Computer Science</p>
	</div>
	
	<div class="team-back">
	<span>
	The Department of Computer Science offers a four-year program leading to either a BS degree in Computer Science. The specialization is determined by the choice of required and elective courses taken by a student. The programs are designed to meet the growing need for computer science experts in the rapidly evolving 21st century economy. Their mission is to provide graduates with strong Computer Science skills that will enable them to capitalize on the increasing career opportunities in the computer science sector.
	</span>
	</div>
	
	</div>
	</div>
	<!--team-1-->
	
	<!--team-2-->
	<div class="col-lg-4">
	<div class="our-team-main">
	
	<div class="team-front">
	<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRngOJaOPKUb0ulU_rqcQ-88vHBG2bhk-djdg&usqp=CAU" class="img-fluid" />
	<h3>BSIT</h3>
	<p>Bachelor in Science Information Technology</p>
	</div>
	
	<div class="team-back">
	<span>
	The Department of IT offers a four-year program leading to either a BS degree in IT. The specialization is determined by the choice of required and elective courses taken by a student. The programs are designed to meet the growing need for computer science experts in the rapidly evolving 21st century economy. Their mission is to provide graduates with strong Computer Science skills that will enable them to capitalize on the increasing career opportunities in the computer science sector.
	</span>
	</div>
	
	</div>
	</div>
	<!--team-2-->
	
	<!--team-3-->
	<div class="col-lg-4">
	<div class="our-team-main">
	
	<div class="team-front">
	<img src="https://www.apnaahangout.com/wp-content/uploads/2016/07/BBA.jpg" class="img-fluid" />
	<h3>BBA</h3>
	<p>Bachelor in Business Administration</p>
	</div>
	
	<div class="team-back">
	<span>
	The Department ofBusiness offers a four-year program leading to either a BS degree in BBA. The specialization is determined by the choice of required and elective courses taken by a student. The programs are designed to meet the growing need for computer science experts in the rapidly evolving 21st century economy. Their mission is to provide graduates with strong Computer Science skills that will enable them to capitalize on the increasing career opportunities in the computer science sector.
	</span>
	</div>
	
	</div>
	</div>
	<!--team-3-->
	
	<!--team-4-->
	<div class="col-lg-4">
	<div class="our-team-main">
	
	<div class="team-front">
	<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTVDlwYpi9ipejV3UYx3ZVBGc5jP9bhjy26Ww&usqp=CAU" class="img-fluid" />
	<h3>MBA</h3>
	<p>Masters in Business Administration</p>
	</div>
	
	<div class="team-back">
	<span>
	Master of BA is being offered by the Department of Business. The program is designed to produce academicians and professionals of high quality. The designed course work provides depth and breath-based knowledge of core computer science areas (as identified by the HEC), moreover specialization courses enable students to develop advanced expertise in their chosen area of specialization. Currently, following specializations are being offered:
	</span>
	</div>
	
	</div>
	</div>
	<!--team-4-->
	
	<!--team-5-->
	<div class="col-lg-4">
	<div class="our-team-main">
	
	<div class="team-front">
	<img src="data:image/jpeg;base64,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" class="img-fluid" />
	<h3>MIT</h3>
	<p>Masters in Information Technology </p>
	</div>
	
	<div class="team-back">
	<span>
	Master of Science in Information Technology is being offered by the Department of IT. The program is designed to produce academicians and professionals of high quality. The designed course work provides depth and breath-based knowledge of core computer science areas (as identified by the HEC), moreover specialization courses enable students to develop advanced expertise in their chosen area of specialization. Currently, following specializations are being offered:
	</span>
	</div>
	
	</div>
	</div>
	<!--team-5-->
	
	<!--team-6-->
	<div class="col-lg-4">
	<div class="our-team-main">
	
	<div class="team-front">
<img src="https://admin.umt.edu.pk/Media/Site/sst1/Programs/635959899954620427462.jpg" class="img-fluid" />	<h3>MCS</h3>
	<p>Masters in Computer Sciences</p>
	</div>
	
	<div class="team-back">
	<span>
	Master of Science in Computer Science is being offered by the Department of Computer Science. The program is designed to produce academicians and professionals of high quality. The designed course work provides depth and breath-based knowledge of core computer science areas (as identified by the HEC), moreover specialization courses enable students to develop advanced expertise in their chosen area of specialization. Currently, following specializations are being offered:
	</span>
	</div>
	
	</div>
	</div>
	<!--team-6-->
	
	
	
	</div>
	</div>

    


</asp:Content>
