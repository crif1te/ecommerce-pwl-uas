<?php $__env->startSection('title', 'Welcome'); ?>
<?php $__env->startSection('content'); ?>

<!-- start hero section -->
<div class="hero-image">
    <div class="hero-content">
        <div class="col-md-4 hero-text">
            <h3>
                Welcome to ABC Store
            </h3>
            <p></p>
            <button class="btn custom-border my-2 my-sm-0"><a class="nav-link" href="<?php echo e(route('shop.index')); ?>">Shop</a></button>
            
        </div>
    </div>
</div>
<!-- end hero section -->
<!-- start page content -->
<div class="container">
    <div class="content-head">
        <h2 style="text-align:center; font-weight: bold"></h2>
        <p style="text-align: center"></h2>
    </div>
    <h2 class="header text-center">Featured Products</h2>
    <!-- start products row -->
    <div class="row">
        <?php $__currentLoopData = $products; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $product): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
            <!-- start single product -->
            <div class="col-md-6 col-sm-12 col-lg-4 product">
                <a href="<?php echo e(route('shop.show', $product->slug)); ?>" class="custom-card">
                    <div class="card view overlay zoom">
                        <img src="<?php echo e(productImage($product->image)); ?>" class="card-img-top img-fluid" alt="...">
                        <div class="card-body">
                            <h5 class="card-title"><?php echo e($product->name); ?><span class="float-right">$ <?php echo e(format($product->price)); ?></span></h5>
                            
                        </div>
                    </div>
                </a>
            </div>
            <!-- end single product -->
        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
    </div>
    <!-- end products row -->
    <div class="show-more">
        <a href="<?php echo e(route('shop.index')); ?>">
            <button class="btn custom-border-n">Show more</button>
        </a>
    </div>
    <hr>
    <h2 class="header text-center">Hot Sales</h2>
    <!-- start products row -->
    <div class="row">
        <?php $__currentLoopData = $hotProducts; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $product): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
            <!-- start single product -->
            <div class="col-md-6 col-sm-12 col-lg-4 product">
                <a href="<?php echo e(route('shop.show', $product->slug)); ?>" class="custom-card">
                    <div class="card view overlay zoom">
                        <img src="<?php echo e(productImage($product->image)); ?>" class="card-img-top img-fluid" alt="...">
                        <div class="card-body">
                            <h5 class="card-title"><?php echo e($product->name); ?><span class="float-right">$ <?php echo e(format($product->price)); ?></span></h5>
                            
                        </div>
                    </div>
                </a>
            </div>
            <!-- end single product -->
        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
    </div>
    <!-- end products row -->
</div>
<!-- end page content -->

<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH D:\Kuliah\Smt 4\PWL\Coding PWL\ecommerce-laravel-master-final\ecommerce-laravel-master\resources\views/welcome.blade.php ENDPATH**/ ?>