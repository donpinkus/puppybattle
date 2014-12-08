function updateCombatants(c1, c2){
  console.log('updating combatants');
  $('.c1').attr('data-combatant-id', c1["id"])
    .find('.pupImage').attr('style', 'background: url("' + c1["url"] + '") center center');

    console.log(c1["url"]);

  $('.c2').attr('data-combatant-id', c2["id"])
    .find('.pupImage').attr('style', 'background: url("' + c2["url"] + '") center center');
}


$(document).ready(function(){
  $('.combatant').click(function(){
    var $combatants = $('.combatant');
    var winnerID = $(this).attr('data-combatant-id');
    var loserID = $combatants.not(this).attr('data-combatant-id');

    $.ajax({
      method: "POST",
      url: "/matches",
      data: {
        match: {
          winner_id: winnerID,
          loser_id: loserID
        }
      }
    }).done(function(status){
      updateCombatants(status["next_match"]["combatant_1"], status["next_match"]["combatant_2"]);
    });

  });
});
