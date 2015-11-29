using Plotly
Plotly.signin("username", "api_key")
data = [
  [
    "x" => ["2009", "2010", "2011", "2012", "2013"], 
    "y" => ["778", "951", "1233", "3140", "2164"], 
    "name" => "Col2", 
    "type" => "bar", 
    "uid" => "e12c9a", 
    "xsrc" => "Ayushi_Sharma:56:87263d", 
    "ysrc" => "Ayushi_Sharma:56:52ee82"
  ]
]
layout = [
  "autosize" => true, 
  "height" => 550, 
  "title" => "Historical incident Data", 
  "width" => 1076, 
  "xaxis" => [
    "autorange" => true, 
    "range" => [2008.5, 2013.5], 
    "type" => "linear"
  ], 
  "yaxis" => [
    "autorange" => true, 
    "range" => [0, 3305.26315789], 
    "type" => "linear"
  ]
]
response = Plotly.plot(data, ["layout" => layout])
plot_url = response["url"]
