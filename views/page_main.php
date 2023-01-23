<!DOCTYPE html>
<html lang="hu">
    <head>
        <meta charset="utf-8" name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
        <link rel="stylesheet" type="text/css" href="<?php echo SITE_ROOT?>css/main_style.css">
        <?php if($viewData['style']) echo '<link rel="stylesheet" type="text/css" href="'.$viewData['style'].'">'; ?>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
        <?php if($viewData['js']) echo '<script type="text/javascript" src="'.$viewData['js'].'"></script>'; ?>
        <title>Renew Kft.</title>
    </head>
    <body>
        <header>
                <div class="p-1 d-flex justify-content-right" style="background-color: #7bbad8" id="user">
                <span class="fs-5 fst-italic fw-bolder"><?= $_SESSION['userlastname']." ".$_SESSION['userfirstname'] ?></span>
            </div>
        </header>
        <nav class="navbar navbar-expand-lg navbar-light" id="navbar_mine" style="background-color: #7bbad8">
            <div class="container-fluid">
                        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarColor02" aria-controls="#navbarColor02" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                            </button>
                        <div class="collapse navbar-collapse" id="navbarColor02">
                            <?php echo Menu::getMenu($viewData['selectedItems']); ?>
                    </div>
                </div>
        </nav>
        <section class="container-md">
            <?php if($viewData['render']) include($viewData['render']);?>    
            <br>
            <br>
            <br>   
        </section>
        <footer>
            <div>
                <div class="fixed-bottom p-3 d-flex justify-content-center" style="background-color: #7bbad8"><?php echo date('Y'); ?> &copy; ReNew kft. - Site provided by Keresztes Zoltán Gábor</div>
            </div>
        </footer>
    </body>
</html>
