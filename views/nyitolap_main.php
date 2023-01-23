<?php

$curl = curl_init();

curl_setopt_array($curl, [
    CURLOPT_URL => "https://weatherapi-com.p.rapidapi.com/current.json?q=Budapest",
    CURLOPT_RETURNTRANSFER => true,
    CURLOPT_FOLLOWLOCATION => true,
    CURLOPT_ENCODING => "",
    CURLOPT_MAXREDIRS => 10,
    CURLOPT_TIMEOUT => 30,
    CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
    CURLOPT_CUSTOMREQUEST => "GET",
    CURLOPT_HTTPHEADER => [
        "X-RapidAPI-Host: weatherapi-com.p.rapidapi.com",
        "X-RapidAPI-Key: 636f7290bcmsh720c90e73427534p1d48abjsnf05c0c23d2bb"
    ],
]);

$response = curl_exec($curl);
$err = curl_error($curl);

curl_close($curl);

if ($err) {
    echo "cURL Error #:" . $err;
} else {

    $response_data = json_decode($response, true);
    $location = $response_data['location'];
    $current = $response_data['current'];
}

?>
<h3>
    <br>Üdvözöljük a ReNew Kft. oldalán!<br>
</h3>
<br><br>
<br>
<span> A cég alapítása 2008-ban történt, két ambiciózus személynek köszönhetően. Apa és fia közösen kezdték meg vállalkozásukat, elsősorban vidéken a környékbeli emberek számára, majd később országos ismertségre tettek szert.
Eleinte főként asztali gépek karbantartása, átvizsgálása volt a cél. Az időmúlásávla fel kellett ismerjék, hogy a laptopok és más kisebb elektroniaki eszközök biztosítják, alakítják a jövőt és a megélhetésüket. Így alakult sorsuk. Végül szinte minden számítástechnikához kapcsolódó elektronikai eszközt meg tud javítani a Renew Kft. A szakértelem bölcsője a családi válálkozásból indult mára pedig a minőséget minden alkalmazottja a cégnek ugyanúgy képviseli mint apa és fia a kezdetekkor.</span>
<br><br>

<h5>Időjárás</h5> <br><br>
    <table class="table table-striped text-center table-responsive">
        <thead>
            <th>Város</th>
            <th>Légnyomás</th>
            <th>Hőmérséklet</th>
            <th>Szél irány</th>
            <th>Szél sebesség</th>
        </thead>
        <tbody>
            <tr>
                <td class="text-center"><?php echo $location['name']; ?> </td>
                <td class="text-center"><?php echo $current['pressure_mb']; ?> MPa</td>
                <td class="text-center"><?php echo $current['temp_c']; ?> °C</td>
                <td class="text-center"><?php echo $current['wind_dir']; ?></td>
                <td class="text-center"><?php echo $current['wind_kph']; ?> Km/h<td>
            </tr>
        </tbody>
    </table>