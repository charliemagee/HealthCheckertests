<?
    require_once('includes/healthheader.php');

?>
        <div id="guide1"><img src='images/host_150.png'></div>
        <div id="pageheader"><h1 class="talkable">Emotional Well-Being</h1></div>
        <div id="minibubble"><img src='images/minibubble.png'></div>
        <div id="bubbletalk"><h3 id="talkbubble" class="talkable">How are you feeling today?</h3></div>
        <div id="moodquestions">

            <div id="moodcontainer">
                <h3 class="black talkable">Click the faces that show how you feel.</h3>
                <div id="moodone">
                    <div id="moodsad" class="hoverable">
                        <div class="moodbutton checkclick"><img id="moodsadcheck" src="images/bigcheckbox.png"></div>
                        <div class="moodimage"><img src="images/mood_sad.png"></div>
                        <div class="moodtype"><h3>Sad</h3></div>
                    </div>
                    <div id="moodworried" class="hoverable">
                        <div class="moodbutton checkclick"><img id="moodworriedcheck" src="images/bigcheckbox.png"></div>
                        <div class="moodimage"><img src="images/mood_worried.png"></div>
                        <div class="moodtype"><h3>Worried</h3></div>
                    </div>
                    <div id="moodfine" class="hoverable">
                        <div class="moodbutton checkclick"><img id="moodfinecheck" src="images/bigcheckbox.png"></div>
                        <div class="moodimage"><img src="images/mood_neutral.png"></div>
                        <div class="moodtype"><h3>Fine</h3></div>
                    </div>
                    <div id="moodhappy" class="hoverable">
                        <div class="moodbutton checkclick"><img id="moodhappycheck" src="images/bigcheckbox.png"></div>
                        <div class="moodimage"><img src="images/mood_happy.png"></div>
                        <div class="moodtype"><h3>Happy</h3></div>
                    </div>
                </div>
                <div id="moodtwo">
                    <div id="moodconfused" class="hoverable">
                        <div class="moodbutton checkclick"><img id="moodconfusedcheck" src="images/bigcheckbox.png"></div>
                        <div class="moodimage"><img src="images/mood_confused.png"></div>
                        <div class="moodtype"><h3>Confused</h3></div>
                    </div>
                    <div id="moodstressed" class="hoverable">
                        <div class="moodbutton checkclick"><img id="moodstressedcheck" src="images/bigcheckbox.png"></div>
                        <div class="moodimage"><img src="images/mood_stressed.png"></div>
                        <div class="moodtype"><h3>Stressed</h3></div>
                    </div>
                    <div id="moodangry" class="hoverable">
                        <div class="moodbutton checkclick"><img id="moodangrycheck" src="images/bigcheckbox.png"></div>
                        <div class="moodimage"><img src="images/mood_angry.png"></div>
                        <div class="moodtype"><h3>Angry</h3></div>
                    </div>
                    <div id="moodscared" class="hoverable">
                        <div class="moodbutton checkclick"><img id="moodscaredcheck" src="images/bigcheckbox.png"></div>
                        <div class="moodimage"><img src="images/mood_scared.png"></div>
                        <div class="moodtype"><h3>Scared</h3></div>
                    </div>
                </div>
                <div id="moodonenextcontainer">
                    <h3 class="fadeblue ready">Ready? Click</h3>
                    <img class="next" id="moodonenext" src="images/next_back.png">
                </div>
                
            </div> <!-- end moodcontainer -->
            

            <div id="moodfour">
                <h4 class="black talkable">What could you do today?</h4>
                <div id="moodchoices">
                    <div id="mood1wrapper" class="hoverable"><img id="mood1" class="checkclick" src="images/moodsing.png"><h5>Sing and Dance</h5></div>
                    <div id="mood2wrapper" class="hoverable"><img id="mood2" class="checkclick" src="images/moodyoga.png"><h5>Do Yoga</h5></div>
                    <div id="mood3wrapper" class="hoverable"><img id="mood3" class="checkclick" src="images/moodmeal.png"><h5>Eat a Good Meal</h5></div>
                    <div id="mood4wrapper" class="hoverable"><img id="mood4" class="checkclick" src="images/moodrelax.png"><h5>Relax</h5></div>
                    <div id="mood5wrapper" class="clearleft hoverable"><img id="mood5" class="checkclick" src="images/moodexercise.png"><h5>Get some Exercise</h5></div>
                    <div id="mood6wrapper" class="hoverable"><img id="mood6" class="checkclick" src="images/moodchat.png"><h5>Chat with a Friend</h5></div>
                    <div id="mood7wrapper" class="hoverable"><img id="mood7" class="checkclick" src="images/moodwork.png"><h5>Work on a Project</h5></div>
                    <div id="mood8wrapper" class="hoverable"><img id="mood8" class="checkclick" src="images/moodgame.png"><h5>Play a Game</h5></div>
                </div>
                <div id="moodfournextcontainer">
                    <h3 class="fadeblue ready">Ready? Click</h3>
                    <img class="next" id="moodfournext" src="images/next_back.png">
                </div> <!-- end moodfournextcontainer -->
            </div> <!-- end moodfour -->
        </div> <!-- end questions -->

        
    </div> <!-- end content -->
    
    <script type="text/javascript" src="js/jquery-1.6.2.min.js"></script>
    <script type="text/javascript" src="js/jquery-ui-1.8.16.custom.min.js"></script>
    <script type="text/javascript" src="js/jquery.transit.min.js"></script>
    <script type="text/javascript" src="js/jquery.healthchecker.js"></script>
    <script type="text/javascript" src="js/jquery.easing.1.3.js"></script>
    
    <script type="text/javascript">
        $(document).ready(function () {
            $(window).load(function(){speakText("Okay, now let's think about your feelings. ... How are you feeling today? ... Click the faces that show how you feel.");});

            $("#moodcontainer").animate({ top: "15px", left: "10px"}, 2500,'easeOutCubic');
            
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
                speakText("no");
                $(this).attr("src","images/no_backh.png");
                    }, function() {
                $(this).attr("src","images/no_back.png");
            });
        });

        $(".checkclick").toggle((function() {
            $("embed").remove();
            return $("body").append("<embed src=\"clickon.wav\" autostart=\"true\" hidden=\"true\" loop=\"false\">");
        }), function() {
            $("embed").remove();
            return $("body").append("<embed src=\"clickoff.wav\" autostart=\"true\" hidden=\"true\" loop=\"false\">");
        });

        $(".ready").click(function(){
                speakText("Ready? Click next.");
            });

        $(".talkable").click(function(){
            var speakThis = $(this).text();
            speakText(speakThis);
        });

        $(".hoverable").hover(function(){
            var speakThis = $(this).text();
            speakText(speakThis);
        });

        $("#bubbletalk").animate({
            top: 250
        }, 250, function() {
            return $("#bubbletalk").animate({
                top: 98
            }, 800, "easeOutCubic");
        });
        
    </script>
    

<?
    require_once('includes/healthfooter.php');

?>
