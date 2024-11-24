Lab1 2024 HT


Task 1.1 Implement the two models in the corresponding simulation environment. Simulate the two models and verify that they give the same simulation results.

Task 1.2 Both the time constants of the motor are given in Figure 8 in Appendix A. The
electrical time constants is defined as the time constant of the current when a voltage step
is applied and the motor axel does not move. The mechanical time constant is defined as
the time constant for the angular velocity when a voltage step is applied and the motor is
without load.
Time constants can also be computed with the help of the constants and from simulation.
Make some comparisons between the time constants obtained from the model and those
obtained from the simulations. Are they the same? Why/why not?

Task 1.3 Now study the OpenModelica model closer. One way to figure out which
variables have been selected as state variables for simulation is by looking in the Variables
Browser (in the Plot View) and see for which variables the derivative is computed.

Task 1.4 Make the model of the DC-motor in a way that it can be easily used again during
Lab session 2. A good solution is to make the motor a block, and thus allow hierarchical
modelling. This can be done by giving the model inputs and outputs. Input and Output
Port are automatically added in Simulink when a submodel is created. OpenModelica
uses different Interfaces for different domains: Pin in the electrical domain and Flange
in the mechanical domain.

Task 1.5 Extra task, to be solved if time is left If you have larger currents in an
inductor you might want to use a nonlinear model to better describe the physics. A model
suitable for some coils is

                             Φ(t) = k1 arctan(k2iL(t))
                             Φ(˙ t) = k3uL(t)

where iL(t) is the current, uL(t) is the voltage, Φ(t) is the magnetic flow through the coil.
Create this model in OpenModelica (see Appendix C) and use it instead of the earlier
inductance in the motor model. Let k1 = 1, k2 = 1 and k3 = 1. Try simulating the model
for different input voltages. How large inputs are needed before you can see that the model
is nonlinear?
