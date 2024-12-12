model Arm
  Modelica.Mechanics.Translational.Interfaces.Flange_a flange_a annotation(
    Placement(transformation(origin = {-86, 12}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {-86, 12}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.Translational.Components.Mass mass(m = 5.5)  annotation(
    Placement(transformation(origin = {-24, 12}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.Translational.Components.Damper damper_b3(d = 25)  annotation(
    Placement(transformation(origin = {-24, -14}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.Translational.Components.Fixed fixed annotation(
    Placement(transformation(origin = {-2, -14}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
  Modelica.Mechanics.Translational.Sources.Force force annotation(
    Placement(transformation(origin = {6, 12}, extent = {{10, 10}, {-10, -10}})));
  Modelica.Blocks.Sources.Constant const(k = -54)  annotation(
    Placement(transformation(origin = {48, 12}, extent = {{10, -10}, {-10, 10}}, rotation = -0)));
equation
  connect(damper_b3.flange_b, fixed.flange) annotation(
    Line(points = {{-14, -14}, {-2, -14}}, color = {0, 127, 0}));
  connect(mass.flange_b, force.flange) annotation(
    Line(points = {{-14, 12}, {-4, 12}}, color = {0, 127, 0}));
  connect(force.f, const.y) annotation(
    Line(points = {{18, 12}, {38, 12}}, color = {0, 0, 127}));
  connect(damper_b3.flange_a, mass.flange_a) annotation(
    Line(points = {{-34, -14}, {-34, 12}}, color = {0, 127, 0}));
  connect(flange_a, mass.flange_a) annotation(
    Line(points = {{-86, 12}, {-34, 12}}, color = {0, 127, 0}));

annotation(
    uses(Modelica(version = "4.0.0")));
end Arm;
