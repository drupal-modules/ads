<?php if (path_is_admin(current_path())): ?>
	<div class="page-columns">
		<div class="page-column-main-menu" />
			<a class="go-to-administration-page" href="/admin"><i class="fa fa-gears" /></i><span><?php echo t('Administration'); ?></span></a>
			<div class="tabs">
				<?php if (isset($tabs)): ?>
					<?php print render($tabs); ?>
				<?php endif; ?>
				<?php if (isset($tabs2)): ?>
					<?php print render($tabs2); ?>
				<?php endif; ?>
				
				<div class="groups">
					<div class="group">
						<div class="title"><?php echo t('Content'); ?></div>
						<ul class="tabs">
							<li><a href="/node/add">Create content</a></li>
							<li><a href="/admin/content">List content</a></li>
							<li><a href="/admin/structure/types">List content types</a></li>
							<li><a href="/admin/structure/types/add">Create content type</a></li>
						</ul>
						<div class="title"><?php echo t('Taxonomies'); ?></div>
						<ul class="tabs">
							<li><a href="/admin/structure/taxonomy">List taxonomies</a></li>
							<li><a href="/admin/structure/taxonomy/add">Create taxonomy</a></li>
						</ul>
						<div class="title"><?php echo t('Features'); ?></div>
						<ul class="tabs">
							<li><a href="/admin/structure/features">List features</a></li>
							<li><a href="/admin/structure/features/create">Create feature</a></li>
						</ul>
						<div class="title"><?php echo t('Development'); ?></div>
						<ul class="tabs">
							<li><a href="#">Clear all cache</a></li>
							<li><a href="#">Run cron job</a></li>
						</ul>
						<div class="title"><?php echo t('Other'); ?></div>
						<ul class="tabs">
							<li><a href="/admin/modules">List modules</a></li>
							<li><a href=""></a></li>
							<li><a href=""></a></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="page-column-main-menu-back" /></div>
		</div>
		<div class="page-column-content">
			<div class="top-toolbox">
				<a href="#">
					<i class="fa fa-bars fa-lg"></i>
				</a>
				<a href="/admin">
					<i class="fa fa-home fa-lg"></i>
				</a>

				<div class="right">
					<a href="/user">
						<i class="fa fa-fw fa-power-off text-danger"></i> Logged as <strong><?php echo $user->name; ?></strong>
					</a>
					<a href="/user/logout">
						<i class="fa fa-fw fa-power-off text-danger"></i> Logout
					</a>
				</div>
			</div>
			<div class="current-page-title">
				<i class="fa fa-2x fa-fw fa-arrow-circle-right text-gray-light"></i> <span class="title-text"><?php echo $title; ?></span>
			</div>
<?php endif; ?>

<div class="page-header">
	<?php if (!path_is_admin(current_path())): ?>
		<div class="tabs">
			<?php if (isset($tabs)): ?>
				<?php print render($tabs); ?>
			<?php endif; ?>

			<?php if (isset($tabs2)): ?>
				<?php print render($tabs2); ?>
			<?php endif; ?>
		</div>
	<?php endif; ?>


  <?php print $messages; ?>
  <?php print render($page['header']); ?>
</div>
<div class="page-content">
  <?php print render($page['content']); ?>
</div>
<?php if (path_is_admin(current_path())): ?>
		<?php /* Closing page-column-content */ ?>
		</div>
	<?php /* Closing page-columns */ ?>
	</div>

<?php endif; ?>

<div class="page-footer">
  <?php print render($page['footer']); ?>
</div>
