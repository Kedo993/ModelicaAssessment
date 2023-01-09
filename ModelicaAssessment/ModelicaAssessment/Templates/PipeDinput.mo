within ModelicaAssessment.Templates;
partial model PipeDinput "Diameter used as geometry paramatrisation"
  extends ModelicaAssessment.Templates.Pipe;


      // import constant
    import Modelica.Constants.pi;

  parameter Modelica.Units.SI.Length D(start=1) "Pipe inner diameter" annotation(Dialog(group="Geometry"));
equation
  A = pi*(D/2)*(D/2);
end PipeDinput;
