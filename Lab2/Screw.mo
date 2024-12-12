model Screw
  Modelica.Mechanics.Rotational.Interfaces.Flange_a flange_a annotation(
    Placement(transformation(origin = {-90, 6}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {-90, 6}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.Rotational.Components.Inertia inertia_Jscrew(J = 1.45e-5)  annotation(
    Placement(transformation(origin = {-56, 6}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.Rotational.Components.IdealGearR2T idealGearR2T_3(ratio = 250)  annotation(
    Placement(transformation(origin = {-14, 6}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.Translational.Components.Spring spring_C(c = 75000)  annotation(
    Placement(transformation(origin = {18, 6}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.Translational.Interfaces.Flange_b flange_b annotation(
    Placement(transformation(origin = {58, 6}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {58, 6}, extent = {{-10, -10}, {10, 10}})));
equation
  connect(inertia_Jscrew.flange_a, flange_a) annotation(
    Line(points = {{-66, 6}, {-90, 6}}));
  connect(inertia_Jscrew.flange_b, idealGearR2T_3.flangeR) annotation(
    Line(points = {{-46, 6}, {-24, 6}}));
  connect(idealGearR2T_3.flangeT, spring_C.flange_a) annotation(
    Line(points = {{-4, 6}, {8, 6}}, color = {0, 127, 0}));
  connect(spring_C.flange_b, flange_b) annotation(
    Line(points = {{28, 6}, {58, 6}}, color = {0, 127, 0}));

annotation(
    uses(Modelica(version = "4.0.0")));
end Screw;
