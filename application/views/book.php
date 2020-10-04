<div class="container">
    <div class="row">
        <div class="col-12 text-center mt-3 mb-5">
            <div class="display-1">
                <?php echo $kniha->nazev_knihy; ?>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-6">
            <div class="display-4 text-center">Anotace</div>
            <div class="p text-justify"><?php echo $kniha->anotace;?></div>
        </div>
        <div class="col-6">
            <div class="display-4 text-center">Přebal knihy</div>
            <img class="img img-fluid rounded mx-auto d-block" src="<?php echo $kniha->prebal_knihy;?>">
        </div>
    </div>
</div>