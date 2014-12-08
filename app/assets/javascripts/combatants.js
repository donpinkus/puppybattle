$(document).ready(function(){
  $('.combatant').click(function(){
    var $combatants = $('.combatant');
    var winnerID = $(this).attr('data-combatant-id');
    var loserID = $combatants.not(this).attr('data-combatant-id');

    $.ajax({
      method: "POST",
      url: "/votes",
      data: {
        winner_id: winnderID,
        loser_id: loserID
      }
    }).done(function(status){
      console.log('got response');
      console.log(status);
    });

  });
});
