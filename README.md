# Layer 2 Neighbor Map

A Docker-based utility to detect layer 2 neighbors of a network device by using CDP and LLDP

## Installation

We're assuming you have Docker installed already.

### Build the container

```docker build -t l2-map .```

### Run the container

```docker run -p 8000:8000 -v ./logs/:/app/logs l2-map```

# Author

Aaron Conaway, aconaway@redeyenetworks.com