within Mechanism;
model Mechanism
  inner PlanarMechanics.PlanarWorld planarWorld
    annotation (Placement(transformation(extent={{60,60},{80,80}})));
  Modelica.Mechanics.Rotational.Sources.ConstantSpeed constantSpeed(w_fixed=2*
        Modelica.Constants.pi)
    annotation (Placement(transformation(extent={{48,10},{68,30}})));
  PlanarMechanics.Parts.Body body(m=1, I=1) annotation (Placement(
        transformation(
        extent={{-10,-10},{10,10}},
        rotation=180,
        origin={-90,40})));
  PlanarMechanics.Parts.Body body1(m=1, I=1)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}},
        rotation=270,
        origin={60,-24})));
  PlanarMechanics.Joints.Revolute revolute2
    annotation (Placement(transformation(extent={{-50,30},{-30,50}})));
  PlanarMechanics.Joints.Revolute revolute3
    annotation (Placement(transformation(extent={{20,-10},{40,10}})));
  Spacer2 spacer(
    r1={1.7,0},
    r2={1.7,0},
    r3={1.5,1})
    annotation (Placement(transformation(extent={{-20,-10},{0,10}})));
  Crank crank(a=0.5) annotation (Placement(transformation(rotation=0, extent={{
            68,-10},{88,10}})));
  Crank crank1(a=1, ground={-1.4,1.5}) annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=90,
        origin={-60,80})));
  PlanarMechanics.Joints.Revolute revolute1(phi(start=2.6179938779915))
    annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=90,
        origin={-16,-32})));
  PlanarMechanics.Parts.FixedTranslation fixedTranslation(r={3,0}) annotation (
      Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=90,
        origin={-16,-60})));
  PlanarMechanics.Parts.Fixed fixed(r={-1.1,-2})
    annotation (Placement(transformation(extent={{66,-96},{86,-76}})));
  PlanarMechanics.Joints.Revolute revolute(phi(start=-1.5707963267949))
    annotation (Placement(transformation(extent={{0,-90},{20,-70}})));
  PlanarMechanics.Joints.Prismatic prismatic(r={0,1}) annotation (Placement(
        transformation(
        extent={{-10,-10},{10,10}},
        rotation=90,
        origin={60,-64})));
  PlanarMechanics.Parts.Body body2(m=1, I=1)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}},
        rotation=0,
        origin={90,-54})));
equation
  connect(constantSpeed.flange,crank.flange_a)      annotation (Line(
      points={{68,20},{80,20},{80,10}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(body1.frame_a,crank.frame_a)             annotation (Line(
      points={{60,-14},{60,0},{68,0}},
      color={95,95,95},
      thickness=0.5,
      smooth=Smooth.None));
  connect(revolute3.frame_b, body1.frame_a) annotation (Line(
      points={{40,0},{60,0},{60,-14}},
      color={95,95,95},
      thickness=0.5,
      smooth=Smooth.None));
  connect(revolute2.frame_a, body.frame_a) annotation (Line(
      points={{-50,40},{-80,40}},
      color={95,95,95},
      thickness=0.5,
      smooth=Smooth.None));
  connect(revolute3.frame_a, spacer.frame_b2) annotation (Line(
      points={{20,0},{0,0}},
      color={95,95,95},
      thickness=0.5,
      smooth=Smooth.None));
  connect(spacer.frame_b1, revolute2.frame_b) annotation (Line(
      points={{-16,10},{-16,40},{-30,40}},
      color={95,95,95},
      thickness=0.5,
      smooth=Smooth.None));
  connect(crank1.frame_a, body.frame_a) annotation (Line(
      points={{-60,70},{-60,40},{-80,40}},
      color={95,95,95},
      thickness=0.5,
      smooth=Smooth.None));
  connect(revolute1.frame_b, spacer.frame_a1) annotation (Line(
      points={{-16,-22},{-16,-10.2}},
      color={95,95,95},
      thickness=0.5,
      smooth=Smooth.None));
  connect(revolute1.frame_a, fixedTranslation.frame_b) annotation (Line(
      points={{-16,-42},{-16,-50}},
      color={95,95,95},
      thickness=0.5,
      smooth=Smooth.None));
  connect(fixedTranslation.frame_a, revolute.frame_a) annotation (Line(
      points={{-16,-70},{-16,-80},{0,-80}},
      color={95,95,95},
      thickness=0.5,
      smooth=Smooth.None));
  connect(prismatic.frame_a, fixed.frame_a) annotation (Line(
      points={{60,-74},{60,-86},{66,-86}},
      color={95,95,95},
      thickness=0.5,
      smooth=Smooth.None));
  connect(prismatic.frame_b, revolute.frame_b) annotation (Line(
      points={{60,-54},{60,-46},{40,-46},{40,-80},{20,-80}},
      color={95,95,95},
      thickness=0.5,
      smooth=Smooth.None));
  connect(body2.frame_a, prismatic.frame_b) annotation (Line(
      points={{80,-54},{60,-54}},
      color={95,95,95},
      thickness=0.5,
      smooth=Smooth.None));
  annotation (Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,
            -100},{100,100}}), graphics));
end Mechanism;
