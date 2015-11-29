using Plotly
Plotly.signin("username", "api_key")
trace1 = [
  "x" => ["POS Intrusions", "Web App Attacks", "Inside Misuse", "Physical Theft/Loss", "Miscellaneous Errors", "Crimeware", "Card Skimmers", "DoS Attacks", "Cyber-espionage", "Everything else"], 
  "y" => ["<1%", "6%", "18%", "14%", "25%", "20%", "<1%", "3%", "1%", "12%"], 
  "name" => "2013 incidents, n=63,437", 
  "type" => "bar", 
  "uid" => "278974", 
  "xsrc" => "Ayushi_Sharma:60:2300ba", 
  "ysrc" => "Ayushi_Sharma:60:24267a"
]
trace2 = [
  "x" => ["POS Intrusions", "Web App Attacks", "Inside Misuse", "Physical Theft/Loss", "Miscellaneous Errors", "Crimeware", "Card Skimmers", "DoS Attacks", "Cyber-espionage", "Everything else"], 
  "y" => ["31%", "21%", "8%", "1%", "1%", "4%", "14%", "<1%", "15%", "5%"], 
  "name" => "2011-2013 breaches, n=2,861", 
  "type" => "bar", 
  "uid" => "23b86f", 
  "xsrc" => "Ayushi_Sharma:60:2300ba", 
  "ysrc" => "Ayushi_Sharma:60:b88d4e"
]
trace3 = [
  "x" => ["POS Intrusions", "Web App Attacks", "Inside Misuse", "Physical Theft/Loss", "Miscellaneous Errors", "Crimeware", "Card Skimmers", "DoS Attacks", "Cyber-espionage", "Everything else"], 
  "y" => ["14%", "35%", "8%", "<1%", "2%", "4%", "9%", "<1%", "22%", "6%"], 
  "name" => "2013 breaches, n=1,367", 
  "type" => "bar", 
  "uid" => "12c48e", 
  "xsrc" => "Ayushi_Sharma:60:2300ba", 
  "ysrc" => "Ayushi_Sharma:60:931935"
]
data = [trace1, trace2, trace3]
layout = [
  "autosize" => true, 
  "height" => 550, 
  "width" => 1076, 
  "xaxis" => [
    "autorange" => true, 
    "range" => [-0.5, 9.5], 
    "type" => "category"
  ], 
  "yaxis" => [
    "autorange" => true, 
    "range" => [0, 36.8421052632]
  ]
]
response = Plotly.plot(data, ["layout" => layout])
plot_url = response["url"]
