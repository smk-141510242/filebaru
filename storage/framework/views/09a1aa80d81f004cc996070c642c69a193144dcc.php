<?php $__env->startSection('lemburp'); ?>
    active
<?php $__env->stopSection(); ?>
<?php $__env->startSection('content'); ?>
<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-primary">
                <div class="panel-heading">Tambah LemburPegawai</div>
                <div class="panel-body">
                    <form class="form-horizontal" role="form" method="POST" action="<?php echo e(url('/lemburp')); ?>">
                        <?php echo e(csrf_field()); ?>


                        <div class="form-group<?php echo e($errors->has('kode_lembur_id') ? ' has-error' : ''); ?>">
                            <label for="kode_lembur_id" class="col-md-4 control-label">Kode Lembur</label>

                            <div class="col-md-6">
                                <select name="kode_lembur_id" class="form-control">
                                    <option value="">pilih</option>
                                    <?php $__currentLoopData = $lembur; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $data): $__env->incrementLoopIndices(); $loop = $__env->getFirstLoop(); ?>
                                    <option value="<?php echo e($data->id); ?>"><?php echo e($data->kode_lembur); ?></option>
                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getFirstLoop(); ?>
                                </select>

                                <?php if($errors->has('kode_lembur_id')): ?>
                                    <span class="help-block">
                                        <strong><?php echo e($errors->first('kode_lembur_id')); ?></strong>
                                    </span>
                                <?php endif; ?>
                            </div>
                        </div>

                        

                        <div class="form-group<?php echo e($errors->has('pegawai_id') ? ' has-error' : ''); ?>">
                            <label for="pegawai_id" class="col-md-4 control-label">Nip</label>

                            <div class="col-md-6">
                                <select name="pegawai_id" class="form-control">
                                    <option value="">pilih</option>
                                    <?php $__currentLoopData = $pegawai; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $data): $__env->incrementLoopIndices(); $loop = $__env->getFirstLoop(); ?>
                                    <option value="<?php echo e($data->id); ?>"><?php echo e($data->nip); ?></option>
                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getFirstLoop(); ?>
                                </select>

                                <?php if($errors->has('pegawai_id')): ?>
                                    <span class="help-block">
                                        <strong><?php echo e($errors->first('pegawai_id')); ?></strong>
                                    </span>
                                <?php endif; ?>
                            </div>
                        </div>

                       
                        <div class="form-group<?php echo e($errors->has('jumlah_jam') ? ' has-error' : ''); ?>">
                            <label for="jumlah_jam" class="col-md-4 control-label">Jumlah jam </label>

                            <div class="col-md-6">
                                <input id="jumlah_jam" type="text" class="form-control" name="jumlah_jam" value="<?php echo e(old('jumlah_jam')); ?>"  autofocus>

                                <?php if($errors->has('jumlah_jam')): ?>
                                    <span class="help-block">
                                        <strong><?php echo e($errors->first('jumlah_jam')); ?></strong>
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