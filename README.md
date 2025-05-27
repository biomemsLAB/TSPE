# TSPE: Total Spiking Probability Edges

Total Spiking Probability Edges (TSPE) is a cross-correlation-based method for effective connectivity estimation of cortical spiking neurons.

## Background

Connectivity is a critical parameter in understanding the information flow within neuronal networks. Reconstructing network connectivity from recorded spike train data has been an area of active research, leading to the development of various estimation methods.

## About TSPE

TSPE is a novel and computationally efficient algorithm designed for effective connectivity estimation. Its primary features include:

1. **Cross-Correlation**: TSPE calculates a cross-correlation between pairs of spike trains to measure their relationship.
2. **Edge Filters**: It applies filters on the resulting cross-correlograms to distinguish between excitatory and inhibitory connections.

### Key Results

* **Performance**: TSPE achieves a high true positive rate (approx. 99%) with a low false positive rate (1%) for low-density random networks, depending on the network topology and spike train duration.
* **Efficiency**: It processes large datasets quickly, taking less than three minutes on a high-performance computer to estimate connectivity from an hour-long dataset of 1000 spike trains.
* **Distinction Capability**: The algorithm effectively distinguishes between excitatory and inhibitory connections.

## Repository Overview

This repository provides the MATLAB implementation of TSPE as used in the original publication. While functional, this version may be outdated. For the latest implementation, refer to the Python version available in the `Elephant` library.

### MATLAB Implementation

* **Description**: This implementation reproduces the results described in the original TSPE publication.
* **Status**: No further updates will be made to this version.

### Python Implementation

* **Description**: The most up-to-date implementation of TSPE is included in the `Elephant` library, offering improved usability and documentation.
* **Documentation**: Refer to the following link for detailed instructions and examples:

  * [TSPE in Elephant](https://elephant.readthedocs.io/en/latest/reference/functional_connectivity_estimation.html)

## Getting Started

1. **Clone the Repository**:

   ```bash
   git clone https://github.com/yourusername/tspe.git
   cd tspe
   ```

2. **MATLAB Usage**:
   Open the `.m` files in MATLAB and follow the provided examples.

3. **Python Usage**:
   Use the `Elephant` library for the latest TSPE implementation.

   To install Elephant:

   ```bash
   pip install elephant
   ```

4. **Further Information**:
   Refer to the publication for theoretical details and performance analysis of the TSPE algorithm.

## Citation

If you use TSPE in your research, please cite the original publication:
**De Blasi, S., Ciba, M., Bahmer, A., & Thielemann, C. (2019).**
*Total spiking probability edges: A cross-correlation-based method for effective connectivity estimation of cortical spiking neurons.*
Journal of Neuroscience Methods, 312, 169–181.
DOI: [10.1016/j.jneumeth.2018.11.013](https://doi.org/10.1016/j.jneumeth.2018.11.013)
[Link to the publication](https://www.sciencedirect.com/science/article/abs/pii/S0165027018303819)

## License

This project is distributed under the MIT License. See the `LICENSE` file for details.

## Contact

For inquiries or issues related to this repository, please contact:

Manuel Ciba

manuel.ciba@th-ab.de

or 

BioMEMS lab (University of Applied Sciences)

biomems.lab.thab@gmail.com


