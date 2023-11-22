build_web_dav:
	docker build -f Dockerfile.web.dav ./ -t web_dav
run_web_dav:
	docker run -d --network host --rm --name web_dav -e TZ=Europe/Moscow web_dav
run_rabbit_mq:
	docker run --network host --rm -d --hostname localhost --name rabbitmq_online_shop -e RABBITMQ_DEFAULT_USER=rabbit_user -e RABBITMQ_DEFAULT_PASS=12345 rabbitmq:3-management
run_db_users:
	docker run --network host --rm -d --name db_users -e POSTGRES_PASSWORD=12345 -e POSTGRES_DB=users -e POSTGRES_USER=db_user -v /src/db_users/:/var/lib/postgresql/data -e PGPORT=5432 postgres
run_db_user_confirmation_codes:
	docker run --network host --rm -d --name db_user_confirmation_codes -e POSTGRES_PASSWORD=12345 -e POSTGRES_DB=confirmation_codes -e POSTGRES_USER=db_user -v /src/db_user_confirmation_codes/:/var/lib/postgresql/data -e PGPORT=5433 postgres
run_db_passwords:
	docker run --network host --rm -d --name db_passwords -e POSTGRES_PASSWORD=12345 -e POSTGRES_DB=passwords -e POSTGRES_USER=db_user -v /src/db_passwords/:/var/lib/postgresql/data -e PGPORT=5434 postgres
run_db_admin_confirmation_codes:
	docker run --network host --rm -d --name db_admin_confirmation_codes -e POSTGRES_PASSWORD=12345 -e POSTGRES_DB=confirmation_codes -e POSTGRES_USER=db_user -v /src/db_admin_confirmation_codes/:/var/lib/postgresql/data -e PGPORT=5435 postgres
run_db_products:
	docker run --network host --rm -d --name db_products -e POSTGRES_PASSWORD=12345 -e POSTGRES_DB=products -e POSTGRES_USER=db_user -v /src/db_products/:/var/lib/postgresql/data -e PGPORT=5436 postgres