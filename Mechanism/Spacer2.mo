within Mechanism;
model Spacer2
  PlanarMechanics.Parts.FixedTranslation fixedTranslation(r=r1, animate=animate)
    annotation (Placement(transformation(extent={{20,20},{40,40}})));
  PlanarMechanics.Parts.FixedTranslation fixedTranslation1(r=r3, animate=
        animate)
    annotation (Placement(transformation(extent={{-8,-70},{12,-50}})));
  PlanarMechanics.Interfaces.Frame_b frame_b1 annotation (Placement(
        transformation(
        extent={{-10,-10},{10,10}},
        rotation=90,
        origin={-60,100})));
  PlanarMechanics.Interfaces.Frame_a frame_a1 annotation (Placement(
        transformation(
        extent={{-10,-10},{10,10}},
        rotation=90,
        origin={-60,-102})));
  PlanarMechanics.Interfaces.Frame_b frame_b2
    annotation (Placement(transformation(extent={{90,-10},{110,10}})));
  parameter Modelica.SIunits.Length r1[2]={1,0}
    "length of the rod resolved w.r.t to body frame at phi = 0";
  parameter Boolean animate=true "= true, if animation shall be enabled";
  parameter Modelica.SIunits.Length r2[2]={1,0}
    "length of the rod resolved w.r.t to body frame at phi = 0";
  parameter Modelica.SIunits.Length r3[2]={1,0}
    "length of the rod resolved w.r.t to body frame at phi = 0";
equation
  connect(fixedTranslation.frame_b, frame_b2) annotation (Line(
      points={{40,30},{100,30},{100,0}},
      color={95,95,95},
      thickness=0.5,
      smooth=Smooth.None));
  connect(frame_b2, fixedTranslation1.frame_b) annotation (Line(
      points={{100,0},{56,0},{56,-60},{12,-60}},
      color={95,95,95},
      thickness=0.5,
      smooth=Smooth.None));
  connect(fixedTranslation1.frame_a, frame_a1) annotation (Line(
      points={{-8,-60},{-60,-60},{-60,-102}},
      color={95,95,95},
      thickness=0.5,
      smooth=Smooth.None));
  connect(fixedTranslation.frame_a, frame_b1) annotation (Line(
      points={{20,30},{-60,30},{-60,100}},
      color={95,95,95},
      thickness=0.5,
      smooth=Smooth.None));
  annotation (Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,
            -100},{100,100}}), graphics), Icon(coordinateSystem(
          preserveAspectRatio=false, extent={{-100,-100},{100,100}}), graphics={
          Polygon(
          points={{-60,96},{96,0},{-60,-96},{-60,96}},
          lineColor={0,0,0},
          smooth=Smooth.None,
          fillColor={135,135,135},
          fillPattern=FillPattern.Solid)}));
end Spacer2;
