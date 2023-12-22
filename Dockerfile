FROM jenkins/jenkins:latest-jdk21
COPY --chown=jenkins:jenkins executors.groovy /usr/share/jenkins/ref/init.groovy.d/executors.groovy

ENV JAVA_OPTS \
    -Dhudson.footerURL=https://jenkins.isnullxbh.me \
    -Dhudson.model.UpdateCenter.never=false \
    -Dhudson.model.User.allowNonExistentUserToLogin=false \
    -Dhudson.model.User.allowUserCreationViaUrl=false \
    -Dhudson.search.Search.MAX_SEARCH_SIZE=1000 \
    -Dhudson.slaves.ConnectionActivityMonitor.enabled=true \
    -Dhudson.slaves.ConnectionActivityMonitor.frequency=30000 \
    -Dhudson.slaves.SlaveComputer.allowUnsupportedRemotingVersions=false
