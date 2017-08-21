<div class="container">
	<!-- Breadcrumb -->
	<div class="row">
		<div class="col-xs-12">
			<ol class="breadcrumb">
				<li><a href="${contextRoot}/home">Home</a></li>
				<li><a href="${contextRoot}/show/all/products">Products</a></li>
				<li class="active">${product.name}</li>
			</ol>
		</div>
	</div>
	<div class="container_16" style="background-color: #F0F8FF;">
		<div class="product-details">
			<div class="wrap">
				<div class="grid_16" id="productStrip">
					<h3>
						<b>${product.name}</b>
					</h3>
				</div>
				<div class="grid_5">
					<!-- Display the product image -->
					<div class="thumbnail">
						<img src="${images}/productimg/${product.code}.jpg"
							class="img img-responsive" />
					</div>
				</div>
				<div class="grid_10">
					<h4>
						<b>Summary Of This Item</b>
					</h4>
					<h3>${product.name}</h3>
					<hr />

					<p>${product.description}</p>
					<hr />

					<h4>
						Price: <strong> &#8360; ${product.unitPrice} /-</strong>
					</h4>
					<hr />
					<a href="${contextRoot}/cart/add/${product.id}/product" class="btn btn-success">
				    <span class="glyphicon glyphicon-shopping-cart"></span> Add to Cart</a>
				    <a href="${contextRoot}/show/all/products" class="btn btn-primary">Back</a>
				    <hr />
				</div>

			</div>
		</div>
	</div>
</div>