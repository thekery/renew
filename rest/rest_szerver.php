<?php

$eredmeny = "";
try {
    $dbh = new PDO('mysql:host=localhost;dbname=renew', 'root', '',
        array(PDO::ATTR_ERRMODE=>PDO::ERRMODE_EXCEPTION));
    $dbh->query('SET NAMES utf8 COLLATE utf8_hungarian_ci');
    switch($_SERVER['REQUEST_METHOD']) {
        case "GET":
            $sql = "SELECT * FROM felhasznalok";
            $sth = $dbh->query($sql);
            $eredmeny .= "<table class=\"table table-striped table-responsive\"><tr><th>#</th><th>Családi név</th><th>Utónév</th><th>Login név</th><th>Kódolt jelszó</th><th>Email</th><th>Jogosultság</th></tr>";
            while($row = $sth->fetch(PDO::FETCH_ASSOC)) {
                $eredmeny .= "<tr>";
                foreach($row as $column)
                    $eredmeny .= "<td class='\"text-center\"'>".$column."</td>";
                $eredmeny .= "</tr>";
            }
            $eredmeny .= "</table>";
            break;
        case "POST":
            $sql = "insert into felhasznalok values (0, :veznev, :utonev, :felhasznalo, :jelszo, :email, :jogsi)";
            $sth = $dbh->prepare($sql);
            $count = $sth->execute(Array(":veznev"=>$_POST["veznev"], ":utonev"=>$_POST["utonev"], ":felhasznalo"=>$_POST["felhasznalo"], ":jelszo"=>$_POST["jelszo"],":email"=>$_POST["email"], ":jogsi"=>$_POST["jogsi"]));
            $newid = $dbh->lastInsertId();
            $eredmeny .= $count." beszúrt sor: ".$newid;
            break;
        case "PUT":
            $data = array();
            $incoming = file_get_contents("php://input");
            parse_str($incoming, $data);
            $modositando = "id=id"; $params = Array(":id"=>$data["id"]);
            if($data['veznev'] != "") {$modositando .= ", csaladi_nev = :veznev"; $params[":veznev"] = $data["veznev"];}
            if($data['utonev'] != "") {$modositando .= ", utonev = :utonev"; $params[":utonev"] = $data["utonev"];}
            if($data['felhasznalo'] != "") {$modositando .= ", bejelentkezes = :felhasznalo"; $params[":felhasznalo"] = $data["felhasznalo"];}
            if($data['jelszo'] != "") {$modositando .= ", jelszo = :jelszo"; $params[":jelszo"] = sha1($data["jelszo"]);}
            if($data['email'] != "") {$modositando .= ", email = :email"; $params[":email"] = $data["email"];}
            if($data['jogsi'] != "") {$modositando .= ", jogosultsag = :jogsi"; $params[":jogsi"] = $data["jogsi"];}
            $sql = "update felhasznalok set ".$modositando." where id=:id";
            $sth = $dbh->prepare($sql);
            $count = $sth->execute($params);
            $eredmeny .= $count." módositott sor. Azonosítója:".$data["id"];
            break;
        case "DELETE":
            $data = array();
            $incoming = file_get_contents("php://input");
            parse_str($incoming, $data);
            $sql = "delete from felhasznalok where id=:id";
            $sth = $dbh->prepare($sql);
            $count = $sth->execute(Array(":id" => $data["id"]));
            $eredmeny .= $count." sor törölve. Azonosítója:".$data["id"];
            break;
    }
}
catch (PDOException $e) {
    $eredmeny = $e->getMessage();
}
echo $eredmeny;

?>
