$(function(){
    window.addEventListener("message", function(event){
        if (event.data.pauseMenu == false) {
            $(".ui").fadeIn();
            var health = event.data.health;
            var armor = event.data.armor;
            $("#health-percent").html(Math.round(health) + "%");
            $("#health-level").css("width", health + "%");
            if (armor <= 0) {
                $('.armor').fadeOut(250);
            }else {
                $('.armor').fadeIn(250);
            }

            $("#armor-percent").html(Math.round(armor) + "%");
            $("#armor-level").css("width", armor + "%");
        } else {
            $(".ui").fadeOut();
        }
    })
})