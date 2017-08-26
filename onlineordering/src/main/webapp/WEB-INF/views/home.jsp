<div class="container">

	<div class="row">

		<div class="col-md-3">
			<%@include file="./shared/sidebar.jsp"%>
		</div>

		<div class="col-md-9">

			<div class="row carousel-holder">

				<div class="col-md-12">
					<div id="carousel-example-generic" class="carousel slide"
						data-ride="carousel">
						<ol class="carousel-indicators">
							<li data-target="#carousel-example-generic" data-slide-to="0"
								class="active"></li>
							<li data-target="#carousel-example-generic" data-slide-to="1"></li>
							<li data-target="#carousel-example-generic" data-slide-to="2"></li>
						</ol>
						<div class="carousel-inner">
							<div class="item active">
								<img class="slide-image" src="${images}/slideimg/crame04.jpg"
									alt="" style="width: 900px; height: 300px;">
							</div>
							<div class="item">
								<img class="slide-image" src="${images}/slideimg/cream06.jpg"
									alt="" style="width: 900px; height: 300px;">
							</div>
							<div class="item">
								<img class="slide-image" src="${images}/slideimg/cream05.jpg"
									alt="" style="width: 900px; height: 300px;">
							</div>

						</div>
						<a class="left carousel-control" href="#carousel-example-generic"
							data-slide="prev"> <span
							class="glyphicon glyphicon-chevron-left"></span>
						</a> <a class="right carousel-control"
							href="#carousel-example-generic" data-slide="next"> <span
							class="glyphicon glyphicon-chevron-right"></span>
						</a>
					</div>
				</div>

			</div>

			<div class="row">
				<c:forEach items="${products}" var="product">
					<div class="col-sm-4 col-lg-4 col-md-4">
						<div class="thumbnail">
							<img src="${images}/productimg/${product.code}.jpg"
							class="img img-responsive" style="width:350px;height:150px;"/>
							<div class="caption">
								<h4 class="pull-right">${product.unitPrice}</h4>
								<h4>
									<a href="${contextRoot}/show/${product.id}/product">${product.name}</a>
								</h4>
								<p>
									${product.description}
								</p>
							</div>
							<div class="ratings">
								<p>
									<span class="glyphicon glyphicon-star"></span> <span
										class="glyphicon glyphicon-star"></span> <span
										class="glyphicon glyphicon-star"></span> <span
										class="glyphicon glyphicon-star"></span> <span
										class="glyphicon glyphicon-star"></span>
								</p>
							</div>
						</div>
					</div>
			</c:forEach>
			</div>

		</div>

	</div>

</div>