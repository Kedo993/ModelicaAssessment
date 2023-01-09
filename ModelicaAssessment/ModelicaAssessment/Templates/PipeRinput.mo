within ModelicaAssessment.Templates;
partial model PipeRinput "Radius used as geometry paramatrisation"
  extends ModelicaAssessment.Templates.Pipe;

    // import constant
    import Modelica.Constants.pi;

  parameter Modelica.Units.SI.Length R(start=1) "Pipe inner radius" annotation(Dialog(group="Geometry"));
equation
  A = pi*R*R;
end PipeRinput;
