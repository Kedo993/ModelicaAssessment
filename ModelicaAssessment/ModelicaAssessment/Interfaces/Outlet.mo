within ModelicaAssessment.Interfaces;
connector Outlet "Component outlet - only flow leaving the component"
    extends .ModelicaAssessment.Interfaces.FluidPort(w(final max=0));
    annotation(Icon(graphics = {Ellipse(origin={1,0},extent={{-99,100},{99,-100}},fillPattern=FillPattern.Solid,fillColor={208,2,27}),Ellipse(origin={2,-2},extent={{-40.754716981132106,40.58711174828245},{40,-40}},fillPattern=FillPattern.Solid,fillColor={255,255,255})}),Documentation(info = "<html><p>The outlet connector is a FluidPort with a maximum flow set to zero - as this packages assumes positive flow.</p></html>"));
end Outlet;
