<?php if(count($errors) > 0): ?>
<?php $__currentLoopData = $errors->all(); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $error): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
    <div class="alert alert-danger">
        <li><?php echo $error; ?></li>
    </div>
<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
<?php endif; ?><?php /**PATH D:\Kuliah\Smt 4\PWL\Coding PWL\ecommerce-laravel-master-final\ecommerce-laravel-master\resources\views/partials/errors.blade.php ENDPATH**/ ?>