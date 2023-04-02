.PHONY: check-if-file-exists-in-sftp
check-if-file-exists-in-sftp:
	docker compose exec rclone-server rclone lsjson sftp:/root/SAMPLE/sample.txt

.PHONY: check-if-file-exists-in-s3
check-if-file-exists-in-s3:
	docker compose exec rclone-server rclone lsjson s3:sample-bucket/sample.txt

.PHONY: copy-file-to-s3
copy-file-to-s3:
	docker compose exec rclone-server rclone copy sftp:/root/SAMPLE/sample.txt s3:sample-bucket

