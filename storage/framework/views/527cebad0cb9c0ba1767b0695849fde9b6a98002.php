<?php $__env->startSection('content'); ?>
<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-primary">
                <div class="panel-heading">Tambah Jabatan</div>
                <div class="panel-body">
 <form class="form-horizontal" role="form" method="POST" action="<?php echo e(url('/jabatan')); ?>">
                        <?php echo e(csrf_field()); ?>


                        <div class="form-group<?php echo e($errors->has('kode_jabatan') ? ' has-error' : ''); ?>">
                            <label for="kode_jabatan" class="col-md-4 control-label">Kode Jabatan</label>

                            <div class="col-md-6">
                                <input id="kode_jabatan" type="text" class="form-control" name="kode_jabatan" value="<?php echo e(old('kode_jabatan')); ?>"  autofocus>

                                <?php if($errors->has('kode_jabatan')): ?>
                                    <span class="help-block">
                                        <strong><?php echo e($errors->first('kode_jabatan')); ?></strong>
                                    </span>
                                <?php endif; ?>
                            </div>
                        </div>

                        <div class="form-group<?php echo e($errors->has('nama_jabatan') ? ' has-error' : ''); ?>">
                            <label for="nama_jabatan" class="col-md-4 control-label">Nama Jabatan</label>

                            <div class="col-md-6">
                                <input id="nama_jabatan" type="nama_jabatan" class="form-control" name="nama_jabatan" value="<?php echo e(old('nama_jabatan')); ?>" >

                                <?php if($errors->has('nama_jabatan')): ?>
                                    <span class="help-block">
                                        <strong><?php echo e($errors->first('nama_jabatan')); ?></strong>
                                    </span>
                                <?php endif; ?>
                            </div>
                        </div>

                        <div class="form-group<?php echo e($errors->has('besaran_uang') ? ' has-error' : ''); ?>">
                            <label for="besaran_uang" class="col-md-4 control-label">Besaran Uang</label>

                            <div class="col-md-6">
                                <input id="besaran_uang" type="besaran_uang" class="form-control" name="besaran_uang" >

                                <?php if($errors->has('besaran_uang')): ?>
                                    <span class="help-block">
                                        <strong><?php echo e($errors->first('besaran_uang')); ?></strong>
                                    </span>
                                <?php endif; ?>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-md-6 col-md-offset-4">
                                <button type="submit" class="btn btn-primary form-control">
                                    Simpan
                                </button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<?php $__env->stopSection(); ?>















<?php echo $__env->make('layouts.app', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>