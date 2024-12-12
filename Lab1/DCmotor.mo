model DCmotor
  Modelica.Electrical.Analog.Interfaces.NegativePin pin_n annotation(
    Placement(transformation(origin = {-80, -4}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {-78, -28}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Electrical.Analog.Interfaces.PositivePin pin_p annotation(
    Placement(transformation(origin = {-80, 16}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {-78, 24}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Electrical.Analog.Basic.RotationalEMF emf(k = 0.056)  annotation(
    Placement(transformation(origin = {18, 6}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.Rotational.Components.Inertia inertia(J = 3.88*10^(-5))  annotation(
    Placement(transformation(origin = {58, 30}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.Rotational.Interfaces.Flange_b flange_b annotation(
    Placement(transformation(origin = {82, 30}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {88, 30}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.Rotational.Components.Damper damper(d = 1.2e-4)  annotation(
    Placement(transformation(origin = {58, -18}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.Rotational.Components.Fixed fixed annotation(
    Placement(transformation(origin = {76, -26}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Electrical.Analog.Basic.Resistor resistor(R = 0.35)  annotation(
    Placement(transformation(origin = {-56, 30}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Electrical.Analog.Basic.Resistor resistor_RI(R = 0.8)  annotation(
    Placement(transformation(origin = {-26, 30}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Electrical.Analog.Basic.Inductor inductor(L = 3.39*10^(-3))  annotation(
    Placement(transformation(origin = {0, 30}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Electrical.Analog.Basic.Ground ground1 annotation(
    Placement(transformation(origin = {-46, -14}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Electrical.Analog.Sensors.CurrentSensor currentSensor annotation(
    Placement(transformation(origin = {-14, -4}, extent = {{-10, 10}, {10, -10}}, rotation = -180)));
  Modelica.Blocks.Interfaces.RealOutput y annotation(
    Placement(transformation(origin = {-12, -38}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {-12, -52}, extent = {{-10, -10}, {10, 10}})));
equation
  connect(inertia.flange_b, flange_b) annotation(
    Line(points = {{68, 30}, {82, 30}}));
  connect(damper.flange_a, inertia.flange_a) annotation(
    Line(points = {{48, -18}, {48, 30}}));
  connect(fixed.flange, damper.flange_b) annotation(
    Line(points = {{76, -26}, {76, -18}, {68, -18}}));
  connect(emf.flange, inertia.flange_a) annotation(
    Line(points = {{28, 6}, {28, 30}, {48, 30}}));
  connect(pin_p, resistor.p) annotation(
    Line(points = {{-80, 16}, {-80, 30}, {-66, 30}}, color = {0, 0, 255}));
  connect(resistor.n, resistor_RI.p) annotation(
    Line(points = {{-46, 30}, {-36, 30}}, color = {0, 0, 255}));
  connect(inductor.n, emf.p) annotation(
    Line(points = {{10, 30}, {10, 32}, {18, 32}, {18, 16}}, color = {0, 0, 255}));
  connect(resistor_RI.n, inductor.p) annotation(
    Line(points = {{-16, 30}, {-10, 30}}, color = {0, 0, 255}));
  connect(pin_n, ground1.p) annotation(
    Line(points = {{-80, -4}, {-46, -4}}, color = {0, 0, 255}));
  connect(emf.n, currentSensor.p) annotation(
    Line(points = {{18, -4}, {-4, -4}}, color = {0, 0, 255}));
  connect(ground1.p, currentSensor.n) annotation(
    Line(points = {{-46, -4}, {-24, -4}}, color = {0, 0, 255}));
  connect(currentSensor.i, y) annotation(
    Line(points = {{-14, -14}, {-2, -14}, {-2, -38}, {-12, -38}}, color = {0, 0, 127}));
  annotation(
    uses(Modelica(version = "4.0.0")));
end DCmotor;
