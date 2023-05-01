FROM hashicorp/tfc-agent:latest

USER root

# Install sudo. The container runs as a non-root user, but people may rely on
# the ability to apt-get install things.
RUN apt-get -y install sudo

# Permit tfc-agent to use sudo apt-get commands.
RUN echo 'tfc-agent ALL=NOPASSWD: /usr/bin/apt-get , /usr/bin/apt' >> /etc/sudoers.d/50-tfc-agent


ADD https://raw.githubusercontent.com/oracle/oci-cli/v3.25.4/scripts/install/install.sh /usr/local/bin/install.sh 

RUN chmod +x /usr/local/bin/install.sh

RUN /usr/local/bin/install.sh --accept-all-defaults

USER tfc-agent
