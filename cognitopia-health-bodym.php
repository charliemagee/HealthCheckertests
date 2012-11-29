<?
    require_once('includes/healthheader.php');

?>

        <div id="guide1"><img src='images/host_150.png'></div>
        <div id="pageheader"><h1 class="talkable">Physical Well-Being</h1></div>
        <div id="minibubble"><img src='images/minibubble.png'></div>
        <div id="bubbletalk"><h3 id="talkbubble" class="talkable">Are you in any physical pain or discomfort?</h3></div>

        <div id="modalhide"></div>
        <div id="headmodalhide"></div>
        
        <div id="four">
            <img class="crutchguy" src="images/crutches.png" id="fiveunwell">
            <fieldset id="fourans">
                <img class="yes" id="fouryes" src="images/yes_back.png">
                <img class="no" id="fourno" src="images/no_back.png">
            </fieldset>
        </div> <!-- end four -->
        
        <div id="genderchoice">
            <h3 class="talkable">Which gender are you?</h3>
            <div id="malechoice">
                <div class="moodbutton"><img id="malechoicecheck" src="images/bigcheckbox.png"></div>
                <div class="moodimage"><img src="images/malechoice.png"></div>
                <div class="maletype"><h3>Male</h3></div>
            </div>
            <div id="femalechoice">
                <div class="moodbutton"><img id="femalechoicecheck" src="images/bigcheckbox.png"></div>
                <div class="moodimage"><img src="images/femalechoice.png"></div>
                <div class="femaletype"><h3>Female</h3></div>
            </div>
        </div>
        
        <div id="frontbodyholder">
            <div id="frontbody"><img src="images/male/jimmy125cuts.png"></div>
            <div id="fronthead"><img id="frontheadclick" src="images/male/fronthead_b.png" data-hover="images/male/fronthead.png" /></div>
            <div id="frontheadhidden"><img src="images/male/fronthead_g.png"></div>
            <div id="frontchest"><img id="frontchestclick" src="images/male/frontchest_b.png" data-hover="images/male/frontchest.png" /><img id="frontchesthidden" src="images/male/frontchest_g.png"></div>
            <div id="frontstomach"><img id="frontstomachclick" src="images/male/frontstomach_b.png" data-hover="images/male/frontstomach.png" /><img id="frontstomachhidden" src="images/male/frontstomach_g.png"></div>
            <div id="frontpelvis"><img id="frontpelvisclick" src="images/male/frontpelvis_b.png" data-hover="images/male/frontpelvis.png" /><img id="frontpelvishidden" src="images/male/frontpelvis_g.png"></div>
            <div id="frontgroin"><img id="frontgroinclick" src="images/male/frontgroin_b.png" data-hover="images/male/frontgroin.png" /><img id="frontgroinhidden" src="images/male/frontgroin_g.png"></div>
            <div id="frontleftarm"><img id="frontleftarmclick" src="images/male/frontleftarm_b.png" data-hover="images/male/frontleftarm.png" /><img id="frontleftarmhidden" src="images/male/frontleftarm_g.png"></div>
            <div id="frontlefthand"><img id="frontlefthandclick" src="images/male/frontlefthand_b.png" data-hover="images/male/frontlefthand.png" /><img id="frontlefthandhidden" src="images/male/frontlefthand_g.png"></div>
            <div id="frontleftleg"><img id="frontleftlegclick" src="images/male/frontleftleg_b.png" data-hover="images/male/frontleftleg.png" /><img id="frontleftleghidden" src="images/male/frontleftleg_g.png"></div>
            <div id="frontleftfoot"><img id="frontleftfootclick" src="images/male/frontleftfoot_b.png" data-hover="images/male/frontleftfoot.png" /><img id="frontleftfoothidden" src="images/male/frontleftfoot_g.png"></div>
            <div id="frontrightarm"><img id="frontrightarmclick" src="images/male/frontrightarm_b.png" data-hover="images/male/frontrightarm.png" /><img id="frontrightarmhidden" src="images/male/frontrightarm_g.png"></div>
            <div id="frontrighthand"><img id="frontrighthandclick" src="images/male/frontrighthand_b.png" data-hover="images/male/frontrighthand.png" /><img id="frontrighthandhidden" src="images/male/frontrighthand_g.png"></div>
            <div id="frontrightleg"><img id="frontrightlegclick" src="images/male/frontrightleg_b.png" data-hover="images/male/frontrightleg.png" /><img id="frontrightleghidden" src="images/male/frontrightleg_g.png"></div>
            <div id="frontrightfoot"><img id="frontrightfootclick" src="images/male/frontrightfoot_b.png" data-hover="images/male/frontrightfoot.png" /><img id="frontrightfoothidden" src="images/male/frontrightfoot_g.png"></div>
        </div>
        <div id="backbodyholder">
            <div id="backbody"><img src="images/male/jimmyback125cuts.png"></div>
            <div id="backhead"><img id="backheadclick" src="images/male/backhead_b.png" data-hover="images/male/backhead.png" /><img id="backheadhidden" src="images/male/backhead_g.png"></div>
            <div id="neck"><img id="neckclick" src="images/male/neck_b.png" data-hover="images/male/neck.png" /><img id="neckhidden" src="images/male/neck_g.png"></div>
            <div id="backlefthand"><img id="backlefthandclick" src="images/male/backlefthand_b.png" data-hover="images/male/backlefthand.png" /><img id="backlefthandhidden" src="images/male/backlefthand_g.png"></div>
            <div id="backleftarm"><img id="backleftarmclick" src="images/male/backleftarm_b.png" data-hover="images/male/backleftarm.png" /><img id="backleftarmhidden" src="images/male/backleftarm_g.png"></div>
            <div id="backleftback"><img id="backleftbackclick" src="images/male/backleftback_b.png" data-hover="images/male/backleftback.png" /><img id="backleftbackhidden" src="images/male/backleftback_g.png"></div>
            <div id="spine"><img id="spineclick" src="images/male/spine_b.png" data-hover="images/male/spine.png" /><img id="spinehidden" src="images/male/spine_g.png"></div>
            <div id="backrightback"><img id="backrightbackclick" src="images/male/backrightback_b.png" data-hover="images/male/backrightback.png" /><img id="backrightbackhidden" src="images/male/backrightback_g.png"></div>
            <div id="backrightarm"><img id="backrightarmclick" src="images/male/backrightarm_b.png" data-hover="images/male/backrightarm.png" /><img id="backrightarmhidden" src="images/male/backrightarm_g.png"></div>
            <div id="backrighthand"><img id="backrighthandclick" src="images/male/backrighthand_b.png" data-hover="images/male/backrighthand.png" /><img id="backrighthandhidden" src="images/male/backrighthand_g.png"></div>
            <div id="butt"><img id="buttclick" src="images/male/butt_b.png" data-hover="images/male/butt.png" /><img id="butthidden" src="images/male/butt_g.png"></div>
            <div id="backleftleg"><img id="backleftlegclick" src="images/male/backleftleg_b.png" data-hover="images/male/backleftleg.png" /><img id="backleftleghidden" src="images/male/backleftleg_g.png"></div>
            <div id="backleftfoot"><img id="backleftfootclick" src="images/male/backleftfoot_b.png" data-hover="images/male/backleftfoot.png" /><img id="backleftfoothidden" src="images/male/backleftfoot_g.png"></div>
            <div id="backrightleg"><img id="backrightlegclick" src="images/male/backrightleg_b.png" data-hover="images/male/backrightleg.png" /><img id="backrightleghidden" src="images/male/backrightleg_g.png"></div>
            <div id="backrightfoot"><img id="backrightfootclick" src="images/male/backrightfoot_b.png" data-hover="images/male/backrightfoot.png" /><img id="backrightfoothidden" src="images/male/backrightfoot_g.png"></div>
            
        </div>
        <div id="bodypain">
            <h4>Where it Hurts</h4>
            <div id="painlistholder">
                
            </div>
        </div>
        <div id="painfinish">
            <h5 id="readyclick"><span class="fadeblue">When you're ready to<br/>continue, click</span></h5>
            <img class="next" id="paintransnext" src="images/next_back.png">
        </div>

        <div id="painstrip">
            <div id="painstripmydiv"><p id="painstripmy" class="talkable"></p></div>
            <img id="pain1" src="images/pain1.png">
            <img id="pain2" src="images/pain2.png">
            <img id="pain3" src="images/pain3.png">
            <img id="pain4" src="images/pain4.png">
            <img id="pain5" src="images/pain5.png">
            <p class="clearboth talkable">Click a face to show how much it hurts.</p>
            <img class="cancel" id="cancelpainstrip" src="images/cancel_back.png">
        </div>
        
        <div id="frontheadholder">
            <div id="frontbighead"><img src="images/male/jimmyheadlines.png"></div>
            
            <div id="forehead"><img id="foreheadclick" src="images/male/forehead_b.png" data-hover="images/male/forehead.png" /><img id="foreheadhidden" src="images/male/forehead_g.png"></div>
            <div id="rightear"><img id="rightearclick" src="images/male/rightear_b.png" data-hover="images/male/rightear.png" /><img id="rightearhidden" src="images/male/rightear_g.png"></div>
            <div id="righteye"><img id="righteyeclick" src="images/male/righteye_b.png" data-hover="images/male/righteye.png" /><img id="righteyehidden" src="images/male/righteye_g.png"></div>
            <div id="nose"><img id="noseclick" src="images/male/nose_b.png" data-hover="images/male/nose.png" /><img id="nosehidden" src="images/male/nose_g.png"></div>
            <div id="lefteye"><img id="lefteyeclick" src="images/male/lefteye_b.png" data-hover="images/male/lefteye.png" /><img id="lefteyehidden" src="images/male/lefteye_g.png"></div>
            <div id="leftear"><img id="leftearclick" src="images/male/leftear_b.png" data-hover="images/male/leftear.png" /><img id="leftearhidden" src="images/male/leftear_g.png"></div>
            <div id="mouth"><img id="mouthclick" src="images/male/mouth_b.png" data-hover="images/male/mouth.png" /><img id="mouthhidden" src="images/male/mouth_g.png"></div>
            <div id="jaw"><img id="jawclick" src="images/male/jaw_b.png" data-hover="images/male/jaw.png" /><img id="jawhidden" src="images/male/jaw_g.png"></div>
            <div id="throat"><img id="throatclick" src="images/male/throat_b.png" data-hover="images/male/throat.png" /><img id="throathidden" src="images/male/throat_g.png"></div>
            <img class="done" id="donehead" src="images/done_back.png">
        </div>

        <div id="paintransition">
            <img  class="floatleft doctor" src="images/doctor.png">
            <h4 class="black floatleft talkable">If you're feeling pain,<br/>let someone know.</h4>
            <img class="next" id="moodnext" src="images/next_back.png">
        </div>
    
    </div> <!-- end content -->
    <script type="text/javascript" src="js/jquery-1.6.2.min.js"></script>
    <script type="text/javascript" src="js/jquery-ui-1.8.16.custom.min.js"></script>
    <script type="text/javascript" src="js/jquery.transit.min.js"></script>
    <script type="text/javascript" src="js/jquery.path.js"></script>
    <script type="text/javascript" src="js/jquery.healthchecker.js"></script>
    <script type="text/javascript" src="js/jquery.easing.1.3.js"></script>

    <script type="text/javascript">
    
        $(document).ready(function () {

            $(window).load(function(){speakText("Let's talk about how your body is feeling. ... Are you in any physical pain or discomfort?");});

            $(".talkable").click(function(){
                var speakThis = $(this).text();
                speakText(speakThis);
            });

            $(".hoverable").hover(function(){
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
            $(".done").hover(function() {
                speakText("done");
            	$(this).attr("src","images/done_backh.png");
            		}, function() {
                $(this).attr("src","images/done_back.png");
            });
            $(".cancel").hover(function() {
                speakText("cancel");
            	$(this).attr("src","images/cancel_backh.png");
            		}, function() {
                $(this).attr("src","images/cancel_back.png");
            });
            $("#malechoice").hover(function() {
                speakText("male");
            });
            $("#femalechoice").hover(function() {
                speakText("fee male");
            });
            $("#readyclick").click(function(){
                speakText("When you are ready to continue, click next.");
            });
        });
        
        $(function() {
            $("#four").animate({ top: "170px", left: "240px"}, 1500,'easeOutCubic');
        });
        
        $(function() {
            $('img[data-hover]').hover(function() {
                $(this).attr('tmp', $(this).attr('src')).attr('src', $(this).attr('data-hover')).attr('data-hover', $(this).attr('tmp')).removeAttr('tmp');
            }).each(function() {
                $('<img />').attr('src', $(this).attr('data-hover'));
            });;
        });
        
 </script>

<?
    require_once('includes/healthfooter.php');

?>
