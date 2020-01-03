FROM yard1/hoi4_headless

LABEL com.github.actions.name="PDX Steam Workshop Publisher Action"
LABEL com.github.actions.description="Automatically upload your Hearts of Iron IV mod to Steam Workshop"
LABEL com.github.actions.icon="upload"
LABEL com.github.actions.color="gray-dark"

LABEL maintainer="Antoni Baum <antoni.baum@protonmail.com>"

COPY lib/action-entrypoint.sh /action-entrypoint.sh 
ENTRYPOINT [ "/action-entrypoint.sh" ]