# Hexblade Positioner


Here we introduce a new 6-axes positioner, called a hexblade positioner, that achieves high speeds over large ranges with high precision. The positioner achieves these capabilities due to its bent-blade-flexure topology, which decouples its 6 actuators. A matrix-based analytical approach is used to model the stiffness and inertia of the positioner’s topology and its performance capabilities are subsequently calculated and plotted for each version of the design over a comprehensive sweep of its geometric parameters.


A MATLAB tool is used to analytically calculate and plot the complete performance capabilities of the hexblade positioner design. For each design version that is deemed geometrically feasible, the tool calculates and plots its first natural frequency, versus its normalized range, for a given set of weight factors. The MATLAB approach leverages the boundary learning optimization tool (BLOT) to intelligently guide which geometrically feasible design versions are calculated and plotted within the parameter sweep so that the rigorous boundary of the resulting plot can be efficiently identified.
