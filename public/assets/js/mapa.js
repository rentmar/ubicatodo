console.log("Servicios");
console.log(servicios);


//ICONOS

//Definicion de los iconos para el mapa
var farmacia = L.icon({
    iconUrl: baseurl + 'assets/img/iconos/farmacia.png',

    iconSize:     [38, 38], // size of the icon
    iconAnchor:   [22, 94], // point of the icon which will correspond to marker's location
    shadowAnchor: [4, 62],  // the same for the shadow
    popupAnchor:  [-3, -76] // point from which the popup should open relative to the iconAnchor
});

var hospital = L.icon({
    iconUrl: baseurl + 'assets/img/iconos/hospital.png',

    iconSize:     [38, 38], // size of the icon
    iconAnchor:   [22, 94], // point of the icon which will correspond to marker's location
    shadowAnchor: [4, 62],  // the same for the shadow
    popupAnchor:  [-3, -76] // point from which the popup should open relative to the iconAnchor
});

var banio = L.icon({
    iconUrl: baseurl + 'assets/img/iconos/restroom.png',

    iconSize:     [38, 38], // size of the icon
    iconAnchor:   [22, 94], // point of the icon which will correspond to marker's location
    shadowAnchor: [4, 62],  // the same for the shadow
    popupAnchor:  [-3, -76] // point from which the popup should open relative to the iconAnchor
});

var veterinaria = L.icon({
    iconUrl: baseurl + 'assets/img/iconos/veterinaria.png',

    iconSize:     [38, 38], // size of the icon
    iconAnchor:   [22, 94], // point of the icon which will correspond to marker's location
    shadowAnchor: [4, 62],  // the same for the shadow
    popupAnchor:  [-3, -76] // point from which the popup should open relative to the iconAnchor
});

var centrosalud = L.icon({
    iconUrl: baseurl + 'assets/img/iconos/centrosalud.png',

    iconSize:     [38, 38], // size of the icon
    iconAnchor:   [22, 94], // point of the icon which will correspond to marker's location
    shadowAnchor: [4, 62],  // the same for the shadow
    popupAnchor:  [-3, -76] // point from which the popup should open relative to the iconAnchor
});

//Latidud longitud del distrito
var lat = $('#lat').val();
var lon = $('#lon').val();



//Definiendo las overlays

var farmacias = L.layerGroup();
var hospitales = L.layerGroup();
var banios = L.layerGroup();
var veterinarias = L.layerGroup();
var centrossalud = L.layerGroup();

for(let i= 0; i< servicios.length; i++ ){
    if(servicios[i].id_categoria == 1){
        console.log('Farmacia');
        console.log(servicios[i].nombre);
        console.log('');
        L.marker([servicios[i].Latitud, servicios[i].Longitud], {icon: farmacia} ).bindPopup(servicios[i].nombre +': '+ servicios[i].descripcion + '. ' +servicios[i].direccion).addTo(farmacias);

    }else if(servicios[i].id_categoria == 2){
        console.log('Hospital');
        console.log(servicios[i].nombre);
        console.log('');
        L.marker([servicios[i].Latitud, servicios[i].Longitud], {icon: hospital} ).bindPopup(servicios[i].nombre +': '+ servicios[i].descripcion + '. ' +servicios[i].direccion).addTo(hospitales);


    }else if(servicios[i].id_categoria == 3){
        console.log('Baño');
        console.log(servicios[i].nombre);
        console.log('');
        L.marker([servicios[i].Latitud, servicios[i].Longitud], {icon: banio} ).bindPopup(servicios[i].nombre +': '+ servicios[i].descripcion + '. ' +servicios[i].direccion).addTo(banios);


    }else if(servicios[i].id_categoria == 4){
        console.log('Veterinaria');
        console.log(servicios[i].nombre);
        console.log('');
        L.marker([servicios[i].Latitud, servicios[i].Longitud], {icon: veterinaria} ).bindPopup(servicios[i].nombre +': '+ servicios[i].descripcion + '. ' +servicios[i].direccion).addTo(veterinarias);


    }else if(servicios[i].id_categoria == 5){
        console.log('Centro de Salud');
        console.log(servicios[i].nombre);
        console.log('');
        L.marker([servicios[i].Latitud, servicios[i].Longitud], {icon: centrosalud} ).bindPopup(servicios[i].nombre +': '+ servicios[i].descripcion + '. ' +servicios[i].direccion).addTo(centrossalud);
    }else{

    }
}

//Agregar y crear los marcadores

//L.marker([39.61, -105.02], {icon: farmacia} ).bindPopup('esta es una farmacia').addTo(farmacias);
//L.marker([39.74, -104.99], {icon: hospital}).bindPopup('este es un hodpital').addTo(hospitales);
//L.marker([39.73, -104.8], {icon: banio}).bindPopup('este es un baño').addTo(banios);
//L.marker([39.77, -105.23], {icon: veterinaria}).bindPopup('esta es una veterinaria').addTo(veterinarias);
//L.marker([39.79, -105.20], {icon: centrosalud}).bindPopup('este es un centro de salud').addTo(centrossalud);


var osm = L.tileLayer('https://tile.openstreetmap.org/{z}/{x}/{y}.png', {
    maxZoom: 22,
    attribution: '© OpenStreetMap'
});

var osmHOT = L.tileLayer('https://{s}.tile.openstreetmap.fr/hot/{z}/{x}/{y}.png', {
    maxZoom: 22,
    attribution: '© OpenStreetMap contributors, Tiles style by Humanitarian OpenStreetMap Team hosted by OpenStreetMap France'}
);

var map = L.map('map', {
    center: [lat, lon],
    zoom: 15,
    layers: [osm, farmacias]
});

var baseMaps = {
    "Distrito": osm,
    //"OpenStreetMap.HOT": osmHOT,
};

var overlayMaps = {
    "Farmacias": farmacias
};

var scale = L.control.scale()
scale.addTo(map)


var layerControl = L.control.layers(baseMaps, overlayMaps).addTo(map);
layerControl.addOverlay(hospitales, "Hospitales");
layerControl.addOverlay(banios, "Baños");
layerControl.addOverlay(veterinarias, "Veterinarias");
layerControl.addOverlay(centrossalud, "Centros de Salud");


