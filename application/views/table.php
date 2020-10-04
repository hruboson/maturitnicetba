<div class="container">
	<div class="row pb-2">
		<div class="col-12">
			<div class="h1 text-center pt-5">Tabulka knih <?php if (isset($num)) {
																echo " - " . $menu[$num + 1]->display_polozka;
															} else {
															} ?></div>
		</div>
	</div>
	<div class="row">
		<div class="col-12">
			<div class="row">
				<table class="table table-hover">
					<thead >
						<tr class="bg-dark text-white">
							<th scope="col">Název Knihy</th>
							<th scope="col">Autor</th>
							<th scope="col">Počet stránek</th>
							<th scope="col">Kategorie</th>
						</tr>
					</thead>
					<tbody>
						<?php
						foreach ($table as $row) { ?>
							<tr>
								<th scope="row"><a href="<?php echo base_url('kniha/'.$row->id_knihy)?>"><?php echo $row->nazev_knihy; ?></a></th>
								<td><?php echo $row->autor_knihy; ?></td>
								<td><?php echo $row->pocet_stranek; ?></td>
								<td><?php echo $row->id_kategorie; ?></td>
							</tr>
						<?php } ?>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</div>