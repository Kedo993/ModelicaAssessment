within ModelicaAssessment.Interfaces;
connector Inlet "Component inlet - only entering flow to the component"
    extends .ModelicaAssessment.Interfaces.FluidPort(w(final min=0));
    annotation(Icon(graphics={  Ellipse(origin={1,0},extent={{-99,100},{99,-100}},fillPattern=FillPattern.Solid,fillColor={208,2,27})}),Documentation(info = "<html><p>The inlet connector is a FluidPort with a minimum flow set to zero - as this packages assumes positive flow.</p></html>"));
end Inlet;
