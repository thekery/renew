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
    $_POST['email'] = trim($_POST['email']);
    $_POST['jogsi'] = trim($_POST['jogsi']);


    // ÚJ REKORD - id nincs megadva, viszont minden más megadásra kerül
    if($_POST['id'] == "" && $_POST['veznev'] != "" && $_POST['utonev'] != "" && $_POST['felhasznalo'] != "" && $_POST['jelszo'] != "" && $_POST['email'] != "" && $_POST['jogsi'] != "")
    {
        $data = Array("veznev" => $_POST["veznev"], "utonev" => $_POST["utonev"], "felhasznalo" => $_POST["felhasznalo"], "jelszo" => sha1($_POST["jelszo"]),"email"=>$_POST['email'] ,"jogsi"=>$_POST['jogsi']);
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
    elseif($_POST['id'] >= 1 && ($_POST['veznev'] != "" || $_POST['utonev'] != "" || $_POST['felhasznalo'] != "" || $_POST['jelszo'] != "" || $_POST['email'] != "" || $_POST['jogsi'] != ""))
    {
        $data = Array("veznev" => $_POST["veznev"], "utonev" => $_POST["utonev"], "felhasznalo" => $_POST["felhasznalo"], "jelszo" => sha1($_POST["jelszo"]),"email"=>$_POST['email'] ,"jogsi"=>$_POST['jogsi']);
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
    // HIBA - Minden adat megadásra kerül
    elseif($_POST['id'] != "" && $_POST['veznev'] != "" && $_POST['utonev'] != "" && $_POST['felhasznalo'] != "" && $_POST['jelszo'] != "" && $_POST['email'] != "" && $_POST['jogsi'] != "")
    {
        echo "Hiba: Sor hozzáadásához nem kell ID-t megadni.";
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
    <?= $res ?>
    <h1>Felhasználók módosítása</h1>
    <p></p>
    <?= $table ?>
    <p></p>
    <br>
    <h6>Adatok</h6>
    <form method="post">
        <input class="form-control" type="text" name="id" placeholder="Id"><br>
        <input class="form-control" type="text" name="veznev" maxlength="45" placeholder="Vezetéknév"><br>
        <input class="form-control" type="text" name="utonev" maxlength="45" placeholder="Keresztnév"><br>
        <input class="form-control" type="text" name="felhasznalo" maxlength="12" placeholder="Felhasználónév"><br>
        <input class="form-control" type="text" name="jelszo" placeholder="Jelszó"><br>
        <input class="form-control" type="email" name="email" placeholder="Email"><br>
        <input class="form-control" type="jogsi" name="jogsi" placeholder="Jogosultság"><br>
        <input class="btn btn-outline-light" style="background-color: #7bbad8" type="submit" value = "Frissítés">
    </form>
    <p></p>
</div>

