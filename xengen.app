model m1 {
  type Modelica(name="Mechanism.Mechanism",format="JS");

  dependencies {
    library PlanarMechanics(version="1.2.0");
    library Modelica(version="3.2");
  }

  parameters {
    parameter CR(var="crank.a", default=0.5);
    parameter CR2(var="crank1.a", default=1.0);
    parameter DX(var="crank1.ground[1]", default=-1.4);
    parameter DY(var="crank1.ground[2]", default=1.5);
    parameter PL(var="fixedTranslation.r[1]", default=3.5);
  }

  outputs {
    signal AX(desc="Pin calibration") = "prismatic.frame_b.x";
    signal AY = "prismatic.frame_b.y";
    signal BX = "spacer.frame_a1.x";
    signal BY = "spacer.frame_a1.y";
    signal CX = "spacer.frame_b1.x";
    signal CY = "spacer.frame_b1.y";
    signal EX = "crank.fixedTranslation.frame_a.x";
    signal EY = "crank.fixedTranslation.frame_a.y";
    signal GX = "spacer.frame_b2.x";
    signal GY = "spacer.frame_b2.y";

    signal TAU = "constantSpeed.flange.tau";
    signal PFY = "crank.fixed.frame_a.fy";
  }
}
