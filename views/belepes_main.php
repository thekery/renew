
<h2>Belépés</h2>
<form action="<?= SITE_ROOT ?>beleptet" method="post">
    <input class="form-control" type="text" name="login" id="login" placeholder="Felhasználónév" required pattern="[a-zA-Z][\-\.a-zA-Z0-9_]{3}[\-\.a-zA-Z0-9_]+"><br>
    <input class="form-control" type="password" name="password" id="password" placeholder="Jelszó" required pattern="[\-\.a-zA-Z0-9_]{4}[\-\.a-zA-Z0-9_]+"><br>
    <input class="btn" style="background-color: #89cff0" type="submit" value="Belépés">
</form>
<h2><br><?= (isset($viewData['uzenet']) ? $viewData['uzenet'] : "") ?><br></h2>
