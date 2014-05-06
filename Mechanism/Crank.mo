within Mechanism;
model Crank
    parameter Modelica.SIunits.Length a "Crank length";
  PlanarMechanics.Parts.Fixed fixed(r=ground)
    annotation (Placement(transformation(extent={{50,-10},{70,10}})));
  PlanarMechanics.Joints.Revolute revolute1(useFlange=true)
    annotation (Placement(transformation(extent={{20,-10},{40,10}})));
  PlanarMechanics.Parts.FixedTranslation fixedTranslation(r={a,0})
    annotation (Placement(transformation(extent={{-30,-10},{-10,10}})));
  PlanarMechanics.Interfaces.Frame_a frame_a annotation (Placement(
        transformation(rotation=0, extent={{-110,-10},{-90,10}})));
  Modelica.Mechanics.Rotational.Interfaces.Flange_a flange_a
    annotation (Placement(transformation(rotation=0, extent={{10,90},{30,110}})));
  parameter Modelica.SIunits.Position ground[2]={0,0} "fixed x,y-position";
equation
  connect(revolute1.frame_b,fixed. frame_a) annotation (Line(
      points={{40,0},{50,0}},
      color={95,95,95},
      thickness=0.5,
      smooth=Smooth.None));
  connect(fixedTranslation.frame_b, revolute1.frame_a) annotation (Line(
      points={{-10,0},{20,0}},
      color={95,95,95},
      thickness=0.5,
      smooth=Smooth.None));
  connect(frame_a, fixedTranslation.frame_a)
    annotation (Line(points={{-100,0},{-30,0}}, color={95,95,95}));
  connect(flange_a, revolute1.flange_a) annotation (Line(points={{20,100},{26,100},
          {26,10},{30,10}}, color={0,0,0}));
end Crank;
