<?php $__env->startSection('content'); ?>
			        <div class="col-md-6 col-md-offset-0">
			            <div class="panel panel-primary">
			                <div class="panel-heading">Data Pegawai</div>
			                <div class="panel-body">
	
			                	<table border="2" class="table table-success table-border table-hover">
									<thead >
										<tr class="bg-primary">
											<th>No</th>
											<th>NIP</th>
											<th>Jabatan</th>
											<th>Golongan</th>
											<th>Photo</th>
											<th colspan="2"><center>Pilihan</center></th>

										</tr>
									</thead>
									<?php  $no=1;  ?>
									<tbody>
										<?php $__currentLoopData = $pegawai; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $pegawais): $__env->incrementLoopIndices(); $loop = $__env->getFirstLoop(); ?>
										<tr>
											<td><?php echo e($no++); ?></td>
											<td><?php echo e($pegawais->nip); ?></td>
											<td><?php echo e($pegawais->Jabatan->nama_jabatan); ?></td>
											<td><?php echo e($pegawais->Golongan->nama_golongan); ?></td>
											<td> <img src="assets/image/<?php echo e($pegawais->photo); ?>" width="50" height="50"></td>
											<td>
												<a href="<?php echo e(route('pegawai.edit',$pegawais->id)); ?>" class='btn btn-warning'> Edit </a>
											</td>
											<td>
												<?php echo Form::open(['method'=>'DELETE','route'=>['pegawai.destroy',$pegawais->id]]); ?>

												<?php echo Form::submit('Delete',['class'=>'btn btn-danger']); ?>

												<?php echo Form::close(); ?>

											</td>				

										</tr>
										<?php endforeach; $__env->popLoop(); $loop = $__env->getFirstLoop(); ?>
									</tbody>
								</table>
			                </div>
			            </div>
			        </div>
			        <div class="col-md-6 ">
			            <div class="panel panel-primary">
			                <div class="panel-heading">Data User</div>
			                <div class="panel-body">
			                	<table border="2" class="table table-success table-border table-hover">
									<thead >
										<tr class="bg-primary">
											<th>Nama</th>
											<th>Permission</th>
											<th>Email</th>
											
										</tr>
									</thead>
									<?php  $no=1;  ?>
									<tbody>
										<?php $__currentLoopData = $pegawai; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $pegawais): $__env->incrementLoopIndices(); $loop = $__env->getFirstLoop(); ?>
										<tr>
											<td><?php echo e($pegawais->User->name); ?></td>
											<td><?php echo e($pegawais->User->permision); ?></td>
											<td><?php echo e($pegawais->User->email); ?></td>
											
											
										</tr>
										<?php endforeach; $__env->popLoop(); $loop = $__env->getFirstLoop(); ?>
									</tbody>
								</table>
			                </div>
			            </div>
			        </div>
					
			        <a  href="<?php echo e(url('pegawai/create')); ?>" class="btn btn-primary form-control">Tambah</a>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.app', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>