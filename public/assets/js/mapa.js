window.onload=loadMap;


//Funcion cargar Mapa
function loadMap(){
    var lat = $('#lat').val();
    var lon = $('#lon').val();
    var z = 18;
    //alert(baseurl);
    //alert(lat+', '+lon);
    //alert(z);
    //var map = L.map('map').setView([lat, lon], 13);
    var map = L.map('map',{
        center: [lat, lon],
        zoom: z,
    });
    L.tileLayer('https://tile.openstreetmap.org/{z}/{x}/{y}.png', {
        maxZoom: 18,
        attribution: '&copy; <a href="http://www.openstreetmap.org/copyright">OpenStreetMap</a>'
    }).addTo(map);
}

function categorias(){
    var retVal = {};
    $.ajax({
		url: baseurl + "/mapa/gettiposervicio/",
		type: 'post',
		data: {'identificador': 3},
		async: false,
		dataType: 'json'
	}).done(function (response) {
		ret_val = response;
	}).fail(function (jqXHR, textStatus, errorThrown) {
		ret_val = null;
	});
	return ret_val;
}



jQuery(document).on('change', 'select#categoria', function (e) {
    var idcat = jQuery(this).val();
    var iddist = $('#iddistrito').val();
    var serv = servicios(iddist, idcat);
    console.log(serv);

   
	//e.preventDefault();
	//var tipomedioID = jQuery(this).val();
	//getMediosList(tipomedioID);
});

function servicios(iddistrito, idcategoria){
    var retVal = {};
    $.ajax({
		url: baseurl + "/mapa/gettiposervicio/",
		type: 'post',
		data: {'d': 6, 'c': 4},
		async: false,
		dataType: 'json'
	}).done(function (response) {
		ret_val = response;
	}).fail(function (jqXHR, textStatus, errorThrown) {
		ret_val = null;
	});
	return ret_val;
}