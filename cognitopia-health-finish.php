<?
    require_once('includes/healthheader.php');

?>
        <div id="guide1"><img src='images/host_150.png'></div>
        <div id="pageheader"><h1 class="talkable headerreduce">That's it for Today's Health Checker!</h1></div>
        <div id="minibubble"><img src='images/minibubble.png'></div>
        <div id="bubbletalk"><h3 id="talkbubble" class="talkable">Nice work!</h3></div>
        <div id="shiftbreathe">
            <div id="breathe">
                <div id="inhale"><h3>Inhale</h3></div>
                <div id="exhale"><h3>Exhale</h3></div>
                <div id="goodjob">
                    <h3>Good Job!</h3>
                </div>
            </div>  <!-- end breathe -->
        </div>  <!-- end shiftbreathe -->
        <div id="choosesummary">
            <h3 class="fadeblue talkable">To see your Summary, click</h5>
            <img class="next" id="seesummary" src="images/next_back.png">
        </div>
        <div id="summaryholder">
            <img src="images/summarygirl.png">
            <div id="summarytoprow">
                <div id="thesummary" class="talkable"></div>
                <div id="thesummary2" class="talkable"></div>
            </div>
            <div id="summarymidrow">
                <div id="thesummary3" class="talkable"></div>
                <div id="thesummary4" class="talkable"></div>
            </div>
            <div id="summarybottomrow">
                <div id="thesummary5" class="talkable"></div>
            </div>
        </div>

        <div id="summary">
            <div id="guidechoice"><img src="images/congrats.png"></div>
            <div id="summaryheader">
                <h4 class="black talkable">It's a good idea to check your health<br/>at least once a week. That way health issues<br/>can be taken care of before they get bad.<br/>Let's finish with more deep breathing.</h4>
                <img class="next" id="startfinish" src="images/next_back.png">
            </div>
            

            <div id="welcome"></div>

        </div> <!-- end summary -->
        

    </div> <!-- end content -->
    <script type="text/javascript" src="js/jquery-1.6.2.min.js"></script>
    <script type="text/javascript" src="js/jquery-ui-1.8.16.custom.min.js"></script>
    <script type="text/javascript" src="js/jquery.transit.min.js"></script>
    <script type="text/javascript" src="js/logSummary.js"></script>
    <script type="text/javascript" src="js/jquery.healthchecker.js"></script>
    <script type="text/javascript" src="js/jquery.easing.1.3.js"></script>
    
    <script type="text/javascript">
        $(document).ready(function () {

            $(window).load(function(){speakText("That's it for today's health checker. ... Nice work! ... It's a good idea two check your health at least once a week. That way health issues can be taken care of before they get bad. ... Let's finish with more deep breathing.");});

            $("#inhale").css({ opacity: 1, left: 200 });
            $("#exhale").css({ opacity: 1, left: 200 });
            $("#goodjob").css({ opacity: 1, left: 200 });
            $("#summary").animate({ left: "160px", top: "200px" }, 1500,'easeOutCubic');
            
        });
        $(".next").hover(function() {
            speakText("next");
            $(this).attr("src","images/next_backh.png");
        }, function() {
            $(this).attr("src","images/next_back.png");
        });

        $(".talkable").click(function(){
            var speakThis = $(this).text();
            speakText(speakThis);
        });
        
    </script>

<?
    require_once('includes/healthfooter.php');

?>
