# Change Data Capture (CDC) System with Docker, PostgreSQL, MongoDB, Kafka, and Debezium
### Introduction
Change Data Capture (CDC) is a powerful technique for identifying and tracking changes in a database. By capturing these changes in real-time, CDC allows data to be processed by other systems, enabling seamless data synchronization and real-time analytics. This repository provides a comprehensive guide to setting up a CDC system using Docker, PostgreSQL, MongoDB, Kafka, and Debezium.
## Prerequisites
Before you begin, ensure you have the following installed on your machine:

* Docker
* Docker Compose
* PostgreSQL
* MongoDB
* Confluent Kafka
  
## Architecture
The architecture consists of the following components:

- ZooKeeper: Manages and coordinates Kafka brokers.
- Kafka: Distributed streaming platform for handling real-time data streams.
- Schema Registry: Manages and validates Avro schemas.
- Kafka REST Proxy: Provides a RESTful interface for Kafka.
- Kafka Connect: Framework for integrating Kafka with other systems.
- ksqlDB Server: SQL engine for stream processing on Kafka.

## Components
### ZooKeeper
Description: ZooKeeper is a centralized service for maintaining configuration information, naming, providing distributed synchronization, and group services for Kafka brokers.

### Kafka
Description: Apache Kafka is a distributed streaming platform designed to handle high-throughput, fault-tolerant, and low-latency data streams. It is commonly used for building real-time data pipelines and streaming applications.

### Schema Registry
Description: Schema Registry provides a RESTful interface for managing and validating Avro schemas, ensuring data produced and consumed in Kafka topics adhere to a consistent format.

### Kafka REST Proxy
Description: Kafka REST Proxy provides a RESTful interface to interact with Apache Kafka clusters, allowing applications to produce and consume messages via HTTP.

### Kafka Connect
Description: Kafka Connect is a framework for integrating Kafka with various data sources and sinks. It enables you to stream data between Kafka and other systems, such as databases and key-value stores.

### ksqlDB Server
Description: ksqlDB is a streaming SQL engine that allows you to create real-time data processing and analytics applications using SQL.

## Graphical User Interfaces
`Debezium UI:` A graphical user interface for managing Debezium connectors.

`AKHQ:` An open-source web interface for managing and monitoring Apache Kafka clusters.

`ksqlDB UI:` Accessible via the Confluent Control Center, providing an interface for interacting with ksqlDB.
Description: Schema Registry provides a RESTful interface for managing and validating Avro schemas, ensuring data produced and consumed in Kafka topics adhere to a consistent format.

### Kafka REST Proxy
Description: Kafka REST Proxy provides a RESTful interface to interact with Apache Kafka clusters, allowing applications to produce and consume messages via HTTP.
