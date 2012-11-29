<?
    require_once('includes/healthheader.php');

?>
        <div id="guide1"><img src='images/host_150.png'></div>
        <div id="pageheader"><h1>Safety and Security</h1></div>
        <div id="minibubble"><img src='images/minibubble.png'></div>
        <div id="bubbletalk"><h3 id="talkbubble" class="talkable red">Is anyone teasing you?</h3></div>
        <div id="moodquestions">
            
            <div id="safefive">
                <h4 class="black">It's important that the people around you are kind, courteous and helpful.<br/>Unfortunately, that's not always true.</h4>
                <fieldset id="safefiveans" class="floatright">
                    <img class="yes" id="safefiveyes" src="images/yes_back.png">
                    <img class="no" id="safefiveno" src="images/no_back.png">
                </fieldset>
                <img  class="floatleft teasingguy" src="images/teasing.png">
            </div> <!-- end safefive -->
            
            <div id="fiveuhoh">
                <img class="next" id="fiveuhohnext" src="images/next_back.png">
                <img  class="floatleft trustbench" src="images/trustbench.png">
            </div>    
            
            <div id="safesix">
                <fieldset id="safesixans" class="floatright">
                    <img class="yes" id="safesixyes" src="images/yes_back.png">
                    <img class="no" id="safesixno" src="images/no_back.png">
                </fieldset>
                <img  class="floatleft bullyguy" src="images/bullypunch.png">
            </div> <!-- end safesix -->

            <div id="sixuhoh">
                <img class="next" id="sixuhohnext" src="images/next_back.png">
                <img  class="floatleft trustdad" src="images/trustdad.png">
            </div>
            
            <div id="safeseven">                
                <fieldset id="safesevenans" class="floatright">
                    <img class="yes" id="safesevenyes" src="images/yes_back.png">
                    <img class="no" id="safesevenno" src="images/no_back.png">
                </fieldset>
                <img  class="floatleft creepyguy" src="images/creepyguy5.png">
            </div> <!-- end safeseven -->
            
            <div id="sevenuhoh">
                <img class="next" id="sevenuhohnext" src="images/next_back.png">
                <img  class="floatleft trustdad" src="images/trustwomen.png">
            </div>

            <div id="safeeight">
                <fieldset id="safeeightans" class="floatright">
                    <img class="yes" id="safeeightyes" onmouseover='speakText("Yes")' src="images/yes_back.png">
                    <img class="no" id="safeeightno" src="images/no_back.png">
                </fieldset>
                <img  class="floatleft secretguy" src="images/secretguy.png">
            </div> <!-- end safeseven -->
            
            <div id="safetrust">
                <h3 class="black" onclick='speakText("If you answered Yes, please tell someone you trust right away!")' >If you answered "Yes",<br/>please tell someone you trust right away!</h3>
                <div id="safetrustnextcontainer">
                    <img class="next" id="safetrustnext" src="images/next_back.png">
                    <img  class="floatleft trustdad2" src="images/trusttelephone.png">
                </div> <!-- end moodfournextcontainer -->
            </div> <!-- end safefive -->
            
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
            $("#guide1").animate({ opacity: 1 }, 10,function() {  
                $("#safefive").animate({ top: "30px", left: "25px"}, 1500,'easeOutCubic');
            });

            $(window).load(function(){speakText("Let's talk about safety and security. ... It's important that the people around you are kind, courteous and helpful. Unfortunately, that's not always true. ... Is anyone teasing you?");});

            
            $(".talkable").click(function(){
                var speakThis = $(this).text();
                speakText(speakThis);
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
