<?php
        switch ($_POST['key']) {
            case 'gyart':
                $res = array("elemek" => array());
                try {
                    $dbh = new PDO('mysql:host=localhost;dbname=renew', 'root', '',
                        array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION));
                    $dbh->query('SET NAMES utf8 COLLATE utf8_hungarian_ci');
                    $sth = $dbh->query("select distinct gyarto from gep order by gyarto asc");
                    //$sth->execute(array(":id" => $_POST["id"]));
                    while ($row = $sth->fetch(PDO::FETCH_ASSOC)) {
                        $res["elemek"][] = array("gyarto" => $row["gyarto"]);
                    }
                } catch
                (PDOException $e) {
                }
                echo json_encode($res);
                break;

            case 'gepek':
                $res = array("elemek" => array());
                try {
                    $dbh = new PDO('mysql:host=localhost;dbname=renew', 'root', '',
                        array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION));
                    $dbh->query('SET NAMES utf8 COLLATE utf8_hungarian_ci');
                    $sth = $dbh->query("select gep.id, .gep.gyarto, gep.tipus, kijelzo, memoria, merevlemez, processzor.proci_gyarto, processzor.proci_tipus, oprendszer.nev, videovezerlo, db, ar from gep inner join oprendszer on gep.oprendszerid=oprendszer.id inner join processzor on gep.processzorid=processzor.id");

                    while ($row = $sth->fetch(PDO::FETCH_ASSOC)) {
                        $res["elemek"][] = array("id" => $row["id"], "gyarto" => $row["gyarto"], "tipus" => $row["tipus"], "kijelzo" => $row["kijelzo"],
                            "memoria" => $row["memoria"], "merevlemez" => $row["merevlemez"], "proci_gyarto" => $row["proci_gyarto"], "proci_tipus" => $row["proci_tipus"], "op_nev" => $row["nev"], "videovezerlo" => $row['videovezerlo'], "db" => $row["db"], "ar"=>$row["ar"]);
                    }
                } catch
                (PDOException $e) {
                }
                echo json_encode($res);
                break;

            case 'pro':
                $res = array('elemek' => array());
                try {
                    $dbh = new PDO('mysql:host=localhost;dbname=renew', 'root', '',
                        array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION));
                    $dbh->query('SET NAMES utf8 COLLATE utf8_hungarian_ci');
                    $sth = $dbh->query("select distinct proci_gyarto from processzor order by proci_gyarto asc");
                    while ($row = $sth->fetch(PDO::FETCH_ASSOC)) {
                        $res["elemek"][] = array("proci_gyarto" => $row["proci_gyarto"]);
                    }
                } catch
                (PDOException $e) {
                }
                echo json_encode($res);
                break;

            case 'proupdate':
                $res = array("elemek" => array());
                try {
                    $dbh = new PDO('mysql:host=localhost;dbname=renew', 'root', '',
                        array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION));
                    $dbh->query('SET NAMES utf8 COLLATE utf8_hungarian_ci');
                    $sth = $dbh->query("select gep.id, .gep.gyarto, gep.tipus, kijelzo, memoria, merevlemez, processzor.proci_gyarto, processzor.proci_tipus, oprendszer.nev, videovezerlo, db, ar from gep inner join oprendszer on gep.oprendszerid=oprendszer.id inner join processzor on gep.processzorid=processzor.id");

                    while ($row = $sth->fetch(PDO::FETCH_ASSOC)) {
                        $res["elemek"][] = array("id" => $row["id"], "gyarto" => $row["gyarto"], "tipus" => $row["tipus"], "kijelzo" => $row["kijelzo"],
                            "memoria" => $row["memoria"], "merevlemez" => $row["merevlemez"], "proci_gyarto" => $row["proci_gyarto"], "proci_tipus" => $row["proci_tipus"], "op_nev" => $row["nev"], "videovezerlo" => $row['videovezerlo'], "db" => $row["db"], "ar"=>$row["ar"]);
                    }
                } catch
                (PDOException $e) {
                }
                echo json_encode($res);
                break;

            case 'os':
                $res = array('elemek' => array());
                try {
                    $dbh = new PDO('mysql:host=localhost;dbname=renew', 'root', '',
                        array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION));
                    $dbh->query('SET NAMES utf8 COLLATE utf8_hungarian_ci');
                    $sth = $dbh->query("select id, nev from oprendszer order by nev asc");
                    while ($row = $sth->fetch(PDO::FETCH_ASSOC)) {
                        $res["elemek"][] = array("id" => $row["id"],"nev"=>$row["nev"]);
                    }
                } catch
                (PDOException $e) {
                }
                echo json_encode($res);
                break;

            case 'osupdate':
                $res = array("elemek" => array());
                try {
                    $dbh = new PDO('mysql:host=localhost;dbname=renew', 'root', '',
                        array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION));
                    $dbh->query('SET NAMES utf8 COLLATE utf8_hungarian_ci');
                    $sth = $dbh->query("select gep.id, .gep.gyarto, gep.tipus, kijelzo, memoria, merevlemez, processzor.proci_gyarto, processzor.proci_tipus, oprendszer.nev, videovezerlo, db, ar from gep inner join oprendszer on gep.oprendszerid=oprendszer.id inner join processzor on gep.processzorid=processzor.id");

                    while ($row = $sth->fetch(PDO::FETCH_ASSOC)) {
                        $res["elemek"][] = array("id" => $row["id"], "gyarto" => $row["gyarto"], "tipus" => $row["tipus"], "kijelzo" => $row["kijelzo"],
                            "memoria" => $row["memoria"], "merevlemez" => $row["merevlemez"], "proci_gyarto" => $row["proci_gyarto"], "proci_tipus" => $row["proci_tipus"], "op_nev" => $row["nev"], "videovezerlo" => $row['videovezerlo'], "db" => $row["db"], "ar"=>$row["ar"]);
                    }
                } catch
                (PDOException $e) {
                }
                echo json_encode($res);
                break;
        }


?>