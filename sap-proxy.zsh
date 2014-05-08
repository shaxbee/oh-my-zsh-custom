domain="$(hostname -d)"
if [ $domain = "apj.global.corp.sap" ] || [ $domain = "dhcp.pgdev.sap.corp" ]; then
    PROXY="http://proxy:8080"

    export http_proxy="${PROXY}"
    export https_proxy="${PROXY}"
    export ftp_proxy="${PROXY}"

    export GRADLE_OPTS="-Dhttp.proxyHost=proxy -Dhttp.proxyPort=8080"
fi
