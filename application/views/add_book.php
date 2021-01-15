<div class="container">
    <div class="row"> <!-- row -->
        <div class="col-12 mb-3">
            <div class="h1 text-center">Přidat knihu</div>
        </div>
    </div>
    <form method="post" action="<?php echo base_url('kniha/add')?>">
    <div class="row pb-2">
        <div class="col-3"><div class="h3">Zadejte název knihy:</div></div>
        <div class="col-3"><input type="text" name="nazev-knihy" class="mb-1 form-control" placeholder="Název knihy" required></div>
        <div class="col-3"><div class="h3">Zadejte autora:</div></div>
        <div class="col-3"><input type="text" name="nazev-autora" class="mb-1 form-control" placeholder="Název autora" required></div>
    </div>
    <div class="col-12 p text-center bg-warning mb-1 text-white rounded"><?php echo $this->session->flashdata('pridana');?></div>
    <div class="row pb-2">
        <div class="col-3"><div class="h3">Vyberte kategorii knihy:</div></div>
        <div class="col-3">
            <select name="id-kategorie" id="select-group" class="form-control" required>
                <?php foreach($categories as $category){ ?>
                    <option value="<?php echo $category->id_kategorie ?>"><?php echo $category->nazev_kategorie ?></option>
                <?php } ?>
            </select>
        </div>
        <div class="col-3"><div class="h3">Počet stránek:</div></div>
        <div class="col-3"><input type="number" min="1" name="pocet-stranek" class="mb-1 form-control" placeholder="Počet stránek" required></div>
    </div>
    <div class="row pb-2">
        <div class="col-4"><div class="h3">Odkaz na přebal knihy:</div></div>
        <div class="col-8"><input type="text" name="prebal-knihy" class="mb-1 form-control" placeholder="Přebal knihy"></div>
    </div>
    <div class="form-group">
        <label class="h3" for="anotace">Anotace:</label>
        <textarea class="form-control" rows="3" id="anotace" name="anotace"></textarea>
    </div>
    <div class="col-12">
        <button type="submit" value="submit" name="submit1" class="btn btn-primary btn-block btn-lg">Přidat knihu</button>
    </div>
    </form>
</div>