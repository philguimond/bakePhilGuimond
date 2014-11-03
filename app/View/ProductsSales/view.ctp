
<div id="page-container" class="row">

	<div id="sidebar" class="col-sm-3">
		
		<div class="actions">
			
			<ul class="list-group">			
						<li class="list-group-item"><?php echo $this->Html->link(__('Edit Products Sale'), array('action' => 'edit', $productsSale['ProductsSale']['id']), array('class' => '')); ?> </li>
		<li class="list-group-item"><?php echo $this->Form->postLink(__('Delete Products Sale'), array('action' => 'delete', $productsSale['ProductsSale']['id']), array('class' => ''), __('Are you sure you want to delete # %s?', $productsSale['ProductsSale']['id'])); ?> </li>
		<li class="list-group-item"><?php echo $this->Html->link(__('List Products Sales'), array('action' => 'index'), array('class' => '')); ?> </li>
		<li class="list-group-item"><?php echo $this->Html->link(__('New Products Sale'), array('action' => 'add'), array('class' => '')); ?> </li>
		<li class="list-group-item"><?php echo $this->Html->link(__('List Sales'), array('controller' => 'sales', 'action' => 'index'), array('class' => '')); ?> </li>
		<li class="list-group-item"><?php echo $this->Html->link(__('New Sale'), array('controller' => 'sales', 'action' => 'add'), array('class' => '')); ?> </li>
		<li class="list-group-item"><?php echo $this->Html->link(__('List Products'), array('controller' => 'products', 'action' => 'index'), array('class' => '')); ?> </li>
		<li class="list-group-item"><?php echo $this->Html->link(__('New Product'), array('controller' => 'products', 'action' => 'add'), array('class' => '')); ?> </li>
				
			</ul><!-- /.list-group -->
			
		</div><!-- /.actions -->
		
	</div><!-- /#sidebar .span3 -->
	
	<div id="page-content" class="col-sm-9">
		
		<div class="productsSales view">

			<h2><?php  echo __('Products Sale'); ?></h2>
			
			<div class="table-responsive">
				<table class="table table-striped table-bordered">
					<tbody>
						<tr>		<td><strong><?php echo __('Id'); ?></strong></td>
		<td>
			<?php echo h($productsSale['ProductsSale']['id']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><strong><?php echo __('Sale'); ?></strong></td>
		<td>
			<?php echo $this->Html->link($productsSale['Sale']['id'], array('controller' => 'sales', 'action' => 'view', $productsSale['Sale']['id']), array('class' => '')); ?>
			&nbsp;
		</td>
</tr><tr>		<td><strong><?php echo __('Product'); ?></strong></td>
		<td>
			<?php echo $this->Html->link($productsSale['Product']['title'], array('controller' => 'products', 'action' => 'view', $productsSale['Product']['id']), array('class' => '')); ?>
			&nbsp;
		</td>
</tr>					</tbody>
				</table><!-- /.table table-striped table-bordered -->
			</div><!-- /.table-responsive -->
			
		</div><!-- /.view -->

			
	</div><!-- /#page-content .span9 -->

</div><!-- /#page-container .row-fluid -->
