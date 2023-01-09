within ModelicaAssessment;
package Experiments
  model PipeInSystem
    LaminarPipe laminarPipe(L=1, A=5e-4)
      annotation (Placement(transformation(extent={{-28,-24},{12,12}})));
    PressureBoundary pressureBoundary(p=1000000)
      annotation (Placement(transformation(extent={{-158,-16},{-138,4}})));
    PressureBoundary pressureBoundary1(p=900000)
      annotation (Placement(transformation(extent={{110,-18},{82,6}})));
  equation
    connect(pressureBoundary.outlet, laminarPipe.inlet)
      annotation (Line(points={{-138,-6},{-28,-6}}, color={0,0,0}));
    connect(laminarPipe.outlet, pressureBoundary1.outlet)
      annotation (Line(points={{12,-6},{82,-6}}, color={0,0,0}));
    annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
          coordinateSystem(preserveAspectRatio=false)));
  end PipeInSystem;

  model PipeInSystemMflowRate
    "Variant where mass flow rate it set directly at boundary using input signal"
    LaminarPipe laminarPipe(L=1, A=5e-4)
      annotation (Placement(transformation(extent={{-28,-24},{12,12}})));
    MassFlowRateBoundary MflowBoundary
      annotation (Placement(transformation(extent={{-158,-16},{-138,4}})));
    PressureBoundary PressureBoundary1(p=900000)
      annotation (Placement(transformation(extent={{110,-18},{82,6}})));
    Modelica.Blocks.Sources.Pulse pulse(
      amplitude=1,
      width=30,
      period=60,
      offset=-0.5)
      annotation (Placement(transformation(extent={{-220,-38},{-200,-18}})));
  equation
    connect(MflowBoundary.outlet, laminarPipe.inlet)
      annotation (Line(points={{-138,-6},{-28,-6}}, color={0,0,0}));
    connect(laminarPipe.outlet, PressureBoundary1.outlet)
      annotation (Line(points={{12,-6},{82,-6}}, color={0,0,0}));
    connect(pulse.y, MflowBoundary.w) annotation (Line(points={{-199,-28},{-186,
            -28},{-186,-26},{-172,-26},{-172,-4.4},{-157.4,-4.4}}, color={0,0,
            127}));
    annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
          coordinateSystem(preserveAspectRatio=false)));
  end PipeInSystemMflowRate;

  model PipeInSystem_ParamVariants
    LaminarPipe_ParamVariants laminarPipe_ParamVariants(L=1, A=5e-4)
      annotation (Placement(transformation(extent={{-28,-24},{12,12}})));
    PressureBoundary pressureBoundary(p=1000000)
      annotation (Placement(transformation(extent={{-158,-16},{-138,4}})));
    PressureBoundary pressureBoundary1(p=900000)
      annotation (Placement(transformation(extent={{110,-18},{82,6}})));
  equation
    connect(pressureBoundary.outlet, laminarPipe_ParamVariants.inlet)
      annotation (Line(points={{-138,-6},{-28,-6}}, color={0,0,0}));
    connect(laminarPipe_ParamVariants.outlet, pressureBoundary1.outlet)
      annotation (Line(points={{12,-6},{82,-6}}, color={0,0,0}));
    annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
          coordinateSystem(preserveAspectRatio=false)));
  end PipeInSystem_ParamVariants;
end Experiments;
