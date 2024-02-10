resource "docker_image" "mywebsite" {
	name = "trainwithamol/CDAC_Final_Project:latest"
	keep_locally = false
}

resource "docker_container" "mywebsite_container" {
	image = docker_image.mywebsite.name
	name = "mywebsite-container"
	ports {
		internal = 8000
		external = 8000
	}

	depends_on = [
		docker_image.mywebsite
	]
	
}
