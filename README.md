# Dual-Axis-Solar-Tracker-for-Maximum-Power-Generation
This project focuses on the design and simulation of an intelligent dual-axis solar tracking system that continuously aligns a photovoltaic panel with the sun’s position to maximize energy harvesting efficiency. Unlike fixed panels, the system dynamically tracks both azimuth and elevation angles throughout the day.

## 🌞 Project Overview

This repository presents the design and simulation of a **Dual-Axis Solar Tracking System** developed to maximize photovoltaic (PV) power generation by continuously aligning a solar panel with the sun’s position throughout the day.

Unlike conventional fixed-angle solar panels, which suffer from cosine losses as the sun moves, the proposed system dynamically tracks the sun along both **azimuth (horizontal)** and **elevation (vertical)** axes. This ensures that the solar panel remains nearly perpendicular to incoming solar radiation, significantly improving energy harvesting efficiency.

The system is implemented using a **model-based control approach**, where the solar tracker dynamics are modeled and controlled using **Model Predictive Control (MPC)** in the MATLAB/Simulink environment. **Time-based solar position references** are used instead of light sensors, enabling stable and reliable tracking even under cloudy or non-uniform lighting conditions.

This project demonstrates a **low-cost, efficient, and scalable solar tracking concept**, suitable for educational laboratories, small-scale solar installations, and renewable energy research applications.

## 🧩 System Architecture

The dual-axis solar tracking system consists of two independently controlled rotational axes: **azimuth (horizontal)** and **elevation (vertical)**. Each axis is driven by a DC motor and controlled through a **Model Predictive Control (MPC)** strategy implemented in **MATLAB/Simulink**.

The system operates using **time-based solar position reference signals**, eliminating the dependency on light sensors. Reference angles for both axes are generated based on the apparent movement of the sun and are continuously compared with the actual motor positions in a **closed-loop configuration**. The MPC controller computes optimal control inputs while considering system dynamics and actuator constraints, ensuring **smooth, stable, and accurate tracking**.

<p align="center">
  <img src="System_Process.jpeg" width="75%">
</p>

<p align="center">
  <b>Figure 1:</b> System process flow of the dual-axis solar tracking system
</p>

## 🔧 Hardware Components

Although this project is simulation-based, the system is designed with practical hardware implementation in mind. The main hardware components include:

- **Photovoltaic (PV) Panel** – Energy generation unit mounted on a dual-axis structure  
- **DC Motors (2 units)** – Independent actuation for azimuth and elevation axes  
- **Motor Drivers (H-Bridge)** – Interface between controller and motors  
- **Microcontroller / Embedded Controller** – Intended for real-time control execution  
- **Mechanical Mounting Structure** – Dual-axis frame designed using SolidWorks  
- **Power Supply Unit** – Provides regulated power to motors and control electronics  

The mechanical design ensures **stability, smooth rotation, and accurate alignment** of the solar panel.




<div align="center">
  <table>
    <tr>
      <td align="center">
        <img src="Top_View.jpeg" width="200"/><br>
        (a) Top View
      </td>
      <td align="center">
        <img src="Front_View.jpeg" width="200"/><br>
        (b) Front View
      </td>
    </tr>
    <tr>
      <td align="center">
        <img src="Back_View.jpeg" width="200"/><br>
        (c) Back View
      </td>
      <td align="center">
        <img src="Side_View.jpeg" width="200"/><br>
        (d) Side View
      </td>
    </tr>
  </table>
</div>

<p align="center">
  <b>Figure 2:</b> Dual Axis Solar Tracking System (SolidWorks)
</p>

## 🧪 Methodology and Simulation

### System Modeling
- DC motor dynamics were modeled using electrical and mechanical equations.
- System parameters such as resistance, inertia, torque constant, and friction were incorporated.

  <p align="center">
  <img src="DC_Motor.png" width="75%">
</p>

<p align="center">
  <b>Figure 3:</b> DC Motor Electrical–Mechanical Subsystem
</p>

### Reference Generation
- Time-based solar position reference signals for azimuth and elevation were generated using lookup tables.

### Control Strategy
- Model Predictive Control (MPC) was implemented to track reference angles.
- Control constraints were applied to prevent excessive actuator effort.

### Simulation Environment
- MATLAB/Simulink was used for modeling, control implementation, and validation.
- Closed-loop simulations were performed to evaluate tracking performance.

    <p align="center">
  <img src="Overall_System.png" width="75%">
</p>

<p align="center">
  <b>Figure 3:</b> Overall Dual-Axis Simulink Model
</p>

### Performance Evaluation
- Tracking accuracy, control smoothness, and system stability were analyzed through simulation results.
