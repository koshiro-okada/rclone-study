.PHONY: restart-sshd

status-sshd:
	docker compose exec sftp-server systemctl status sshd
restart-sshd:
	docker compose exec sftp-server systemctl restart sshd
check-file-exist:
	docker compose exec rclone-server rclone lsjson sftp:/root/SAMPLE/sample.txt
