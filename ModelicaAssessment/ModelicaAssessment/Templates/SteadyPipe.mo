within ModelicaAssessment.Templates;
partial model SteadyPipe
    // Template with interfaces and auxiliary variables
    extends .ModelicaAssessment.Templates.Pipe;
    
equation
    inlet.w + outlet.w = 0 "No mass storage";
    annotation(Documentation(info = "<html><p>The SteadyPipe template is a specialization of the Pipe template, in which no mass storage is assume (no pressure state).</p></html>"));

end SteadyPipe;
