build:
	docker build -t page_speed_image .

run:
	docker run -itd -p 3000:80 --name page_speed page_speed_image
bash:
	docker exec -it page_speed bash

restart:
	docker restart page_speed