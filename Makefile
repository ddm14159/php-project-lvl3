install: #установить зависимости
	composer install
lint: #запуск phpcs
	composer exec --verbose phpcs -- --standard=PSR12 src
test: #запуск локального теста
	php artisan test
test-coverage: #codeclimate
	composer exec --verbose phpunit tests -- --coverage-clover build/logs/clover.xml
