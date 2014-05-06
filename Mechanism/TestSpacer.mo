within Mechanism;
model TestSpacer
  Spacer spacer annotation (Placement(transformation(extent={{-16,-16},{4,4}})));
  PlanarMechanics.Parts.Body body(m=1, I=1)
    annotation (Placement(transformation(extent={{2,16},{22,36}})));
  PlanarMechanics.Parts.Fixed fixed
    annotation (Placement(transformation(extent={{86,-16},{106,4}})));
  PlanarMechanics.Parts.Body body1(m=1, I=1)
    annotation (Placement(transformation(extent={{10,-46},{30,-26}})));
  inner PlanarMechanics.PlanarWorld planarWorld
    annotation (Placement(transformation(extent={{50,52},{70,72}})));
  PlanarMechanics.Joints.Revolute revolute
    annotation (Placement(transformation(extent={{40,-16},{60,4}})));
equation
  connect(body.frame_a, spacer.frame_b1) annotation (Line(
      points={{2,26},{-12,26},{-12,4}},
      color={95,95,95},
      thickness=0.5,
      smooth=Smooth.None));
  connect(body1.frame_a, spacer.frame_a1) annotation (Line(
      points={{10,-36},{-12,-36},{-12,-16.2}},
      color={95,95,95},
      thickness=0.5,
      smooth=Smooth.None));
  connect(revolute.frame_b, fixed.frame_a) annotation (Line(
      points={{60,-6},{86,-6}},
      color={95,95,95},
      thickness=0.5,
      smooth=Smooth.None));
  connect(revolute.frame_a, spacer.frame_b2) annotation (Line(
      points={{40,-6},{4,-6}},
      color={95,95,95},
      thickness=0.5,
      smooth=Smooth.None));
  annotation (Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,
            -100},{100,100}}), graphics));
end TestSpacer;
