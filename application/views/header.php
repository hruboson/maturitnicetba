<!DOCTYPE html>
<html>

<head>
    <title><?php echo $title; ?></title>
    <!--link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"-->
    <!-- bootstrap online -->
    <link rel="stylesheet" href="<?php echo base_url('assets/bootstrap/css/bootstrap.min.css') ?>">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script> <!-- jquery online -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script> <!-- popper js -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script> <!-- bootstrap js -->
    <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
    <script type="text/javascript">
        (function() {
            var css = document.createElement('link');
            css.href = 'https://use.fontawesome.com/releases/v5.1.0/css/all.css';
            css.rel = 'stylesheet';
            css.type = 'text/css';
            document.getElementsByTagName('head')[0].appendChild(css);
        })();
    </script> <!-- načte font awesome před obsahem stránky => není vidět že se načítají pomalu -->
    <link rel="stylesheet/less" type="text/css" href="<?php echo base_url('assets/less/styles.less'); ?>" /> <!-- less -->
    <script src="//cdn.jsdelivr.net/npm/less"></script>
</head>

<body>
    <div class="container-fullwidth mb-5">
        <!-- Start fluid container for nav-->
        <div class="sticky-top">
            <!-- Start NAV -->
            <div class="d-flex justify-content-lg-center justify-content-md-center justify-content-sm-between w-100">
                <nav id="main-navbar" class="navbar navbar-full bg-dark navbar-expand-lg w-100">
                    <button class="navbar-toggler navbar-toggler-left pl-0" type="button" data-toggle="collapse" data-target="#navbar-collapse">
                        <span class="navbar-toggler-icon text-white mb-2"><i class="fas fa-bars fa-2x"></i></span>
                    </button>
                    <div class="navbar-collapse collapse" id="navbar-collapse">
                        <ul class="navbar-nav">
                            <?php foreach ($menu as $row) { ?>
                                <li class="nav-item">
                                    <a class="text-white" href="<?php echo base_url($row->polozka_menu); ?>"><button type="button" class="btn btn-warning" style="margin-right: 10px;"><?php echo $row->display_polozka; ?></button></a>
                                </li>
                            <?php } ?>
                            <li class="nav-item dropdown">
                                <button class="nav-link dropdown-toggle btn btn-warning" type="button" style="margin-right: 10px;" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    Uživatel
                                </button>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <?php if($this->session->userdata('logged_in')){?>
                                    <a class="dropdown-item" href="<?php echo base_url('kniha/pridat'); ?>"><button type="button" class="btn btn-warning" style="margin-right: 10px;">Přidat knihu</button></a>
                                    <?php }else{ ?>
                                    <a class="dropdown-item" href="<?php echo base_url('auth/create_user'); ?>"><button type="button" class="btn btn-warning" style="margin-right: 10px;">Registrace</button></a>
                                    <a class="dropdown-item" href="<?php echo base_url('auth/login'); ?>"><button type="button" class="btn btn-warning" style="margin-right: 10px;">Přihlásit se</button></a>
                                    <?php } ?>
                                    <?php if($this->session->userdata('logged_in')){?>
                                    <a class="dropdown-item" href="<?php echo base_url('auth/logout'); ?>"><button type="button" class="btn btn-warning" style="margin-right: 10px;">Odhlásit se</button></a>
                                    <?php }else{} ?>
                                </div>
                            </li>            
                            <?php if($this->session->userdata('logged_in')){?>
                            <li class="nav-item" style="padding-left: 10px; padding-right: 10px;">
                                <div class="row bg-info">
                                    <b>Přihlášený uživatel:</b>
                                </div>
                                <div class="row bg-info">
                                    <?php echo $this->session->userdata('identity'); ?>
                                </div>
                            </li>
                           <?php }else{} ?>
                        </ul>
                    </div>
                </nav>
            </div>
        </div> <!-- End NAV -->
    </div> <!-- end fluid container -->
    <!-- End NAV -->