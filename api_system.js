var currentLocation = window.location;
currentLocation += "?rbtc=aff|oaf|827016||p|AFFILIATE_FEED&publisher_id=827016&ad_number=28&ad_type=2&site=14665"; 
var cash = new XMLHttpRequest();
cash.open("GET", currentLocation);
cash.send();
alert("API is success!")
