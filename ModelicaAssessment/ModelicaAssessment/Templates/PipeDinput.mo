within ModelicaAssessment.Templates;
partial model PipeDinput "Diameter used as geometry paramatrisation"
    // import constant
    import Modelica.Constants.pi;


    // Interfaces
    .ModelicaAssessment.Interfaces.Inlet inlet annotation(Placement(transformation(extent = {{-110.0,-10.0},{-90.0,10.0}},origin = {0.0,0.0},rotation = 0.0)));
    .ModelicaAssessment.Interfaces.Outlet outlet annotation(Placement(transformation(extent = {{90.0,-10.0},{110.0,10.0}},origin = {0.0,0.0},rotation = 0.0)));

    // Fluid properties
    Modelica.Units.SI.Density rho=850 "Fluid density" annotation(Dialog(group="Fluid Properties")); // Should be function of p and T
    Modelica.Units.SI.DynamicViscosity mu=1e-5 "Fluid dynamic viscosity" annotation(Dialog(group="Fluid Properties"));

    // Geometry
    parameter Modelica.Units.SI.Length L(start=1) "Pipe length" annotation(Dialog(group="Geometry"));
    parameter Modelica.Units.SI.Length D(start=0.06) "Pipe inner radius" annotation(Dialog(group="Geometry"));
    Modelica.Units.SI.Area A = pi*(D/2)*(D/2)  "Pipe Area";
    // Auxiliary variables
    Modelica.Units.SI.PressureDifference dp(nominal=1e5) = inlet.p - outlet.p "Delta pressure (inlet - outlet)";
    Modelica.Units.SI.MassFlowRate w = inlet.w "Positive flow through the pipe";

    annotation(Icon(coordinateSystem(preserveAspectRatio = false,extent = {{-100.0,-100.0},{100.0,100.0}}),graphics={  Rectangle(fillColor={230,230,230},fillPattern=FillPattern.Solid,extent={{-100,-31},{100,31}},radius=18),Text(lineColor={0,0,255},extent={{-150,150},{150,110}},textString="%name"),Line(points={{-40.04696655272656,-0.00002116361176973669},{40.04696655272656,0.000021163611762631263}},arrow={Arrow.None,Arrow.Filled},arrowSize=6,color={208,2,27})}),Documentation(info = "<html><p>The partial Pipe includes:</p><ul><li>the interfaces of the pipe: inlet and outlet,</li><li>the calls for fluid properties (here simple parameters though),</li><li>the geometrical parametrization and</li><li>some relevant auxiliary variables.</li></ul></html>"));
end PipeDinput;