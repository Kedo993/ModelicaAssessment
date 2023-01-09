within ModelicaAssessment;
model LaminarPipe
    // import constant
    import Modelica.Constants.pi;

    // Template
    extends ModelicaAssessment2.Templates.SteadyPipeParameterInputVariants;

equation
    dp = 8*pi*mu*L*w/rho/(A*A) "Hagne-Poiseuille equation for laminar flow";
    w = inlet.w "Positive flow through the pipe";
    annotation(Documentation(info = "<html><p>The LaminarPipe is a SteadyPipe with the Hagen-Poiseuille equation for distributed&nbsp;laminar pressure losses.</p><p>No effort was put into numerical robustness yet.</p></html>"));
end LaminarPipe;
