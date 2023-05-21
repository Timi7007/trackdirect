### PLEASE NOTE THAT THIS armhf VERSION IS FOR RASPBERRY PIS, SEE THE [ORIGINAL REPO](https://github.com/qvarforth/trackdirect) FOR THE PRODUCTION amd64 VERSION!!!

Install [Docker and docker-compose-plugin](https://docs.docker.com/engine/install/raspbian/) as per instructions on their website.

Download everything:
* `git clone -b armhf https://github.com/Timi7007/trackdirect.git`
* `cd trackdirect`
* `git clone -b armhf https://github.com/Timi7007/aprsc-docker.git`

Adopt the config in `config/aprsc.conf` and `config/trackdirect.ini`. In `trackdirect.ini` additionally search for 'docker' and change the lines as described in the comments. `aprsc.conf` needs to be in all the right places.
* `vi config/aprsc.config`
* `vi config/trackdirect.ini`
* `cp config/aprsc.conf aprsc-docker/`

Run the software: `docker compose up -d`

To check logs use: `docker compose logs -f`

To stop the containers use: `docker compose down`

#### The APRS Direct server should now be available on your Raspberry's IP-Address on port 80 via HTTP, and port 14501 should return aprsc's status site.
You could now spin a reverse proxy up and run it as a public service, but a) the Pi's hardware is a little small, b) you'll kill your SD-card with the database writes and c) a full installation from the [original source](https://github.com/qvarforth/trackdirect) is more flexible when it comes to options.
