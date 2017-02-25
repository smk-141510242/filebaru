<?php $__env->startSection('content'); ?>

<div class="container">
	<div class="panel panel-info">
		<div class="panel-heading">KategoryLembur</div>
		<div class="panel-body">
		<a class="btn btn-primary" href="<?php echo e(url('lemburkate/create')); ?>">Tambah Data</a><br><br>
			<table class="table table-striped table-bordered table-hover">
				<thead>
					<tr class="bg-primary">
						<th>No</th>
						<th>Kode Lembur</th>
						<th>Nama Jabatan</th>
						<th>Nama Golongan</th>
						<th>Besaran Uang</th>
						<th colspan="3">Pilihan</th>
					</tr>
				</thead>

				<?php $no=1; ?>
				<?php $__currentLoopData = $lembur; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $lemburs): $__env->incrementLoopIndices(); $loop = $__env->getFirstLoop(); ?>
				<tbody>
					<tr> 
						<td> <?php echo e($no++); ?> </td>
						<td> <?php echo e($lemburs->kode_lembur); ?> </td>
						<td> <?php echo e($lemburs->Jabatan->nama_jabatan); ?> </td>
						<td> <?php echo e($lemburs->Golongan->nama_golongan); ?> </td>
						<td> Rp.<?php echo e($lemburs->besaran_uang); ?> </td>						
						<td>
							<a class="btn btn-xs btn-info" href=" <?php echo e(route('lemburkate.edit', $lemburs->id)); ?> ">Ubah</a>
						</td>
						<td>
							<form method="POST" action=" <?php echo e(route('lemburkate.destroy', $lemburs->id)); ?> ">
								<?php echo e(csrf_field()); ?>

								<input type="hidden" name="_method" value="DELETE">
								<input class="btn btn-xs btn-danger" onclick="return confirm('Apakah yakin ingin menghapus data ?');" type="submit" value="Hapus">
							</form>
						</td>
					</tr>
				</tbody>
				<?php endforeach; $__env->popLoop(); $loop = $__env->getFirstLoop(); ?>
			</table>
		</div>
	</div>
</div>

<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.app', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>