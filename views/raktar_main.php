<?php
$url = "http://localhost/feladat/rest/rest_szerver.php";
$res = "";
if(isset($_POST['id']))
{
    // szóközök levágása
    $_POST['id'] = trim($_POST['id']);
    $_POST['veznev'] = trim($_POST['veznev']);
    $_POST['utonev'] = trim($_POST['utonev']);
    $_POST['felhasznalo'] = trim($_POST['felhasznalo']);
    $_POST['jelszo'] = trim($_POST['jelszo']);

    // ÚJ REKORD - id nincs megadva, viszont minden más megadásra kerül
    if($_POST['id'] == "" && $_POST['veznev'] != "" && $_POST['utonev'] != "" && $_POST['felhasznalo'] != "" && $_POST['jelszo'] != "")
    {
        $data = Array("veznev" => $_POST["veznev"], "utonev" => $_POST["utonev"], "felhasznalo" => $_POST["felhasznalo"], "jelszo" => sha1($_POST["jelszo"]));
        $ch = curl_init($url);
        curl_setopt($ch, CURLOPT_POST, 1);
        curl_setopt($ch, CURLOPT_POSTFIELDS, http_build_query($data));
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        $res = curl_exec($ch);
        curl_close($ch);
    }

    // HIBA - id nincs megadva, és más sem.
    elseif($_POST['id'] == "")
    {
        $res = "Hiba: Hiányos adatok!";
    }

    // MÓDOSÍTÁS ha az id nagyobb vagy egyenlő 1 és legalább egy mező ki van töltve
    elseif($_POST['id'] >= 1 && ($_POST['veznev'] != "" || $_POST['utonev'] != "" || $_POST['felhasznalo'] != "" || $_POST['jelszo'] != ""))
    {
        $data = Array("veznev" => $_POST["veznev"], "utonev" => $_POST["utonev"], "felhasznalo" => $_POST["felhasznalo"], "jelszo" => sha1($_POST["jelszo"]));
        $ch = curl_init($url);
        curl_setopt($ch, CURLOPT_CUSTOMREQUEST, "PUT");
        curl_setopt($ch, CURLOPT_POSTFIELDS, http_build_query($data));
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        $res = curl_exec($ch);
        curl_close($ch);
    }

    // TÖRLÉS, ha az id nagyobb vagy egyenlő 1, de nincs megadva más
    elseif($_POST['id'] >= 1)
    {
        $data = Array("id" => $_POST["id"]);
        $ch = curl_init($url);
        curl_setopt($ch, CURLOPT_CUSTOMREQUEST, "DELETE");
        curl_setopt($ch, CURLOPT_POSTFIELDS, http_build_query($data));
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        $res = curl_exec($ch);
        curl_close($ch);
    }

    // HIBA - Azonosító nem található az adatbázisban
    else
    {
        echo "Hiba: Azonosító nem létezik (Id): ".$_POST['id']."<br>";
    }
}

$ch = curl_init($url);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
$table = curl_exec($ch);
curl_close($ch);

?>
<br>
<div class="container-lg">
    <h1>Raktár módosítása</h1>
</div>