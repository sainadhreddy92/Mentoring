
$(document).ready(function(){
	
		if($('#user_tech_know').is(':checked')) 
			$('#user_tech_areas').show();
		else 
			$('#user_tech_areas').hide();
		
		if($('#user_other').is(':checked')) 
			$('#user_other_areas').show();
		else 
			$('#user_other_areas').hide();


	$(":checkbox").change(function(){
		if($('#user_tech_know').is(':checked')) 
			$('#user_tech_areas').show();
		else 
			$('#user_tech_areas').hide();

		if($('#user_other').is(':checked')) 
			$('#user_other_areas').show();
		else 
			$('#user_other_areas').hide();
 
		
	
	});
});



