model Belt
  Modelica.Mechanics.Rotational.Interfaces.Flange_a flange_a annotation(
    Placement(transformation(origin = {-92, 4}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {-78, 4}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.Rotational.Components.Inertia inertia_j1(J = 4.24e-7)  annotation(
    Placement(transformation(origin = {-68, 4}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.Rotational.Components.Damper damper_b1(d = 2e-5)  annotation(
    Placement(transformation(origin = {-68, 46}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.Rotational.Components.Fixed fixed annotation(
    Placement(transformation(origin = {-58, 58}, extent = {{-10, 10}, {10, -10}})));
  Modelica.Mechanics.Rotational.Components.IdealGearR2T idealGearR2T_1(ratio = 100)  annotation(
    Placement(transformation(origin = {-32, 4}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.Rotational.Components.IdealGearR2T idealGearR2T(ratio = 25)  annotation(
    Placement(transformation(origin = {24, 4}, extent = {{10, -10}, {-10, 10}})));
  Modelica.Mechanics.Rotational.Components.Inertia inertia_j2(J = 1.63e-4)  annotation(
    Placement(transformation(origin = {58, 4}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.Rotational.Components.Damper damper_b2(d = 5e-5)  annotation(
    Placement(transformation(origin = {58, 38}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.Rotational.Components.Fixed fixed2 annotation(
    Placement(transformation(origin = {68, 58}, extent = {{-10, 10}, {10, -10}}, rotation = -0)));
  Modelica.Mechanics.Rotational.Interfaces.Flange_b flange_b annotation(
    Placement(transformation(origin = {80, 4}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {80, 4}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.Translational.Components.Spring spring_C(c = 66667)  annotation(
    Placement(transformation(origin = {-4, 4}, extent = {{-10, -10}, {10, 10}})));
equation
  connect(inertia_j1.flange_a, flange_a) annotation(
    Line(points = {{-78, 4}, {-92, 4}}));
  connect(damper_b1.flange_a, inertia_j1.flange_a) annotation(
    Line(points = {{-78, 46}, {-78, 4}}));
  connect(fixed.flange, damper_b1.flange_b) annotation(
    Line(points = {{-58, 58}, {-58, 46}}));
  connect(inertia_j1.flange_b, idealGearR2T_1.flangeR) annotation(
    Line(points = {{-58, 4}, {-42, 4}}));
  connect(idealGearR2T.flangeR, inertia_j2.flange_a) annotation(
    Line(points = {{34, 4}, {48, 4}}));
  connect(damper_b2.flange_a, inertia_j2.flange_a) annotation(
    Line(points = {{48, 38}, {48, 4}}));
  connect(fixed2.flange, damper_b2.flange_b) annotation(
    Line(points = {{68, 58}, {68, 38}}));
  connect(inertia_j2.flange_b, flange_b) annotation(
    Line(points = {{68, 4}, {80, 4}}));
  connect(idealGearR2T_1.flangeT, spring_C.flange_a) annotation(
    Line(points = {{-22, 4}, {-14, 4}}, color = {0, 127, 0}));
  connect(spring_C.flange_b, idealGearR2T.flangeT) annotation(
    Line(points = {{6, 4}, {14, 4}}, color = {0, 127, 0}));
  annotation(
    uses(Modelica(version = "4.0.0")));
end Belt;
