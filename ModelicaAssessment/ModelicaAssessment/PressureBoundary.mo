within ModelicaAssessment;
model PressureBoundary
    // Interfaces
    .ModelicaAssessment.Interfaces.Outlet outlet "Outlet port" annotation(Placement(transformation(extent = {{90,-10},{110,10}},origin = {0,0},rotation = 0)));

    // Parameters
    Modelica.Units.SI.Pressure p(nominal = 1e5) = 10e5 "Setpoint for gauge pressure at port";
    Modelica.Units.SI.Temperature T(nominal = 293.15) = 293.15 "Setpoint for temperature at port";

equation
    outlet.p = p "Set pressure to port";
    outlet.h_outflow = (0*p + 0*T) "In reality, it would be a proper fluid-dependent function of p and T";
    annotation(Icon(coordinateSystem(preserveAspectRatio = false,extent = {{-100.0,-100.0},{100.0,100.0}}),graphics={  Rectangle(lineColor={208,2,27},fillColor={230,230,230},fillPattern=FillPattern.Solid,extent={{-100.0,-100.0},{100.0,100.0}},radius=100),Text(lineColor={0,0,255},extent={{-150,150},{150,110}},textString="%name")}),Documentation(info = "<html><p>The PressureBoundary applies the pressure and temperature setpoints at its port.</p></html>"));
end PressureBoundary;
