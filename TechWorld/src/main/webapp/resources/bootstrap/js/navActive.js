$(function() {

	switch (nav) {
	case 'Products':
		$("#products").addClass('active');
		break;
	case 'About Us':
		$("#about").addClass('active');
		break;
	default:
		$("#home").addClass('active');
		break;
	}
});