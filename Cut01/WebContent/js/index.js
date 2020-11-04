/**
 * http://usejsdoc.org/
 */

function setupTable( config ){
	const dirs = config.directories;
	const notDynamic = ( config.dynamic ) ? "" : "&dynamic=0";
	if( config.dynamic )
		$("#title").text( $("#title").text() + " on FWV Server" );
		dirs.forEach( dir=>{
			$.getJSON("data/"+dir+"/meta.json", function(dirConfig) {
				const name = dirConfig.name ? "&name=" + dirConfig.name : "";
				const trObj = $("<tr class='datarow'>")
				.attr('data-href', "fwchart.html?directory=" + dir + notDynamic + name )
				trObj.append( "<td class='id'>" + dir + "</td>");
				trObj.append( "<td>" + ( dirConfig.name ? dirConfig.name : " " ) + "</td>");
				trObj.append( "<td>" + ( dirConfig.description ? dirConfig.description : " " ) + "</td>");
				$("#datalist").append( trObj );
				trObj.click( e=>open( $(e.target).closest('tr').data('href'), "_blank" ) )
			}).error( ()=>{
				const trObj = $("<tr>").css("background-color","gray").append( $("<td>").text(dir) );
				trObj.append( "<td>" + " " + "</td>" );
				trObj.append( "<td>" + " " + "</td>" );
				$("#datalist").append( trObj );
			});
		});
}

$(function () {
	$.ajaxSetup({async: false});
	$.getJSON("data/fwv.json", config=>{
		setupTable( config );
	});
});
