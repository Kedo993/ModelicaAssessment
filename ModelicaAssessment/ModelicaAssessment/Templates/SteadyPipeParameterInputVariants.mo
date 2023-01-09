within ModelicaAssessment.Templates;
partial model SteadyPipeParameterInputVariants
  "Extension of base class with drop down menu for parametrisation"
    // Template with interfaces and auxiliary variables
    extends ModelicaAssessment.Templates.Pipe_ParamVariants;

equation
    inlet.w + outlet.w = 0 "No mass storage";
    inlet.p = outlet.p + dp "define pressure at outlet";
    annotation(Documentation(info = "<html><p>The SteadyPipe template is a specialization of the Pipe template, in which no mass storage is assume (no pressure state).</p></html>"));
end SteadyPipeParameterInputVariants;
