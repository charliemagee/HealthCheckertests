<?
    require_once('includes/healthheader.php');
?>
        <div id="guide1"><img src='images/host_150.png'></div>
        <div id="pageheader"><h1></h1></div>
        <div id="minibubble"><img src='images/minibubble.png'></div>
        <div id="bubbletalk"><h3 id="talkbubble" class="talkable">Welcome to your Health Checker!</h3></div>
        

        <div id="signin">
          <img  class="floatleft" src="images/login.png">
          <fieldset id="signinarea">
            <form id="nameForm" method="post">
              <div><h5><label>First Name:</label><input id="name" type="text" name="name" required/></h5></div>
              <div class="margindrop1"><h5><label>Email address:</label><input id="email" name="email" type="email" required/></h5></div>
              <img class="next" id="submitsignin" type="submit" src="images/signin_back.png">
            </form>
          </fieldset>
        </div>
        

    </div> <!-- end content -->
    <script type="text/javascript" src="js/jquery-1.6.2.min.js"></script>
    <script type="text/javascript" src="js/jquery-ui-1.8.16.custom.min.js"></script>
    <script type="text/javascript" src="js/jquery.healthchecker.js"></script>
    <script type="text/javascript">
        $(document).ready(function() {
          localStorage.clear();
        });

        $(window).load(function(){speakText("Welcome to your Health Checker! ... Please sign innn.");});

        $('#submitsignin').hover(function(){speakText("sign in");});
        
        $("#submitsignin").click(function() {
          var myName = $("#name").val();
          localStorage.setItem("name", myName);
          var myEmail = $("#email").val();
          localStorage.setItem("email", myEmail);
          window.location = 'cognitopia-good-start.php';
        });

        $("#name").hover(function() {
          speakText("First Name");
        });
        $("#email").hover(function() {
          speakText("Email Address");
        });
          
    </script>

<?
    require_once('includes/healthfooter.php');
?>
