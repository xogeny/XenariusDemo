model:Modelica Press {
  name 'Mechanism.Mechanism';

  dependencies {
    library PlanarMechanics(version="1.2.0");
    library Modelica(version="3.2");
  }

  format JS;

  structural {
    parameter Integer n(var="exchangeer.n", desc="", default=10);
  }

  parameters {
    parameter Real CR(var="crank.a", desc="Main crank radius [mm]", default=0.5);
    parameter Real CR2(var="crank1.a", desc="Pivot radius [mm]", default=1.0);
    parameter Real DX(var="crank1.ground[1]", desc="Crank X position [mm]", default=-1.4);
    parameter Real DY(var="crank1.ground[2]", desc="Crank Y position [mm]", default=1.5);
    parameter Real PL(var="fixedTranslation.r[1]", desc="Rod length [mm]", default=3.5);
  }

  outputs {
    signal Real AX = "prismatic.frame_b.x";
    signal Real AY = "prismatic.frame_b.y";
    signal Real BX = "spacer.frame_a1.x";
    signal Real BY = "spacer.frame_a1.y";
    signal Real CX = "spacer.frame_b1.x";
    signal Real CY = "spacer.frame_b1.y";
    signal Real EX = "crank.fixedTranslation.frame_a.x";
    signal Real EY = "crank.fixedTranslation.frame_a.y";
    signal Real GX = "spacer.frame_b2.x";
    signal Real GY = "spacer.frame_b2.y";

    signal Real TAU = "constantSpeed.flange.tau";
    signal Real PFY = "crank.fixed.frame_a.fy";
  }
}

controller:dialog Parameters {
  properties {
    set Title = "Press adjustable parameters";
  }
  input CR;
  input CR2;
  input DX;
  input DY;
  input PL;
}

view:drawing Press {
  draw throw(rot=Press.phi);
  Throw main(x="spacer.frame_b1.x", y="spacer.frame_b1.y",
             r="spacer.a", phi="spacer.frame_a1.phi");  
}

view:plot Displacement {
  output AY;
}

view:plot Torque {
  output TAU;
}

view:plot PivotForce {
  signal pfy(var="crank.fixed.frame_a.fy", legend="Drive torque");
}

