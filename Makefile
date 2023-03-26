.PHONY: status-sshd
status-sshd:
	docker compose exec sftp-server systemctl status sshd

.PHONY: restart-sshd
restart-sshd:
	docker compose exec sftp-server systemctl restart sshd

.PHONY: check-file-exist
check-file-exist:
	docker compose exec rclone-server rclone lsjson sftp:/root/SAMPLE/sample.txt

.PHONY: check-file-exist-with-bitnami-rclone-image
check-file-exist-with-bitnami-rclone-image:
	docker run --rm \
	--mount type=bind,source=$(shell pwd)/rclone-server/rclone.conf,target=/.rclone.conf \
	--net rclone-study_default \
	-e RCLONE_SFTP_HOST="sftp-server" \
	-e RCLONE_SFTP_USER="root" \
	-e RCLONE_SFTP_KEY_PEM="-----BEGIN RSA PRIVATE KEY-----\\nProc-Type: 4,ENCRYPTED\\nDEK-Info: AES-128-CBC,2CBE6B86FF961DB6FA538E30EECC6DA2\\n\\n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\\n-----END RSA PRIVATE KEY-----\\n" \
	-e RCLONE_SFTP_KEY_FILE_PASS="zKtWRivA0TYvaQGlt_UVrMI9vcI-bTbm0f4" \
	bitnami/rclone:latest lsjson sftp:/root/SAMPLE/sample.txt
