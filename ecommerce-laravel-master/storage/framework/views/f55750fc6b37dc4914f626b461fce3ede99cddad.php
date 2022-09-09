<ul class="navbar-nav mr-auto">
    <li class="nav-item <?php echo e(request()->route()->getName() == 'shop.index' ? 'active': ''); ?>">
        <a class="nav-link" href="<?php echo e(route('shop.index')); ?>">Shop</a>
    </li>
    <li class="nav-item">
        <a class="nav-link <?php echo e(request()->route()->getName() == 'cart.index' ? 'active': ''); ?>" href="<?php echo e(route('cart.index')); ?>">
            Cart 
            <?php if(Cart::instance('default')->count() > 0): ?>
                <span class="badge badge-primary">
                    <?php echo e(Cart::instance('default')->count()); ?>

                </span>
            <?php endif; ?>
        </a>
    </li>
</ul><?php /**PATH D:\Kuliah\Smt 4\PWL\Coding PWL\ecommerce-laravel-master-final\ecommerce-laravel-master\resources\views/partials/menu/main.blade.php ENDPATH**/ ?>