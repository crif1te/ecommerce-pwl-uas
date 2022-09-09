<?php $__env->startComponent('mail::message'); ?>
Your Order is sent successfully!

<h3>Order: </h3>
<li>mail : <?php echo e($order->billing_email); ?></li>
<li>Name : <?php echo e($order->billing_name); ?></li>
<li>Total : <?php echo e($order->billing_total); ?></li>
<h4>products: </h4>
<?php $__currentLoopData = $order->products; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $product): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
    <?php echo e($product->name); ?> : <?php echo e($product->pivot->quantity); ?>

<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

<?php $__env->startComponent('mail::button', ['url' => config('app.url')]); ?>
Go To The Site
<?php echo $__env->renderComponent(); ?>

Thanks,<br>
<?php echo e(config('app.name')); ?>

<?php echo $__env->renderComponent(); ?>
<?php /**PATH D:\Kuliah\Smt 4\PWL\Coding PWL\ecommerce-laravel-master-final\ecommerce-laravel-master\resources\views/emails/orders/placed.blade.php ENDPATH**/ ?>