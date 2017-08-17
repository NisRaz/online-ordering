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
	default:
		$('#listProducts').addClass('active');
		$('#a_' + menu).addClass('active');
		break;

	}

});