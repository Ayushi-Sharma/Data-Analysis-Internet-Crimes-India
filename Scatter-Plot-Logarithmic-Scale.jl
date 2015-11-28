#https://data.gov.in/
using Plotly
Plotly.signin("username", "api_key")
trace1 = [
  "x" => log2([429, 12, 28, 23, 49, 30, 68, 66, 20, 35, 10, 412, 269, 142, 471, 0, 6, 0, 0, 14, 72, 147, 0, 39, 14, 205, 4, 196]),
  "y" => log2([94, 0, 0, 15, 8, 17, 8, 2, 0, 0, 1, 148, 39, 5, 18, 0, 0, 0, 0, 0, 13, 0, 0, 0, 0, 14, 0, 25]),
  "mode" => "markers",
  "name" => "State",
  "text" => ["Andhra Pradesh", "Arunachal Pradesh", "Assam", "Bihar", "Chhattisgarh", "Goa", "Gujarat", "Haryana", "Himachal Pradesh", "Jammu & Kashmir", "Jharkhand", "Karnataka", "Kerala", "Madhya Pradesh", "Maharashtra", "Manipur", "Meghalaya", "Mizoram", "Nagaland", "Odisha", "Punjab", "Rajasthan", "Sikkim", "Tamil Nadu", "Tripura", "Uttar Pradesh", "Uttarakhand", "West Bengal"],
  "marker" => [
    "color" => "rgb(255, 0, 0)",
    "size" => 16,
    "line" => [
      "color" => "white",
      "width" => 0.5
    ]
  ],
  "type" => "scatter"
]
trace2 = [
  "x" => log2([2, 33, 0, 0, 76, 0, 4]),
  "y" => log2([0, 0, 0, 0, 28, 0, 0]),
  "mode" => "markers",
  "name" => "Union Territory",
  "text" => ["Andaman & Nicobar Islands", "Chandigarh", "Dadra & Nagar Haveli", "Daman & Diu", "Delhi", "Lakshadweep", "Puducherry"],
  "marker" => [
    "color" => "rgb(0, 0, 255)",
    "size" => 16,
    "line" => [
      "color" => "white",
      "width" => 0.5
    ]
  ],
  "type" => "scatter"
]
data = [trace1, trace2]
layout = [
  "title" => "Cases Registered under Cyber Crime, India - 2012 (Logarithmic Scale)",
  "xaxis" => [
    "title" => "Total Cases",
    "showgrid" => false,
    "zeroline" => false
  ],
  "yaxis" => [
    "title" => "Hacking",
    "showline" => false
  ]
]
response = Plotly.plot(data, ["layout" => layout, "filename" => "cyber-crime-cases-india-2012-logarithmic-scale", "fileopt" => "overwrite"])
plot_url = response["url"]
