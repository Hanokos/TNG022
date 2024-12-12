model Modellen
  // Declare an instance of the DCmotor model
  DCmotor Motor annotation(
    Placement(transformation(origin = {17, 17}, extent = {{-7, -7}, {7, 7}})));
  cur_reg cur_reg1 annotation(
    Placement(transformation(origin = {-48, 18}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Sources.Constant const(k = 0.7)  annotation(
    Placement(transformation(origin = {-90, 20}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Electrical.Analog.Sources.SignalVoltage signalVoltage annotation(
    Placement(transformation(origin = {-14, 16}, extent = {{-10, 10}, {10, -10}}, rotation = -90)));
  Belt belt annotation(
    Placement(transformation(origin = {39, 17}, extent = {{-7, -7}, {7, 7}})));
  Screw screw annotation(
    Placement(transformation(origin = {60, 16}, extent = {{-6, -6}, {6, 6}})));
  Arm arm annotation(
    Placement(transformation(origin = {84, 16}, extent = {{-8, -8}, {8, 8}})));
equation
// Add any equations defining interaction with `myDCmotor` here (if needed)
  connect(const.y, cur_reg1.u1) annotation(
    Line(points = {{-79, 20}, {-57, 20}}, color = {0, 0, 127}));
  connect(cur_reg1.y, signalVoltage.v) annotation(
    Line(points = {{-39, 16}, {-26, 16}}, color = {0, 0, 127}));
  connect(signalVoltage.p, Motor.pin_p) annotation(
    Line(points = {{-14, 26}, {4, 26}, {4, 19}, {12, 19}}, color = {0, 0, 255}));
  connect(signalVoltage.n, Motor.pin_n) annotation(
    Line(points = {{-14, 6}, {4, 6}, {4, 15}, {12, 15}}, color = {0, 0, 255}));
  connect(Motor.y, cur_reg1.u) annotation(
    Line(points = {{16, 13}, {16, -2}, {-64, -2}, {-64, 15.5}, {-56, 15.5}}, color = {0, 0, 127}));
  connect(Motor.flange_b, belt.flange_a) annotation(
    Line(points = {{23, 19}, {34, 19}, {34, 17}}));
  connect(belt.flange_b, screw.flange_a) annotation(
    Line(points = {{45, 17}, {55, 17}, {55, 16}}));
  connect(screw.flange_b, arm.flange_a) annotation(
    Line(points = {{63, 16}, {63, 17}, {77, 17}}, color = {0, 127, 0}));
  annotation(
    uses(Modelica(version = "4.0.0")));
end Modellen;
