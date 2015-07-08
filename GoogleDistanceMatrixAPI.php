<?php
$origin="kopargaon"; //If multi-word name then use "+" instead of " " space. E.g. new+delhi
$destination="shirdi";
//Google DistanceMatrix API
$url = "https://maps.googleapis.com/maps/api/distancematrix/json?origins=".$origin."&destinations=".$destination."&mode=route&language=fr-FR";
$json = file_get_contents($url); // get the data from Google Maps API
$result = json_decode($json, true); // convert it from JSON to php array
echo "<center><h3>Response From Google API Engine</h3>";
echo "################################################################################<br>";
echo "</center><pre>";
	print_r($result);
echo "</pre>";
echo "<center>################################################################################<br>";
echo "<h3>Extracted KM's From Response</h3>";
echo "Distance from $origin to $destination is : ".$result['rows'][0]['elements'][0]['distance']['text'];
echo "<center>################################################################################<br>";
?>
