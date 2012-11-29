###global console ###

thoughtSelf = ""
thoughtFriend = ""
doMusic = ""
doWalk = ""
doVisit = ""
doShop = ""
doExercise = ""

painIcon = ""
painNameList = ""

painJaw = ""
painMouth = ""
painNose = ""
painRightEar = ""
painRightEye = ""
painLeftEar = ""
painLeftEye = ""
painForehead = ""
painThroat = ""

painPelvis = ""
painStomach = ""
painGroin = ""
painChest = ""
painBackHead = ""
painRightArm = ""
painRightHand = ""
painRightFoot = ""
painRightLeg = ""
painLeftArm = ""
painLeftHand = ""
painLeftFoot = ""
painLeftLeg = ""

painNeck = ""
painSpine = ""
painButt = ""
painBackHead = ""
painRightBack = ""
painBackRightHand = ""
painBackRightArm = ""
painRightHeel = ""
painBackRightLeg = ""
painLeftBack = ""
painBackLeftHand = ""
painBackLeftArm = ""
painLeftHeel = ""
painBackLeftLeg = ""

painLeftBreast = ""
painRightBreast = ""

amConfused = ""
amStressed = ""
amSad = ""
amWorried = ""
amAngry = ""
amScared = ""
amFine = ""
amHappy = ""

moodSing = ""
moodYoga = ""
moodMeal = ""
moodRelax = ""
moodExercise = ""
moodChat = ""
moodWork = ""
moodGame = ""

selfShower = ""
selfTeeth = ""
selfPoop = ""
MyWeight = ""
selfWeight = ""
selfMeda = ""
selfMedb = ""

safeTease = ""
safeBully = ""
safeTouch = ""
safeSecret = ""

src = ""
weightColumn = 0
weightDigit = ""
weightFirst = ""
weightSecond = ""
weightThird = ""
painCount = 0
painLevel = 0
painName = "<p></p>"
painFixName = ""
painGreen = ""
painBodyPart = ""
guideChoice = 0
MyName = localStorage.getItem "name"
MyEmail = localStorage.getItem "email"
text_to_speak = ""
speakThis = ""
clickOn = new Audio("clickon.wav")
clickOff = new Audio("clickff.wav")
logSummary = ""


speakText = (text) ->
  $.ajax
    url: "/tts/tts.php"
    data:
      speakthis: text

    success: (responseText) ->
      $("#speech").html "<embed src=\"" + responseText + "\" autostart=\"true\" hidden=\"true\" loop=\"false\">"


bubbleJump = ->
  $("#bubbletalk").animate
    top: 150
  , 250, ->
    $("#bubbletalk").animate
      top: 98
    , 800, "easeOutCubic"

startQuestions = ->
  $("#goodjob").animate
    opacity: 0
  , 1000, ->
    $("#goodjob").animate
      left: "1200px"
    $("#guide1start").show()
    $("#minibubblestart").show()
    $("#bubbletalkstart").show()
    $("#guidechoice").hide()
    speakText("Have you had a good thought about yourself today?")
    $("#one").animate
      top: "-120px"
      left: "240px"
    , 3500, "easeOutElastic"

$("#start").click ->
  $("#start").hide()
  $("#summaryheader").animate
    opacity: 0
  , 500
  $("#breathe").animate
        left: "200px"
      , 10
  $("#welcome").animate
    opacity: 0
  , 700, ->
    $("#breathe").animate
      top: "150px"
    , 4000
    $("#inhale").animate
      opacity: 1.0
    , 4000
    speakText("inhale")
    $("#guidechoice").transition
      scale: 1.2
    , 4000, ->
      $("#inhale").animate
        opacity: 0
      , 500
      $("#exhale").animate
        opacity: 1.0
      , 3000
      speakText("ex hail")
      $("#breathe").animate
        top: "300px"
      , 4000
      $("#guidechoice").transition
        scale: 0.7
      , 4000, ->
        $("#exhale").animate
          opacity: 0
        , 500
        $("#inhale").animate
          opacity: 1.0
        , 3000
        speakText("inhale")
        $("#breathe").animate
          top: "150px"
        , 4000
        $("#guidechoice").transition
          scale: 1
        , 4000, ->
          $("#inhale").animate
            opacity: 0
          , 500
          $("#exhale").animate
            opacity: 1.0
          , 3000
          speakText("ex hail")
          $("#breathe").animate
            top: "300px"
          , 4000
          $("#guidechoice").transition
            scale: 0.7
          , 4000, ->
            $("#exhale").animate
              opacity: 0
            , 500
            $("#inhale").animate
              opacity: 1.0
            , 3000
            speakText("inhale")
            $("#breathe").animate
              top: "150px"
            , 4000
            $("#guidechoice").transition
              scale: 1
            , 4000, ->
              $("#inhale").animate
                opacity: 0
              , 500
              $("#exhale").animate
                opacity: 1.0
              , 3000
              speakText("ex hail")
              $("#breathe").animate
                top: "300px"
              , 4000
              $("#goodjob").animate
                top: "50px"
                left: "80px"
              $("#guidechoice").transition
                scale: 0.7
              , 4000, ->
                $("#exhale").animate
                  opacity: 0
                , 500
                $("#goodjob").animate
                  opacity: 1.0
                , 3000
                speakText("good job")
                $("#breathe").animate
                  top: "150px"
                  left: "+=50px"
                , 4000
                $("#guidechoice").transition
                  scale: 1
                , 4000, ->
                  startQuestions()

$("#startfinish").click ->
  $("#startfinish").hide()
  $("#exhale").animate
    opacity: 0
  $("#exhale").animate
    opacity: 0
  $("#goodjob").animate
    opacity: 0
  $("#summaryheader").animate
    opacity: 0
  , 500
  $("#welcome").animate
    opacity: 0
  , 700, ->
    speakText("inhale")
    $("#breathe").css
      left: "120px"
    $("#breathe").animate
      top: "150px"
    , 4000
    $("#inhale").animate
      opacity: 1.0
    , 4000
    $("#guidechoice").transition
      scale: 1.2
    , 4000, ->
      $("#inhale").animate
        opacity: 0
      , 500
      $("#exhale").animate
        opacity: 1.0
      , 3000
      speakText("ex hail")
      $("#guidechoice").transition
        scale: 0.7
      , 4000
      $("#breathe").animate
        top: "300px"
      , 4000, ->
        $("#exhale").animate
          opacity: 0
        , 500
        $("#inhale").animate
          opacity: 1.0
        , 3000
        speakText("inhale")
        $("#breathe").animate
          top: "150px"
        , 4000
        $("#guidechoice").transition
          scale: 1
        , 4000, ->
          $("#inhale").animate
            opacity: 0
          , 500
          $("#exhale").animate
            opacity: 1.0
          , 3000
          speakText("ex hail")
          $("#breathe").animate
            top: "300px"
          , 4000
          $("#guidechoice").transition
            scale: 0.7
          , 4000, ->
            $("#exhale").animate
              opacity: 0
            , 500
            $("#inhale").animate
              opacity: 1.0
            , 3000
            speakText("inhale")
            $("#breathe").animate
              top: "150px"
            , 4000
            $("#guidechoice").transition
              scale: 1
            , 4000, ->
              $("#inhale").animate
                opacity: 0
              , 500
              $("#exhale").animate
                opacity: 1.0
              , 3000
              speakText("ex hail")
              $("#breathe").animate
                top: "300px"
              , 4000
              $("#goodjob").animate
                top: "50px"
                left: "160px"

              $("#guidechoice").transition
                scale: 0.7
              , 4000, ->
                $("#exhale").animate
                  opacity: 0
                , 500
                $("#goodjob").animate
                  opacity: 1.0
                , 3000
                speakText("good job")
                $("#breathe").animate
                  top: "150px"
                  left: "+=50px"
                , 4000
                $("#guidechoice").transition
                  scale: 1
                , 4000, ->
                  goSummary()


$("#oneyes").click ->
  localStorage.setItem "thoughtself", "Good thought about Myself? Yes."
  speakText("Nice! Think that thought again right now.")
  $("#one").animate
    opacity: 0
    left: "-2000px"
  , "fast", ->
    $("#oneresponse").animate
      top: "-60px"
      left: "440px"
    , 3000, "easeOutElastic"
    $("#oneansno").animate
      left: "5440px"
    $("#oneansyes").animate
      opacity: 1
    , 3500, "easeOutElastic"

$("#oneno").click ->
  localStorage.setItem "thoughtself", "Good thought about Myself? Not yet."
  speakText("What are you waiting for? Think a good thought about yourself right now.")
  $("#one").animate
    opacity: 0
    left: "-2000px"
  , "fast", ->
    $("#oneresponse").animate
      top: "-60px"
      left: "440px"
    , 3000, "easeOutElastic"
    $("#oneansyes").animate
      left: "5440px"
    $("#oneansno").animate
      opacity: 1
    , 3500, "easeOutElastic"

$("#onenext").click ->
  $("#happyguide").animate
    opacity: 0
  , 500
  $("#oneresponse").animate
    opacity: 0
  , 500
  $("#oneyes").animate
    opacity: 0
  , 500
  $("#oneno").animate
    opacity: 0
  , 500, ->
    $("#oneresponse").animate
      left: "-2000px"
    , ->
      $("#bubbletalkstart").html "<h3 class='reduce'>Have you had a good thought about a friend today?</h3>"
      speakText("Have you had a good thought about a friend today?")
      bubbleJump()
      $("#two").animate
        top: "-140px"
        left: "210px"
      , 3500, "easeOutElastic"

$("#twoyes").click ->
  localStorage.setItem "thoughtfriend", "Good thought about a friend? Yes."
  speakText("Excellent! They are probably thinking a great thought about you right now.")
  $("#two").animate
    opacity: 0
  , 500, ->
    $("#two").animate
      left: "-2000px"
    , ->
      $("#tworesponse").animate
        top: "-80px"
        left: "440px"
      , 2000, "easeOutCubic"
      $("#twoansno").animate
        left: "5440px"
      $("#twoansyes").animate
        opacity: 1
      , 1500, "easeOutCubic"

$("#twono").click ->
  localStorage.setItem "thoughtfriend", "Good thought about a friend? Not yet."
  speakText("Well, it's never too late. Try it now. Be happy for someone you love.")
  $("#two").animate
    opacity: 0
  , 500, ->
    $("#two").animate
      left: "-2000px"
    , ->
      $("#tworesponse").animate
        top: "-80px"
        left: "440px"
      , 2000, "easeOutCubic"
      $("#twoansyes").animate
        left: "5440px"
      $("#twoansno").animate
        opacity: 1
      , 1500, "easeOutCubic"

$("#twonext").click ->
  $("#happyfriends").animate
    opacity: 0
  , 500
  $("#tworesponse").animate
    opacity: 0
  , 500
  $("#twoyes").animate
    opacity: 0
  , 500
  $("#twono").animate
    opacity: 0
  , 500, ->
    $("#progress").animate
      width: "70px"
    , 600
    $("#tworesponse").animate
      left: "-2000px"
    , ->
      $("#bubbletalkstart").html "<h3 class='reduce'>Are you looking forward to something special today?</h3>"
      speakText("Are you looking forward two something special today? , Choose as many as you'd like. Think of other ideas for things two do today!")
      bubbleJump()
      $("#three").animate
        top: "-140px"
        left: "250px"
      , 1000, "easeOutCubic"
      $("#threeresponse").animate
        top: "105px"
        left: "435px"
      , 500, "easeOutCubic"
      $("#threenext").animate
        left: "225px"
      , 1000, "easeOutCubic"

$("#do1").toggle (->
  $(this).attr "src", "images/listening_yes.png"
  localStorage.setItem "domusic", "I want to Listen to Music."
  speakText("I want two listen two music.")
), ->
  $(this).attr "src", "images/listening.png"
  localStorage.removeItem "domusic"
  speakText("music is off.")

$("#do2").toggle (->
  $(this).attr "src", "images/walking_yes.png"
  localStorage.setItem "dowalking", "I want to Go for a Walk."
  speakText("I want two go for a walk.")
), ->
  $(this).attr "src", "images/walking.png"
  localStorage.removeItem "dowalking"
  speakText("walk is off.")

$("#do3").toggle (->
  $(this).attr "src", "images/visit_yes.png"
  localStorage.setItem "dovisit", "I want to Visit a Friend."
  speakText("I want two visit a friend.")
), ->
  $(this).attr "src", "images/visit.png"
  localStorage.removeItem "dovisit"
  speakText("Visit is off.")

$("#do4").toggle (->
  $(this).attr "src", "images/grocery_yes.png"
  localStorage.setItem "doshop", "I want to Go Shopping."
  speakText("I want two go shopping.")
), ->
  $(this).attr "src", "images/grocery.png"
  localStorage.removeItem "doshop"
  speakText("shopping is off.")

$("#do5").toggle (->
  $(this).attr "src", "images/exercise_yes.png"
  localStorage.setItem "doexercise", "I want to Get Exercise."
  speakText("I want two get exercise.")
), ->
  $(this).attr "src", "images/exercise.png"
  localStorage.removeItem "doexercise"
  speakText("exercise is off.")


$("#threenext").click ->
  window.location = "hea-bodym.html"


showPain = ->
  $("#painstrip").css left: "258px"
  $("#cancelpainstrip").css left: "205px"
  $("#painstripmy").text "My " + painName + " is bothering me."

placePainIcon = ->
  $("#painstrip").css left: "1245px"
  $("#cancelpainstrip").css left: "1245px"
  localStorage.setItem painName, "The level of pain in My " + painName + " is " + painLevel + "."
  speakText("My " + painName + " hurts.")
  painIcon = "<img src='images/pain" + painLevel + ".png' />"
  painNameList = "<div class='bodydiv hoverable'><p>My " + painName + " hurts.</p></div>"
  $("#painlistholder").append('<div>' + painIcon + painNameList + '</div>')
  $("#modalhide").hide 100

$("#cancelpainstrip").click ->
  $("#painstrip").css left: "1245px"
  $("#cancelpainstrip").css left: "1245px"
  $("#modalhide").hide()
  $("#headmodalhide").hide()
  $(painGreen).css opacity: 0
  $(painBodyPart).show()
  if painCount is 1
    $("#painlocation1").text ""
    painCount--
  else if painCount is 2
    $("#painlocation2").text ""
    painCount--
  else if painCount is 3
    $("#painlocation3").text ""
    painCount--
  else if painCount is 4
    $("#painlocation4").text ""
    painCount--
  else if painCount is 5
    $("#painlocation5").text ""
    painCount--
  else if painCount is 6
    $("#painlocation6").text ""
    painCount--
  else if painCount is 7
    $("#painlocation7").text ""
    painCount--
  else if painCount is 8
    $("#painlocation8").text ""
    painCount--
  else if painCount is 9
    $("#painlocation9").text ""
    painCount--
  else if painCount is 10
    $("#painlocation10").text ""
    painCount--
  else if painCount is 11
    $("#painlocation11").text ""
    painCount--
  else if painCount is 12
    $("#painlocation12").text ""
    painCount--
  else if painCount is 13
    $("#painlocation13").text ""
    painCount--
  else if painCount is 14
    $("#painlocation14").text ""
    painCount--
  else if painCount is 15
    $("#painlocation15").text ""
    painCount--
  else if painCount is 16
    $("#painlocation16").text ""
    painCount--
  else if painCount is 17
    $("#painlocation17").text ""
    painCount--

$("#donehead").click ->
  $("#frontheadhidden").css left: "78px"
  $("#f-frontheadhidden").css left: "73px"
  $("#frontheadholder").hide 1000
  $("#modalhide").hide 500
  $("#headmodalhide").hide 500

$("#frontheadclick").click ->
  $("#frontheadholder").show 1000
  $("#modalhide").hide 500
  $("#headmodalhide").show().animate
    width: "960px"
    height: "870px"
  , 50

$("#foreheadclick").click ->
  if painCount isnt 18
    painCount = painCount + 1
    painName = "Forehead"
    speakText("My forehead is bothering me. Click a face to show how much it hurts.")
    painGreen = "#foreheadhidden"
    painBodyPart = "#foreheadclick"
    $("#foreheadclick").hide()
    $("#foreheadhidden").animate opacity: 1
    showPain()

$("#rightearclick").click ->
  if painCount isnt 18
    painCount = painCount + 1
    painName = "Right Ear"
    painVar = "rightear"
    speakText("My right ear is bothering me. Click a face to show how much it hurts.")
    painGreen = "#rightearhidden"
    painBodyPart = "#rightearclick"
    $("#rightearclick").hide()
    $("#rightearhidden").animate opacity: 1
    showPain()

$("#righteyeclick").click ->
  if painCount isnt 18
    painCount = painCount + 1
    painName = "Right Eye"
    speakText("My right eye is bothering me. Click a face to show how much it hurts.")
    painGreen = "#righteyehidden"
    painBodyPart = "#righteyeclick"
    $("#righteyeclick").hide()
    $("#righteyehidden").animate opacity: 1
    showPain()

$("#noseclick").click ->
  if painCount isnt 18
    painCount = painCount + 1
    painName = "Nose"
    speakText("My nose is bothering me. Click a face to show how much it hurts.")
    painGreen = "#nosehidden"
    painBodyPart = "#noseclick"
    $("#noseclick").hide()
    $("#nosehidden").animate opacity: 1
    showPain()

$("#lefteyeclick").click ->
  if painCount isnt 18
    painCount = painCount + 1
    painName = "Left Eye"
    speakText("My left eye is bothering me. Click a face to show how much it hurts.")
    painGreen = "#lefteyehidden"
    painBodyPart = "#lefteyeclick"
    $("#lefteyeclick").hide()
    $("#lefteyehidden").animate opacity: 1
    showPain()

$("#leftearclick").click ->
  if painCount isnt 18
    painCount = painCount + 1
    painName = "Left Ear"
    speakText("My left ear is bothering me. Click a face to show how much it hurts.")
    painGreen = "#leftearhidden"
    painBodyPart = "#leftearclick"
    $("#leftearclick").hide()
    $("#leftearhidden").animate opacity: 1
    showPain()

$("#mouthclick").click ->
  if painCount isnt 18
    painCount = painCount + 1
    painName = "Mouth"
    speakText("My mouth is bothering me. Click a face to show how much it hurts.")
    painGreen = "#mouthhidden"
    painBodyPart = "#mouthclick"
    $("#mouthclick").hide()
    $("#mouthhidden").animate opacity: 1
    showPain()

$("#jawclick").click ->
  if painCount isnt 18
    painCount = painCount + 1
    painName = "Jaw"
    speakText("My jaw is bothering me. Click a face to show how much it hurts.")
    painGreen = "#jawhidden"
    painBodyPart = "#jawclick"
    $("#jawclick").hide()
    $("#jawhidden").animate opacity: 1
    showPain()

$("#throatclick").click ->
  if painCount isnt 18
    painCount = painCount + 1
    painName = "Throat"
    speakText("My throat is bothering me. Click a face to show how much it hurts.")
    painGreen = "#throathidden"
    painBodyPart = "#throatclick"
    $("#throatclick").hide()
    $("#throathidden").animate opacity: 1
    showPain()

$("#neckclick").click ->
  if painCount isnt 18
    painCount = painCount + 1
    painName = "Neck"
    speakText("My neck is bothering me. Click a face to show how much it hurts.")
    painGreen = "#neckhidden"
    painBodyPart = "#neckclick"
    $("#neckclick").hide()
    $("#neckhidden").animate opacity: 1
    $("#modalhide").show().animate
      width: "960px"
      height: "870px"
    , 50
    showPain()

$("#frontchestclick").click ->
  if painCount isnt 18
    painCount = painCount + 1
    painName = "Chest"
    painVar = "chest"
    speakText("My chest is bothering me. Click a face to show how much it hurts.")
    painGreen = "#frontchesthidden"
    painBodyPart = "#frontchestclick"
    $("#frontchestclick").hide()
    $("#frontchesthidden").animate opacity: 1
    $("#modalhide").show().animate
      width: "960px"
      height: "870px"
    , 50
    showPain()

$("#frontrightbreastclick").click ->
  if painCount isnt 18
    painCount = painCount + 1
    painName = "Right Breast"
    speakText("My right breast is bothering me. Click a face to show how much it hurts.")
    painGreen = "#frontrightbreasthidden"
    painBodyPart = "#frontrightbreastclick"
    $("#frontrightbreastclick").hide()
    $("#frontrightbreasthidden").animate opacity: 1
    $("#modalhide").show().animate
      width: "960px"
      height: "870px"
    , 50
    showPain()

$("#frontleftbreastclick").click ->
  if painCount isnt 18
    painCount = painCount + 1
    painName = "Left Breast"
    speakText("My left breast is bothering me. Click a face to show how much it hurts.")
    painGreen = "#frontleftbreasthidden"
    painBodyPart = "#frontleftbreastclick"
    $("#frontleftbreastclick").hide()
    $("#frontleftbreasthidden").animate opacity: 1
    $("#modalhide").show().animate
      width: "960px"
      height: "870px"
    , 50
    showPain()

$("#frontstomachclick").click ->
  if painCount isnt 18
    painCount = painCount + 1
    painName = "Stomach"
    speakText("My stomach is bothering me. Click a face to show how much it hurts.")
    painGreen = "#frontstomachhidden"
    painBodyPart = "#frontstomachclick"
    $("#frontstomachclick").hide()
    $("#frontstomachhidden").animate opacity: 1
    $("#modalhide").show().animate
      width: "960px"
      height: "870px"
    , 50
    showPain()

$("#frontpelvisclick").click ->
  if painCount isnt 18
    painCount = painCount + 1
    painName = "Pelvis"
    speakText("My pelvis is bothering me. Click a face to show how much it hurts.")
    painGreen = "#frontpelvishidden"
    painBodyPart = "#frontpelvisclick"
    $("#frontpelvisclick").hide()
    $("#frontpelvishidden").animate opacity: 1
    $("#modalhide").show().animate
      width: "960px"
      height: "870px"
    , 50
    showPain()

$("#frontgroinclick").click ->
  if painCount isnt 18
    painCount = painCount + 1
    painName = "Groin"
    speakText("My groin is bothering me. Click a face to show how much it hurts.")
    painGreen = "#frontgroinhidden"
    painBodyPart = "#frontgroinclick"
    $("#frontgroinclick").hide()
    $("#frontgroinhidden").animate opacity: 1
    $("#modalhide").show().animate
      width: "960px"
      height: "870px"
    , 50
    showPain()

$("#frontleftarmclick").click ->
  if painCount isnt 18
    painCount = painCount + 1
    painName = "Left Arm"
    speakText("My left arm is bothering me. Click a face to show how much it hurts.")
    painGreen = "#frontleftarmhidden"
    painBodyPart = "#frontleftarmclick"
    $("#frontleftarmclick").hide()
    $("#frontleftarmhidden").animate opacity: 1
    $("#modalhide").show().animate
      width: "960px"
      height: "870px"
    , 50
    showPain()

$("#frontlefthandclick").click ->
  if painCount isnt 18
    painCount = painCount + 1
    painName = "Left Hand"
    speakText("My left hand is bothering me. Click a face to show how much it hurts.")
    painGreen = "#frontlefthandhidden"
    painBodyPart = "#frontlefthandclick"
    $("#frontlefthandclick").hide()
    $("#frontlefthandhidden").animate opacity: 1
    $("#modalhide").show().animate
      width: "960px"
      height: "870px"
    , 50
    showPain()

$("#frontleftlegclick").click ->
  if painCount isnt 18
    painCount = painCount + 1
    painName = "Left Leg"
    speakText("My left laig is bothering me. Click a face to show how much it hurts.")
    painGreen = "#frontleftleghidden"
    painBodyPart = "#frontleftlegclick"
    $("#frontleftlegclick").hide()
    $("#frontleftleghidden").animate opacity: 1
    $("#modalhide").show().animate
      width: "960px"
      height: "870px"
    , 50
    showPain()

$("#frontleftfootclick").click ->
  if painCount isnt 18
    painCount = painCount + 1
    painName = "Left Foot"
    speakText("My left foot is bothering me. Click a face to show how much it hurts.")
    painGreen = "#frontleftfoothidden"
    painBodyPart = "#frontleftfootclick"
    $("#frontleftfootclick").hide()
    $("#frontleftfoothidden").animate opacity: 1
    $("#modalhide").show().animate
      width: "960px"
      height: "870px"
    , 50
    showPain()

$("#frontrightarmclick").click ->
  if painCount isnt 18
    painCount = painCount + 1
    painName = "Right Arm"
    speakText("My right arm is bothering me. Click a face to show how much it hurts.")
    painGreen = "#frontrightarmhidden"
    painBodyPart = "#frontrightarmclick"
    $("#frontrightarmclick").hide()
    $("#frontrightarmhidden").animate opacity: 1
    $("#modalhide").show().animate
      width: "960px"
      height: "870px"
    , 50
    showPain()

$("#frontrighthandclick").click ->
  if painCount isnt 18
    painCount = painCount + 1
    painName = "Right Hand"
    speakText("My right hand is bothering me. Click a face to show how much it hurts.")
    painGreen = "#frontrighthandhidden"
    painBodyPart = "#frontrighthandclick"
    $("#frontrighthandclick").hide()
    $("#frontrighthandhidden").animate opacity: 1
    $("#modalhide").show().animate
      width: "960px"
      height: "870px"
    , 50
    showPain()

$("#frontrightlegclick").click ->
  if painCount isnt 18
    painCount = painCount + 1
    painName = "Right Leg"
    speakText("My right laig is bothering me. Click a face to show how much it hurts.")
    painGreen = "#frontrightleghidden"
    painBodyPart = "#frontrightlegclick"
    $("#frontrightlegclick").hide()
    $("#frontrightleghidden").animate opacity: 1
    $("#modalhide").show().animate
      width: "960px"
      height: "870px"
    , 50
    showPain()

$("#frontrightfootclick").click ->
  if painCount isnt 18
    painCount = painCount + 1
    painName = "Right Foot"
    speakText("My right foot is bothering me. Click a face to show how much it hurts.")
    painGreen = "#frontrightfoothidden"
    painBodyPart = "#frontrightfootclick"
    $("#frontrightfootclick").hide()
    $("#frontrightfoothidden").animate opacity: 1
    $("#modalhide").show().animate
      width: "960px"
      height: "870px"
    , 50
    showPain()

$("#backheadclick").click ->
  if painCount isnt 18
    painCount = painCount + 1
    painName = "Back of Head"
    speakText("back of My head is bothering me. Click a face to show how much it hurts.")
    painGreen = "#backheadhidden"
    painBodyPart = "#backheadclick"
    $("#backheadclick").hide()
    $("#backheadhidden").animate opacity: 1
    $("#modalhide").show().animate
      width: "960px"
      height: "870px"
    , 50
    showPain()

$("#backlefthandclick").click ->
  if painCount isnt 18
    painCount = painCount + 1
    painName = "Back Left Hand"
    speakText("My back left hand is bothering me. Click a face to show how much it hurts.")
    painGreen = "#backlefthandhidden"
    painBodyPart = "#backlefthandclick"
    $("#backlefthandclick").hide()
    $("#backlefthandhidden").animate opacity: 1
    $("#modalhide").show().animate
      width: "960px"
      height: "870px"
    , 50
    showPain()

$("#backleftarmclick").click ->
  if painCount isnt 18
    painCount = painCount + 1
    painName = "Back Left Arm"
    speakText("My back left arm is bothering me. Click a face to show how much it hurts.")
    painGreen = "#backleftarmhidden"
    painBodyPart = "#backleftarmclick"
    $("#backleftarmclick").hide()
    $("#backleftarmhidden").animate opacity: 1
    $("#modalhide").show().animate
      width: "960px"
      height: "870px"
    , 50
    showPain()

$("#backleftbackclick").click ->
  if painCount isnt 18
    painCount = painCount + 1
    painName = "Left Back"
    speakText("My left back is bothering me. Click a face to show how much it hurts.")
    painGreen = "#backleftbackhidden"
    painBodyPart = "#backleftbackclick"
    $("#backleftbackclick").hide()
    $("#backleftbackhidden").animate opacity: 1
    $("#modalhide").show().animate
      width: "960px"
      height: "870px"
    , 50
    showPain()

$("#spineclick").click ->
  if painCount isnt 18
    painCount = painCount + 1
    painName = "Spine"
    speakText("My spine is bothering me. Click a face to show how much it hurts.")
    painGreen = "#spinehidden"
    painBodyPart = "#spineclick"
    $("#spineclick").hide()
    $("#spinehidden").animate opacity: 1
    $("#modalhide").show().animate
      width: "960px"
      height: "870px"
    , 50
    showPain()

$("#backrightbackclick").click ->
  if painCount isnt 18
    painCount = painCount + 1
    painName = "Right Back"
    speakText("My right back is bothering me. Click a face to show how much it hurts.")
    painGreen = "#backrightbackhidden"
    painBodyPart = "#backrightbackclick"
    $("#backrightbackclick").hide()
    $("#backrightbackhidden").animate opacity: 1
    $("#modalhide").show().animate
      width: "960px"
      height: "870px"
    , 50
    showPain()

$("#backrightarmclick").click ->
  if painCount isnt 18
    painCount = painCount + 1
    painName = "Back Right Arm"
    speakText("My back right arm is bothering me. Click a face to show how much it hurts.")
    painGreen = "#backrightarmhidden"
    painBodyPart = "#backrightarmclick"
    $("#backrightarmclick").hide()
    $("#backrightarmhidden").animate opacity: 1
    $("#modalhide").show().animate
      width: "960px"
      height: "870px"
    , 50
    showPain()

$("#backrighthandclick").click ->
  if painCount isnt 18
    painCount = painCount + 1
    painName = "Back Right Hand"
    speakText("My back right hand is bothering me. Click a face to show how much it hurts.")
    painGreen = "#backrighthandhidden"
    painBodyPart = "#backrighthandclick"
    $("#backrighthandclick").hide()
    $("#backrighthandhidden").animate opacity: 1
    $("#modalhide").show().animate
      width: "960px"
      height: "870px"
    , 50
    showPain()

$("#buttclick").click ->
  if painCount isnt 18
    painCount = painCount + 1
    painName = "Butt"
    speakText("My butt is bothering me. Click a face to show how much it hurts.")
    painGreen = "#butthidden"
    painBodyPart = "#buttclick"
    $("#buttclick").hide()
    $("#butthidden").animate opacity: 1
    $("#modalhide").show().animate
      width: "960px"
      height: "870px"
    , 50
    showPain()

$("#backleftlegclick").click ->
  if painCount isnt 18
    painCount = painCount + 1
    painName = "Back Left Leg"
    speakText("My back left laig is bothering me. Click a face to show how much it hurts.")
    painGreen = "#backleftleghidden"
    painBodyPart = "#backleftlegclick"
    $("#backleftlegclick").hide()
    $("#backleftleghidden").animate opacity: 1
    $("#modalhide").show().animate
      width: "960px"
      height: "870px"
    , 50
    showPain()

$("#backleftfootclick").click ->
  if painCount isnt 18
    painCount = painCount + 1
    painName = "Left Heel"
    speakText("My back left foot is bothering me. Click a face to show how much it hurts.")
    painGreen = "#backleftfoothidden"
    painBodyPart = "#backleftfootclick"
    $("#backleftfootclick").hide()
    $("#backleftfoothidden").animate opacity: 1
    $("#modalhide").show().animate
      width: "960px"
      height: "870px"
    , 50
    showPain()

$("#backrightlegclick").click ->
  if painCount isnt 18
    painCount = painCount + 1
    painName = "Back Right Leg"
    speakText("My back right laig is bothering me. Click a face to show how much it hurts.")
    painGreen = "#backrightleghidden"
    painBodyPart = "#backrightlegclick"
    $("#backrightlegclick").hide()
    $("#backrightleghidden").animate opacity: 1
    $("#modalhide").show().animate
      width: "960px"
      height: "870px"
    , 50
    showPain()

$("#backrightfootclick").click ->
  if painCount isnt 18
    painCount = painCount + 1
    painName = "Right Heel"
    speakText("My back right foot is bothering me. Click a face to show how much it hurts.")
    painGreen = "#backrightfoothidden"
    painBodyPart = "#backrightfootclick"
    $("#backrightfootclick").hide()
    $("#backrightfoothidden").animate opacity: 1
    $("#modalhide").show().animate
      width: "960px"
      height: "870px"
    , 50
    showPain()

$("#pain1").click ->
  painLevel = 1
  placePainIcon()

$("#pain2").click ->
  painLevel = 2
  placePainIcon()

$("#pain3").click ->
  painLevel = 3
  placePainIcon()

$("#pain4").click ->
  painLevel = 4
  placePainIcon()

$("#pain5").click ->
  painLevel = 5
  placePainIcon()

$("#moodnext").click ->
  window.location = "hea-mood.html

$("#moodonenext").click ->
  $("#moodcontainer").animate
    opacity: 0
  , 50, ->
    $("#moodcontainer").animate left: "-3440px"
    $("#bubbletalk").html "<h3>Doing what you enjoy can help your mood.</h3>"
    speakText("Doing what you enjoy can help your mood. . What could you do today?")
    bubbleJump()
    $("#moodfour").animate
      top: "20px"
      left: "30px"
    , 1500, "easeOutCubic"

$("#moodthreeyes").click ->
  $("#moodthree").animate
    opacity: 0
  , 50, ->
    $("#moodthree").animate left: "-3440px"
    $("#moodfour").animate
      top: "70px"
      left: "30px"
    , 800, "easeOutCubic"
    $("#moodfour").animate
      opacity: 1
    , 800

$("#moodthreeno").click ->
  window.location = "safe-secure.html"

$("#moodfournext").click ->
  window.location = "safe-secure.html"

$("#safefiveyes").click ->
  localStorage.setItem "safetease", "Someone is teasing me."
  $("#safefive").animate
    opacity: 0
  , 500, ->
    $("#safefive").animate
      left: "-3440px"
    , ->
      $("#bubbletalk").html "<h3 class='red'>Ask someone you trust to help you.</h3>"
      speakText("Ask someone you trust two help you")
      bubbleJump()
      $("#fiveuhoh").animate
        top: "20px"
        left: "200px"
      , 500, "easeOutCubic"

$("#safefiveno").click ->
  $("#safefive").animate
    opacity: 0
  , 500, ->
    $("#safefive").animate
      left: "-3440px"
    , ->
      $("#bubbletalk").html "<h3>Is anyone bullying you?</h3>"
      speakText("Is anyone bullying you?")
      bubbleJump()
      $("#safesix").animate
        top: "10px"
        left: "0px"
      , 500, "easeOutCubic"

$("#fiveuhohnext").click ->
  $("#fiveuhoh").animate
    opacity: 0
  , 500, ->
    $("#fiveuhoh").animate
      left: "-3440px"
    , ->
      $("#bubbletalk").html "<h3 class='red'>Is anyone bullying you?</h3>"
      speakText("Is anyone bullying you?")
      bubbleJump()
      $("#safesix").animate
        top: "10px"
        left: "0px"
      , 1500, "easeOutCubic"

$("#safesixyes").click ->
  localStorage.setItem "safebully", "Someone is bullying me."
  $("#safesix").animate
    opacity: 0
  , 500, ->
    $("#safesix").animate
      left: "-3440px"
    , ->
      $("#bubbletalk").html "<h3 class='red'>Ask someone you trust to help you.</h3>"
      speakText("Ask someone you trust two help you")
      bubbleJump()
      $("#sixuhoh").animate
        top: "20px"
        left: "200px"
      , 500, "easeOutCubic"

$("#safesixno").click ->
  $("#safesix").animate
    opacity: 0
  , 500, ->
    $("#safesix").animate
      left: "-3440px"
    , ->
      $("#bubbletalk").html "<h3 class='reduce'>Is anyone touching you or making you touch them?</h3>"
      speakText("Is anyone touching you or making you touch them?")
      bubbleJump()
      $("#safeseven").animate
        top: "0px"
        left: "0px"
      , 500, "easeOutCubic"

$("#sixuhohnext").click ->
  $("#sixuhoh").animate
    opacity: 0
  , 500, ->
    $("#sixuhoh").animate
      left: "-3440px"
    , ->
      $("#bubbletalk").html "<h3 class='reduce red'>Is anyone touching you or making you touch them?</h3>"
      speakText("Is anyone touching you or making you touch them?")
      bubbleJump()
      $("#safeseven").animate
        top: "10px"
        left: "0px"
      , 1500, "easeOutCubic"

$("#safesevenyes").click ->
  localStorage.setItem "safetouch", "Someone is touching me in a way that I don't like."
  $("#safeseven").animate
    opacity: 0
  , 500, ->
    $("#safeseven").animate
      left: "-3440px"
    , ->
      $("#bubbletalk").html "<h3 class='red'>Ask someone you trust to help you.</h3>"
      speakText("Ask someone you trust two help you")
      bubbleJump()
      $("#sevenuhoh").animate
        top: "10px"
        left: "210px"
      , 500, "easeOutCubic"

$("#safesevenno").click ->
  $("#safeseven").animate
    opacity: 0
  , 500, ->
    $("#safeseven").animate
      left: "-3440px"
    , ->
      $("#bubbletalk").html "<h3 class='red'>Has anyone asked you to keep a secret?</h3>"
      speakText("Has anyone asked you two keep a secret?")
      bubbleJump()
      $("#safeeight").animate
        top: "0px"
        left: "0px"
      , 500, "easeOutCubic"

$("#sevenuhohnext").click ->
  $("#sevenuhoh").animate
    opacity: 0
  , 500, ->
    $("#sevenuhoh").animate
      left: "-3440px"
    , ->
      $("#bubbletalk").html "<h3 class='red'>Has anyone asked you to keep a secret?</h3>"
      speakText("Has anyone asked you two keep a secret?")
      bubbleJump()
      $("#safeeight").animate
        top: "0px"
        left: "0px"
      , 1500, "easeOutCubic"

$("#safeeightyes").click ->
  localStorage.setItem "safesecret", "Someone makes me uncomfortable and asked me to keep it secret."
  $("#safeeight").animate
    opacity: 0
  , 500, ->
    $("#safeeight").animate
      left: "-3440px"
    , ->
      $("#bubbletalk").html "<h3 class='reduce'>Did you answer 'Yes' to any of these questions?</h3>"
      speakText("Did you answer 'Yes' two any of these questions? If you answered Yes. ... Please tell someone you trust right away.")
      bubbleJump()
      $("#safetrust").animate
        top: "0px"
        left: "0px"
      , 500, "easeOutCubic"

$("#safeeightno").click ->
  $("#safeeight").animate
    opacity: 0
  , 500, ->
    $("#safeeight").animate
      left: "-3440px"
    , ->
      $("#bubbletalk").html "<h3 class='reduce'>Did you answer 'Yes' to any of these questions?</h3>"
      speakText("Did you answer 'Yes' two any of these questions? If you answered yes, please tell someone you trust right away!")
      bubbleJump()
      $("#safetrust").animate
        top: "0px"
        left: "0px"
      , 500, "easeOutCubic"

$("#safetrustnext").click ->
  window.location = "hea-hygiene.html"


$("#moodconfused").toggle (->
  $("#moodconfusedcheck").attr "src", "images/bigcheckbox_yes.png"
  speakText("I'm feeling confused")
  localStorage.setItem "moodconfused", "I'm feeling confused."
), ->
  $("#moodconfusedcheck").attr "src", "images/bigcheckbox.png"
  localStorage.removeItem "moodconfused"

$("#moodstressed").toggle (->
  $("#moodstressedcheck").attr "src", "images/bigcheckbox_yes.png"
  speakText("I'm feeling stressed")
  localStorage.setItem "moodstressed", "I'm feeling stressed."
), ->
  $("#moodstressedcheck").attr "src", "images/bigcheckbox.png"
  localStorage.removeItem "moodstressed"

$("#moodsad").toggle (->
  $("#moodsadcheck").attr "src", "images/bigcheckbox_yes.png"
  speakText("I'm feeling sad")
  localStorage.setItem "moodsad", "I'm feeling sad."
), ->
  $("#moodsadcheck").attr "src", "images/bigcheckbox.png"
  localStorage.removeItem "moodsad"

$("#moodworried").toggle (->
  $("#moodworriedcheck").attr "src", "images/bigcheckbox_yes.png"
  speakText("I'm feeling worried")
  localStorage.setItem "moodworried", "I'm feeling worried."
), ->
  $("#moodworriedcheck").attr "src", "images/bigcheckbox.png"
  localStorage.removeItem "moodworried"

$("#moodfine").toggle (->
  $("#moodfinecheck").attr "src", "images/bigcheckbox_yes.png"
  speakText("I'm feeling fine")
  localStorage.setItem "moodfine", "I'm feeling fine."
), ->
  $("#moodfinecheck").attr "src", "images/bigcheckbox.png"
  localStorage.removeItem "moodfine"

$("#moodhappy").toggle (->
  $("#moodhappycheck").attr "src", "images/bigcheckbox_yes.png"
  speakText("I'm feeling happy")
  localStorage.setItem "moodhappy", "I'm feeling happy."
), ->
  $("#moodhappycheck").attr "src", "images/bigcheckbox.png"
  localStorage.removeItem "moodhappy"

$("#moodangry").toggle (->
  $("#moodangrycheck").attr "src", "images/bigcheckbox_yes.png"
  speakText("I'm feeling angry")
  localStorage.setItem "moodangry", "I'm feeling angry."
), ->
  $("#moodangrycheck").attr "src", "images/bigcheckbox.png"
  localStorage.removeItem "moodangry"

$("#moodscared").toggle (->
  $("#moodscaredcheck").attr "src", "images/bigcheckbox_yes.png"
  speakText("I'm feeling scared")
  localStorage.setItem "moodscared", "I'm feeling scared."
), ->
  $("#moodscaredcheck").attr "src", "images/bigcheckbox.png"
  localStorage.removeItem "moodscared"

$("#mood1wrapper").toggle (->
  $("#mood1").attr "src", "images/moodsing_yes.png"
  speakText("I want two sing and dance")
  localStorage.setItem "moodsing", "I want to sing and dance."
), ->
  $("#mood1").attr "src", "images/moodsing.png"
  localStorage.removeItem "moodsing"

$("#mood2wrapper").toggle (->
  $("#mood2").attr "src", "images/moodyoga_yes.png"
  speakText("I want two do some yoga")
  localStorage.setItem "moodyoga", "I want to do some yoga."
), ->
  $("#mood2").attr "src", "images/moodyoga.png"
  localStorage.removeItem "moodyoga"

$("#mood3wrapper").toggle (->
  $("#mood3").attr "src", "images/moodmeal_yes.png"
  speakText("I want two eat a good meal")
  localStorage.setItem "moodmeal", "I want to eat a good meal."
), ->
  $("#mood3").attr "src", "images/moodmeal.png"
  localStorage.removeItem "moodmeal"

$("#mood4wrapper").toggle (->
  $("#mood4").attr "src", "images/moodrelax_yes.png"
  speakText("I want two relax")
  localStorage.setItem "moodrelax", "I want to relax."
), ->
  $("#mood4").attr "src", "images/moodrelax.png"
  localStorage.removeItem "moodrelax"

$("#mood5wrapper").toggle (->
  $("#mood5").attr "src", "images/moodexercise_yes.png"
  speakText("I want two get some exercise")
  localStorage.setItem "moodexercise", "I want to get some exercise."
), ->
  $("#mood5").attr "src", "images/moodexercise.png"
  localStorage.removeItem "moodexercise"

$("#mood6wrapper").toggle (->
  $("#mood6").attr "src", "images/moodchat_yes.png"
  speakText("I want two chat with a friend")
  localStorage.setItem "moodchat", "I want to chat with a friend."
), ->
  $("#mood6").attr "src", "images/moodchat.png"
  localStorage.removeItem "moodchat"

$("#mood7wrapper").toggle (->
  $("#mood7").attr "src", "images/moodwork_yes.png"
  speakText("I want two work on a project")
  localStorage.setItem "moodwork", "I want to work on a project."
), ->
  $("#mood7").attr "src", "images/moodwork.png"
  localStorage.removeItem "moodwork"

$("#mood8wrapper").toggle (->
  $("#mood8").attr "src", "images/moodgame_yes.png"
  speakText("I want two play a game")
  localStorage.setItem "moodgame", "I want to play a game."
), ->
  $("#mood8").attr "src", "images/moodgame.png"
  localStorage.removeItem "moodgame"

$("#malechoice").click ->
  $("embed").remove()
  $("body").append "<embed src=\"clickon.wav\" autostart=\"true\" hidden=\"true\" loop=\"false\">"
  $("#malechoicecheck").attr "src", "images/bigcheckbox_yes.png"
  $("#femalechoicecheck").attr "src", "images/bigcheckbox.png"
  $("#four").animate
    opacity: 0
  , 500
  $("#genderchoice").animate
    opacity: 0
  , 500
  $("#genderchoice").transition
    left: "-1005px"
    top: "70px"

  $("#four").transition
    left: "-1005px"
    top: "70px"
  , ->
    $("#bubbletalk").html "<h3>Click where something is bothering you.</h3>"
    speakText("Click where something is bothering you.")
    bubbleJump()
    $("#frontbodyholder").animate
      left: "130px"
    , 800, "easeOutCubic"
    $("#backbodyholder").animate
      left: "380px"
    , 800, "easeOutCubic"
    $("#bodypain").animate
      left: "620px"
    , 800, "easeOutCubic"
    $("#painfinish").animate
      left: "625px"
    , 800, "easeOutCubic"

$("#femalechoice").click ->
  $("embed").remove()
  $("body").append "<embed src=\"clickon.wav\" autostart=\"true\" hidden=\"true\" loop=\"false\">"
  $("#malechoicecheck").attr "src", "images/bigcheckbox.png"
  $("#femalechoicecheck").attr "src", "images/bigcheckbox_yes.png"
  window.location = "hea-bodyf.html"

$("#paintransnext").click ->
  $("#backbodyholder").animate
    opacity: 0
  , 500
  $("#bodypain").animate
    opacity: 0
  , 500
  $("#painfinish").animate
    opacity: 0
  , 500
  $("#frontbodyholder").animate
    opacity: 0
  , 500, ->
    $("#frontbodyholder").animate
      left: "2130px"
    , 800
    $("#backbodyholder").animate
      left: "2380px"
    , 800
    $("#bodypain").animate
      left: "2620px"
    , 800
    $("#painfinish").animate
      left: "2625px"
    , 800, ->
      $("#bubbletalk").html "<h3>Have you told anyone about this?</h3>"
      speakText("Have you told anyone about your pain? . If you're feeling pain, let someone know.")
      bubbleJump()
      $("#paintransition").animate
        left: "200px"
      , 800, "easeOutCubic"

$("#fouryes").click ->
  speakText("Which gender are you?")
  $("#genderchoice").animate
    left: "445px"
  , 800, "easeOutCubic"

$("#fourno").click ->
  $("#four").animate
    opacity: 0
  , 500, ->
    bodySummary = "In Pain or Discomfort: No. <br/>"
    window.location = "hea-mood.html"


$("#sixnext").click ->
  $("#six").animate
    opacity: 0
  , 500, ->
    window.location = "hea-hygiene.html"

$("#todayshower").click ->
  localStorage.setItem "selfshower", "I took a shower today."
  speakText("I took a shower today")
  $("#todayshower").attr "src", "images/bigcheckbox_yes.png"
  $("#yesterdayshower").attr "src", "images/bigcheckbox.png"
  $("#twodayshower").attr "src", "images/bigcheckbox.png"
  $("#notsureshower").attr "src", "images/bigcheckbox.png"

$("#yesterdayshower").click ->
  localStorage.setItem "selfshower", "I took a shower yesterday."
  speakText("I took a shower yesterday")
  $("#todayshower").attr "src", "images/bigcheckbox.png"
  $("#yesterdayshower").attr "src", "images/bigcheckbox_yes.png"
  $("#twodayshower").attr "src", "images/bigcheckbox.png"
  $("#notsureshower").attr "src", "images/bigcheckbox.png"

$("#twodayshower").click ->
  localStorage.setItem "selfshower", "I took a shower two days ago."
  speakText("I took a shower two days ago")
  $("#todayshower").attr "src", "images/bigcheckbox.png"
  $("#yesterdayshower").attr "src", "images/bigcheckbox.png"
  $("#twodayshower").attr "src", "images/bigcheckbox_yes.png"
  $("#notsureshower").attr "src", "images/bigcheckbox.png"

$("#notsureshower").click ->
  localStorage.setItem "selfshower", "I don't know when I took a shower."
  speakText("I do not know when I took a shower last")
  $("#todayshower").attr "src", "images/bigcheckbox.png"
  $("#yesterdayshower").attr "src", "images/bigcheckbox.png"
  $("#twodayshower").attr "src", "images/bigcheckbox.png"
  $("#notsureshower").attr "src", "images/bigcheckbox_yes.png"

$("#todayteeth").click ->
  localStorage.setItem "selfteeth", "I brushed My teeth today."
  speakText("I brushed My teeth today")
  $("#todayteeth").attr "src", "images/bigcheckbox_yes.png"
  $("#yesterdayteeth").attr "src", "images/bigcheckbox.png"
  $("#twodayteeth").attr "src", "images/bigcheckbox.png"
  $("#notsureteeth").attr "src", "images/bigcheckbox.png"

$("#yesterdayteeth").click ->
  localStorage.setItem "selfteeth", "I brushed My teeth yesterday."
  speakText("I brushed My teeth yesterday")
  $("#todayteeth").attr "src", "images/bigcheckbox.png"
  $("#yesterdayteeth").attr "src", "images/bigcheckbox_yes.png"
  $("#twodayteeth").attr "src", "images/bigcheckbox.png"
  $("#notsureteeth").attr "src", "images/bigcheckbox.png"

$("#twodayteeth").click ->
  localStorage.setItem "selfteeth", "I brushed My teeth two days ago."
  speakText("I brushed My teeth two days ago")
  $("#todayteeth").attr "src", "images/bigcheckbox.png"
  $("#yesterdayteeth").attr "src", "images/bigcheckbox.png"
  $("#twodayteeth").attr "src", "images/bigcheckbox_yes.png"
  $("#notsureteeth").attr "src", "images/bigcheckbox.png"

$("#notsureteeth").click ->
  localStorage.setItem "selfteeth", "I don't know when I brushed My teeth."
  speakText("I do not know when I brushed My teeth last")
  $("#todayteeth").attr "src", "images/bigcheckbox.png"
  $("#yesterdayteeth").attr "src", "images/bigcheckbox.png"
  $("#twodayteeth").attr "src", "images/bigcheckbox.png"
  $("#notsureteeth").attr "src", "images/bigcheckbox_yes.png"

$("#todaypoop").click ->
  localStorage.setItem "selfpoop", "I pooped today."
  speakText("I pooped today")
  $("#todaypoop").attr "src", "images/bigcheckbox_yes.png"
  $("#yesterdaypoop").attr "src", "images/bigcheckbox.png"
  $("#twodaypoop").attr "src", "images/bigcheckbox.png"
  $("#notsurepoop").attr "src", "images/bigcheckbox.png"

$("#yesterdaypoop").click ->
  localStorage.setItem "selfpoop", "I pooped yesterday."
  speakText("I pooped yesterday")
  $("#todaypoop").attr "src", "images/bigcheckbox.png"
  $("#yesterdaypoop").attr "src", "images/bigcheckbox_yes.png"
  $("#twodaypoop").attr "src", "images/bigcheckbox.png"
  $("#notsurepoop").attr "src", "images/bigcheckbox.png"

$("#twodaypoop").click ->
  localStorage.setItem "selfpoop", "I pooped two days ago."
  speakText("I pooped two days ago")
  $("#todaypoop").attr "src", "images/bigcheckbox.png"
  $("#yesterdaypoop").attr "src", "images/bigcheckbox.png"
  $("#twodaypoop").attr "src", "images/bigcheckbox_yes.png"
  $("#notsurepoop").attr "src", "images/bigcheckbox.png"

$("#notsurepoop").click ->
  localStorage.setItem "selfpoop", "I do not know when I pooped."
  speakText("I do not know when I pooped")
  $("#todaypoop").attr "src", "images/bigcheckbox.png"
  $("#yesterdaypoop").attr "src", "images/bigcheckbox.png"
  $("#twodaypoop").attr "src", "images/bigcheckbox.png"
  $("#notsurepoop").attr "src", "images/bigcheckbox_yes.png"

$("#hy2next").click ->
  $("#shower").animate
    opacity: 0
  , 500, ->
    $("#progresshygiene").animate
      width: "650px"
    , 600
    $("#shower").animate
      left: "-2000px"
    , ->
      $("#bubbletalk").html "<h3>How much do you weigh today?</h3>"
      speakText("How much do you weigh today?")
      bubbleJump()
      $("#weight").animate
        top: "30px"
        left: "130px"
      , 1500, "easeOutElastic"
      $("#weightKeypad").animate
        top: "85px"
        left: "365px"
      , 1500, "easeOutElastic"
      $("#hy3next").animate
        top: "300px"
        left: "380px"
      , 1500, "easeOutElastic"

$("#hy3next").click ->
  localStorage.setItem "selfweight", "My weight is " + MyWeight + "."
  $("#weightKeypad").animate
    opacity: 0
  , 500
  $("#hy3next").animate
    opacity: 0
  , 500
  $("#progresshygiene").animate
    width: "700px"
  , 600
  $("#weight").animate
    opacity: 0
  , 500, ->
    $("#weightKeypad").animate left: "-2000px"
    $("#h3next").animate left: "-2000px"
    $("#weight").animate
      left: "-2000px"
    , ->
      $("#bubbletalk").html "<h3>When was the last time you brushed your teeth?</h3>"
      speakText("When was the last time you brushed your teeth?")
      bubbleJump()
      $("#teeth").animate
        top: "30px"
        left: "110px"
      , 1500, "easeOutCubic"
      $("#hy4next").animate
        top: "350px"
        left: "405px"
      , 1500, "easeOutCubic"

$("#hy4next").click ->
  $("#teeth").animate
    opacity: 0
  , 500, ->
    $("#progresshygiene").animate
      width: "740px"
    , 600
    $("#teeth").animate
      left: "-2000px"
    , ->
      $("#bubbletalk").html "<h3>When was the last time you pooped?</h3>"
      speakText("When was the last time you pooped?")
      bubbleJump()
      $("#poop").animate
        top: "40px"
        left: "45px"
      , 1500, "easeOutCubic"
      $("#hy5next").animate
        top: "330px"
        left: "580px"
      , 1500, "easeOutCubic"

$("#hy5next").click ->
  $("#poop").animate
    opacity: 0
  , 500, ->
    $("#progresshygiene").animate
      width: "740px"
    , 600
    $("#poop").animate
      left: "-2000px"
    , ->
      $("#bubbletalk").html "<h3>Sometimes we need to take medications.</h3>"
      speakText("Sometimes we need to take medications. ... Do you take any medications?")
      bubbleJump()
      $("#medicine").animate
        top: "30px"
        left: "110px"
      , 1500, "easeOutCubic"

$("#medicineyes").click ->
  localStorage.setItem "selfmeda", "Prescribed medicine: Yes."
  $("#medicine2").animate
    top: "150px"
    left: "412px"
  , 600
  speakText("Did you take them the last time you were supposed two?")

$("#medicineno").click ->
  localStorage.setItem "selfmeda", "Prescribed medicine: No."
  $("#progresshygiene").animate
    width: "760px"
  , 600
  window.location = "hea-finish.html"

$("#medicineyes2").click ->
  localStorage.setItem "selfmedb", "Take as prescribed: Yes."
  $("#progresshygiene").animate
    width: "760px"
  , 600
  window.location = "hea-finish.html"

$("#medicineno2").click ->
  localStorage.setItem "selfmedb", "Take as prescribed: No."
  $("#progresshygiene").animate
    width: "760px"
  , 600
  window.location = "hea-finish.html"

$("#number1").click ->
  speakText("one")
  weightColumn = weightColumn + 1
  weightDigit = "1"
  placeDigit()

$("#number2").click ->
  speakText("two")
  weightColumn = weightColumn + 1
  weightDigit = "2"
  placeDigit()

$("#number3").click ->
  speakText("three")
  weightColumn = weightColumn + 1
  weightDigit = "3"
  placeDigit()

$("#number4").click ->
  speakText("four")
  weightColumn = weightColumn + 1
  weightDigit = "4"
  placeDigit()

$("#number5").click ->
  speakText("five")
  weightColumn = weightColumn + 1
  weightDigit = "5"
  placeDigit()

$("#number6").click ->
  speakText("six")
  weightColumn = weightColumn + 1
  weightDigit = "6"
  placeDigit()

$("#number7").click ->
  speakText("seven")
  weightColumn = weightColumn + 1
  weightDigit = "7"
  placeDigit()

$("#number8").click ->
  speakText("eight")
  weightColumn = weightColumn + 1
  weightDigit = "8"
  placeDigit()

$("#number9").click ->
  speakText("nine")
  weightColumn = weightColumn + 1
  weightDigit = "9"
  placeDigit()

$("#number0").click ->
  speakText("zero")
  weightColumn = weightColumn + 1
  weightDigit = "0"
  placeDigit()

$("#clearnumbers").click ->
  speakText("numbers are cleared")
  weightColumn = 0
  weightDigit = ""
  $("#weightdigit1").text weightDigit
  $("#weightdigit2").text weightDigit
  $("#weightdigit3").text weightDigit

placeDigit = ->
  if weightColumn is 1
    $("#weightdigit1").text weightDigit
    weightFirst = weightDigit
  else if weightColumn is 2
    $("#weightdigit2").text weightDigit
    weightSecond = weightDigit
  else if weightColumn is 3
    $("#weightdigit3").text weightDigit
    weightThird = weightDigit
  showWeight()

showWeight = ->
  MyWeight = weightFirst
  MyWeight += weightSecond
  MyWeight += weightThird
  

$("#testnext").click ->
  $.ajax
    url: "testtextblock.html"
    dataType: "html"
    success: (data) ->
      $("#hygiene2").html data
      $("#hygiene2").animate
        top: "60px"
        left: "182px"
      , 600
      $("#shower").animate
        opacity: 0
      , 500

goSummary = ->
  $("#choosesummary").animate
      top: "320px"
      left: "480px"
    , 600
    speakText("To see your Summary, click next.")
    logSummary()

$("#seesummary").click ->
  $("#shiftbreathe").animate
    opacity: 0
  , 500
  $("#summary").animate
    opacity: 0
  , 500
  $("#choosesummary").animate
    opacity: 0
  , 500, ->
    $("#choosesummary").animate
      left: "-2000px"
    $("#summary").animate
      left: "-2000px"
    $("#shiftbreathe").animate
      left: "-2000px"
    $("#summaryholder").animate
      left: "10px"
      top: "210px"
    $("#bubbletalk").html "<h3>That was quick, wasn't it?</h3>"
    speakText("That was quick, wasn't it?")
    bubbleJump()
    $("#pageheader").html "<h1>" + MyName + "'s Summary</h1>"
  

  thoughtSelf = (localStorage.getItem "thoughtself") + "<br/>"
  thoughtFriend = (localStorage.getItem "thoughtfriend") + "<br/>"
  doMusic = (localStorage.getItem "domusic") + "<br/>" unless localStorage.getItem("domusic") is null
  doWalk = (localStorage.getItem "dowalk") + "<br/>" unless localStorage.getItem("dowalk") is null
  doVisit = (localStorage.getItem "dovisit") + "<br/>" unless localStorage.getItem("dovisit") is null
  doShop = (localStorage.getItem "doshop") + "<br/>" unless localStorage.getItem("doshop") is null
  doExercise = (localStorage.getItem "doexercise") + "<br/>" unless localStorage.getItem("doexercise") is null

  amSad = (localStorage.getItem "moodsad") + "<br/>" unless localStorage.getItem("moodsad") is null
  amWorried = (localStorage.getItem "moodworried") + "<br/>" unless localStorage.getItem("moodworried") is null
  amFine = (localStorage.getItem "moodfine") + "<br/>" unless localStorage.getItem("moodfine") is null
  amHappy = (localStorage.getItem "moodhappy") + "<br/>" unless localStorage.getItem("moodhappy") is null
  amConfused = (localStorage.getItem "moodconfused") + "<br/>" unless localStorage.getItem("moodconfused") is null
  amStressed = (localStorage.getItem "moodstressed") + "<br/>" unless localStorage.getItem("moodstressed") is null
  amAngry = (localStorage.getItem "moodangry") + "<br/>" unless localStorage.getItem("moodangry") is null
  amScared = (localStorage.getItem "moodscared") + "<br/>" unless localStorage.getItem("moodscared") is null

  painJaw = (localStorage.getItem "Jaw") + "<br/>" unless localStorage.getItem("Jaw") is null
  painMouth = (localStorage.getItem "Mouth") + "<br/>" unless localStorage.getItem("Mouth") is null
  painNose = (localStorage.getItem "Nose") + "<br/>" unless localStorage.getItem("Nose") is null
  painRightEar = (localStorage.getItem "Right Ear") + "<br/>" unless localStorage.getItem("Right Ear") is null
  painRightEye = (localStorage.getItem "Right Eye") + "<br/>" unless localStorage.getItem("Right Eye") is null
  painLeftEar = (localStorage.getItem "Left Ear") + "<br/>" unless localStorage.getItem("Left Ear") is null
  painLeftEye = (localStorage.getItem "Left Eye") + "<br/>" unless localStorage.getItem("Left Eye") is null
  painForehead = (localStorage.getItem "Forehead") + "<br/>" unless localStorage.getItem("Forehead") is null
  painThroat = (localStorage.getItem "Throat") + "<br/>" unless localStorage.getItem("Throat") is null

  painPelvis = (localStorage.getItem "Pelvis") + "<br/>" unless localStorage.getItem("Pelvis") is null
  painStomach = (localStorage.getItem "Stomach") + "<br/>" unless localStorage.getItem("Stomach") is null
  painGroin = (localStorage.getItem "Groin") + "<br/>" unless localStorage.getItem("Groin") is null
  painChest = (localStorage.getItem "Chest") + "<br/>" unless localStorage.getItem("Chest") is null
  painBackHead = (localStorage.getItem "Back Head") + "<br/>" unless localStorage.getItem("Back Head") is null
  painRightArm = (localStorage.getItem "Right Arm") + "<br/>" unless localStorage.getItem("Right Arm") is null
  painRightHand = (localStorage.getItem "Right Hand") + "<br/>" unless localStorage.getItem("Right Hand") is null
  painRightFoot = (localStorage.getItem "Right Foot") + "<br/>" unless localStorage.getItem("Right Foot") is null
  painRightLeg = (localStorage.getItem "Right Leg") + "<br/>" unless localStorage.getItem("Right Leg") is null
  painLeftArm = (localStorage.getItem "Left Arm") + "<br/>" unless localStorage.getItem("Left Arm") is null
  painLeftHand = (localStorage.getItem "Left Hand") + "<br/>" unless localStorage.getItem("Left Hand") is null
  painLeftFoot = (localStorage.getItem "Left Foot") + "<br/>" unless localStorage.getItem("Left Foot") is null
  painLeftLeg = (localStorage.getItem "Left Leg") + "<br/>" unless localStorage.getItem("Left Leg") is null

  painNeck = (localStorage.getItem "Neck") + "<br/>" unless localStorage.getItem("Neck") is null
  painSpine = (localStorage.getItem "Spine") + "<br/>" unless localStorage.getItem("Spine") is null
  painButt = (localStorage.getItem "Butt") + "<br/>" unless localStorage.getItem("Butt") is null
  painBackHead = (localStorage.getItem "Back of Head") + "<br/>" unless localStorage.getItem("Back of Head") is null
  painRightBack = (localStorage.getItem "Right Back") + "<br/>" unless localStorage.getItem("Right Back") is null
  painBackRightHand = (localStorage.getItem "Back Right Hand") + "<br/>" unless localStorage.getItem("Back Right Hand") is null
  painBackRightArm = (localStorage.getItem "Back Right Arm") + "<br/>" unless localStorage.getItem("Back Right Arm") is null
  painRightHeel = (localStorage.getItem "Right Heel") + "<br/>" unless localStorage.getItem("Right Heel") is null
  painBackRightLeg = (localStorage.getItem "Back Right Leg") + "<br/>" unless localStorage.getItem("Back Right Leg") is null
  painLeftBack = (localStorage.getItem "Left Back") + "<br/>" unless localStorage.getItem("Left Back") is null
  painBackLeftHand = (localStorage.getItem "Back Left Hand") + "<br/>" unless localStorage.getItem("Back Left Hand") is null
  painBackLeftArm = (localStorage.getItem "Back Left Arm") + "<br/>" unless localStorage.getItem("Back Left Arm") is null
  painLeftHeel = (localStorage.getItem "Left Heel") + "<br/>" unless localStorage.getItem("Left Heel") is null
  painBackLeftLeg = (localStorage.getItem "Back Left Leg") + "<br/>" unless localStorage.getItem("Back Left Leg") is null

  painLeftBreast = (localStorage.getItem "Left Breast") + "<br/>" unless localStorage.getItem("Left Breast") is null
  painRightBreast = (localStorage.getItem "Right Breast") + "<br/>" unless localStorage.getItem("Right Breast") is null

  moodSing = (localStorage.getItem "moodsing") + "<br/>"  unless localStorage.getItem("moodsing") is null
  moodYoga = (localStorage.getItem "moodyoga") + "<br/>"  unless localStorage.getItem("moodyoga") is null
  moodMeal = (localStorage.getItem "moodmeal") + "<br/>"  unless localStorage.getItem("moodmeal") is null
  moodRelax = (localStorage.getItem "moodrelax") + "<br/>"  unless localStorage.getItem("moodrelax") is null
  moodExercise = (localStorage.getItem "moodexercise") + "<br/>"  unless localStorage.getItem("moodexercise") is null
  moodChat = (localStorage.getItem "moodchat") + "<br/>"  unless localStorage.getItem("moodchat") is null
  moodWork = (localStorage.getItem "moodwork") + "<br/>"  unless localStorage.getItem("moodwork") is null
  moodGame = (localStorage.getItem "moodgame") + "<br/>"  unless localStorage.getItem("moodgame") is null

  safeTease = (localStorage.getItem "safetease") + "<br/>"  unless localStorage.getItem("safetease") is null
  safeBully = (localStorage.getItem "safebully") + "<br/>"  unless localStorage.getItem("safebully") is null
  safeTouch = (localStorage.getItem "safetouch") + "<br/>"  unless localStorage.getItem("safetouch") is null
  safeSecret = (localStorage.getItem "safesecret") + "<br/>"  unless localStorage.getItem("safesecret") is null

  selfShower = (localStorage.getItem "selfshower") + "<br/>"  unless localStorage.getItem("selfshower") is null
  selfTeeth = (localStorage.getItem "selfteeth") + "<br/>"  unless localStorage.getItem("selfteeth") is null
  selfPoop = (localStorage.getItem "selfpoop") + "<br/>"  unless localStorage.getItem("selfpoop") is null
  selfWeight = (localStorage.getItem "selfweight") + "<br/>"  unless localStorage.getItem("selfweight") is null
  selfMeda = (localStorage.getItem "selfmeda") + "<br/>"  unless localStorage.getItem("selfmeda") is null
  selfMedb = (localStorage.getItem "selfmedb") + "<br/>" unless localStorage.getItem("selfmedb") is null

  $("#thesummary").append('<h5>A Good Start. </h5><p>' + thoughtSelf + thoughtFriend + doMusic + doWalk + doVisit + doShop + doExercise + '</p>')
  $("#thesummary3").append('<h5>Body Well-Being. </h5><p>' + painJaw + painMouth + painNose + painRightEar + painRightEye + painLeftEar + painLeftEye + painForehead + painThroat + painPelvis + painStomach + painGroin + painChest + painBackHead + painRightArm + painRightHand + painRightFoot + painRightLeg + painLeftArm + painLeftHand + painLeftFoot + painLeftLeg + painNeck + painSpine + painButt + painRightBack + painBackRightHand + painBackRightArm + painRightHeel + painBackRightLeg + painLeftBack + painBackLeftHand + painBackLeftArm + painLeftHeel + painBackLeftLeg + painLeftBreast + painRightBreast + '</p>')
  $("#thesummary5").append('<h5>Emotional Well-Being. </h5><p>' + amFine + amHappy + amWorried + amSad + amConfused + amStressed + amAngry + amScared + '</p>' + '<p>' + moodSing + moodYoga + moodMeal + moodRelax + moodExercise + moodChat + moodWork + moodGame + '</p>')
  $("#thesummary2").append('<h5>Safe and Secure. </h5><p><span class="red">' + safeTease + safeBully + safeTouch + safeSecret + '</span></p>')
  $("#thesummary4").append('<h5>Body Care. </h5><p>' + selfShower + selfTeeth + selfPoop + selfWeight + '</p>' + '<p>' + selfMeda + selfMedb + '</p>')

  