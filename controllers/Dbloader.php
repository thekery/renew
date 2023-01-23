<?php
if(isset($_POST['gepgomb'])){
    if(file_exists('./files/gep.txt'))
    {
        try{

            $dbh = new PDO('mysql:host=localhost;dbname=renew', 'root', '', array(PDO::ATTR_ERRMODE=>PDO::ERRMODE_EXCEPTION));
            $dbh->query('SET NAMES utf8 COLLATE utf8_hungarian_ci');
            $filename = new SplFileObject('files/gep.txt');

            while(!$filename->eof())
            {
                $line = $filename->fgets();

                list($gyarto, $tipus, $kijelzo, $memoria, $merevlemez, $videovezerlo, $ar, $processzorid, $oprendszerid, $db) = explode("\t",$line);

                $sql = "INSERT INTO `gep` VALUES (?,?,?,?,?,?,?,?,?,?,?)";
                $stmt = $dbh->prepare($sql);
                $stmt->bindValue(1,0,PDO::PARAM_STR);
                $stmt->bindValue(2,$gyarto,PDO::PARAM_STR);
                $stmt->bindValue(3,$tipus,PDO::PARAM_STR);
                $stmt->bindValue(4,$kijelzo,PDO::PARAM_STR);
                $stmt->bindValue(5,$memoria,PDO::PARAM_STR);
                $stmt->bindValue(6,$merevlemez,PDO::PARAM_STR);
                $stmt->bindValue(7,$videovezerlo,PDO::PARAM_STR);
                $stmt->bindValue(8,$ar,PDO::PARAM_STR);
                $stmt->bindValue(9,$processzorid,PDO::PARAM_STR);
                $stmt->bindValue(10,$oprendszerid,PDO::PARAM_STR);
                $stmt->bindValue(11,$db,PDO::PARAM_STR);
                $stmt->execute();
            }
        }
        catch (PDOException $e)
        {
            $uzenet = "Hiba: ".$e->getMessage();
        }

    }else
    {
        echo "<script> alert('Nem elérhető a forrás.');</script>";
    }

}

if(isset($_POST['processgomb'])){
    if(file_exists('./files/processzor.txt'))
    {
        try{

            $dbh = new PDO('mysql:host=localhost;dbname=renew', 'root', '', array(PDO::ATTR_ERRMODE=>PDO::ERRMODE_EXCEPTION));
            $dbh->query('SET NAMES utf8 COLLATE utf8_hungarian_ci');
            $filename = new SplFileObject('files/processzor.txt');

            while(!$filename->eof())
            {
                $line = $filename->fgets();

                list($id,$gyarto,$tipus) = explode("\t",$line);

                $sql = "INSERT INTO `processzor` VALUES (?,?,?)";
                $stmt = $dbh->prepare($sql);
                $stmt->bindValue(1,$id,PDO::PARAM_STR);
                $stmt->bindValue(2,$gyarto,PDO::PARAM_STR);
                $stmt->bindValue(3,$tipus,PDO::PARAM_STR);
                $stmt->execute();
            }
        }
        catch (PDOException $e) {
            $uzenet = "Hiba: ".$e->getMessage();
        }
    }else
    {
        echo "<script> alert('Nem elérhető a forrás.');</script>";
    }
}

if(isset($_POST['osgomb'])){
    if(file_exists('./files/oprendszer.txt'))
    {
        try{
            $dbh = new PDO('mysql:host=localhost;dbname=renew', 'root', '', array(PDO::ATTR_ERRMODE=>PDO::ERRMODE_EXCEPTION));
            $dbh->query('SET NAMES utf8 COLLATE utf8_hungarian_ci');
            $filename = new SplFileObject('files/oprendszer.txt');

            while(!$filename->eof())
            {
                $line = $filename->fgets();

                list($id,$nev) = explode("\t",$line);

                $sql = "INSERT INTO `oprendszer` VALUES (?,?)";
                $stmt = $dbh->prepare($sql);
                $stmt->bindValue(1,$id,PDO::PARAM_STR);
                $stmt->bindValue(2,$nev,PDO::PARAM_STR);
                $stmt->execute();
            }
        }
        catch (PDOException $e) {
            $uzenet = "Hiba: ".$e->getMessage();
        }
    }
    else
    {
        echo "<script> alert('Nem elérhető a forrás.');</script>";
    }
}
?>