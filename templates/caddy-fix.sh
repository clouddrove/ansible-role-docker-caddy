datum1=`date -d "{{ date }}" "+%s"`
datum2=`date "+%s"`

diff=$(($datum2-$datum1))

days=$(($diff/(60*60*24)))

if [[ $(($days%89)) == 0 ]]; then
                sudo rm -rf /opt/caddy/config/.caddy
                        sudo service caddy restart
                fi
