# Comparative Analysis of DSDV and AODV in FANET

## Introduction

In the domain of ad hoc networks, the selection of routing protocols plays a central role in determining the efficiency and reliability of data transmission. Among the multitude of routing protocols available, Destination-Sequenced Distance-Vector (DSDV) and Ad hoc On-Demand Distance Vector (AODV) stand out as prominent contenders, each offering distinct advantages and trade-offs. This repository provides an in-depth comparative analysis of these two routing protocols in the context of Flying Ad-hoc Networks (FANET).

FANETs, characterized by their dynamic and decentralized nature, have emerged as a promising technology with applications ranging from disaster management to surveillance and control. These networks consist of Unmanned Aerial Vehicles (UAVs) equipped with communication devices, forming a self-organizing network capable of ad hoc communication and collaboration.

## Objective

The primary objective of this study is to compare the performance of DSDV and AODV routing protocols in a simulated FANET environment using NS2 (Network Simulator 2) version 2.35. Specifically, the comparison focuses on packet loss rate as a measure to evaluate the efficiency of each protocol in facilitating reliable data transmission.

## Simulation Setup

The simulation environment consists of ten nodes arranged in a network topology comprising two sources, two destinations, and intermediate gateways facilitating communication between source-destination pairs. Nodes 1, 2, and 3 serve as gateways between nodes 0 and 4, while nodes 6, 7, and 8 serve as gateways between nodes 5 and 9. The traffic protocol used is a combination of File Transfer Protocol (FTP) and Transmission Control Protocol (TCP), reflecting real-world scenarios where various data types are transmitted over the network.

## Experimental Design

Multiple simulations are conducted with varying durations to capture a comprehensive range of network conditions. During each simulation, data regarding the packet loss rate for DSDV and AODV routing protocols are collected. Shell scripts are used to build a CSV file containing three columns: simulation time, packet loss rate for DSDV, and packet loss rate for AODV.

## Data Collection and Analysis

Using shell scripts, simulation results are collected to build a CSV file containing simulation time, packet loss rate for DSDV, and packet loss rate for AODV. This data will facilitate a systematic comparison of the performance of the two protocols.

## Architecture
![Picture1](https://github.com/RedDawnMaster/DSDV_vs_AODV_FANET/assets/100841318/3ab1bd10-5678-4bf5-9941-788bd33d38d9)

### Nodes
- **Sources (Nodes 0 and 5)**: Points of origin for data transmission.
- **Gateways (Nodes 1, 2, 3, 6, 7, 8)**: Facilitate data transfer between source and destination nodes.
- **Destinations (Nodes 4 and 9)**: Receivers of transmitted data.

### Traffic
- FTP and TCP: Combination of protocols for efficient file transfer and reliable data transmission.

## Plot
![Picture2](https://github.com/RedDawnMaster/DSDV_vs_AODV_FANET/assets/100841318/7e1e5fe5-d595-4bc8-90d8-78efa3401a96)

The plot illustrates the evolution of packet loss rate for DSDV (Destination-Sequenced Distance-Vector) and AODV (Ad hoc On-Demand Distance Vector) routing protocols over simulation time. Each curve represents the packet loss rate trend for a specific protocol.

The DSDV curve is depicted with connected data points, while the AODV curve is similarly represented. By examining the plot, we can observe the trend of packet loss rate for each protocol over simulation time.

Overall, we can observe that the packet loss rate is relatively stable for both protocols during the simulation. However, there appears to be a slight difference between the two, with the DSDV protocol exhibiting a slightly lower packet loss rate compared to AODV overall.

## Conclusion

In conclusion, the comparative analysis of DSDV and AODV routing protocols in a Flying Ad-hoc Network (FANET) environment consistently indicates that the DSDV protocol has an overall lower packet loss rate compared to AODV. These results suggest that, in the specific context of airborne ad hoc networks, such as FANETs, the DSDV protocol offers better data transmission reliability compared to AODV. Thus, based on these findings, it is reasonable to conclude that DSDV outperforms AODV in terms of reducing packet loss in our FANET simulation scenario.
