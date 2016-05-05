jQuery('document').ready(function($){
    var li = $("header ul#menu-main-menu>li");
    var maina = li.children("a[href*='my-account']");
    var newli = $("<li class='menu-item menu-item-type-custom menu-item-object-custom'></li>");
    newli.append(maina.clone());
    li.find('.sub-menu').prepend(newli);
    maina.text("Привет, "+$('#thisusername').text());
    $("header ul#menu-main-menu a[href*='logout']").attr("href",$('#thisuserlogout').text());
});