within ModelicaAssessment.Templates;
model PipeGeometryParameters
  "Base Class which defines parametrisation method for pipe"

   // import constant
    import Modelica.Constants.pi;

  parameter ModelicaAssessment.Types.GeomInitTypes PipeData = ModelicaAssessment.Types.GeomInitTypes.Area
    "Selection of parametrisation variant"
   annotation(Dialog(group = "Geometry"));

  parameter Modelica.Units.SI.Area A(
    fixed= if PipeData==ModelicaAssessment.Types.GeomInitTypes.Area then true else false)
    "Inner pipe area"
  annotation(Dialog(group = "Geometry",
                    enable = (PipeData==ModelicaAssessment.Types.GeomInitTypes.Area)));

    parameter Modelica.Units.SI.Length R(
    fixed= if PipeData==ModelicaAssessment.Types.GeomInitTypes.Radius then true else false)
    "Inner pipe radius"
  annotation(Dialog(group = "Geometry",
                    enable = (PipeData==ModelicaAssessment.Types.GeomInitTypes.Radius)));

    parameter Modelica.Units.SI.Length D(
    fixed= if PipeData==ModelicaAssessment.Types.GeomInitTypes.Diameter then true else false)
    "Inner pipe diameter"
  annotation(Dialog(group = "Geometry",
                    enable = (PipeData==ModelicaAssessment.Types.GeomInitTypes.Diameter)));

initial equation
  if  PipeData==ModelicaAssessment.Types.GeomInitTypes.Area then
    A = A;
  elseif PipeData==ModelicaAssessment.Types.GeomInitTypes.Radius then
    A = pi*R*R;

  else
    A = pi*(D/2)*(D/2);

  end if;

  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end PipeGeometryParameters;
