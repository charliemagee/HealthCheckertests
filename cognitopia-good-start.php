<?
    require_once('includes/healthheader.php');

?>

        <div id="guide1start"><img src='images/host_150.png'></div>
        <div id="pageheader" class="talkable"><h1>A Good Start</h1></div>
        <div id="minibubblestart"><img src='images/minibubble.png'></div>
        <div id="bubbletalkstart"><h3  id="talkbubble" class="reduce talkable">Have you had a good thought about yourself today?</h3></div>
        
        <div id="guidechoice"><img src='images/host_200.png'></div>
        <div id="welcome">
                <h3 class="talkable">Let's get started with 3 Deep Breaths.</h3>
                <p class="talkable">Deep breathing clears your mind, fuels your body,<br />and gets you ready for anything!<span class="hidethat">.</span><br /> You should try deep breathing several times a day.</p>
                <h4 class="talkable" class="margindropdown2">Click Next when you're ready.</h4>
        </div>  <!-- end welcome -->
        <div id="breathe">
            <div id="inhale"><h3>Inhale</h3></div>
            <div id="exhale"><h3>Exhale</h3></div>
            <div id="goodjob"><h3>Good Job!</h3></div>
        </div>  <!-- end breathe -->
        <img class="next" id="start" src="images/next_back.png">

    <div id="questions">
        <div id="one">
            <img class="happyguide" src="images/happyself.png">
            <fieldset class="happyyesno">
                <img class="yes" id="oneyes" src="images/yes_back.png">
                <img class="no" id="oneno" src="images/no_back.png">
            </fieldset>
        </div>  <!-- end one -->
        
        <div id="oneresponse">
            <div id="oneansyes">
                <h3 class="yesanswer talkable">Nice! Think that thought<br />again right now.</h3>
                <h3 class="fadeblue ready">Ready? Click</h3>
            </div>
            <div id="oneansno">
                <h3 class="noanswer talkable">What are you waiting for? Think a<br />good thought about yourself right now.</h3>
                <h3 class="fadeblue ready">Ready? Click</h3>
            </div>
            <img class="next margindropdown2" id="onenext" src="images/next_back.png">
        </div>  <!-- end oneresponse -->
        
        <div id="two">
            <img class="happyguide" src="images/happyfriends2.png">
            <fieldset class="happyyesno">
                <img class="yes" id="twoyes" src="images/yes_back.png">
                <img class="no" id="twono" src="images/no_back.png">
            </fieldset>
        </div>  <!-- end two -->
        
        <div id="tworesponse">
            <div id="twoansyes">
                <h3 class="yesanswer talkable">Excellent! They are probably thinking<br />a great thought about you right now.</h3>
                <h3 class="fadeblue ready">Ready? Click</h3>
            </div>
            <div id="twoansno">
                <h3 class="noanswer talkable">Well, it's never too late. Try it now.<br />Be happy for someone you love.</h3>
                <h3 class="fadeblue ready">Ready? Click</h3>
            </div>
            <img class="next" id="twonext" src="images/next_back.png">
        </div> <!-- end tworesponse -->
        
        <div id="three">
            <h4 class="black talkable">Choose as many as you'd like.<br />Think of other ideas for things to do today!</h4>
            <div id="dochoices">
                <div id="do1wrapper" class="hoverable checkclick"><img id="do1" src="images/listening.png"><h5 class="talkable">Listen to Music</h5></div>
                <div id="do2wrapper" class="hoverable checkclick"><img id="do2" src="images/walking.png"><h5 class="talkable">Go for a Walk</h5></div>
                <div id="do3wrapper" class="hoverable checkclick"><img id="do3" src="images/visit.png"><h5 class="talkable">Visit a Friend</h5></div>
                <div id="do4wrapper" class="hoverable checkclick"><img id="do4" src="images/grocery.png"><h5 class="talkable">Go Shopping</h5></div>
                <div id="do5wrapper" class="hoverable checkclick"><img id="do5" src="images/exercise.png"><h5 class="talkable">Get Exercise</h5></div>
            </div>
        </div> <!-- end three -->
        
        <div id="threeresponse">
            <div id="threeans"><h3 class="fadeblue ready">Ready? Click</span></h3></div>
            <img class="next" id="threenext" src="images/next_back.png">
        </div> <!-- end threeresponse -->        
    </div> <!-- end questions -->
    
    </div> <!-- end content -->
    <script type="text/javascript" src="js/jquery-1.6.2.min.js"></script>
    <script type="text/javascript" src="js/jquery-ui-1.8.16.custom.min.js"></script>
    <script type="text/javascript" src="js/jquery.transit.min.js"></script>
    <script type="text/javascript" src="js/jquery.healthchecker.js"></script>
    <script type="text/javascript" src="js/jquery.easing.1.3.js"></script>
    
    <script type="text/javascript">
        $(document).ready(function () {

            $(window).load(function(){speakText("Here's a good way to start with Health Checker. ... Let's get started with 3 Deep Breaths. ... Deep breathing clears your mind, fuels your body, and gets you ready for anything! ... You should try deep breathing several times a day. ... ... Click Next when you are ready.");});

            $("#inhale").css({ opacity: 0 });
            $("#exhale").css({ opacity: 0 });
            $("#goodjob").css({ opacity: 0 });

            $(".talkable").click(function(){
                var speakThis = $(this).text();
                speakText(speakThis);
            });

            $(".hoverable").hover(function(){
                var speakThis = $(this).text();
                speakText(speakThis);
            });

            $(".ready").click(function(){
                speakText("Ready? Click next.");
            });

            $(".checkclick").toggle((function() {
                $("embed").remove();
                return $("body").append("<embed src=\"clickon.wav\" autostart=\"true\" hidden=\"true\" loop=\"false\">");
            }), function() {
                $("embed").remove();
                return $("body").append("<embed src=\"clickoff.wav\" autostart=\"true\" hidden=\"true\" loop=\"false\">");
            });

            
            $(".next").hover(function() {
                speakText("next");
            	$(this).attr("src","images/next_backh.png");
            		}, function() {
                $(this).attr("src","images/next_back.png");
            });
            $(".yes").hover(function() {
                speakText("yes");
            	$(this).attr("src","images/yes_backh.png");
            		}, function() {
                $(this).attr("src","images/yes_back.png");
            });
            $(".no").hover(function() {
                speakText("KNOW");
            	$(this).attr("src","images/no_backh.png");
            		}, function() {
                $(this).attr("src","images/no_back.png");
            });
            
        });
    </script>

<?
    require_once('includes/healthfooter.php');

?>

