using Plotly
Plotly.signin("username", "api_key")
data = [
  [
    "x" => ["United States", "South Korea", "Australia", "Sweden", "Japan", "China", "United Kingdom", "Taiwan", "Germany", "Canada"], 
    "y" => ["546846693", "140238121", "42672848", "29000002", "22162392", "12012056", "11669949", "6468738", "2101718", "1564966"], 
    "name" => "Exposed Records", 
    "type" => "scatter", 
    "uid" => "959687", 
    "xsrc" => "Ayushi_Sharma:57:8940bc", 
    "ysrc" => "Ayushi_Sharma:57:e29dc1"
  ]
]
layout = [
  "autosize" => true, 
  "height" => 550, 
  "title" => "Historical Incident Data", 
  "width" => 1076, 
  "xaxis" => [
    "autorange" => true, 
    "range" => [-0.545905251561, 9.54590525156], 
    "title" => "Country", 
    "type" => "category"
  ], 
  "yaxis" => [
    "autorange" => true, 
    "range" => [-35708516.1068, 584120175.107], 
    "title" => "Exposed Records", 
    "type" => "linear"
  ]
]
response = Plotly.plot(data, ["layout" => layout])
plot_url = response["url"]
