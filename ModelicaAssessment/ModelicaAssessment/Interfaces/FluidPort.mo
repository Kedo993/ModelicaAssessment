within ModelicaAssessment.Interfaces;
partial connector FluidPort "Generic fluid port"
    Modelica.Units.SI.Pressure p(nominal = 1e5) "Gauge pressure at port";
    flow Modelica.Units.SI.MassFlowRate w "Mass flow rate through port";
    stream Modelica.Units.SI.SpecificEnthalpy h_outflow "Specific Enthalpy leaving the component";

    annotation(Icon(coordinateSystem(preserveAspectRatio = false,extent = {{-100.0,-100.0},{100.0,100.0}}),graphics={  Ellipse(lineColor={0,0,0},fillColor={100,100,100},fillPattern=FillPattern.Solid,pattern=LinePattern.None,extent={{-100.0,-100.0},{100.0,100.0}})}),Documentation(info = "<html><p>Generic fluid port with pressure, mass flow rate and enthalpy variables.</p><p>This connector is made partial to avoid direct usage. Variants of it specify inlet and outlet configurations.</p></html>"));
end FluidPort;
