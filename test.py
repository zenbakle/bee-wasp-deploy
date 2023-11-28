import requests

url = "http://localhost:8080/2015-03-31/functions/function/invocations"
data = {"url":"https://habrastorage.org/webt/rt/d9/dh/rtd9dhsmhwrdezeldzoqgijdg8a.jpeg"}
# urll = "https://qioec8kd2h.execute-api.us-east-2.amazonaws.com/test/predict"
result = requests.post(url,json=data).json()
print(result)