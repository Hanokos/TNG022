model cur_reg
  Modelica.Blocks.Math.Gain Q2(k = -2.2)  annotation(
    Placement(visible = true, transformation(origin = {77, 9}, extent = {{-3, -3}, {3, 3}}, rotation = 0)));
  Modelica.Blocks.Math.Gain R9(k = 0.022)  annotation(
    Placement(visible = true, transformation(origin = {14, -22}, extent = {{-4, -4}, {4, 4}}, rotation = 0)));
  Modelica.Blocks.Math.Gain R4(k = 3.7037e-05)  annotation(
    Placement(visible = true, transformation(origin = {-21, -7}, extent = {{5, -5}, {-5, 5}}, rotation = 0)));
  Modelica.Blocks.Math.Gain Q1(k = -1000000)  annotation(
    Placement(visible = true, transformation(origin = {61, 7}, extent = {{-3, -3}, {3, 3}}, rotation = 0)));
  Modelica.Blocks.Math.Gain Q3(k = -22)  annotation(
    Placement(visible = true, transformation(origin = {34, -8}, extent = {{4, -4}, {-4, 4}}, rotation = 0)));
  Modelica.Blocks.Math.Gain R1(k = 3.7037e-05)  annotation(
    Placement(visible = true, transformation(origin = {-42, 16}, extent = {{-4, -4}, {4, 4}}, rotation = 0)));
  Modelica.Blocks.Math.Gain C2(k = 3.0303e+09)  annotation(
    Placement(visible = true, transformation(origin = {9, 25}, extent = {{-5, -5}, {5, 5}}, rotation = 0)));
  Modelica.Blocks.Math.Gain R3(k = 1.0000e-05)  annotation(
    Placement(visible = true, transformation(origin = {1, 67}, extent = {{5, -5}, {-5, 5}}, rotation = 0)));
  Modelica.Blocks.Math.Gain C1(k = 2.1277e+07)  annotation(
    Placement(visible = true, transformation(origin = {-8, 48}, extent = {{-4, -4}, {4, 4}}, rotation = 0)));
  Modelica.Blocks.Math.Add add1(k2 = -1)  annotation(
    Placement(visible = true, transformation(origin = {-60, 14}, extent = {{-4, -4}, {4, 4}}, rotation = 0)));
  Modelica.Blocks.Continuous.Integrator integrator1 annotation(
    Placement(visible = true, transformation(origin = {26,24}, extent = {{-4, -4}, {4, 4}}, rotation = 0)));
  Modelica.Blocks.Math.Add add2(k1 = -1, k2 = +1) annotation(
    Placement(visible = true, transformation(origin = {48, 24}, extent = {{-4, -4}, {4, 4}}, rotation = 0)));
  Modelica.Blocks.Math.Add add3(k2 = -1) annotation(
    Placement(visible = true, transformation(origin = {46, 6}, extent = {{-4, -4}, {4, 4}}, rotation = 0)));
  Modelica.Blocks.Continuous.Integrator integrator2 annotation(
    Placement(visible = true, transformation(origin = {12, 48}, extent = {{-4, -4}, {4, 4}}, rotation = 0)));
  Modelica.Blocks.Math.Add add4(k1 = -1, k2 = -1) annotation(
    Placement(visible = true, transformation(origin = {-26, 14}, extent = {{-4, -4}, {4, 4}}, rotation = 0)));
  Modelica.Blocks.Math.Add add5(k1 = -1, k2 = +1) annotation(
    Placement(visible = true, transformation(origin = {-10, 24}, extent = {{-4, -4}, {4, 4}}, rotation = 0)));
  Modelica.Blocks.Math.Add add6(k1 = +1, k2 = -1) annotation(
    Placement(visible = true, transformation(origin = {88, 6}, extent = {{-4, -4}, {4, 4}}, rotation = 0)));
  Modelica.Blocks.Math.Add add7(k1 = -1, k2 = +1) annotation(
    Placement(visible = true, transformation(origin = {0, -4}, extent = {{4, -4}, {-4, 4}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput u annotation(
    Placement(visible = true, transformation(origin = {-81, -25}, extent = {{-9, -9}, {9, 9}}, rotation = 0), iconTransformation(origin = {-81, -25}, extent = {{-9, -9}, {9, 9}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput u1 annotation(
    Placement(visible = true, transformation(origin = {-91, 17}, extent = {{-9, -9}, {9, 9}}, rotation = 0), iconTransformation(origin = {-91, 17}, extent = {{-9, -9}, {9, 9}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealOutput y annotation(
    Placement(visible = true, transformation(origin = {94, -22}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {94, -22}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(add6.y, y) annotation(
    Line(points = {{92, 6}, {98, 6}, {98, -8}, {78, -8}, {78, -22}, {94, -22}, {94, -22}}, color = {0, 0, 127}));
  connect(R9.y, add6.u2) annotation(
    Line(points = {{18, -22}, {72, -22}, {72, 4}, {83, 4}}, color = {0, 0, 127}));
  connect(Q2.y, add6.u1) annotation(
    Line(points = {{80, 10}, {83, 10}, {83, 8}}, color = {0, 0, 127}));
  connect(u1, add1.u1) annotation(
    Line(points = {{-90, 18}, {-66, 18}, {-66, 16}, {-64, 16}}, color = {0, 0, 127}));
  connect(integrator2.y, add2.u1) annotation(
    Line(points = {{16, 48}, {40, 48}, {40, 26}, {44, 26}}, color = {0, 0, 127}));
  connect(C1.y, integrator2.u) annotation(
    Line(points = {{-4, 48}, {7, 48}}, color = {0, 0, 127}));
  connect(add1.y, R1.u) annotation(
    Line(points = {{-56, 14}, {-48, 14}, {-48, 16}, {-46, 16}}, color = {0, 0, 127}));
  connect(u, R9.u) annotation(
    Line(points = {{-80, -24}, {8, -24}, {8, -22}, {10, -22}}, color = {0, 0, 127}));
  connect(R9.y, Q3.u) annotation(
    Line(points = {{18, -22}, {46, -22}, {46, -8}, {39, -8}}, color = {0, 0, 127}));
  connect(Q3.y, add7.u2) annotation(
    Line(points = {{30, -8}, {18.5, -8}, {18.5, -6}, {5, -6}}, color = {0, 0, 127}));
  connect(R4.y, add4.u2) annotation(
    Line(points = {{-26.5, -7}, {-36, -7}, {-36, 12}, {-30, 12}}, color = {0, 0, 127}));
  connect(add7.y, R4.u) annotation(
    Line(points = {{-4, -4}, {-11, -4}, {-11, -7}, {-15, -7}}, color = {0, 0, 127}));
  connect(R3.y, C1.u) annotation(
    Line(points = {{-4.5, 67}, {-26.3, 67}, {-26.3, 48}, {-13, 48}}, color = {0, 0, 127}));
  connect(R3.y, add5.u1) annotation(
    Line(points = {{-4.5, 67}, {-26, 67}, {-26, 26}, {-14, 26}}, color = {0, 0, 127}));
  connect(add2.y, R3.u) annotation(
    Line(points = {{52, 24}, {56, 24}, {56, 70}, {7, 70}, {7, 67}}, color = {0, 0, 127}));
  connect(add3.y, add1.u2) annotation(
    Line(points = {{50, 6}, {54, 6}, {54, 4}, {-68, 4}, {-68, 12}, {-64, 12}, {-64, 12}}, color = {0, 0, 127}));
  connect(add3.y, add7.u1) annotation(
    Line(points = {{50, 6}, {52, 6}, {52, -2}, {4, -2}, {4, -2}}, color = {0, 0, 127}));
  connect(Q2.u, Q1.y) annotation(
    Line(points = {{73, 9}, {69, 9}, {69, 8}, {64, 8}}, color = {0, 0, 127}));
  connect(Q1.y, add3.u1) annotation(
    Line(points = {{64, 8}, {70, 8}, {70, 18}, {38, 18}, {38, 8}, {42, 8}, {42, 8}}, color = {0, 0, 127}));
  connect(add3.y, Q1.u) annotation(
    Line(points = {{50, 6}, {58, 6}, {58, 8}, {58, 8}}, color = {0, 0, 127}));
  connect(integrator1.y, add3.u2) annotation(
    Line(points = {{30, 24}, {36, 24}, {36, 4}, {41, 4}}, color = {0, 0, 127}));
  connect(C2.y, integrator1.u) annotation(
    Line(points = {{14.5, 25}, {16.5, 25}, {16.5, 24}, {21, 24}}, color = {0, 0, 127}));
  connect(add5.y, C2.u) annotation(
    Line(points = {{-6, 24}, {-1.5, 24}, {-1.5, 25}, {3, 25}}, color = {0, 0, 127}));
  connect(R1.y, add4.u1) annotation(
    Line(points = {{-38, 16}, {-31, 16}}, color = {0, 0, 127}));
  connect(integrator1.y, add2.u2) annotation(
    Line(points = {{30, 24}, {36.5, 24}, {36.5, 22}, {43, 22}}, color = {0, 0, 127}));
  connect(add4.y, add5.u2) annotation(
    Line(points = {{-22, 14}, {-16, 14}, {-16, 22}, {-14, 22}}, color = {0, 0, 127}));
  end cur_reg;
