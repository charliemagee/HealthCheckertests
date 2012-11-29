
// user Choices go into appropriate arrays and/or variables
var d = new Date();
var curr_date = d.getDate();
var curr_month = d.getMonth() + 1;
var curr_year = d.getFullYear();
var pain = { neck: "5", mouth: "4", rightear: "3" };
var thoughtSelf = "yes";
var thoughtFriend = "no";
var mood = [ "confused", "worried", "scared" ];
var improveMood = [ "sing", "relax" ];
var hygiene = [
	{ shower: "yesterday", teeth: "today", poop: "don\'t remember", weight: "183", meds: "true" }
];
var safety = [
	{ tease: "yes", bully: "no", secret: "no", touch: "no"}
];
var date = curr_month + "/" + curr_date + "/" + curr_year;
var olddate = curr_month + "/" + (curr_date - 8) + "/" + curr_year;

// Results array. Dig into these array variables to build charts
var status = [
  {
		date: date,
    pain: { neck: "5", mouth: "4", rightear: "3" },
    thoughtSelf: "yes",
    thoughtFriend: "no",
    mood: [ "confused", "worried", "scared" ],
    improveMood: [ "sing", "relax" ],
    hygiene: { shower: "yesterday", teeth: "today", poop: "don't remember", weight: "183", meds: "true" },
    safety: { tease: "yes", bully: "no", secret: "no", touch: "no"}
  },

  {
		date: olddate,
    pain: { rightshoulder: "5", rightarm: "4", righthand: "3" },
    thoughtSelf: "yes",
    thoughtFriend: "yes",
    mood: [ "fine", "happy" ],
    improveMood: [ "dance", "yoga" ],
    hygiene: { shower: "today", teeth: "yesterday", poop: "today", weight: "186", meds: "true" },
    safety: { tease: "yes", bully: "yes", secret: "no", touch: "no"}
  }
];

function yell(message) {
  alert(message + "!!");
}

yell( status[0].date + " ----- " + status[1].date);​
