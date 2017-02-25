<?php $__env->startSection('content'); ?>

<div class="container">
	<div class="panel panel-info">
		<div class="panel-heading">LemburPegawai</div>
		<div class="panel-body">
		<a class="btn btn-primary" href="<?php echo e(url('lemburp/create')); ?>">Tambah Data</a><br><br>
			<table class="table table-striped table-bordered table-hover">
				<thead>
					<tr class="bg-primary">
						<th>No</th>
						<th>Kode Lembur Id</th>
						<th>Pegawai Nip</th>
						<th>Jumlah Jam</th>
						<th colspan="3">Pilihan</th>
					</tr>
				</thead>

				<?php $no=1; ?>
				<?php $__currentLoopData = $lempegawai; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $lempegawais): $__env->incrementLoopIndices(); $loop = $__env->getFirstLoop(); ?>
				<tbody>
					<tr> 
						<td> <?php echo e($no++); ?> </td>
						<td> <?php echo e($lempegawais->KategoryLembur->kode_lembur); ?> </td>
						<td> <?php echo e($lempegawais->Pegawai->nip); ?> </td>
						<td> <?php echo e($lempegawais->jumlah_jam); ?> </td>						
						<td>
							<a class="btn btn-xs btn-info" href=" <?php echo e(route('lemburp.edit', $lempegawais->id)); ?> ">Ubah</a>
						</td>
						<td>
							<form method="POST" action=" <?php echo e(route('lemburp.destroy', $lempegawais->id)); ?> ">
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