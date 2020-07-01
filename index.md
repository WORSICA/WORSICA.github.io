---
title: WORSICA Index
layout: default
---

# Index

- [Portal](./worsica-portal/)
- [Intermediate](./worsica-intermediate/)
- [Processing](./worsica-processing/)
- [CICD](./worsica-cicd/)

# Introduction

WorSiCa (Water mOnitoRing SentInel Cloud platform), a service that integrates remote sensing and in-situ data for the determination of water presence in coastal and inland areas, applicable to a range of purposes from the determination of flooded areas (from rainfall, storms, hurricanes or tsunamis) to the detection of large water leaks in major water distribution networks.

WorSiCa is a one-stop-shop service to provide access to customized remote sensing services based on Copernicus data, currently applied to the detection of the coastal water land interface and the inland water detection (for large water infrastructure leak detection).

This documentation is aimed to help actual and future WORSICA maintainers to assure the maintenance and evolutive integration of new features on this tematic service. Remember, WORSICA thematic service is under development, and thus, this documentation may suffer change during its development.

Last document revision: July 1st, 2020

# Documentation

This documentation is structured by the following architecture components:

- Portal: Worsica web portal with a interface.
- Intermediate: A web service that does not have any interface (just administration), it's run separately from the main portal to handle the user requests for processing.
- Processing: Scripts that execute the image processing methodology. It's interaction is made via CLI.
- CICD: Continuous integration (CI) and continuous delivery (CD).

