within Mechanism;
model Spacer
  PlanarMechanics.Joints.Revolute revolute(phi(start=1.5707963267949))
    annotation (Placement(transformation(extent={{-40,20},{-20,40}})));
  PlanarMechanics.Parts.FixedTranslation fixedTranslation(r=r1, animate=animate)
    annotation (Placement(transformation(extent={{20,20},{40,40}})));
  PlanarMechanics.Joints.Revolute revolute1(phi(start=1.5707963267949))
    annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=90,
        origin={60,0})));
  PlanarMechanics.Parts.FixedTranslation fixedTranslation1(r=r3, animate=
        animate)
    annotation (Placement(transformation(extent={{20,-40},{40,-20}})));
  PlanarMechanics.Parts.FixedTranslation fixedTranslation2(r=r2, animate=
        animate) annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=90,
        origin={-60,0})));
  PlanarMechanics.Joints.Revolute revolute2(phi(start=1.5707963267949))
    annotation (Placement(transformation(extent={{-40,-40},{-20,-20}})));
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
  connect(fixedTranslation2.frame_b, revolute.frame_a) annotation (Line(
      points={{-60,10},{-60,30},{-40,30}},
      color={95,95,95},
      thickness=0.5,
      smooth=Smooth.None));
  connect(revolute.frame_b, fixedTranslation.frame_a) annotation (Line(
      points={{-20,30},{20,30}},
      color={95,95,95},
      thickness=0.5,
      smooth=Smooth.None));
  connect(fixedTranslation.frame_b, revolute1.frame_b) annotation (Line(
      points={{40,30},{60,30},{60,10}},
      color={95,95,95},
      thickness=0.5,
      smooth=Smooth.None));
  connect(revolute2.frame_a, fixedTranslation2.frame_a) annotation (Line(
      points={{-40,-30},{-60,-30},{-60,-10}},
      color={95,95,95},
      thickness=0.5,
      smooth=Smooth.None));
  connect(revolute2.frame_b, fixedTranslation1.frame_a) annotation (Line(
      points={{-20,-30},{20,-30}},
      color={95,95,95},
      thickness=0.5,
      smooth=Smooth.None));
  connect(fixedTranslation1.frame_b, revolute1.frame_a) annotation (Line(
      points={{40,-30},{60,-30},{60,-10}},
      color={95,95,95},
      thickness=0.5,
      smooth=Smooth.None));
  connect(fixedTranslation2.frame_b, frame_b1) annotation (Line(
      points={{-60,10},{-60,100}},
      color={95,95,95},
      thickness=0.5,
      smooth=Smooth.None));
  connect(fixedTranslation2.frame_a, frame_a1) annotation (Line(
      points={{-60,-10},{-60,-102}},
      color={95,95,95},
      thickness=0.5,
      smooth=Smooth.None));
  connect(fixedTranslation.frame_b, frame_b2) annotation (Line(
      points={{40,30},{100,30},{100,0}},
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
end Spacer;
