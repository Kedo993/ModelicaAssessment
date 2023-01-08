within ModelicaAssessment;
package Experiments
  model PipeInSystem
    LaminarPipe laminarPipe(L=1, A=5e-4)
      annotation (Placement(transformation(extent={{-28,-24},{12,12}})));
    PressureBoundary pressureBoundary
      annotation (Placement(transformation(extent={{-158,-16},{-138,4}})));
    PressureBoundary pressureBoundary1
      annotation (Placement(transformation(extent={{110,-18},{82,6}})));
  equation
    connect(pressureBoundary.outlet, laminarPipe.inlet)
      annotation (Line(points={{-138,-6},{-28,-6}}, color={0,0,0}));
    connect(laminarPipe.outlet, pressureBoundary1.outlet)
      annotation (Line(points={{12,-6},{82,-6}}, color={0,0,0}));
    annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
          coordinateSystem(preserveAspectRatio=false)));
  end PipeInSystem;
end Experiments;
