$(function() {
	// Solving The Active Menu Problems
	switch (menu) {
	case 'Contact Us':
		$('#contact').addClass('active');
		break;
	case 'Feature':
		$('#feature').addClass('active');
		break;
	case 'All Products':
		$('#listProducts').addClass('active');
		break;
	case 'Manage Products':
		$('#manageProducts').addClass('active');
		break;
	default:
		$('#listProducts').addClass('active');
		$('#a_' + menu).addClass('active');
		break;

	}

});

// code for jquery dataTable
var $table = $('#productListTable');

// execute the below code only where we have this table
if ($table.length) {
	// console.log('Inside the table!');

	var jsonUrl = '';
	if (window.categoryId == '') {
		jsonUrl = window.contextRoot + '/json/data/all/products';
	} else {
		jsonUrl = window.contextRoot + '/json/data/category/'
				+ window.categoryId + '/products';
	}

	$table
			.DataTable({
				lengthMenu : [ [ 3, 5, 10, -1 ],
						[ '3 Records', '5 Records', '10 Records', 'ALL' ] ],
				pageLength : 5,
				ajax : {
					url : jsonUrl,
					dataSrc : ''
				},
				columns : [
						{
							data : 'code',
							bSortable : false,
							mRender : function(data, type, row) {

								return '<img src="' + window.contextRoot
										+ '/resources/images/productimg/'
										+ data
										+ '.jpg" class="dataTableImg" />';

							}
						},
						{
							data : 'name'
						},
						{
							data : 'brand'
						},
						{
							data : 'unitPrice',
							mRender : function(data, type, row) {
								return '&#8360;. ' + data
							}
						},
						{
							data : 'quantity',
							mRender : function(data, type, row) {
								if (data < 1) {
									return '<span style="color:red"><b>Out of Stock!</b></span>';
								}
								return data;
							}
						},
						{
							data : 'id',
							bSortable : false,
							mRender : function(data, type, row) {
								var str = '';
								str += '<a href="'
										+ window.contextRoot
										+ '/show/'
										+ data
										+ '/product" class="btn btn-primary"><span class="glyphicon glyphicon-eye-open"></span>View</a> &#160;';

								if (row.quantity < 1) {
									str += '<a href="javascript:void(0)" class="btn btn-success disabled"><strike><span class="glyphicon glyphicon-shopping-cart"></span>Add to Cart</strike></a>';
								} else {
									str += '<a href="'
											+ window.contextRoot
											+ '/cart/add/'
											+ data
											+ '/product" class="btn btn-success"><span class="glyphicon glyphicon-shopping-cart"></span>Add to Cart</a>';
								}

								return str;
							}

						}

				]
			});
}
