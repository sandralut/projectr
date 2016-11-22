function test(){
	var width = 1024;
	var height = 768;
	var ctrl = d3.select(".block2").append("svg").attr("width", width).attr("height", height);
	d3.csv("https://pecu.github.io/D3/stocks.csv",
	      function(data) { console.log(data); });
	d3.csv("https://pecu.github.io/D3/HistoricalQuotes.csv", 
		function(data)
		{
			var svgContainer = d3.select("body").append("svg").attr("width", 500)
                .attr("height", 500);
    svgContainer.append("circle").attr("cx", 120).attr("cy", 80).attr("r", 40).attr("fill", "yellow");
    svgContainer.append("circle").attr("cx", 280).attr("cy", 80).attr("r", 40).attr("fill", "yellow");
    svgContainer.append("ellipse").attr("cx", 200).attr("cy", 130).attr("rx", 100).attr("ry", 80).attr("fill", "yellow");
    svgContainer.append("circle").attr("cx", 160).attr("cy", 120).attr("r", 12).attr("fill", "brown");
    svgContainer.append("circle").attr("cx", 240).attr("cy", 120).attr("r", 12).attr("fill", "brown");
		}
	);
}