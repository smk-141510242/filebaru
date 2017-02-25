<?php $__env->startSection('content'); ?>

<div class="container">
	<div class="panel panel-info">
		<div class="panel-heading">Tunjangan</div>
		<div class="panel-body">
		<a class="btn btn-primary" href="<?php echo e(url('tunjangan/create')); ?>">Tambah Data</a><br><br>
			<table class="table table-striped table-bordered table-hover">
				<thead>
					<tr class="bg-primary">
						<th>No</th>
						<th>Kode Tunjangan</th>
						<th>Nama Golongan</th>
						<th>Nama Jabatan</th>
						<th>Besar Uang</th>
						<th>Status</th>
						<th>Jumlah Anak</th>
						<th colspan="2"><center>Action</center></th>
					</tr>
				</thead>

				<?php $no=1; ?>
				<?php $__currentLoopData = $tunjangan; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $data): $__env->incrementLoopIndices(); $loop = $__env->getFirstLoop(); ?>
				<tbody>
					<tr> 
						<td><?php echo e($no++); ?></td>
						<td><?php echo e($data->kode_tunjangan); ?></td>
						<td><?php echo e($data->Golongan->nama_golongan); ?></td>
						<td><?php echo e($data->Jabatan->nama_jabatan); ?></td>
						<td>Rp.<?php echo e($data->besaran_uang); ?></td>
						<td><?php echo e($data->status); ?></td>
						<td><?php echo e($data->jumlah_anak); ?></td>			
						<td>
							<a class="btn btn-xs btn-info" href=" <?php echo e(route('tunjangan.edit', $data->id)); ?> ">Ubah</a>
						</td>
						<td>
							<form method="POST" action=" <?php echo e(route('tunjangan.destroy', $data->id)); ?> ">
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