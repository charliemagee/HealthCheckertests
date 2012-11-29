<?
    require_once('includes/healthheader.php');

?>
        <div id="guide1"><img src='images/host_150.png'></div>
        <div id="pageheader"><h1 class="talkable">Self-Care</h1></div>
        <div id="minibubble"><img src='images/minibubble.png'></div>
        <div id="bubbletalk"><h3 id="talkbubble" class="talkable">When was your last shower?</h3></div>
        <div id="hygienequestions">

            <div id="shower">
                <img src="images/shower.png">
                <div class="indent1">
                    <div class="checkline"><img id="todayshower" class="checkclick" src="images/bigcheckbox.png"><h4 class="black talkable">Today</h4></div>
                    <div class="checkline"><img id="yesterdayshower" class="checkclick" src="images/bigcheckbox.png"><h4 class="black talkable">Yesterday</h4></div>
                    <div class="checkline"><img id="twodayshower" class="checkclick" src="images/bigcheckbox.png"><h4 class="black talkable">Two Days Ago</h4></div>
                    <div class="checkline"><img id="notsureshower" class="checkclick" src="images/bigcheckbox.png"><h4 class="black talkable">I Don't Know</h4></div>
                </div>
                <img class="next" id="hy2next" src="images/next_back.png">
            </div> <!-- end shower -->
            <div id="weight">
                <img src="images/weight.png">
                <div id="weightanswer">
                    <div id="weightcolumn1"><h2 id="weightdigit1"></h2></div>
                    <div id="weightcolumn2"><h2 id="weightdigit2"></h2></div>
                    <div id="weightcolumn3"><h2 id="weightdigit3"></h2></div>
                    
                </div>  <!-- end weightanswer -->
                <div id="lbs"><h3 class="black">lbs</h3></div>
                <div id="keypad" class="clearleft">
                    <div id="number1"><h3><a href='#'><span class="shiftlabel2">1</span></a></h3></div>
                    <div id="number2"><h3><a href='#'><span class="shiftlabel2">2</span></a></h3></div>
                    <div id="number3"><h3><a href='#'><span class="shiftlabel2">3</span></a></h3></div>
                    <div id="clearnumbers"><h3><a href='#' class="widerbutton"><span class="shiftlabel2">CLEAR</span></a></h3></div>
                    <div id="number4" class="clearleft"><h3><a href='#'><span class="shiftlabel2">4</span></a></h3></div>
                    <div id="number5"><h3><a href='#'><span class="shiftlabel2">5</span></a></h3></div>
                    <div id="number6"><h3><a href='#'><span class="shiftlabel2">6</span></a></h3></div>
                    <div id="number7" class="clearleft"><h3><a href='#'><span class="shiftlabel2">7</span></a></h3></div>
                    <div id="number8"><h3><a href='#'><span class="shiftlabel2">8</span></a></h3></div>
                    <div id="number9"><h3><a href='#'><span class="shiftlabel2">9</span></a></h3></div>
                    <div id="number0" class="clearleft number0extra"><h3><a href='#'><span class="shiftlabel2">0</span></a></h3></div>
                </div> <!-- end keypad -->
                <img class="next" id="hy3next" src="images/next_back.png">
            </div> <!-- end weight -->
            
            <div id="teeth">
                <img src="images/teeth.png">
                <div class="indent2">
                    <div class="checkline"><img id="todayteeth" class="checkclick" src="images/bigcheckbox.png"><h4 class="black talkable">Today</h4></div>
                    <div class="checkline"><img id="yesterdayteeth" class="checkclick" src="images/bigcheckbox.png"><h4 class="black talkable">Yesterday</h4></div>
                    <div class="checkline"><img id="twodayteeth" class="checkclick" src="images/bigcheckbox.png"><h4 class="black talkable">Two Days Ago</h4></div>
                    <div class="checkline"><img id="notsureteeth" class="checkclick" src="images/bigcheckbox.png"><h4 class="black talkable">I Don't Know</h4></div>
                </div>
                <img class="next" id="hy4next" src="images/next_back.png">    
            </div> <!-- end teeth -->
            
            <div id="poop">
                <img src="images/poop3.png">
                <div class="indent3">
                    <div class="checkline"><img id="todaypoop" class="checkclick" src="images/bigcheckbox.png"><h4 class="black talkable">Today</h4></div>
                    <div class="checkline"><img id="yesterdaypoop" class="checkclick" src="images/bigcheckbox.png"><h4 class="black talkable">Yesterday</h4></div>
                    <div class="checkline"><img id="twodaypoop" class="checkclick" src="images/bigcheckbox.png"><h4 class="black talkable">Two Days Ago</h4></div>
                    <div class="checkline"><img id="notsurepoop" class="checkclick" src="images/bigcheckbox.png"><h4 class="black talkable">I Don't Know</h4></div>
                </div>
                <img class="next" id="hy5next" src="images/next_back.png">
                    
            </div> <!-- end poop -->
            
            <div id="medicine">
                <img src="images/medicationguy.png" />
                <h3 class="talkable">Do you take any medications?</span></h3>
                <fieldset class="indent4">
                    <img class="yes" id="medicineyes" src="images/yes_back.png">
                    <img class="no" id="medicineno" src="images/no_back.png">
                </fieldset>
            </div> <!-- end medicine -->
            <div id="medicine2">
                <h3 class="talkable">Did you take them the last time<br/>you were supposed to?</span></h3>
                <fieldset class="indent4">
                    <img class="yes" id="medicineyes2" src="images/yes_back.png">
                    <img class="no" id="medicineno2" src="images/no_back.png">
                </fieldset>
            </div> <!-- end medicine -->

        </div> <!-- end questions -->

    </div> <!-- end content -->
    <script type="text/javascript" src="js/jquery-1.6.2.min.js"></script>
    <script type="text/javascript" src="js/jquery-ui-1.8.16.custom.min.js"></script>
    <script type="text/javascript" src="js/jquery.transit.min.js"></script>
    <script type="text/javascript" src="js/jquery.path.js"></script>
    <script type="text/javascript" src="js/jquery.healthchecker.js"></script>
    <script type="text/javascript" src="js/jquery.easing.1.3.js"></script>
    
    <script type="text/javascript">
    
        $(document).ready(function () {

            $(window).load(function(){speakText("Okay, now let's talk about taking care of your body. ... When was your last shower?");});
            
            $("#guide1").animate({ opacity: 1 }, 1500);
            $("#shower").animate({ left: "120px", top: "50px" }, 1500,'easeOutCubic');
            $("#hy2next").animate({ top: "325px", left: "555px"}, 1500,'easeOutCubic');

            $(".talkable").click(function(){
                var speakThis = $(this).text();
                speakText(speakThis);
            });

            $(".checkclick").click(function() {
                $("embed").remove();
                return $("body").append("<embed src=\"clickon.wav\" autostart=\"true\" hidden=\"true\" loop=\"false\">");
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
                speakText("no");
                $(this).attr("src","images/no_backh.png");
                    }, function() {
                $(this).attr("src","images/no_back.png");
            });
        });
        
    </script>

<?
    require_once('includes/healthfooter.php');

?>
