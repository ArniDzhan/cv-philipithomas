<?php
include_once('class.MySQL.php');
include_once('config.php');

$oMySQL = new MySQL(DB_NAME, DB_USER, DB_PASSWORD, DB_HOST);
$about = current($oMySQL->Select('about'));
?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title><?php echo $about['full_name']; ?> Curriculum Vitae</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="Curriculum Vitae for <?php echo $about['full_name']; ?>">
        <meta name="author" content="<?php echo $about['full_name']; ?>">

        <!-- Le styles -->
        <link href="assets/css/bootstrap.css" rel="stylesheet">
        <style>
            body {
                padding-top: 60px; /* 60px to make the container go all the way to the bottom of the topbar */
            }
        </style>
        <link href="assets/css/bootstrap-responsive.css" rel="stylesheet">

        <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
        <!--[if lt IE 9]>
          <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->

        <!-- Le fav and touch icons -->
        <link rel="shortcut icon" href="favicon.ico">


    </head>

    <body class="preview" data-spy="scroll" data-target=".subnav" data-offset="80">

        <div class="navbar navbar-fixed-top">
            <div class="navbar-inner">
                <div class="container">
                    <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                    </a>
                    <a class="brand" href="#">Curriculum Vitae</a>
                    <div class="nav-collapse collapse">
                        <ul class="nav">
                            <li><a href="#about">About</a></li>
                            <li><a href="#education">Education</a></li>
                            <li><a href="#experience">Experience</a></li>
                            <li><a href="#technical">Technical</a></li>
                            <li><a href="#honors">Honors</a></li>

                        </ul>
                        <div class="nav-collapse collapse pull-right">
                            <ul class="nav">
                                <li><a href="<?php echo $about['web']; ?>" target="_blank>">Homepage</a></li>
                                <li><a href="/cv.doc">Download .doc</a></li>          
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="container">

            <header class="jumbotron">

                <div class="row">
                    <div class="span12">
                        <h3 style="text-align: center; text-style: italic">Curriculum Vitae for</h3>

                        <h1 style="padding: 10px 0px; text-align: center; font-size: 60px; line-height: 70px; text-transform: lowercase"><?php echo $about['full_name']; ?></h1>
                        <span class="" style="text-align: center;"> 
                            <address>
                                <a href="<?php echo $about['web']; ?>" target="_blank"><?php echo $about['web']; ?></a><br />
                                <a href="mailto:#"><?php echo $about['email']; ?></a><br />
                                <a><?php echo $about['tel']; ?></a>
                            </address>
                        </span>
                    </div>
                </div> 

            </header>

            <section id="about">
                <div class="row">

                    <div class="page-header">
                        <h2>About</h2>
                    </div>
                </div> 
                <div class="row">

                    <div class="span12"><p>
                            <?php echo $about['about']; ?></p>

                    </div>
                </div> 

            </section>

            <section id="education">
                <div class="row">

                    <div class="page-header">
                        <h2>Education</h2>
                    </div>
                </div> <!-- end row -->
                <?php
                $education = $oMySQL->Select('education');
                foreach ($education as $record) {
                    position($record['company'], $record['city'], $record['job'], $record['date_start'] . " - " . $record['date_end'], $record['blob'], $record['link']);
                }
                ?>

            </section>



            <section id="experience">
                <div class="row">

                    <div class="page-header">
                        <h2>Professional and Leadership Experience </h2>
                    </div>
                </div> <!-- end row -->
                <?php
                $position = $oMySQL->Select('position', '', 'date_start');
                $position = array_reverse($position); // order jobs by date descending
                foreach ($position as $record) {
                    position($record['company'], $record['city'], $record['job'], $record['date_start'] . " - " . $record['date_end'], $record['blob'], $record['link']);
                }
                ?>


            </section>

            <section id="technical">
                <div class="row">

                    <div class="page-header">
                        <h2>Technical</h2>
                    </div>
                </div> <!-- end row -->
                <div class="row">


                    <div class="span8">
                        <?php
                        $techSkills = $oMySQL->Select('skills_tech');
                        foreach ($techSkills as $record) {
                            iprogram($record['language'], $record['percent']);
                        }
                        ?>
                    </div>
                    <div class="span4">
                        <div class="well">
                            <h4>Selected Projects</h4>
                            <hr />
                            <ul>
                                <?php
                                $projects = $oMySQL->Select('projects');
                                foreach ($projects as $record) {
                                    project($record['name'], $record['look'], $record['code']);
                                }
                                ?>
                            </ul>
                            <a class="pull-right btn btn-small btn-inverse" href="<?php echo $about['github']; ?>">Github Profile <i class="icon-arrow-right icon-white"></i></a><br />
                        </div>
                    </div>
                </div>

            </section>


            <section id="honors">
                <div class="row">

                    <div class="page-header">
                        <h2>Honors and Skills</h2>
                    </div>
                </div> <!-- end row -->
                <div class="row">
                    <div class="span8">
                        <?php
                        $otherSkills = $oMySQL->Select('skills_other');
                        foreach ($otherSkills as $record) {
                            extra($record['name'], $record['blob']);
                        }
                        ?>
                    </div>

                </div>


            </section>

            <footer style="padding-top: 20px;">
                <hr />
                <p style="text-align: center">&copy; <a href="<?php echo $about['web']; ?>"><?php echo $about['full_name']; ?></a> 2013</p>
            </footer>      

        </div> <!-- /container -->

        <!-- Le javascript
        ================================================== -->
        <!-- Placed at the end of the document so the pages load faster -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
        <script src="assets/js/bootstrap.js"></script>

    </body>
</html>

<?php

// =========================================================
/*

  These are some functions to make uniform sections

 */

function position($company, $city, $job, $dates, $blob, $link) {
    /*
      This function is for use in the experience section. It unififes formatting for the various positions.
     */

    echo '
		<div class="row" style="padding: 35px 0 4px 0;">
			<div class="span8"><h4 style="margin: 0">' . $company;
    if (!empty($link)) {
        echo ' <a href="' . $link . '" target="_BLANK"><span class="badge">Website <i class="icon-arrow-right icon-white"></i></span></a>';
    }
    echo '</h4> 
			
			</div>	
			<div class="span4"><h4 class="pull-right hidden-phone" style="margin: 0">' . $city . '</h4>
			</div>
			
		</div> <!-- end row-->
			
		<div class="row">
			<div class="span6"><span style="font-style:italic; font-size: 15px;">' . $job . '</span></div>	
			<div class="span6">
			<span class="visible-phone label">' . $dates . '</span>
			<span class="hidden-phone pull-right" style="font-style:italic; font-size: 15px;" >' . $dates . '</span>
			
			</div>
		</div> <!-- end row-->
		';
    if (!empty($blob)) {
        echo '
			<div class="row" style="padding-top: 8px;"><div class="span12">' . $blob . '</div></div>';
    }
}

function iprogram($language, $percent) {
    // Progress bars for technical section
    echo '
	<div class="row">
		<div class="span3"
		<p><h4 style="text-align: right" class="hidden-phone">' . $language . '</h4></p>
		<p><span class="badge visible-phone" style="text-align: center">' . $language . '</span></p>
		</div>
		<div class="span4">
	      <div class="progress" style="margin: 10px 0 10px 0; height: 22px;">
	        <div class="bar" style="width: ' . $percent . '%;"></div>
	      </div>
	    </div>
		<div class="span1"></div>
	</div>
	';
}

function project($name, $look, $code) {
    // Makes lists for displaying projects
    echo '<li style="padding-top: 12px">';

    if (!empty($look)) {
        // link to look at completed project
        echo '<a href="' . $look . '" target="_BLANK" >' . $name . '</a>';
    } else {
        echo $name;
    }

    if (!empty($code)) {
        // link to look at completed project
        echo ' <a href="' . $code . '" target="_BLANK""><span class="badge badge-info">Code <i class="icon-arrow-right icon-white"></i></span></a>';
    }
    echo '</li>';
}

function extra($title, $blob) {
    echo '<div class="row" style="padding-top:30px">
				<div class="span3">
					<span class="pull-right hidden-phone"><strong>' . $title . '</strong></span>
					<span class="visible-phone badge">' . $title . '</span>
				</div>
				<div class="span5">
					' . $blob . '
				</div>
			</div>';
}
?>
