function speakText(text)
{
    $.ajax({
      url: "/tts/tts.php",
      data: {'speakthis': text},
      success: function(responseText){
        $('#speech').html( '<embed src="' + responseText + '" autostart="true" hidden="true" loop="false">');
      }
    });
}
