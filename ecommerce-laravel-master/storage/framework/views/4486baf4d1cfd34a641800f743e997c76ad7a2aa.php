<?php if(session()->has('success')): ?>
    <div class="alert alert-success">
        <li><?php echo e(session()->get('success')); ?></li>
    </div>
<?php endif; ?>
    
<?php if(session()->has('error')): ?>
    <div class="alert alert-danger">
        <li><?php echo e(session()->get('error')); ?></li>
    </div>
<?php endif; ?><?php /**PATH D:\Kuliah\Smt 4\PWL\Coding PWL\ecommerce-laravel-master-final\ecommerce-laravel-master\resources\views/partials/session.blade.php ENDPATH**/ ?>