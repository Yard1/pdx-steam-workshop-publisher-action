FROM yard1/hoi4_headless
COPY lib/action-entrypoint.sh /action-entrypoint.sh
ENTRYPOINT [ "su", "-c", "/action-entrypoint.sh", "steam" ]