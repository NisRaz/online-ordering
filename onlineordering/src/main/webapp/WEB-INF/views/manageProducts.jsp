<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<div class="container">
	<div class="row">
		<div class="col-md-offset-2 col-md-8">
			<div class="panel panel-primary">
				<div class="panel-heading">
					<h4>Product Management</h4>
				</div>
				<div class="panel-body">
					<sf:form class="form-horizontal" modelAttribute="product"
						action="${contextRoot}/manage/products" method="POST"
						enctype="multipart/form-data">

						<div class="form-group">
							<label class="control-label col-md-4" for="name">Enter
								Product Name: </label>
							<div class="col-md-8">
								<input type="text" name="name" id="name" placeholder="Product Name" class="form-control" />
							</div>
						</div>

						<div class="form-group">
							<label class="control-label col-md-4" for="brand">Enter
								Brand Name: </label>
							<div class="col-md-8">
								<input type="text" name="brand" id="brand"
									placeholder="Brand Name" class="form-control" />
							</div>
						</div>	
					</sf:form>
				</div>
			</div>
		</div>
	</div>
</div>