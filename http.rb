require 'net/http'

# Muestra el codigo fuente de la pagina de google en la terminal
# Net::HTTP.get_print('www.google.com.mx', '/')

url = URI.parse('http://www.rubyinside.com')
response = Net::HTTP.start(url.host, url.port) do |http|
	http.get(url.path)
end
content = response.body