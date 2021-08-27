% Shouldn't Run Separately

%% Nozzle Holder

pointOrigin = [0;0;0];
pointNozzleHolderBottomA_1 = pointOrigin+[R;G/2;0];
pointNozzleHolderBottomB_1 = pointNozzleHolderBottomA_1+[0;C;0];
pointNozzleHolderBottomC_1 = pointOrigin+[0;C+G/2;0]+[(C+G/2)/sr3+W/2/sr3*2;0;0];
pointNozzleHolderBottomD_1 = pointNozzleHolderBottomC_1+[-W/2*sr3;W/2;0];
pointNozzleHolderBottomE_1 = pointNozzleHolderBottomC_1+[D/2;D/2*sr3;0];
pointNozzleHolderBottomF_1 = pointNozzleHolderBottomE_1+[-W/2*sr3;W/2;0];
coefficientL = R*sr3-G/2-C;
coefficientTheta = acos(coefficientL/2/L1);
coefficientAlpha = 1/3*pi-coefficientTheta;
coefficientBeta = (pi-coefficientAlpha)/2;
pointNozzleHolderBottomG_1 = pointNozzleHolderBottomB_1+[-L1/2*sin(coefficientAlpha);L1/2*cos(coefficientAlpha);0];
pointNozzleHolderBottomH_1 = pointNozzleHolderBottomG_1+[-t*cos(coefficientAlpha);-t*sin(coefficientAlpha);0];
pointNozzleHolderBottomI_1 = pointNozzleHolderBottomB_1+[-t/cos(coefficientAlpha);0;0];

pointNozzleHolderBottomJ_3 = pointNozzleHolderBottomA_1+[-tabThickness;0;0];
theta = 2*pi/3;
Rz = [cos(theta),-sin(theta),0;sin(theta),cos(theta),0;0,0,1];
pointNozzleHolderBottomJ_1 = Rz*pointNozzleHolderBottomJ_3;
pointNozzleHolderBottomJ_2 = Rz*pointNozzleHolderBottomJ_1;

pointNozzleHolderBottomK_1 = pointNozzleHolderBottomC_1-[tabThickness/2;tabThickness/2*sr3;0];
pointNozzleHolderBottomL_1 = pointNozzleHolderBottomK_1+[-W/2*sr3;W/2;0];
pointNozzleHolderBottomM_1 = pointNozzleHolderBottomB_1+[-tabThickness;0;0];
theta = 2*pi/3;
Rz = [cos(theta),-sin(theta),0;sin(theta),cos(theta),0;0,0,1];
pointNozzleHolderBottomK_2 = Rz*pointNozzleHolderBottomK_1;
pointNozzleHolderBottomK_3 = Rz*pointNozzleHolderBottomK_2;
pointNozzleHolderBottomL_2 = Rz*pointNozzleHolderBottomL_1;
pointNozzleHolderBottomL_3 = Rz*pointNozzleHolderBottomL_2;
pointNozzleHolderBottomM_2 = Rz*pointNozzleHolderBottomM_1;
pointNozzleHolderBottomM_3 = Rz*pointNozzleHolderBottomM_2;

theta = 2*pi/3;
Rz = [cos(theta),-sin(theta),0;sin(theta),cos(theta),0;0,0,1];
pointNozzleHolderBottomA_2 = Rz*pointNozzleHolderBottomA_1;
pointNozzleHolderBottomB_2 = Rz*pointNozzleHolderBottomB_1;
pointNozzleHolderBottomC_2 = Rz*pointNozzleHolderBottomC_1;
pointNozzleHolderBottomD_2 = Rz*pointNozzleHolderBottomD_1;
pointNozzleHolderBottomE_2 = Rz*pointNozzleHolderBottomE_1;
pointNozzleHolderBottomF_2 = Rz*pointNozzleHolderBottomF_1;
pointNozzleHolderBottomG_2 = Rz*pointNozzleHolderBottomG_1;
pointNozzleHolderBottomH_2 = Rz*pointNozzleHolderBottomH_1;
pointNozzleHolderBottomI_2 = Rz*pointNozzleHolderBottomI_1;

pointNozzleHolderBottomA_3 = Rz*pointNozzleHolderBottomA_2;
pointNozzleHolderBottomB_3 = Rz*pointNozzleHolderBottomB_2;
pointNozzleHolderBottomC_3 = Rz*pointNozzleHolderBottomC_2;
pointNozzleHolderBottomD_3 = Rz*pointNozzleHolderBottomD_2;
pointNozzleHolderBottomE_3 = Rz*pointNozzleHolderBottomE_2;
pointNozzleHolderBottomF_3 = Rz*pointNozzleHolderBottomF_2;
pointNozzleHolderBottomG_3 = Rz*pointNozzleHolderBottomG_2;
pointNozzleHolderBottomH_3 = Rz*pointNozzleHolderBottomH_2;
pointNozzleHolderBottomI_3 = Rz*pointNozzleHolderBottomI_2;


pointNozzleHolderWithFlexureBottom = [pointNozzleHolderBottomA_1,pointNozzleHolderBottomB_1,pointNozzleHolderBottomG_1,pointNozzleHolderBottomH_1,pointNozzleHolderBottomI_1,pointNozzleHolderBottomE_1,pointNozzleHolderBottomF_1,...
									pointNozzleHolderBottomA_2,pointNozzleHolderBottomB_2,pointNozzleHolderBottomG_2,pointNozzleHolderBottomH_2,pointNozzleHolderBottomI_2,pointNozzleHolderBottomE_2,pointNozzleHolderBottomF_2,...
									pointNozzleHolderBottomA_3,pointNozzleHolderBottomB_3,pointNozzleHolderBottomG_3,pointNozzleHolderBottomH_3,pointNozzleHolderBottomI_3,pointNozzleHolderBottomE_3,pointNozzleHolderBottomF_3];

pointNozzleHolderWithFlexureForManufactureBottom = [pointNozzleHolderBottomA_1,pointNozzleHolderBottomB_1,pointNozzleHolderBottomG_1,pointNozzleHolderBottomH_1,pointNozzleHolderBottomI_1,pointNozzleHolderBottomE_1,pointNozzleHolderBottomC_1,pointNozzleHolderBottomD_1,pointNozzleHolderBottomF_1,...
									pointNozzleHolderBottomA_2,pointNozzleHolderBottomB_2,pointNozzleHolderBottomG_2,pointNozzleHolderBottomH_2,pointNozzleHolderBottomI_2,pointNozzleHolderBottomE_2,pointNozzleHolderBottomC_2,pointNozzleHolderBottomD_2,pointNozzleHolderBottomF_2,...
									pointNozzleHolderBottomA_3,pointNozzleHolderBottomB_3,pointNozzleHolderBottomG_3,pointNozzleHolderBottomH_3,pointNozzleHolderBottomI_3,pointNozzleHolderBottomE_3,pointNozzleHolderBottomC_3,pointNozzleHolderBottomD_3,pointNozzleHolderBottomF_3];

pointNozzleHolderCutBottom = [pointNozzleHolderBottomA_1,pointNozzleHolderBottomJ_3,pointNozzleHolderBottomM_1,pointNozzleHolderBottomE_1,pointNozzleHolderBottomK_1,pointNozzleHolderBottomL_1,pointNozzleHolderBottomF_1,...
									pointNozzleHolderBottomA_2,pointNozzleHolderBottomJ_1,pointNozzleHolderBottomM_2,pointNozzleHolderBottomE_2,pointNozzleHolderBottomK_2,pointNozzleHolderBottomL_2,pointNozzleHolderBottomF_2,...
									pointNozzleHolderBottomA_3,pointNozzleHolderBottomJ_2,pointNozzleHolderBottomM_3,pointNozzleHolderBottomE_3,pointNozzleHolderBottomK_3,pointNozzleHolderBottomL_3,pointNozzleHolderBottomF_3];

[volumeNozzleHolderWithFlexure, massNozzleHolderWithFlexure, CoMNozzleHolderWithFlexure, IxNozzleHolderWithFlexure, IyNozzleHolderWithFlexure, IzNozzleHolderWithFlexure, INozzleHolderWithFlexure,...
pointNozzleHolderWithFlexureBottom, pointNozzleHolderWithFlexureTop] = Right_Prism_Properties(pointNozzleHolderWithFlexureBottom(1,:), pointNozzleHolderWithFlexureBottom(2,:), W, rho);
n1n2n3NozzleHolderWithFlexure = eye(3);

Rotation = n1n2n3WholeStructure;
Translation = pointNozzleHolderBottomCenter;
[pointNozzleHolderWithFlexureBottom, pointNozzleHolderWithFlexureTop, CoMNozzleHolderWithFlexure, n1n2n3NozzleHolderWithFlexure] = Move_Right_Prism(Rotation, Translation, pointNozzleHolderWithFlexureBottom, pointNozzleHolderWithFlexureTop, CoMNozzleHolderWithFlexure, n1n2n3NozzleHolderWithFlexure);

pointNozzleHolderCutBottom = fliplr(pointNozzleHolderCutBottom); 
[volumeNozzleHolderCut, massNozzleHolderCut, CoMNozzleHolderCut, IxNozzleHolderCut, IyNozzleHolderCut, IzNozzleHolderCut, INozzleHolderCut,...
pointNozzleHolderCutBottom, pointNozzleHolderCutTop] = Right_Prism_Properties(pointNozzleHolderCutBottom(1,:), pointNozzleHolderCutBottom(2,:), W-tabThickness, rho);
n1n2n3NozzleHolderCut = eye(3);

Rotation = eye(3);
Translation = [0;0;tabThickness];
[pointNozzleHolderCutBottom, pointNozzleHolderCutTop, CoMNozzleHolderCut, n1n2n3NozzleHolderCut] = Move_Right_Prism(Rotation, Translation, pointNozzleHolderCutBottom, pointNozzleHolderCutTop, CoMNozzleHolderCut, n1n2n3NozzleHolderCut);

Rotation = n1n2n3WholeStructure;
Translation = pointNozzleHolderBottomCenter;
[pointNozzleHolderCutBottom, pointNozzleHolderCutTop, CoMNozzleHolderCut, n1n2n3NozzleHolderCut] = Move_Right_Prism(Rotation, Translation, pointNozzleHolderCutBottom, pointNozzleHolderCutTop, CoMNozzleHolderCut, n1n2n3NozzleHolderCut);

polyNozzleHolderWithFlexure = polyshape(pointNozzleHolderWithFlexureBottom(1,:),pointNozzleHolderWithFlexureBottom(2,:));
polyNozzleHolderCut = polyshape(pointNozzleHolderCutBottom(1,:),pointNozzleHolderCutBottom(2,:));

[polyout,~,~] = subtract(polyNozzleHolderWithFlexure,polyNozzleHolderCut,'KeepCollinearPoints',false);
% plot(polyout)
polyNozzleHolderSubtract = regions(polyout);
polyNumNozzleHolderSubtract = polyout.NumRegions;

for tempCount = [1:1:polyNumNozzleHolderSubtract]
	[volumeNozzleHolderSubtract{tempCount}, massNozzleHolderSubtract{tempCount}, CoMNozzleHolderSubtract{tempCount}, IxNozzleHolderSubtract{tempCount}, IyNozzleHolderSubtract{tempCount}, IzNozzleHolderSubtract{tempCount}, INozzleHolderSubtract{tempCount},...
	pointNozzleHolderSubtractBottom{tempCount}, pointNozzleHolderSubtractTop{tempCount}] = Right_Prism_Properties(polyNozzleHolderSubtract(tempCount).Vertices(:,1)', polyNozzleHolderSubtract(tempCount).Vertices(:,2)', W, rho);
end

[volumeNozzleHolderCutRemain, massNozzleHolderCutRemain, CoMNozzleHolderCutRemain, IxNozzleHolderCutRemain, IyNozzleHolderCutRemain, IzNozzleHolderCutRemain, INozzleHolderCutRemain,...
pointNozzleHolderCutRemainBottom, pointNozzleHolderCutRemainTop] = Right_Prism_Properties(pointNozzleHolderCutBottom(1,:), pointNozzleHolderCutBottom(2,:), tabThickness, rho);

pointNozzleHolderBottom = [pointNozzleHolderBottomA_1,pointNozzleHolderBottomB_1,pointNozzleHolderBottomE_1,pointNozzleHolderBottomF_1,...
						   pointNozzleHolderBottomA_2,pointNozzleHolderBottomB_2,pointNozzleHolderBottomE_2,pointNozzleHolderBottomF_2,...
						   pointNozzleHolderBottomA_3,pointNozzleHolderBottomB_3,pointNozzleHolderBottomE_3,pointNozzleHolderBottomF_3];

[volumeNozzleHolder, massNozzleHolder, CoMNozzleHolder, IxNozzleHolder, IyNozzleHolder, IzNozzleHolder, INozzleHolder,...
pointNozzleHolderBottom, pointNozzleHolderTop] = Right_Prism_Properties(pointNozzleHolderBottom(1,:), pointNozzleHolderBottom(2,:), W, rho);
n1n2n3NozzleHolder = eye(3);

Rotation = n1n2n3WholeStructure;
Translation = pointNozzleHolderBottomCenter;
[pointNozzleHolderBottom, pointNozzleHolderTop, CoMNozzleHolder, n1n2n3NozzleHolder] = Move_Right_Prism(Rotation, Translation, pointNozzleHolderBottom, pointNozzleHolderTop, CoMNozzleHolder, n1n2n3NozzleHolder);

polyNozzleHolderNoFlexure = polyshape(pointNozzleHolderBottom(1,:),pointNozzleHolderBottom(2,:));

[polyoutNoFlexure,~,~] = subtract(polyNozzleHolderNoFlexure,polyNozzleHolderCut,'KeepCollinearPoints',false);
polyNozzleHolderSubtractNoFlexure = regions(polyoutNoFlexure);
polyNumNozzleHolderSubtractNoFlexure = polyoutNoFlexure.NumRegions;

for tempCount = [1:1:polyNumNozzleHolderSubtractNoFlexure]
	[volumeNozzleHolderSubtractNoFlexure{tempCount}, massNozzleHolderSubtractNoFlexure{tempCount}, CoMNozzleHolderSubtractNoFlexure{tempCount}, IxNozzleHolderSubtractNoFlexure{tempCount}, IyNozzleHolderSubtractNoFlexure{tempCount}, IzNozzleHolderSubtractNoFlexure{tempCount}, INozzleHolderSubtractNoFlexure{tempCount},...
	pointNozzleHolderSubtractNoFlexureBottom{tempCount}, pointNozzleHolderSubtractNoFlexureTop{tempCount}] = Right_Prism_Properties(polyNozzleHolderSubtractNoFlexure(tempCount).Vertices(:,1)', polyNozzleHolderSubtractNoFlexure(tempCount).Vertices(:,2)', W, rho);
end

%% Blade Connected With Vertical Actuator Housing

pointBladeVAHBottom_3 = [R;-G/2;0]+pointOrigin;
pointBladeVAHBottom_3(:,end+1) = pointBladeVAHBottom_3(:,end)+[0;-C;0];
pointBladeVAHBottom_3(:,end+1) = pointBladeVAHBottom_3(:,end)+[-L1/2*sin(coefficientAlpha);-L1/2*cos(coefficientAlpha);0];
pointBladeVAHBottom_3(:,end+1) = pointBladeVAHBottom_3(:,end)+[-t*cos(coefficientAlpha);t*sin(coefficientAlpha);0];
pointBladeVAHBottom_3(:,end+1) = pointBladeVAHBottom_3(:,2)+[-t*sin(coefficientBeta);t*cos(coefficientBeta);0];
pointBladeVAHBottom_3(:,end+1) = pointBladeVAHBottom_3(:,1)+[-t;0;0];
pointBladeVAHBottom_3 = fliplr(pointBladeVAHBottom_3); 

[volumeBladeVAH, massBladeVAH, CoMBladeVAH_3, IxBladeVAH, IyBladeVAH, IzBladeVAH, IBladeVAH,...
pointBladeVAHBottom_3, pointBladeVAHTop_3] = Right_Prism_Properties(pointBladeVAHBottom_3(1,:), pointBladeVAHBottom_3(2,:), W, rho);
n1n2n3BladeVAH_3 = eye(3);

theta = 2*pi/3;
Rz = [cos(theta),-sin(theta),0;sin(theta),cos(theta),0;0,0,1];
Translation = [0;0;0];
[pointBladeVAHBottom_1, pointBladeVAHTop_1, CoMBladeVAH_1, n1n2n3BladeVAH_1] = Move_Right_Prism(Rz, Translation, pointBladeVAHBottom_3, pointBladeVAHTop_3, CoMBladeVAH_3, n1n2n3BladeVAH_3);
[pointBladeVAHBottom_2, pointBladeVAHTop_2, CoMBladeVAH_2, n1n2n3BladeVAH_2] = Move_Right_Prism(Rz, Translation, pointBladeVAHBottom_1, pointBladeVAHTop_1, CoMBladeVAH_1, n1n2n3BladeVAH_1);

Rotation = n1n2n3WholeStructure;
Translation = pointNozzleHolderBottomCenter;
[pointBladeVAHBottom_1, pointBladeVAHTop_1, CoMBladeVAH_1, n1n2n3BladeVAH_1] = Move_Right_Prism(Rotation, Translation, pointBladeVAHBottom_1, pointBladeVAHTop_1, CoMBladeVAH_1, n1n2n3BladeVAH_1);
[pointBladeVAHBottom_2, pointBladeVAHTop_2, CoMBladeVAH_2, n1n2n3BladeVAH_2] = Move_Right_Prism(Rotation, Translation, pointBladeVAHBottom_2, pointBladeVAHTop_2, CoMBladeVAH_2, n1n2n3BladeVAH_2);
[pointBladeVAHBottom_3, pointBladeVAHTop_3, CoMBladeVAH_3, n1n2n3BladeVAH_3] = Move_Right_Prism(Rotation, Translation, pointBladeVAHBottom_3, pointBladeVAHTop_3, CoMBladeVAH_3, n1n2n3BladeVAH_3);


%% Bottom Blade

pointBottomBladeBottom_1 = pointNozzleHolderBottomG_1;
pointBottomBladeBottom_1(:,end+1) = pointBottomBladeBottom_1(:,end)+[-L1/2*sin(coefficientAlpha);L1/2*cos(coefficientAlpha);0];
pointBottomBladeBottom_1(:,end+1) = pointBottomBladeBottom_1(:,end)+[-L1/2*sin(coefficientAlpha+pi/3);-L1/2*cos(coefficientAlpha+pi/3);0];
pointBottomBladeBottom_1(:,end+1) = pointBottomBladeBottom_1(:,end)+[t*cos(coefficientAlpha+pi/3);-t*sin(coefficientAlpha+pi/3);0];
pointBottomBladeBottom_1(:,end+1) = pointBottomBladeBottom_1(:,2)+t/sin(coefficientAlpha+pi/6)*[-sin(pi/6);-cos(pi/6);0];
pointBottomBladeBottom_1(:,end+1) = pointNozzleHolderBottomH_1;

[volumeBottomBlade, massBottomBlade, CoMBottomBlade_1, IxBottomBlade, IyBottomBlade, IzBottomBlade, IBottomBlade,...
pointBottomBladeBottom_1, pointBottomBladeTop_1] = Right_Prism_Properties(pointBottomBladeBottom_1(1,:), pointBottomBladeBottom_1(2,:), W, rho);
n1n2n3BottomBlade_1 = eye(3);

theta = 2*pi/3;
Rz = [cos(theta),-sin(theta),0;sin(theta),cos(theta),0;0,0,1];
Translation = [0;0;0];
[pointBottomBladeBottom_2, pointBottomBladeTop_2, CoMBottomBlade_2, n1n2n3BottomBlade_2] = Move_Right_Prism(Rz, Translation, pointBottomBladeBottom_1, pointBottomBladeTop_1, CoMBottomBlade_1, n1n2n3BottomBlade_1);
[pointBottomBladeBottom_3, pointBottomBladeTop_3, CoMBottomBlade_3, n1n2n3BottomBlade_3] = Move_Right_Prism(Rz, Translation, pointBottomBladeBottom_2, pointBottomBladeTop_2, CoMBottomBlade_2, n1n2n3BottomBlade_2);

Rotation = n1n2n3WholeStructure;
Translation = pointNozzleHolderBottomCenter;
[pointBottomBladeBottom_1, pointBottomBladeTop_1, CoMBottomBlade_1, n1n2n3BottomBlade_1] = Move_Right_Prism(Rotation, Translation, pointBottomBladeBottom_1, pointBottomBladeTop_1, CoMBottomBlade_1, n1n2n3BottomBlade_1);
[pointBottomBladeBottom_2, pointBottomBladeTop_2, CoMBottomBlade_2, n1n2n3BottomBlade_2] = Move_Right_Prism(Rotation, Translation, pointBottomBladeBottom_2, pointBottomBladeTop_2, CoMBottomBlade_2, n1n2n3BottomBlade_2);
[pointBottomBladeBottom_3, pointBottomBladeTop_3, CoMBottomBlade_3, n1n2n3BottomBlade_3] = Move_Right_Prism(Rotation, Translation, pointBottomBladeBottom_3, pointBottomBladeTop_3, CoMBottomBlade_3, n1n2n3BottomBlade_3);


%% Actuator Housing

xActuatorHousingMobile = [0,B,B,B,B-parameterActuatorHousingBladeThickness,B-parameterActuatorHousingBladeThickness,B-parameterActuatorHousingBladeThickness-parameterBracketClearance,B-parameterActuatorHousingBladeThickness-parameterBracketClearance-parameterBracketLowerBase+parameterBracketUpperBase,...
						B-parameterActuatorHousingBladeThickness-parameterBracketClearance-parameterBracketLowerBase+parameterBracketThickness,...
						B-parameterActuatorHousingBladeThickness-parameterBracketClearance-parameterBracketLowerBase+parameterBracketThickness,B-parameterActuatorHousingBladeThickness-parameterBracketClearance-parameterBracketLowerBase,...
						B-parameterActuatorHousingBladeThickness-parameterBracketClearance-parameterBracketLowerBase,parameterActuatorHousingBladeThickness,parameterActuatorHousingBladeThickness,0,0];

yActuatorHousingMobile = [0,0,parameterActuatorHousingMobileThickness,parameterActuatorHousingMobileThickness+parameterActuatorGap+parameterActuatorShellDiameter/2,parameterActuatorHousingMobileThickness+parameterActuatorGap+parameterActuatorShellDiameter/2,parameterActuatorHousingMobileThickness,parameterActuatorHousingMobileThickness,A-parameterActuatorHousingGroundedThickness-parameterBracketGap,...
						A-parameterActuatorHousingGroundedThickness-parameterBracketGap,A-parameterActuatorHousingGroundedThickness-parameterBracketGap+parameterActuatorHousingGroundedDepth,...
						A-parameterActuatorHousingGroundedThickness-parameterBracketGap+parameterActuatorHousingGroundedDepth,parameterActuatorHousingMobileThickness,parameterActuatorHousingMobileThickness,parameterActuatorHousingMobileThickness+parameterActuatorGap+parameterActuatorShellDiameter/2,parameterActuatorHousingMobileThickness+parameterActuatorGap+parameterActuatorShellDiameter/2,parameterActuatorHousingMobileThickness];

xActuatorHousingGrounded = [0,B,B,B,B-parameterActuatorHousingBladeThickness,B-parameterActuatorHousingBladeThickness,B-parameterActuatorHousingBladeThickness-parameterBracketClearance,B-parameterActuatorHousingBladeThickness-parameterBracketClearance-parameterBracketLowerBase+parameterBracketUpperBase,...
							B-parameterActuatorHousingBladeThickness-parameterBracketClearance-parameterBracketLowerBase,B-parameterActuatorHousingBladeThickness-parameterBracketClearance-parameterBracketLowerBase,parameterActuatorHousingBladeThickness+parameterBracketClearance+parameterBracketLowerBase-parameterBracketThickness/2+parameterActuatorHousingGroundedStroke/2,...
							parameterActuatorHousingBladeThickness+parameterBracketClearance+parameterBracketLowerBase-parameterBracketThickness/2+parameterActuatorHousingGroundedStroke/2,parameterActuatorHousingBladeThickness+parameterBracketClearance+parameterBracketLowerBase-parameterBracketThickness/2-parameterActuatorHousingGroundedStroke/2,...
							parameterActuatorHousingBladeThickness+parameterBracketClearance+parameterBracketLowerBase-parameterBracketThickness/2-parameterActuatorHousingGroundedStroke/2,parameterActuatorHousingBladeThickness,parameterActuatorHousingBladeThickness,0,0];

yActuatorHousingGrounded = [0,0,parameterActuatorHousingGroundedThickness,parameterActuatorHousingGroundedThickness*1.05+parameterActuatorGap+parameterActuatorShellDiameter/2,parameterActuatorHousingGroundedThickness*1.05+parameterActuatorGap+parameterActuatorShellDiameter/2,parameterActuatorHousingGroundedThickness,parameterActuatorHousingGroundedThickness,A-parameterActuatorHousingMobileThickness-parameterBracketGap,...
							A-parameterActuatorHousingMobileThickness-parameterBracketGap,parameterActuatorHousingGroundedThickness,parameterActuatorHousingGroundedThickness,parameterActuatorHousingGroundedThickness-parameterActuatorHousingGroundedDepth,...		
							parameterActuatorHousingGroundedThickness-parameterActuatorHousingGroundedDepth,parameterActuatorHousingGroundedThickness,parameterActuatorHousingGroundedThickness,parameterActuatorHousingGroundedThickness*1.05+parameterActuatorGap+parameterActuatorShellDiameter/2,parameterActuatorHousingGroundedThickness*1.05+parameterActuatorGap+parameterActuatorShellDiameter/2,parameterActuatorHousingGroundedThickness];

xActuatorHousingMobileFlipped = xActuatorHousingMobile;
yActuatorHousingMobileFlipped = yActuatorHousingMobile;
xActuatorHousingGroundedFlipped = xActuatorHousingGrounded;
yActuatorHousingGroundedFlipped = yActuatorHousingGrounded;

xActuatorHousingMobile = B*ones(size(xActuatorHousingMobile))-xActuatorHousingMobile;
xActuatorHousingGrounded = B*ones(size(xActuatorHousingGrounded))-xActuatorHousingGrounded;
xActuatorHousingMobile = fliplr(xActuatorHousingMobile);
yActuatorHousingMobile = fliplr(yActuatorHousingMobile);
xActuatorHousingGrounded = fliplr(xActuatorHousingGrounded);
yActuatorHousingGrounded = fliplr(yActuatorHousingGrounded);
xActuatorHousingMobile = [xActuatorHousingMobile(end-1:end),xActuatorHousingMobile(1:end-2)];
yActuatorHousingMobile = [yActuatorHousingMobile(end-1:end),yActuatorHousingMobile(1:end-2)];
xActuatorHousingGrounded = [xActuatorHousingGrounded(end-1:end),xActuatorHousingGrounded(1:end-2)];
yActuatorHousingGrounded = [yActuatorHousingGrounded(end-1:end),yActuatorHousingGrounded(1:end-2)];

[volumeActuatorHousing, massActuatorHousing, CoMActuatorHousing, IxActuatorHousing, IyActuatorHousing, IzActuatorHousing, IActuatorHousing,...
pointActuatorHousingBottom, pointActuatorHousingTop] = Right_Prism_Properties(xActuatorHousingMobile, yActuatorHousingMobile, C, rho);
n1n2n3ActuatorHousing = eye(3);

[volumeActuatorHousingGrounded, massActuatorHousingGrounded, CoMActuatorHousingGrounded, IxActuatorHousingGrounded, IyActuatorHousingGrounded, IzActuatorHousingGrounded, IActuatorHousingGrounded,...
pointActuatorHousingGroundedBottom, pointActuatorHousingGroundedTop] = Right_Prism_Properties(xActuatorHousingGrounded, yActuatorHousingGrounded, C, rho);
n1n2n3ActuatorHousingGrounded = eye(3);

[volumeActuatorHousingFlipped, massActuatorHousingFlipped, CoMActuatorHousingFlipped, IxActuatorHousingFlipped, IyActuatorHousingFlipped, IzActuatorHousingFlipped, IActuatorHousingFlipped,...
pointActuatorHousingFlippedBottom, pointActuatorHousingFlippedTop] = Right_Prism_Properties(xActuatorHousingMobileFlipped, yActuatorHousingMobileFlipped, C, rho);
n1n2n3ActuatorHousingFlipped = eye(3);

[volumeActuatorHousingGroundedFlipped, massActuatorHousingGroundedFlipped, CoMActuatorHousingGroundedFlipped, IxActuatorHousingGroundedFlipped, IyActuatorHousingGroundedFlipped, IzActuatorHousingGroundedFlipped, IActuatorHousingGroundedFlipped,...
pointActuatorHousingGroundedFlippedBottom, pointActuatorHousingGroundedFlippedTop] = Right_Prism_Properties(xActuatorHousingGroundedFlipped, yActuatorHousingGroundedFlipped, C, rho);
n1n2n3ActuatorHousingGroundedFlipped = eye(3);


%% Actuator Housing Without Blade

xActuatorHousingMobileWithoutBlade = [0,B,B,B-parameterActuatorHousingBladeThickness,B-parameterActuatorHousingBladeThickness-parameterBracketClearance,B-parameterActuatorHousingBladeThickness-parameterBracketClearance-parameterBracketLowerBase+parameterBracketUpperBase,...
						B-parameterActuatorHousingBladeThickness-parameterBracketClearance-parameterBracketLowerBase+parameterBracketThickness,...
						B-parameterActuatorHousingBladeThickness-parameterBracketClearance-parameterBracketLowerBase+parameterBracketThickness,B-parameterActuatorHousingBladeThickness-parameterBracketClearance-parameterBracketLowerBase,...
						B-parameterActuatorHousingBladeThickness-parameterBracketClearance-parameterBracketLowerBase,parameterActuatorHousingBladeThickness,0];

yActuatorHousingMobileWithoutBlade = [0,0,parameterActuatorHousingMobileThickness,parameterActuatorHousingMobileThickness,parameterActuatorHousingMobileThickness,A-parameterActuatorHousingGroundedThickness-parameterBracketGap,...
						A-parameterActuatorHousingGroundedThickness-parameterBracketGap,A-parameterActuatorHousingGroundedThickness-parameterBracketGap+parameterActuatorHousingGroundedDepth,...
						A-parameterActuatorHousingGroundedThickness-parameterBracketGap+parameterActuatorHousingGroundedDepth,parameterActuatorHousingMobileThickness,parameterActuatorHousingMobileThickness,parameterActuatorHousingMobileThickness];

xActuatorHousingGroundedWithoutBlade = [0,B,B,B-parameterActuatorHousingBladeThickness,B-parameterActuatorHousingBladeThickness-parameterBracketClearance,B-parameterActuatorHousingBladeThickness-parameterBracketClearance-parameterBracketLowerBase+parameterBracketUpperBase,...
							B-parameterActuatorHousingBladeThickness-parameterBracketClearance-parameterBracketLowerBase,B-parameterActuatorHousingBladeThickness-parameterBracketClearance-parameterBracketLowerBase,parameterActuatorHousingBladeThickness+parameterBracketClearance+parameterBracketLowerBase-parameterBracketThickness/2+parameterActuatorHousingGroundedStroke/2,...
							parameterActuatorHousingBladeThickness+parameterBracketClearance+parameterBracketLowerBase-parameterBracketThickness/2+parameterActuatorHousingGroundedStroke/2,parameterActuatorHousingBladeThickness+parameterBracketClearance+parameterBracketLowerBase-parameterBracketThickness/2-parameterActuatorHousingGroundedStroke/2,...
							parameterActuatorHousingBladeThickness+parameterBracketClearance+parameterBracketLowerBase-parameterBracketThickness/2-parameterActuatorHousingGroundedStroke/2,parameterActuatorHousingBladeThickness,0];

yActuatorHousingGroundedWithoutBlade = [0,0,parameterActuatorHousingGroundedThickness,parameterActuatorHousingGroundedThickness,parameterActuatorHousingGroundedThickness,A-parameterActuatorHousingMobileThickness-parameterBracketGap,...
							A-parameterActuatorHousingMobileThickness-parameterBracketGap,parameterActuatorHousingGroundedThickness,parameterActuatorHousingGroundedThickness,parameterActuatorHousingGroundedThickness-parameterActuatorHousingGroundedDepth,...		
							parameterActuatorHousingGroundedThickness-parameterActuatorHousingGroundedDepth,parameterActuatorHousingGroundedThickness,parameterActuatorHousingGroundedThickness,parameterActuatorHousingGroundedThickness];

xActuatorHousingMobileWithoutBladeFlipped = xActuatorHousingMobileWithoutBlade;
yActuatorHousingMobileWithoutBladeFlipped = yActuatorHousingMobileWithoutBlade;
xActuatorHousingGroundedWithoutBladeFlipped = xActuatorHousingGroundedWithoutBlade;
yActuatorHousingGroundedWithoutBladeFlipped = yActuatorHousingGroundedWithoutBlade;

xActuatorHousingMobileWithoutBlade = B*ones(size(xActuatorHousingMobileWithoutBlade))-xActuatorHousingMobileWithoutBlade;
xActuatorHousingGroundedWithoutBlade = B*ones(size(xActuatorHousingGroundedWithoutBlade))-xActuatorHousingGroundedWithoutBlade;
xActuatorHousingMobileWithoutBlade = fliplr(xActuatorHousingMobileWithoutBlade);
yActuatorHousingMobileWithoutBlade = fliplr(yActuatorHousingMobileWithoutBlade);
xActuatorHousingGroundedWithoutBlade = fliplr(xActuatorHousingGroundedWithoutBlade);
yActuatorHousingGroundedWithoutBlade = fliplr(yActuatorHousingGroundedWithoutBlade);
xActuatorHousingMobileWithoutBlade = [xActuatorHousingMobileWithoutBlade(end-1:end),xActuatorHousingMobileWithoutBlade(1:end-2)];
yActuatorHousingMobileWithoutBlade = [yActuatorHousingMobileWithoutBlade(end-1:end),yActuatorHousingMobileWithoutBlade(1:end-2)];
xActuatorHousingGroundedWithoutBlade = [xActuatorHousingGroundedWithoutBlade(end-1:end),xActuatorHousingGroundedWithoutBlade(1:end-2)];
yActuatorHousingGroundedWithoutBlade = [yActuatorHousingGroundedWithoutBlade(end-1:end),yActuatorHousingGroundedWithoutBlade(1:end-2)];

[volumeActuatorHousingWithoutBlade, massActuatorHousingWithoutBlade, CoMActuatorHousingWithoutBlade, IxActuatorHousingWithoutBlade, IyActuatorHousingWithoutBlade, IzActuatorHousingWithoutBlade, IActuatorHousingWithoutBlade,...
pointActuatorHousingWithoutBladeBottom, pointActuatorHousingWithoutBladeTop] = Right_Prism_Properties(xActuatorHousingMobileWithoutBlade, yActuatorHousingMobileWithoutBlade, C, rho);
n1n2n3ActuatorHousingWithoutBlade = eye(3);

[volumeActuatorHousingGroundedWithoutBlade, massActuatorHousingGroundedWithoutBlade, CoMActuatorHousingGroundedWithoutBlade, IxActuatorHousingGroundedWithoutBlade, IyActuatorHousingGroundedWithoutBlade, IzActuatorHousingGroundedWithoutBlade, IActuatorHousingGroundedWithoutBlade,...
pointActuatorHousingGroundedWithoutBladeBottom, pointActuatorHousingGroundedWithoutBladeTop] = Right_Prism_Properties(xActuatorHousingGroundedWithoutBlade, yActuatorHousingGroundedWithoutBlade, C, rho);
n1n2n3ActuatorHousingGroundedWithoutBlade = eye(3);

[volumeActuatorHousingWithoutBladeFlipped, massActuatorHousingWithoutBladeFlipped, CoMActuatorHousingWithoutBladeFlipped, IxActuatorHousingWithoutBladeFlipped, IyActuatorHousingWithoutBladeFlipped, IzActuatorHousingWithoutBladeFlipped, IActuatorHousingWithoutBladeFlipped,...
pointActuatorHousingWithoutBladeFlippedBottom, pointActuatorHousingWithoutBladeFlippedTop] = Right_Prism_Properties(xActuatorHousingMobileWithoutBladeFlipped, yActuatorHousingMobileWithoutBladeFlipped, C, rho);
n1n2n3ActuatorHousingWithoutBladeFlipped = eye(3);

[volumeActuatorHousingGroundedWithoutBladeFlipped, massActuatorHousingGroundedWithoutBladeFlipped, CoMActuatorHousingGroundedWithoutBladeFlipped, IxActuatorHousingGroundedWithoutBladeFlipped, IyActuatorHousingGroundedWithoutBladeFlipped, IzActuatorHousingGroundedWithoutBladeFlipped, IActuatorHousingGroundedWithoutBladeFlipped,...
pointActuatorHousingGroundedWithoutBladeFlippedBottom, pointActuatorHousingGroundedWithoutBladeFlippedTop] = Right_Prism_Properties(xActuatorHousingGroundedWithoutBladeFlipped, yActuatorHousingGroundedWithoutBladeFlipped, C, rho);
n1n2n3ActuatorHousingGroundedWithoutBladeFlipped = eye(3);

%% Vertical Actuator Housing

Rotation = [0, 1, 0;...
			0, 0, -1;...
			-1, 0, 0];
Translation = [R;-G/2;B];
[pointVerticalActuatorHousingBottom_3, pointVerticalActuatorHousingTop_3, CoMVerticalActuatorHousing_3, n1n2n3VerticalActuatorHousing_3]...
 = Move_Right_Prism(Rotation, Translation, pointActuatorHousingBottom, pointActuatorHousingTop, CoMActuatorHousing, n1n2n3ActuatorHousing);
translationVerticalActuatorHousing_3 = Translation;

theta = 2*pi/3;
Rz = [cos(theta),-sin(theta),0;sin(theta),cos(theta),0;0,0,1];
Translation = [0;0;0];
[pointVerticalActuatorHousingBottom_1, pointVerticalActuatorHousingTop_1, CoMVerticalActuatorHousing_1, n1n2n3VerticalActuatorHousing_1]...
 = Move_Right_Prism(Rz, Translation, pointVerticalActuatorHousingBottom_3, pointVerticalActuatorHousingTop_3, CoMVerticalActuatorHousing_3, n1n2n3VerticalActuatorHousing_3);
translationVerticalActuatorHousing_1 = Rz*translationVerticalActuatorHousing_3;
[pointVerticalActuatorHousingBottom_2, pointVerticalActuatorHousingTop_2, CoMVerticalActuatorHousing_2, n1n2n3VerticalActuatorHousing_2]...
 = Move_Right_Prism(Rz, Translation, pointVerticalActuatorHousingBottom_1, pointVerticalActuatorHousingTop_1, CoMVerticalActuatorHousing_1, n1n2n3VerticalActuatorHousing_1);
translationVerticalActuatorHousing_2 = Rz*translationVerticalActuatorHousing_1;

Rotation = n1n2n3WholeStructure;
Translation = pointNozzleHolderBottomCenter;
[pointVerticalActuatorHousingBottom_1, pointVerticalActuatorHousingTop_1, CoMVerticalActuatorHousing_1, n1n2n3VerticalActuatorHousing_1] = Move_Right_Prism(Rotation, Translation, pointVerticalActuatorHousingBottom_1, pointVerticalActuatorHousingTop_1, CoMVerticalActuatorHousing_1, n1n2n3VerticalActuatorHousing_1);
[pointVerticalActuatorHousingBottom_2, pointVerticalActuatorHousingTop_2, CoMVerticalActuatorHousing_2, n1n2n3VerticalActuatorHousing_2] = Move_Right_Prism(Rotation, Translation, pointVerticalActuatorHousingBottom_2, pointVerticalActuatorHousingTop_2, CoMVerticalActuatorHousing_2, n1n2n3VerticalActuatorHousing_2);
[pointVerticalActuatorHousingBottom_3, pointVerticalActuatorHousingTop_3, CoMVerticalActuatorHousing_3, n1n2n3VerticalActuatorHousing_3] = Move_Right_Prism(Rotation, Translation, pointVerticalActuatorHousingBottom_3, pointVerticalActuatorHousingTop_3, CoMVerticalActuatorHousing_3, n1n2n3VerticalActuatorHousing_3);


%% Vertical Actuator Housing Without Blade

Rotation = [0, 1, 0;...
			0, 0, -1;...
			-1, 0, 0];
Translation = [R;-G/2;B];
[pointVerticalActuatorHousingWithoutBladeBottom_3, pointVerticalActuatorHousingWithoutBladeTop_3, CoMVerticalActuatorHousingWithoutBlade_3, n1n2n3VerticalActuatorHousingWithoutBlade_3]...
 = Move_Right_Prism(Rotation, Translation, pointActuatorHousingWithoutBladeBottom, pointActuatorHousingWithoutBladeTop, CoMActuatorHousingWithoutBlade, n1n2n3ActuatorHousingWithoutBlade);

theta = 2*pi/3;
Rz = [cos(theta),-sin(theta),0;sin(theta),cos(theta),0;0,0,1];
Translation = [0;0;0];
[pointVerticalActuatorHousingWithoutBladeBottom_1, pointVerticalActuatorHousingWithoutBladeTop_1, CoMVerticalActuatorHousingWithoutBlade_1, n1n2n3VerticalActuatorHousingWithoutBlade_1]...
 = Move_Right_Prism(Rz, Translation, pointVerticalActuatorHousingWithoutBladeBottom_3, pointVerticalActuatorHousingWithoutBladeTop_3, CoMVerticalActuatorHousingWithoutBlade_3, n1n2n3VerticalActuatorHousingWithoutBlade_3);
[pointVerticalActuatorHousingWithoutBladeBottom_2, pointVerticalActuatorHousingWithoutBladeTop_2, CoMVerticalActuatorHousingWithoutBlade_2, n1n2n3VerticalActuatorHousingWithoutBlade_2]...
 = Move_Right_Prism(Rz, Translation, pointVerticalActuatorHousingWithoutBladeBottom_1, pointVerticalActuatorHousingWithoutBladeTop_1, CoMVerticalActuatorHousingWithoutBlade_1, n1n2n3VerticalActuatorHousingWithoutBlade_1);

Rotation = n1n2n3WholeStructure;
Translation = pointNozzleHolderBottomCenter;
[pointVerticalActuatorHousingWithoutBladeBottom_1, pointVerticalActuatorHousingWithoutBladeTop_1, CoMVerticalActuatorHousingWithoutBlade_1, n1n2n3VerticalActuatorHousingWithoutBlade_1] = Move_Right_Prism(Rotation, Translation, pointVerticalActuatorHousingWithoutBladeBottom_1, pointVerticalActuatorHousingWithoutBladeTop_1, CoMVerticalActuatorHousingWithoutBlade_1, n1n2n3VerticalActuatorHousingWithoutBlade_1);
[pointVerticalActuatorHousingWithoutBladeBottom_2, pointVerticalActuatorHousingWithoutBladeTop_2, CoMVerticalActuatorHousingWithoutBlade_2, n1n2n3VerticalActuatorHousingWithoutBlade_2] = Move_Right_Prism(Rotation, Translation, pointVerticalActuatorHousingWithoutBladeBottom_2, pointVerticalActuatorHousingWithoutBladeTop_2, CoMVerticalActuatorHousingWithoutBlade_2, n1n2n3VerticalActuatorHousingWithoutBlade_2);
[pointVerticalActuatorHousingWithoutBladeBottom_3, pointVerticalActuatorHousingWithoutBladeTop_3, CoMVerticalActuatorHousingWithoutBlade_3, n1n2n3VerticalActuatorHousingWithoutBlade_3] = Move_Right_Prism(Rotation, Translation, pointVerticalActuatorHousingWithoutBladeBottom_3, pointVerticalActuatorHousingWithoutBladeTop_3, CoMVerticalActuatorHousingWithoutBlade_3, n1n2n3VerticalActuatorHousingWithoutBlade_3);


%% Vertical Grounded Actuator Housing

Rotation = [0, -1, 0;...
			0, 0, -1;...
			1, 0, 0];
Translation = [R+A;-G/2;0];
[pointVerticalGroundedActuatorHousingBottom_3, pointVerticalGroundedActuatorHousingTop_3, CoMVerticalGroundedActuatorHousing_3, n1n2n3VerticalGroundedActuatorHousing_3]...
 = Move_Right_Prism(Rotation, Translation, pointActuatorHousingGroundedBottom, pointActuatorHousingGroundedTop, CoMActuatorHousingGrounded, n1n2n3ActuatorHousingGrounded);

theta = 2*pi/3;
Rz = [cos(theta),-sin(theta),0;sin(theta),cos(theta),0;0,0,1];
Translation = [0;0;0];
[pointVerticalGroundedActuatorHousingBottom_1, pointVerticalGroundedActuatorHousingTop_1, CoMVerticalGroundedActuatorHousing_1, n1n2n3VerticalGroundedActuatorHousing_1]...
 = Move_Right_Prism(Rz, Translation, pointVerticalGroundedActuatorHousingBottom_3, pointVerticalGroundedActuatorHousingTop_3, CoMVerticalGroundedActuatorHousing_3, n1n2n3VerticalGroundedActuatorHousing_3);
[pointVerticalGroundedActuatorHousingBottom_2, pointVerticalGroundedActuatorHousingTop_2, CoMVerticalGroundedActuatorHousing_2, n1n2n3VerticalGroundedActuatorHousing_2]...
 = Move_Right_Prism(Rz, Translation, pointVerticalGroundedActuatorHousingBottom_1, pointVerticalGroundedActuatorHousingTop_1, CoMVerticalGroundedActuatorHousing_1, n1n2n3VerticalGroundedActuatorHousing_1);

Rotation = n1n2n3WholeStructure;
Translation = pointNozzleHolderBottomCenter;
[pointVerticalGroundedActuatorHousingBottom_1, pointVerticalGroundedActuatorHousingTop_1, CoMVerticalGroundedActuatorHousing_1, n1n2n3VerticalGroundedActuatorHousing_1] = Move_Right_Prism(Rotation, Translation, pointVerticalGroundedActuatorHousingBottom_1, pointVerticalGroundedActuatorHousingTop_1, CoMVerticalGroundedActuatorHousing_1, n1n2n3VerticalGroundedActuatorHousing_1);
[pointVerticalGroundedActuatorHousingBottom_2, pointVerticalGroundedActuatorHousingTop_2, CoMVerticalGroundedActuatorHousing_2, n1n2n3VerticalGroundedActuatorHousing_2] = Move_Right_Prism(Rotation, Translation, pointVerticalGroundedActuatorHousingBottom_2, pointVerticalGroundedActuatorHousingTop_2, CoMVerticalGroundedActuatorHousing_2, n1n2n3VerticalGroundedActuatorHousing_2);
[pointVerticalGroundedActuatorHousingBottom_3, pointVerticalGroundedActuatorHousingTop_3, CoMVerticalGroundedActuatorHousing_3, n1n2n3VerticalGroundedActuatorHousing_3] = Move_Right_Prism(Rotation, Translation, pointVerticalGroundedActuatorHousingBottom_3, pointVerticalGroundedActuatorHousingTop_3, CoMVerticalGroundedActuatorHousing_3, n1n2n3VerticalGroundedActuatorHousing_3);


%% Vertical Grounded Actuator Housing Without Blade

Rotation = [0, -1, 0;...
			0, 0, -1;...
			1, 0, 0];
Translation = [R+A;-G/2;0];
[pointVerticalGroundedActuatorHousingWithoutBladeBottom_3, pointVerticalGroundedActuatorHousingWithoutBladeTop_3, CoMVerticalGroundedActuatorHousingWithoutBlade_3, n1n2n3VerticalGroundedActuatorHousingWithoutBlade_3]...
 = Move_Right_Prism(Rotation, Translation, pointActuatorHousingGroundedWithoutBladeBottom, pointActuatorHousingGroundedWithoutBladeTop, CoMActuatorHousingGroundedWithoutBlade, n1n2n3ActuatorHousingGroundedWithoutBlade);

theta = 2*pi/3;
Rz = [cos(theta),-sin(theta),0;sin(theta),cos(theta),0;0,0,1];
Translation = [0;0;0];
[pointVerticalGroundedActuatorHousingWithoutBladeBottom_1, pointVerticalGroundedActuatorHousingWithoutBladeTop_1, CoMVerticalGroundedActuatorHousingWithoutBlade_1, n1n2n3VerticalGroundedActuatorHousingWithoutBlade_1]...
 = Move_Right_Prism(Rz, Translation, pointVerticalGroundedActuatorHousingWithoutBladeBottom_3, pointVerticalGroundedActuatorHousingWithoutBladeTop_3, CoMVerticalGroundedActuatorHousingWithoutBlade_3, n1n2n3VerticalGroundedActuatorHousingWithoutBlade_3);
[pointVerticalGroundedActuatorHousingWithoutBladeBottom_2, pointVerticalGroundedActuatorHousingWithoutBladeTop_2, CoMVerticalGroundedActuatorHousingWithoutBlade_2, n1n2n3VerticalGroundedActuatorHousingWithoutBlade_2]...
 = Move_Right_Prism(Rz, Translation, pointVerticalGroundedActuatorHousingWithoutBladeBottom_1, pointVerticalGroundedActuatorHousingWithoutBladeTop_1, CoMVerticalGroundedActuatorHousingWithoutBlade_1, n1n2n3VerticalGroundedActuatorHousingWithoutBlade_1);

Rotation = n1n2n3WholeStructure;
Translation = pointNozzleHolderBottomCenter;
[pointVerticalGroundedActuatorHousingWithoutBladeBottom_1, pointVerticalGroundedActuatorHousingWithoutBladeTop_1, CoMVerticalGroundedActuatorHousingWithoutBlade_1, n1n2n3VerticalGroundedActuatorHousingWithoutBlade_1] = Move_Right_Prism(Rotation, Translation, pointVerticalGroundedActuatorHousingWithoutBladeBottom_1, pointVerticalGroundedActuatorHousingWithoutBladeTop_1, CoMVerticalGroundedActuatorHousingWithoutBlade_1, n1n2n3VerticalGroundedActuatorHousingWithoutBlade_1);
[pointVerticalGroundedActuatorHousingWithoutBladeBottom_2, pointVerticalGroundedActuatorHousingWithoutBladeTop_2, CoMVerticalGroundedActuatorHousingWithoutBlade_2, n1n2n3VerticalGroundedActuatorHousingWithoutBlade_2] = Move_Right_Prism(Rotation, Translation, pointVerticalGroundedActuatorHousingWithoutBladeBottom_2, pointVerticalGroundedActuatorHousingWithoutBladeTop_2, CoMVerticalGroundedActuatorHousingWithoutBlade_2, n1n2n3VerticalGroundedActuatorHousingWithoutBlade_2);
[pointVerticalGroundedActuatorHousingWithoutBladeBottom_3, pointVerticalGroundedActuatorHousingWithoutBladeTop_3, CoMVerticalGroundedActuatorHousingWithoutBlade_3, n1n2n3VerticalGroundedActuatorHousingWithoutBlade_3] = Move_Right_Prism(Rotation, Translation, pointVerticalGroundedActuatorHousingWithoutBladeBottom_3, pointVerticalGroundedActuatorHousingWithoutBladeTop_3, CoMVerticalGroundedActuatorHousingWithoutBlade_3, n1n2n3VerticalGroundedActuatorHousingWithoutBlade_3);


%% Whole Top Blade 

coefficientQ = H-abs(pointNozzleHolderBottomE_2(1)-pointOrigin(1));
coefficientGamma = atan2(coefficientQ-t,B-W);
tempDistance = norm([coefficientQ-t;B-W]);
coefficientPsi = asin(tempDistance/2/L2)*2;
coefficientPhi = pi-coefficientGamma-(pi/2-coefficientPsi/2);

pointWholeTopBladeBottom = [C;0;0];
pointWholeTopBladeBottom(:,end+1) = [C;t;0];
pointWholeTopBladeBottom(:,end+1) = [0;t;0];
pointWholeTopBladeBottom(:,end+1) = pointWholeTopBladeBottom(:,end)+[-L2*cos(coefficientPhi);L2*sin(coefficientPhi);0];
pointWholeTopBladeBottom(:,end+1) = pointWholeTopBladeBottom(:,end)+[L2*cos(coefficientPsi-coefficientPhi);L2*sin(coefficientPsi-coefficientPhi);0];
pointWholeTopBladeBottom(:,end+1) = pointWholeTopBladeBottom(:,end)+[0;t/sin(pi/2-coefficientPsi+coefficientPhi);0];
pointWholeTopBladeBottom(:,end+1) = pointWholeTopBladeBottom(:,4)+t/sin(coefficientPsi/2)*[-cos(coefficientPhi-coefficientPsi/2);sin(coefficientPhi-coefficientPsi/2);0];
pointWholeTopBladeBottom(:,end+1) = [-t/tan(pi/2-coefficientPhi/2);0;0];

pointWholeTopBladeForManufactureBottom = [C;0;0];
pointWholeTopBladeForManufactureBottom(:,end+1) = [C;t;0];
pointWholeTopBladeForManufactureBottom(:,end+1) = [0;t;0];
pointWholeTopBladeForManufactureBottom(:,end+1) = pointWholeTopBladeForManufactureBottom(:,end)+[-L2*cos(coefficientPhi);L2*sin(coefficientPhi);0];
pointWholeTopBladeForManufactureBottom(:,end+1) = pointWholeTopBladeForManufactureBottom(:,end)+[L2*cos(coefficientPsi-coefficientPhi);L2*sin(coefficientPsi-coefficientPhi);0];
pointWholeTopBladeForManufactureBottom(:,end+1) = pointWholeTopBladeForManufactureBottom(:,end)+[W;0;0];
pointWholeTopBladeForManufactureBottom(:,end+1) = pointWholeTopBladeForManufactureBottom(:,end)+[0;D;0];
pointWholeTopBladeForManufactureBottom(:,end+1) = pointWholeTopBladeForManufactureBottom(:,end)+[-W;0;0];
pointWholeTopBladeForManufactureBottom(:,end+1) = pointWholeTopBladeForManufactureBottom(:,5)+[0;t/sin(pi/2-coefficientPsi+coefficientPhi);0];
pointWholeTopBladeForManufactureBottom(:,end+1) = pointWholeTopBladeForManufactureBottom(:,4)+t/sin(coefficientPsi/2)*[-cos(coefficientPhi-coefficientPsi/2);sin(coefficientPhi-coefficientPsi/2);0];
pointWholeTopBladeForManufactureBottom(:,end+1) = [-t/tan(pi/2-coefficientPhi/2);0;0];

[volumeWholeTopBlade, massWholeTopBlade, CoMWholeTopBlade, IxWholeTopBlade, IyWholeTopBlade, IzWholeTopBlade, IWholeTopBlade,...
pointWholeTopBladeBottom, pointWholeTopBladeTop] = Right_Prism_Properties(pointWholeTopBladeBottom(1,:), pointWholeTopBladeBottom(2,:), W, rho);
n1n2n3WholeTopBlade = eye(3);

Rotation = [0, 1, 0; 0, 0, -1; -1, 0, 0];
Translation = pointNozzleHolderBottomE_2+[-coefficientQ;0;B];
[pointWholeTopBladeBottom_2, pointWholeTopBladeTop_2, CoMWholeTopBlade_2, n1n2n3WholeTopBlade_2] = Move_Right_Prism(Rotation, Translation, pointWholeTopBladeBottom, pointWholeTopBladeTop, CoMWholeTopBlade, n1n2n3WholeTopBlade);

theta = 2*pi/3;
Rz = [cos(theta),-sin(theta),0;sin(theta),cos(theta),0;0,0,1];
Translation = [0;0;0];
[pointWholeTopBladeBottom_3, pointWholeTopBladeTop_3, CoMWholeTopBlade_3, n1n2n3WholeTopBlade_3] = Move_Right_Prism(Rz, Translation, pointWholeTopBladeBottom_2, pointWholeTopBladeTop_2, CoMWholeTopBlade_2, n1n2n3WholeTopBlade_2);
[pointWholeTopBladeBottom_1, pointWholeTopBladeTop_1, CoMWholeTopBlade_1, n1n2n3WholeTopBlade_1] = Move_Right_Prism(Rz, Translation, pointWholeTopBladeBottom_3, pointWholeTopBladeTop_3, CoMWholeTopBlade_3, n1n2n3WholeTopBlade_3);

Rotation = n1n2n3WholeStructure;
Translation = pointNozzleHolderBottomCenter;
[pointWholeTopBladeBottom_1, pointWholeTopBladeTop_1, CoMWholeTopBlade_1, n1n2n3WholeTopBlade_1] = Move_Right_Prism(Rotation, Translation, pointWholeTopBladeBottom_1, pointWholeTopBladeTop_1, CoMWholeTopBlade_1, n1n2n3WholeTopBlade_1);
[pointWholeTopBladeBottom_2, pointWholeTopBladeTop_2, CoMWholeTopBlade_2, n1n2n3WholeTopBlade_2] = Move_Right_Prism(Rotation, Translation, pointWholeTopBladeBottom_2, pointWholeTopBladeTop_2, CoMWholeTopBlade_2, n1n2n3WholeTopBlade_2);
[pointWholeTopBladeBottom_3, pointWholeTopBladeTop_3, CoMWholeTopBlade_3, n1n2n3WholeTopBlade_3] = Move_Right_Prism(Rotation, Translation, pointWholeTopBladeBottom_3, pointWholeTopBladeTop_3, CoMWholeTopBlade_3, n1n2n3WholeTopBlade_3);


%% Top Blade 

pointWholeTopBladeBottomFlip = fliplr(pointWholeTopBladeBottom);
pointTopBladeBottom = (pointWholeTopBladeBottomFlip(:,1)+pointWholeTopBladeBottomFlip(:,2))/2;
pointTopBladeBottom(:,end+1) = pointWholeTopBladeBottomFlip(:,2);
pointTopBladeBottom(:,end+1) = (pointWholeTopBladeBottomFlip(:,2)+pointWholeTopBladeBottomFlip(:,3))/2;
pointTopBladeBottom(:,end+1) = (pointWholeTopBladeBottomFlip(:,4)+pointWholeTopBladeBottomFlip(:,5))/2;
pointTopBladeBottom(:,end+1) = pointWholeTopBladeBottomFlip(:,5);
pointTopBladeBottom(:,end+1) = (pointWholeTopBladeBottomFlip(:,5)+pointWholeTopBladeBottomFlip(:,6))/2;
pointTopBladeBottom = fliplr(pointTopBladeBottom);

[volumeTopBlade, massTopBlade, CoMTopBlade, IxTopBlade, IyTopBlade, IzTopBlade, ITopBlade,...
pointTopBladeBottom, pointTopBladeTop] = Right_Prism_Properties(pointTopBladeBottom(1,:), pointTopBladeBottom(2,:), W, rho);
n1n2n3TopBlade = eye(3);

Rotation = [0, 1, 0; 0, 0, -1; -1, 0, 0];
Translation = pointNozzleHolderBottomE_2+[-coefficientQ;0;B];
[pointTopBladeBottom_2, pointTopBladeTop_2, CoMTopBlade_2, n1n2n3TopBlade_2] = Move_Right_Prism(Rotation, Translation, pointTopBladeBottom, pointTopBladeTop, CoMTopBlade, n1n2n3TopBlade);

theta = 2*pi/3;
Rz = [cos(theta),-sin(theta),0;sin(theta),cos(theta),0;0,0,1];
Translation = [0;0;0];
[pointTopBladeBottom_3, pointTopBladeTop_3, CoMTopBlade_3, n1n2n3TopBlade_3] = Move_Right_Prism(Rz, Translation, pointTopBladeBottom_2, pointTopBladeTop_2, CoMTopBlade_2, n1n2n3TopBlade_2);
[pointTopBladeBottom_1, pointTopBladeTop_1, CoMTopBlade_1, n1n2n3TopBlade_1] = Move_Right_Prism(Rz, Translation, pointTopBladeBottom_3, pointTopBladeTop_3, CoMTopBlade_3, n1n2n3TopBlade_3);

Rotation = n1n2n3WholeStructure;
Translation = pointNozzleHolderBottomCenter;
[pointTopBladeBottom_1, pointTopBladeTop_1, CoMTopBlade_1, n1n2n3TopBlade_1] = Move_Right_Prism(Rotation, Translation, pointTopBladeBottom_1, pointTopBladeTop_1, CoMTopBlade_1, n1n2n3TopBlade_1);
[pointTopBladeBottom_2, pointTopBladeTop_2, CoMTopBlade_2, n1n2n3TopBlade_2] = Move_Right_Prism(Rotation, Translation, pointTopBladeBottom_2, pointTopBladeTop_2, CoMTopBlade_2, n1n2n3TopBlade_2);
[pointTopBladeBottom_3, pointTopBladeTop_3, CoMTopBlade_3, n1n2n3TopBlade_3] = Move_Right_Prism(Rotation, Translation, pointTopBladeBottom_3, pointTopBladeTop_3, CoMTopBlade_3, n1n2n3TopBlade_3);


%% Blade Connected With Horizontal Actuator Housing

pointBladeHAHBottom = pointWholeTopBladeBottomFlip(:,1);
pointBladeHAHBottom(:,end+1) = (pointWholeTopBladeBottomFlip(:,1)+pointWholeTopBladeBottomFlip(:,2))/2;
pointBladeHAHBottom(:,end+1) = (pointWholeTopBladeBottomFlip(:,5)+pointWholeTopBladeBottomFlip(:,6))/2;
pointBladeHAHBottom(:,end+1) = pointWholeTopBladeBottomFlip(:,6);
pointBladeHAHBottom(:,end+1) = pointWholeTopBladeBottomFlip(:,7);
pointBladeHAHBottom(:,end+1) = pointWholeTopBladeBottomFlip(:,8);
pointBladeHAHBottom = fliplr(pointBladeHAHBottom);

[volumeBladeHAH, massBladeHAH, CoMBladeHAH, IxBladeHAH, IyBladeHAH, IzBladeHAH, IBladeHAH,...
pointBladeHAHBottom, pointBladeHAHTop] = Right_Prism_Properties(pointBladeHAHBottom(1,:), pointBladeHAHBottom(2,:), W, rho);
n1n2n3BladeHAH = eye(3);

Rotation = [0, 1, 0; 0, 0, -1; -1, 0, 0];
Translation = pointNozzleHolderBottomE_2+[-coefficientQ;0;B];
[pointBladeHAHBottom_2, pointBladeHAHTop_2, CoMBladeHAH_2, n1n2n3BladeHAH_2] = Move_Right_Prism(Rotation, Translation, pointBladeHAHBottom, pointBladeHAHTop, CoMBladeHAH, n1n2n3BladeHAH);

theta = 2*pi/3;
Rz = [cos(theta),-sin(theta),0;sin(theta),cos(theta),0;0,0,1];
Translation = [0;0;0];
[pointBladeHAHBottom_3, pointBladeHAHTop_3, CoMBladeHAH_3, n1n2n3BladeHAH_3] = Move_Right_Prism(Rz, Translation, pointBladeHAHBottom_2, pointBladeHAHTop_2, CoMBladeHAH_2, n1n2n3BladeHAH_2);
[pointBladeHAHBottom_1, pointBladeHAHTop_1, CoMBladeHAH_1, n1n2n3BladeHAH_1] = Move_Right_Prism(Rz, Translation, pointBladeHAHBottom_3, pointBladeHAHTop_3, CoMBladeHAH_3, n1n2n3BladeHAH_3);

Rotation = n1n2n3WholeStructure;
Translation = pointNozzleHolderBottomCenter;
[pointBladeHAHBottom_1, pointBladeHAHTop_1, CoMBladeHAH_1, n1n2n3BladeHAH_1] = Move_Right_Prism(Rotation, Translation, pointBladeHAHBottom_1, pointBladeHAHTop_1, CoMBladeHAH_1, n1n2n3BladeHAH_1);
[pointBladeHAHBottom_2, pointBladeHAHTop_2, CoMBladeHAH_2, n1n2n3BladeHAH_2] = Move_Right_Prism(Rotation, Translation, pointBladeHAHBottom_2, pointBladeHAHTop_2, CoMBladeHAH_2, n1n2n3BladeHAH_2);
[pointBladeHAHBottom_3, pointBladeHAHTop_3, CoMBladeHAH_3, n1n2n3BladeHAH_3] = Move_Right_Prism(Rotation, Translation, pointBladeHAHBottom_3, pointBladeHAHTop_3, CoMBladeHAH_3, n1n2n3BladeHAH_3);


%% Blade Connected With Nozzle Holder

pointBladeNHBottom = (pointWholeTopBladeBottomFlip(:,2)+pointWholeTopBladeBottomFlip(:,3))/2;
pointBladeNHBottom(:,end+1) = pointWholeTopBladeBottomFlip(:,3);
pointBladeNHBottom(:,end+1) = pointWholeTopBladeBottomFlip(:,4);
pointBladeNHBottom(:,end+1) = (pointWholeTopBladeBottomFlip(:,4)+pointWholeTopBladeBottomFlip(:,5))/2;
pointBladeNHBottom = fliplr(pointBladeNHBottom);

[volumeBladeNH, massBladeNH, CoMBladeNH, IxBladeNH, IyBladeNH, IzBladeNH, IBladeNH,...
pointBladeNHBottom, pointBladeNHTop] = Right_Prism_Properties(pointBladeNHBottom(1,:), pointBladeNHBottom(2,:), W, rho);
n1n2n3BladeNH = eye(3);

Rotation = [0, 1, 0; 0, 0, -1; -1, 0, 0];
Translation = pointNozzleHolderBottomE_2+[-coefficientQ;0;B];
[pointBladeNHBottom_2, pointBladeNHTop_2, CoMBladeNH_2, n1n2n3BladeNH_2] = Move_Right_Prism(Rotation, Translation, pointBladeNHBottom, pointBladeNHTop, CoMBladeNH, n1n2n3BladeNH);

theta = 2*pi/3;
Rz = [cos(theta),-sin(theta),0;sin(theta),cos(theta),0;0,0,1];
Translation = [0;0;0];
[pointBladeNHBottom_3, pointBladeNHTop_3, CoMBladeNH_3, n1n2n3BladeNH_3] = Move_Right_Prism(Rz, Translation, pointBladeNHBottom_2, pointBladeNHTop_2, CoMBladeNH_2, n1n2n3BladeNH_2);
[pointBladeNHBottom_1, pointBladeNHTop_1, CoMBladeNH_1, n1n2n3BladeNH_1] = Move_Right_Prism(Rz, Translation, pointBladeNHBottom_3, pointBladeNHTop_3, CoMBladeNH_3, n1n2n3BladeNH_3);

Rotation = n1n2n3WholeStructure;
Translation = pointNozzleHolderBottomCenter;
[pointBladeNHBottom_1, pointBladeNHTop_1, CoMBladeNH_1, n1n2n3BladeNH_1] = Move_Right_Prism(Rotation, Translation, pointBladeNHBottom_1, pointBladeNHTop_1, CoMBladeNH_1, n1n2n3BladeNH_1);
[pointBladeNHBottom_2, pointBladeNHTop_2, CoMBladeNH_2, n1n2n3BladeNH_2] = Move_Right_Prism(Rotation, Translation, pointBladeNHBottom_2, pointBladeNHTop_2, CoMBladeNH_2, n1n2n3BladeNH_2);
[pointBladeNHBottom_3, pointBladeNHTop_3, CoMBladeNH_3, n1n2n3BladeNH_3] = Move_Right_Prism(Rotation, Translation, pointBladeNHBottom_3, pointBladeNHTop_3, CoMBladeNH_3, n1n2n3BladeNH_3);


%% Horizontal Actuator Housing

Rotation = [0, 1, 0;...
		    1, 0, 0;...
		    0, 0, -1];
Translation = [-H+t;-B/2;B];
Translation = Translation+[0;B/2-W/2-F;0];
[pointHorizontalActuatorHousingBottom_2, pointHorizontalActuatorHousingTop_2, CoMHorizontalActuatorHousing_2, n1n2n3HorizontalActuatorHousing_2]...
 = Move_Right_Prism(Rotation, Translation, pointActuatorHousingFlippedBottom, pointActuatorHousingFlippedTop, CoMActuatorHousingFlipped, n1n2n3ActuatorHousingFlipped);

theta = 2*pi/3;
Rz = [cos(theta),-sin(theta),0;sin(theta),cos(theta),0;0,0,1];
Translation = [0;0;0];
[pointHorizontalActuatorHousingBottom_3, pointHorizontalActuatorHousingTop_3, CoMHorizontalActuatorHousing_3, n1n2n3HorizontalActuatorHousing_3]...
 = Move_Right_Prism(Rz, Translation, pointHorizontalActuatorHousingBottom_2, pointHorizontalActuatorHousingTop_2, CoMHorizontalActuatorHousing_2, n1n2n3HorizontalActuatorHousing_2);
[pointHorizontalActuatorHousingBottom_1, pointHorizontalActuatorHousingTop_1, CoMHorizontalActuatorHousing_1, n1n2n3HorizontalActuatorHousing_1]...
 = Move_Right_Prism(Rz, Translation, pointHorizontalActuatorHousingBottom_3, pointHorizontalActuatorHousingTop_3, CoMHorizontalActuatorHousing_3, n1n2n3HorizontalActuatorHousing_3);

Rotation = n1n2n3WholeStructure;
Translation = pointNozzleHolderBottomCenter;
[pointHorizontalActuatorHousingBottom_1, pointHorizontalActuatorHousingTop_1, CoMHorizontalActuatorHousing_1, n1n2n3HorizontalActuatorHousing_1] = Move_Right_Prism(Rotation, Translation, pointHorizontalActuatorHousingBottom_1, pointHorizontalActuatorHousingTop_1, CoMHorizontalActuatorHousing_1, n1n2n3HorizontalActuatorHousing_1);
[pointHorizontalActuatorHousingBottom_2, pointHorizontalActuatorHousingTop_2, CoMHorizontalActuatorHousing_2, n1n2n3HorizontalActuatorHousing_2] = Move_Right_Prism(Rotation, Translation, pointHorizontalActuatorHousingBottom_2, pointHorizontalActuatorHousingTop_2, CoMHorizontalActuatorHousing_2, n1n2n3HorizontalActuatorHousing_2);
[pointHorizontalActuatorHousingBottom_3, pointHorizontalActuatorHousingTop_3, CoMHorizontalActuatorHousing_3, n1n2n3HorizontalActuatorHousing_3] = Move_Right_Prism(Rotation, Translation, pointHorizontalActuatorHousingBottom_3, pointHorizontalActuatorHousingTop_3, CoMHorizontalActuatorHousing_3, n1n2n3HorizontalActuatorHousing_3);


%% Horizontal Actuator Housing Without Blade

Rotation = [0, 1, 0;...
		    1, 0, 0;...
		    0, 0, -1];
Translation = [-H+t;-B/2;B];
Translation = Translation+[0;B/2-W/2-F;0];
[pointHorizontalActuatorHousingWithoutBladeBottom_2, pointHorizontalActuatorHousingWithoutBladeTop_2, CoMHorizontalActuatorHousingWithoutBlade_2, n1n2n3HorizontalActuatorHousingWithoutBlade_2]...
 = Move_Right_Prism(Rotation, Translation, pointActuatorHousingWithoutBladeFlippedBottom, pointActuatorHousingWithoutBladeFlippedTop, CoMActuatorHousingWithoutBladeFlipped, n1n2n3ActuatorHousingWithoutBladeFlipped);

theta = 2*pi/3;
Rz = [cos(theta),-sin(theta),0;sin(theta),cos(theta),0;0,0,1];
Translation = [0;0;0];
[pointHorizontalActuatorHousingWithoutBladeBottom_3, pointHorizontalActuatorHousingWithoutBladeTop_3, CoMHorizontalActuatorHousingWithoutBlade_3, n1n2n3HorizontalActuatorHousingWithoutBlade_3]...
 = Move_Right_Prism(Rz, Translation, pointHorizontalActuatorHousingWithoutBladeBottom_2, pointHorizontalActuatorHousingWithoutBladeTop_2, CoMHorizontalActuatorHousingWithoutBlade_2, n1n2n3HorizontalActuatorHousingWithoutBlade_2);
[pointHorizontalActuatorHousingWithoutBladeBottom_1, pointHorizontalActuatorHousingWithoutBladeTop_1, CoMHorizontalActuatorHousingWithoutBlade_1, n1n2n3HorizontalActuatorHousingWithoutBlade_1]...
 = Move_Right_Prism(Rz, Translation, pointHorizontalActuatorHousingWithoutBladeBottom_3, pointHorizontalActuatorHousingWithoutBladeTop_3, CoMHorizontalActuatorHousingWithoutBlade_3, n1n2n3HorizontalActuatorHousingWithoutBlade_3);

Rotation = n1n2n3WholeStructure;
Translation = pointNozzleHolderBottomCenter;
[pointHorizontalActuatorHousingWithoutBladeBottom_1, pointHorizontalActuatorHousingWithoutBladeTop_1, CoMHorizontalActuatorHousingWithoutBlade_1, n1n2n3HorizontalActuatorHousingWithoutBlade_1] = Move_Right_Prism(Rotation, Translation, pointHorizontalActuatorHousingWithoutBladeBottom_1, pointHorizontalActuatorHousingWithoutBladeTop_1, CoMHorizontalActuatorHousingWithoutBlade_1, n1n2n3HorizontalActuatorHousingWithoutBlade_1);
[pointHorizontalActuatorHousingWithoutBladeBottom_2, pointHorizontalActuatorHousingWithoutBladeTop_2, CoMHorizontalActuatorHousingWithoutBlade_2, n1n2n3HorizontalActuatorHousingWithoutBlade_2] = Move_Right_Prism(Rotation, Translation, pointHorizontalActuatorHousingWithoutBladeBottom_2, pointHorizontalActuatorHousingWithoutBladeTop_2, CoMHorizontalActuatorHousingWithoutBlade_2, n1n2n3HorizontalActuatorHousingWithoutBlade_2);
[pointHorizontalActuatorHousingWithoutBladeBottom_3, pointHorizontalActuatorHousingWithoutBladeTop_3, CoMHorizontalActuatorHousingWithoutBlade_3, n1n2n3HorizontalActuatorHousingWithoutBlade_3] = Move_Right_Prism(Rotation, Translation, pointHorizontalActuatorHousingWithoutBladeBottom_3, pointHorizontalActuatorHousingWithoutBladeTop_3, CoMHorizontalActuatorHousingWithoutBlade_3, n1n2n3HorizontalActuatorHousingWithoutBlade_3);


%% Horizontal Grounded Actuator Housing

Rotation = [0, -1, 0;...
		    -1, 0, 0;...
		    0, 0, -1];
Translation = [-H+t+A;B/2;B];
Translation = Translation+[0;B/2-W/2-F;0];
[pointHorizontalGroundedActuatorHousingBottom_2, pointHorizontalGroundedActuatorHousingTop_2, CoMHorizontalGroundedActuatorHousing_2, n1n2n3HorizontalGroundedActuatorHousing_2]...
 = Move_Right_Prism(Rotation, Translation, pointActuatorHousingGroundedFlippedBottom, pointActuatorHousingGroundedFlippedTop, CoMActuatorHousingGroundedFlipped, n1n2n3ActuatorHousingGroundedFlipped);

theta = 2*pi/3;
Rz = [cos(theta),-sin(theta),0;sin(theta),cos(theta),0;0,0,1];
Translation = [0;0;0];
[pointHorizontalGroundedActuatorHousingBottom_3, pointHorizontalGroundedActuatorHousingTop_3, CoMHorizontalGroundedActuatorHousing_3, n1n2n3HorizontalGroundedActuatorHousing_3]...
 = Move_Right_Prism(Rz, Translation, pointHorizontalGroundedActuatorHousingBottom_2, pointHorizontalGroundedActuatorHousingTop_2, CoMHorizontalGroundedActuatorHousing_2, n1n2n3HorizontalGroundedActuatorHousing_2);
[pointHorizontalGroundedActuatorHousingBottom_1, pointHorizontalGroundedActuatorHousingTop_1, CoMHorizontalGroundedActuatorHousing_1, n1n2n3HorizontalGroundedActuatorHousing_1]...
 = Move_Right_Prism(Rz, Translation, pointHorizontalGroundedActuatorHousingBottom_3, pointHorizontalGroundedActuatorHousingTop_3, CoMHorizontalGroundedActuatorHousing_3, n1n2n3HorizontalGroundedActuatorHousing_3);

Rotation = n1n2n3WholeStructure;
Translation = pointNozzleHolderBottomCenter;
[pointHorizontalGroundedActuatorHousingBottom_1, pointHorizontalGroundedActuatorHousingTop_1, CoMHorizontalGroundedActuatorHousing_1, n1n2n3HorizontalGroundedActuatorHousing_1] = Move_Right_Prism(Rotation, Translation, pointHorizontalGroundedActuatorHousingBottom_1, pointHorizontalGroundedActuatorHousingTop_1, CoMHorizontalGroundedActuatorHousing_1, n1n2n3HorizontalGroundedActuatorHousing_1);
[pointHorizontalGroundedActuatorHousingBottom_2, pointHorizontalGroundedActuatorHousingTop_2, CoMHorizontalGroundedActuatorHousing_2, n1n2n3HorizontalGroundedActuatorHousing_2] = Move_Right_Prism(Rotation, Translation, pointHorizontalGroundedActuatorHousingBottom_2, pointHorizontalGroundedActuatorHousingTop_2, CoMHorizontalGroundedActuatorHousing_2, n1n2n3HorizontalGroundedActuatorHousing_2);
[pointHorizontalGroundedActuatorHousingBottom_3, pointHorizontalGroundedActuatorHousingTop_3, CoMHorizontalGroundedActuatorHousing_3, n1n2n3HorizontalGroundedActuatorHousing_3] = Move_Right_Prism(Rotation, Translation, pointHorizontalGroundedActuatorHousingBottom_3, pointHorizontalGroundedActuatorHousingTop_3, CoMHorizontalGroundedActuatorHousing_3, n1n2n3HorizontalGroundedActuatorHousing_3);


%% Horizontal Grounded Actuator Housing Without Blade

Rotation = [0, -1, 0;...
		    -1, 0, 0;...
		    0, 0, -1];
Translation = [-H+t+A;B/2;B];
Translation = Translation+[0;B/2-W/2-F;0];
[pointHorizontalGroundedActuatorHousingWithoutBladeBottom_2, pointHorizontalGroundedActuatorHousingWithoutBladeTop_2, CoMHorizontalGroundedActuatorHousingWithoutBlade_2, n1n2n3HorizontalGroundedActuatorHousingWithoutBlade_2]...
 = Move_Right_Prism(Rotation, Translation, pointActuatorHousingGroundedWithoutBladeFlippedBottom, pointActuatorHousingGroundedWithoutBladeFlippedTop, CoMActuatorHousingGroundedWithoutBladeFlipped, n1n2n3ActuatorHousingGroundedWithoutBladeFlipped);

theta = 2*pi/3;
Rz = [cos(theta),-sin(theta),0;sin(theta),cos(theta),0;0,0,1];
Translation = [0;0;0];
[pointHorizontalGroundedActuatorHousingWithoutBladeBottom_3, pointHorizontalGroundedActuatorHousingWithoutBladeTop_3, CoMHorizontalGroundedActuatorHousingWithoutBlade_3, n1n2n3HorizontalGroundedActuatorHousingWithoutBlade_3]...
 = Move_Right_Prism(Rz, Translation, pointHorizontalGroundedActuatorHousingWithoutBladeBottom_2, pointHorizontalGroundedActuatorHousingWithoutBladeTop_2, CoMHorizontalGroundedActuatorHousingWithoutBlade_2, n1n2n3HorizontalGroundedActuatorHousingWithoutBlade_2);
[pointHorizontalGroundedActuatorHousingWithoutBladeBottom_1, pointHorizontalGroundedActuatorHousingWithoutBladeTop_1, CoMHorizontalGroundedActuatorHousingWithoutBlade_1, n1n2n3HorizontalGroundedActuatorHousingWithoutBlade_1]...
 = Move_Right_Prism(Rz, Translation, pointHorizontalGroundedActuatorHousingWithoutBladeBottom_3, pointHorizontalGroundedActuatorHousingWithoutBladeTop_3, CoMHorizontalGroundedActuatorHousingWithoutBlade_3, n1n2n3HorizontalGroundedActuatorHousingWithoutBlade_3);

Rotation = n1n2n3WholeStructure;
Translation = pointNozzleHolderBottomCenter;
[pointHorizontalGroundedActuatorHousingWithoutBladeBottom_1, pointHorizontalGroundedActuatorHousingWithoutBladeTop_1, CoMHorizontalGroundedActuatorHousingWithoutBlade_1, n1n2n3HorizontalGroundedActuatorHousingWithoutBlade_1] = Move_Right_Prism(Rotation, Translation, pointHorizontalGroundedActuatorHousingWithoutBladeBottom_1, pointHorizontalGroundedActuatorHousingWithoutBladeTop_1, CoMHorizontalGroundedActuatorHousingWithoutBlade_1, n1n2n3HorizontalGroundedActuatorHousingWithoutBlade_1);
[pointHorizontalGroundedActuatorHousingWithoutBladeBottom_2, pointHorizontalGroundedActuatorHousingWithoutBladeTop_2, CoMHorizontalGroundedActuatorHousingWithoutBlade_2, n1n2n3HorizontalGroundedActuatorHousingWithoutBlade_2] = Move_Right_Prism(Rotation, Translation, pointHorizontalGroundedActuatorHousingWithoutBladeBottom_2, pointHorizontalGroundedActuatorHousingWithoutBladeTop_2, CoMHorizontalGroundedActuatorHousingWithoutBlade_2, n1n2n3HorizontalGroundedActuatorHousingWithoutBlade_2);
[pointHorizontalGroundedActuatorHousingWithoutBladeBottom_3, pointHorizontalGroundedActuatorHousingWithoutBladeTop_3, CoMHorizontalGroundedActuatorHousingWithoutBlade_3, n1n2n3HorizontalGroundedActuatorHousingWithoutBlade_3] = Move_Right_Prism(Rotation, Translation, pointHorizontalGroundedActuatorHousingWithoutBladeBottom_3, pointHorizontalGroundedActuatorHousingWithoutBladeTop_3, CoMHorizontalGroundedActuatorHousingWithoutBlade_3, n1n2n3HorizontalGroundedActuatorHousingWithoutBlade_3);


%% Big Ground

coefficientI = W;
coefficientJ = H-t-A+parameterActuatorHousingGroundedThickness;
coefficientK = A+R+coefficientI;
coefficientM = (2*coefficientJ-coefficientK)/sr3;

pointBigGroundBottom = [-coefficientJ;0;0]+pointOrigin;
pointBigGroundBottom(:,end+1) = pointBigGroundBottom(:,end)+[0;sr3*coefficientJ-2*coefficientM;0];
pointBigGroundBottom(:,end+1) = pointBigGroundBottom(:,end)+[coefficientM*sin(pi/3);coefficientM*cos(pi/3);0];
pointBigGroundBottom(:,end+1) = pointBigGroundBottom(:,end)+[coefficientI*cos(pi/3);-coefficientI*sin(pi/3);0];
pointBigGroundBottom(:,end+1) = pointBigGroundBottom(:,2)+[coefficientI;-coefficientI/sr3;0];
pointBigGroundBottom(:,end+1) = [pointBigGroundBottom(1,5);-pointBigGroundBottom(2,5);pointBigGroundBottom(3,5)];
pointBigGroundBottom(:,end+1) = [pointBigGroundBottom(1,4);-pointBigGroundBottom(2,4);pointBigGroundBottom(3,4)];
pointBigGroundBottom(:,end+1) = [pointBigGroundBottom(1,3);-pointBigGroundBottom(2,3);pointBigGroundBottom(3,3)];
pointBigGroundBottom(:,end+1) = [pointBigGroundBottom(1,2);-pointBigGroundBottom(2,2);pointBigGroundBottom(3,2)];
pointBigGroundBottom = fliplr(pointBigGroundBottom);

[volumeBigGround, massBigGround, CoMBigGround, IxBigGround, IyBigGround, IzBigGround, IBigGround,...
 pointBigGroundBottom, pointBigGroundTop] = Right_Prism_Properties(pointBigGroundBottom(1,:), pointBigGroundBottom(2,:), B/2, rho);
n1n2n3BigGround = eye(3);

Rotation = eye(3);
Translation = [0;0;B/2];
[pointBigGroundBottom_2, pointBigGroundTop_2, CoMBigGround_2, n1n2n3BigGround_2]...
 = Move_Right_Prism(Rotation, Translation, pointBigGroundBottom, pointBigGroundTop, CoMBigGround, n1n2n3BigGround);

theta = 2*pi/3;
Rz = [cos(theta),-sin(theta),0;sin(theta),cos(theta),0;0,0,1];
Translation = [0;0;0];
[pointBigGroundBottom_3, pointBigGroundTop_3, CoMBigGround_3, n1n2n3BigGround_3]...
 = Move_Right_Prism(Rz, Translation, pointBigGroundBottom_2, pointBigGroundTop_2, CoMBigGround_2, n1n2n3BigGround_2);
[pointBigGroundBottom_1, pointBigGroundTop_1, CoMBigGround_1, n1n2n3BigGround_1]...
 = Move_Right_Prism(Rz, Translation, pointBigGroundBottom_3, pointBigGroundTop_3, CoMBigGround_3, n1n2n3BigGround_3);

Rotation = n1n2n3WholeStructure;
Translation = pointNozzleHolderBottomCenter;
[pointBigGroundBottom_1, pointBigGroundTop_1, CoMBigGround_1, n1n2n3BigGround_1] = Move_Right_Prism(Rotation, Translation, pointBigGroundBottom_1, pointBigGroundTop_1, CoMBigGround_1, n1n2n3BigGround_1);
[pointBigGroundBottom_2, pointBigGroundTop_2, CoMBigGround_2, n1n2n3BigGround_2] = Move_Right_Prism(Rotation, Translation, pointBigGroundBottom_2, pointBigGroundTop_2, CoMBigGround_2, n1n2n3BigGround_2);
[pointBigGroundBottom_3, pointBigGroundTop_3, CoMBigGround_3, n1n2n3BigGround_3] = Move_Right_Prism(Rotation, Translation, pointBigGroundBottom_3, pointBigGroundTop_3, CoMBigGround_3, n1n2n3BigGround_3);


%% All Blades

pointBottomBladeFirstBottom_1 = [pointNozzleHolderWithFlexureBottom(:,2),pointBottomBladeBottom_1(:,2),pointBottomBladeBottom_1(:,5),pointNozzleHolderWithFlexureBottom(:,5)];
pointBottomBladeFirstTop_1 = [pointNozzleHolderWithFlexureTop(:,2),pointBottomBladeTop_1(:,2),pointBottomBladeTop_1(:,5),pointNozzleHolderWithFlexureTop(:,5)];
pointBottomBladeSecondBottom_1 = [pointBladeVAHBottom_1(:,1:2),pointBottomBladeBottom_1(:,5),pointBottomBladeBottom_1(:,2),pointBladeVAHBottom_1(:,5:end)];
pointBottomBladeSecondTop_1 = [pointBladeVAHTop_1(:,1:2),pointBottomBladeTop_1(:,5),pointBottomBladeTop_1(:,2),pointBladeVAHTop_1(:,5:end)];

pointTopBladeFirstBottom_1 = [pointBladeHAHBottom_1(:,1:3),pointTopBladeBottom_1(:,2),pointTopBladeBottom_1(:,5),pointBladeHAHBottom_1(:,end)];
pointTopBladeFirstTop_1 = [pointBladeHAHTop_1(:,1:3),pointTopBladeTop_1(:,2),pointTopBladeTop_1(:,5),pointBladeHAHTop_1(:,end)];
pointTopBladeSecondBottom_1 = [pointTopBladeBottom_1(:,2),pointBladeNHBottom_1(:,2:3),pointTopBladeBottom_1(:,5)];
pointTopBladeSecondTop_1 = [pointTopBladeTop_1(:,2),pointBladeNHTop_1(:,2:3),pointTopBladeTop_1(:,5)];

pointVerticalActuatorBladeFirstBottom_1 = [pointVerticalActuatorHousingBottom_1(:,3),pointVerticalGroundedActuatorHousingBottom_1(:,end),pointVerticalGroundedActuatorHousingBottom_1(:,end-3),pointVerticalActuatorHousingBottom_1(:,6)];
pointVerticalActuatorBladeFirstTop_1 = [pointVerticalActuatorHousingTop_1(:,3),pointVerticalGroundedActuatorHousingTop_1(:,end),pointVerticalGroundedActuatorHousingTop_1(:,end-3),pointVerticalActuatorHousingTop_1(:,6)];
pointVerticalActuatorBladeSecondBottom_1 = [pointVerticalGroundedActuatorHousingBottom_1(:,3),pointVerticalActuatorHousingBottom_1(:,end),pointVerticalActuatorHousingBottom_1(:,end-3),pointVerticalGroundedActuatorHousingBottom_1(:,6)];
pointVerticalActuatorBladeSecondTop_1 = [pointVerticalGroundedActuatorHousingTop_1(:,3),pointVerticalActuatorHousingTop_1(:,end),pointVerticalActuatorHousingTop_1(:,end-3),pointVerticalGroundedActuatorHousingTop_1(:,6)];

pointHorizontalActuatorBladeFirstBottom_1 = [pointHorizontalActuatorHousingBottom_1(:,3),pointHorizontalGroundedActuatorHousingBottom_1(:,end),pointHorizontalGroundedActuatorHousingBottom_1(:,end-3),pointHorizontalActuatorHousingBottom_1(:,6)];
pointHorizontalActuatorBladeFirstTop_1 = [pointHorizontalActuatorHousingTop_1(:,3),pointHorizontalGroundedActuatorHousingTop_1(:,end),pointHorizontalGroundedActuatorHousingTop_1(:,end-3),pointHorizontalActuatorHousingTop_1(:,6)];
pointHorizontalActuatorBladeSecondBottom_1 = [pointHorizontalGroundedActuatorHousingBottom_1(:,3),pointHorizontalActuatorHousingBottom_1(:,end),pointHorizontalActuatorHousingBottom_1(:,end-3),pointHorizontalGroundedActuatorHousingBottom_1(:,6)];
pointHorizontalActuatorBladeSecondTop_1 = [pointHorizontalGroundedActuatorHousingTop_1(:,3),pointHorizontalActuatorHousingTop_1(:,end),pointHorizontalActuatorHousingTop_1(:,end-3),pointHorizontalGroundedActuatorHousingTop_1(:,6)];

pointBottomBladeFirstBottom_2 = [pointNozzleHolderWithFlexureBottom(:,2+length(pointNozzleHolderWithFlexureBottom)/3),pointBottomBladeBottom_2(:,2),pointBottomBladeBottom_2(:,5),pointNozzleHolderWithFlexureBottom(:,5+length(pointNozzleHolderWithFlexureBottom)/3)];
pointBottomBladeFirstTop_2 = [pointNozzleHolderWithFlexureTop(:,2+length(pointNozzleHolderWithFlexureBottom)/3),pointBottomBladeTop_2(:,2),pointBottomBladeTop_2(:,5),pointNozzleHolderWithFlexureTop(:,5+length(pointNozzleHolderWithFlexureBottom)/3)];
pointBottomBladeSecondBottom_2 = [pointBladeVAHBottom_2(:,1:2),pointBottomBladeBottom_2(:,5),pointBottomBladeBottom_2(:,2),pointBladeVAHBottom_2(:,5:end)];
pointBottomBladeSecondTop_2 = [pointBladeVAHTop_2(:,1:2),pointBottomBladeTop_2(:,5),pointBottomBladeTop_2(:,2),pointBladeVAHTop_2(:,5:end)];

pointTopBladeFirstBottom_2 = [pointBladeHAHBottom_2(:,1:3),pointTopBladeBottom_2(:,2),pointTopBladeBottom_2(:,5),pointBladeHAHBottom_2(:,end)];
pointTopBladeFirstTop_2 = [pointBladeHAHTop_2(:,1:3),pointTopBladeTop_2(:,2),pointTopBladeTop_2(:,5),pointBladeHAHTop_2(:,end)];
pointTopBladeSecondBottom_2 = [pointTopBladeBottom_2(:,2),pointBladeNHBottom_2(:,2:3),pointTopBladeBottom_2(:,5)];
pointTopBladeSecondTop_2 = [pointTopBladeTop_2(:,2),pointBladeNHTop_2(:,2:3),pointTopBladeTop_2(:,5)];

pointVerticalActuatorBladeFirstBottom_2 = [pointVerticalActuatorHousingBottom_2(:,3),pointVerticalGroundedActuatorHousingBottom_2(:,end),pointVerticalGroundedActuatorHousingBottom_2(:,end-3),pointVerticalActuatorHousingBottom_2(:,6)];
pointVerticalActuatorBladeFirstTop_2 = [pointVerticalActuatorHousingTop_2(:,3),pointVerticalGroundedActuatorHousingTop_2(:,end),pointVerticalGroundedActuatorHousingTop_2(:,end-3),pointVerticalActuatorHousingTop_2(:,6)];
pointVerticalActuatorBladeSecondBottom_2 = [pointVerticalGroundedActuatorHousingBottom_2(:,3),pointVerticalActuatorHousingBottom_2(:,end),pointVerticalActuatorHousingBottom_2(:,end-3),pointVerticalGroundedActuatorHousingBottom_2(:,6)];
pointVerticalActuatorBladeSecondTop_2 = [pointVerticalGroundedActuatorHousingTop_2(:,3),pointVerticalActuatorHousingTop_2(:,end),pointVerticalActuatorHousingTop_2(:,end-3),pointVerticalGroundedActuatorHousingTop_2(:,6)];

pointHorizontalActuatorBladeFirstBottom_2 = [pointHorizontalActuatorHousingBottom_2(:,3),pointHorizontalGroundedActuatorHousingBottom_2(:,end),pointHorizontalGroundedActuatorHousingBottom_2(:,end-3),pointHorizontalActuatorHousingBottom_2(:,6)];
pointHorizontalActuatorBladeFirstTop_2 = [pointHorizontalActuatorHousingTop_2(:,3),pointHorizontalGroundedActuatorHousingTop_2(:,end),pointHorizontalGroundedActuatorHousingTop_2(:,end-3),pointHorizontalActuatorHousingTop_2(:,6)];
pointHorizontalActuatorBladeSecondBottom_2 = [pointHorizontalGroundedActuatorHousingBottom_2(:,3),pointHorizontalActuatorHousingBottom_2(:,end),pointHorizontalActuatorHousingBottom_2(:,end-3),pointHorizontalGroundedActuatorHousingBottom_2(:,6)];
pointHorizontalActuatorBladeSecondTop_2 = [pointHorizontalGroundedActuatorHousingTop_2(:,3),pointHorizontalActuatorHousingTop_2(:,end),pointHorizontalActuatorHousingTop_2(:,end-3),pointHorizontalGroundedActuatorHousingTop_2(:,6)];

pointBottomBladeFirstBottom_3 = [pointNozzleHolderWithFlexureBottom(:,2+length(pointNozzleHolderWithFlexureBottom)/3+length(pointNozzleHolderWithFlexureBottom)/3),pointBottomBladeBottom_3(:,2),pointBottomBladeBottom_3(:,5),pointNozzleHolderWithFlexureBottom(:,5+length(pointNozzleHolderWithFlexureBottom)/3+length(pointNozzleHolderWithFlexureBottom)/3)];
pointBottomBladeFirstTop_3 = [pointNozzleHolderWithFlexureTop(:,2+length(pointNozzleHolderWithFlexureBottom)/3+length(pointNozzleHolderWithFlexureBottom)/3),pointBottomBladeTop_3(:,2),pointBottomBladeTop_3(:,5),pointNozzleHolderWithFlexureTop(:,5+length(pointNozzleHolderWithFlexureBottom)/3+length(pointNozzleHolderWithFlexureBottom)/3)];
pointBottomBladeSecondBottom_3 = [pointBladeVAHBottom_3(:,1:2),pointBottomBladeBottom_3(:,5),pointBottomBladeBottom_3(:,2),pointBladeVAHBottom_3(:,5:end)];
pointBottomBladeSecondTop_3 = [pointBladeVAHTop_3(:,1:2),pointBottomBladeTop_3(:,5),pointBottomBladeTop_3(:,2),pointBladeVAHTop_3(:,5:end)];

pointTopBladeFirstBottom_3 = [pointBladeHAHBottom_3(:,1:3),pointTopBladeBottom_3(:,2),pointTopBladeBottom_3(:,5),pointBladeHAHBottom_3(:,end)];
pointTopBladeFirstTop_3 = [pointBladeHAHTop_3(:,1:3),pointTopBladeTop_3(:,2),pointTopBladeTop_3(:,5),pointBladeHAHTop_3(:,end)];
pointTopBladeSecondBottom_3 = [pointTopBladeBottom_3(:,2),pointBladeNHBottom_3(:,2:3),pointTopBladeBottom_3(:,5)];
pointTopBladeSecondTop_3 = [pointTopBladeTop_3(:,2),pointBladeNHTop_3(:,2:3),pointTopBladeTop_3(:,5)];

pointVerticalActuatorBladeFirstBottom_3 = [pointVerticalActuatorHousingBottom_3(:,3),pointVerticalGroundedActuatorHousingBottom_3(:,end),pointVerticalGroundedActuatorHousingBottom_3(:,end-3),pointVerticalActuatorHousingBottom_3(:,6)];
pointVerticalActuatorBladeFirstTop_3 = [pointVerticalActuatorHousingTop_3(:,3),pointVerticalGroundedActuatorHousingTop_3(:,end),pointVerticalGroundedActuatorHousingTop_3(:,end-3),pointVerticalActuatorHousingTop_3(:,6)];
pointVerticalActuatorBladeSecondBottom_3 = [pointVerticalGroundedActuatorHousingBottom_3(:,3),pointVerticalActuatorHousingBottom_3(:,end),pointVerticalActuatorHousingBottom_3(:,end-3),pointVerticalGroundedActuatorHousingBottom_3(:,6)];
pointVerticalActuatorBladeSecondTop_3 = [pointVerticalGroundedActuatorHousingTop_3(:,3),pointVerticalActuatorHousingTop_3(:,end),pointVerticalActuatorHousingTop_3(:,end-3),pointVerticalGroundedActuatorHousingTop_3(:,6)];

pointHorizontalActuatorBladeFirstBottom_3 = [pointHorizontalActuatorHousingBottom_3(:,3),pointHorizontalGroundedActuatorHousingBottom_3(:,end),pointHorizontalGroundedActuatorHousingBottom_3(:,end-3),pointHorizontalActuatorHousingBottom_3(:,6)];
pointHorizontalActuatorBladeFirstTop_3 = [pointHorizontalActuatorHousingTop_3(:,3),pointHorizontalGroundedActuatorHousingTop_3(:,end),pointHorizontalGroundedActuatorHousingTop_3(:,end-3),pointHorizontalActuatorHousingTop_3(:,6)];
pointHorizontalActuatorBladeSecondBottom_3 = [pointHorizontalGroundedActuatorHousingBottom_3(:,3),pointHorizontalActuatorHousingBottom_3(:,end),pointHorizontalActuatorHousingBottom_3(:,end-3),pointHorizontalGroundedActuatorHousingBottom_3(:,6)];
pointHorizontalActuatorBladeSecondTop_3 = [pointHorizontalGroundedActuatorHousingTop_3(:,3),pointHorizontalActuatorHousingTop_3(:,end),pointHorizontalActuatorHousingTop_3(:,end-3),pointHorizontalGroundedActuatorHousingTop_3(:,6)];


%% Voice Coil
tempCapMass = pi*(parameterActuatorShellDiameter/2)^2*parameterActuatorCapLength*rho;
tempCoilMass = parameterCoilAssemblyMass-tempCapMass;
parameterActuatorHollowLength = parameterActuatorTotalLength-parameterActuatorCapLength-parameterCoilStroke/2;
tempCrossSectionArea = tempCoilMass/rho/parameterActuatorHollowLength;
tempHollowArea = pi*(parameterActuatorInnerDiameter/2)^2-tempCrossSectionArea;
parameterActuatorHollowDiameter = 2*sqrt(tempHollowArea/pi);

tempLinspace = linspace(0,2*pi,20);
xVoiceCoilBody = [parameterActuatorInnerDiameter/2*cos(tempLinspace),parameterActuatorHollowDiameter/2*cos(-tempLinspace)];
yVoiceCoilBody = [parameterActuatorInnerDiameter/2*sin(tempLinspace),parameterActuatorHollowDiameter/2*sin(-tempLinspace)];

xVoiceCoilCap = [parameterActuatorShellDiameter/2*cos(tempLinspace)];
yVoiceCoilCap = [parameterActuatorShellDiameter/2*sin(tempLinspace)];

xVoiceCoilShell = [parameterActuatorShellDiameter/2*cos(tempLinspace)];
yVoiceCoilShell = [parameterActuatorShellDiameter/2*sin(tempLinspace)];

[volumeVoiceCoilBody, massVoiceCoilBody, CoMVoiceCoilBody, IxVoiceCoilBody, IyVoiceCoilBody, IzVoiceCoilBody, IVoiceCoilBody,...
pointVoiceCoilBodyBottom, pointVoiceCoilBodyTop] = Right_Prism_Properties(xVoiceCoilBody, yVoiceCoilBody, parameterActuatorHollowLength, rho);
n1n2n3VoiceCoilBody = eye(3);

[volumeVoiceCoilCap, massVoiceCoilCap, CoMVoiceCoilCap, IxVoiceCoilCap, IyVoiceCoilCap, IzVoiceCoilCap, IVoiceCoilCap,...
pointVoiceCoilCapBottom, pointVoiceCoilCapTop] = Right_Prism_Properties(xVoiceCoilCap, yVoiceCoilCap, parameterActuatorCapLength, rho);
n1n2n3VoiceCoilCap = eye(3);

[volumeVoiceCoilShell, massVoiceCoilShell, CoMVoiceCoilShell, IxVoiceCoilShell, IyVoiceCoilShell, IzVoiceCoilShell, IVoiceCoilShell,...
pointVoiceCoilShellBottom, pointVoiceCoilShellTop] = Right_Prism_Properties(xVoiceCoilShell, yVoiceCoilShell, parameterActuatorShellLength, rho);
n1n2n3VoiceCoilShell = eye(3);


%% Vertical Voice Coil

Rotation = eye(3);
Translation = [R+parameterActuatorHousingMobileThickness+E/2;-G/2-C/2;parameterActuatorHousingBladeThickness+parameterBracketClearance+parameterBracketLowerBase+parameterActuatorTotalLength-parameterActuatorCapLength];
[pointVerticalVoiceCoilCapBottom_3, pointVerticalVoiceCoilCapTop_3, CoMVerticalVoiceCoilCap_3, n1n2n3VerticalVoiceCoilCap_3]...
 = Move_Right_Prism(Rotation, Translation, pointVoiceCoilCapBottom, pointVoiceCoilCapTop, CoMVoiceCoilCap, n1n2n3VoiceCoilCap);
translationVerticalVoiceCoilCap_3 = Translation;

Translation = [R+parameterActuatorHousingMobileThickness+E/2;-G/2-C/2;parameterActuatorHousingBladeThickness+parameterBracketClearance+parameterBracketLowerBase+parameterActuatorTotalLength-parameterActuatorCapLength-parameterActuatorHollowLength];
[pointVerticalVoiceCoilBodyBottom_3, pointVerticalVoiceCoilBodyTop_3, CoMVerticalVoiceCoilBody_3, n1n2n3VerticalVoiceCoilBody_3]...
 = Move_Right_Prism(Rotation, Translation, pointVoiceCoilBodyBottom, pointVoiceCoilBodyTop, CoMVoiceCoilBody, n1n2n3VoiceCoilBody);
translationVerticalVoiceCoilBody_3 = Translation;

Translation = [R+parameterActuatorHousingMobileThickness+E/2;-G/2-C/2;parameterActuatorHousingBladeThickness+parameterBracketClearance+parameterBracketLowerBase];
[pointVerticalVoiceCoilShellBottom_3, pointVerticalVoiceCoilShellTop_3, CoMVerticalVoiceCoilShell_3, n1n2n3VerticalVoiceCoilShell_3]...
 = Move_Right_Prism(Rotation, Translation, pointVoiceCoilShellBottom, pointVoiceCoilShellTop, CoMVoiceCoilShell, n1n2n3VoiceCoilShell);
translationVerticalVoiceCoilShell_3 = Translation;

theta = 2*pi/3;
Rz = [cos(theta),-sin(theta),0;sin(theta),cos(theta),0;0,0,1];
Translation = [0;0;0];
[pointVerticalVoiceCoilCapBottom_1, pointVerticalVoiceCoilCapTop_1, CoMVerticalVoiceCoilCap_1, n1n2n3VerticalVoiceCoilCap_1]...
 = Move_Right_Prism(Rz, Translation, pointVerticalVoiceCoilCapBottom_3, pointVerticalVoiceCoilCapTop_3, CoMVerticalVoiceCoilCap_3, n1n2n3VerticalVoiceCoilCap_3);
translationVerticalVoiceCoilCap_1 = Rz*translationVerticalVoiceCoilCap_3;
[pointVerticalVoiceCoilCapBottom_2, pointVerticalVoiceCoilCapTop_2, CoMVerticalVoiceCoilCap_2, n1n2n3VerticalVoiceCoilCap_2]...
 = Move_Right_Prism(Rz, Translation, pointVerticalVoiceCoilCapBottom_1, pointVerticalVoiceCoilCapTop_1, CoMVerticalVoiceCoilCap_1, n1n2n3VerticalVoiceCoilCap_1);
translationVerticalVoiceCoilCap_2 = Rz*translationVerticalVoiceCoilCap_1;

Rotation = n1n2n3WholeStructure;
Translation = pointNozzleHolderBottomCenter;
[pointVerticalVoiceCoilCapBottom_1, pointVerticalVoiceCoilCapTop_1, CoMVerticalVoiceCoilCap_1, n1n2n3VerticalVoiceCoilCap_1] = Move_Right_Prism(Rotation, Translation, pointVerticalVoiceCoilCapBottom_1, pointVerticalVoiceCoilCapTop_1, CoMVerticalVoiceCoilCap_1, n1n2n3VerticalVoiceCoilCap_1);
[pointVerticalVoiceCoilCapBottom_2, pointVerticalVoiceCoilCapTop_2, CoMVerticalVoiceCoilCap_2, n1n2n3VerticalVoiceCoilCap_2] = Move_Right_Prism(Rotation, Translation, pointVerticalVoiceCoilCapBottom_2, pointVerticalVoiceCoilCapTop_2, CoMVerticalVoiceCoilCap_2, n1n2n3VerticalVoiceCoilCap_2);
[pointVerticalVoiceCoilCapBottom_3, pointVerticalVoiceCoilCapTop_3, CoMVerticalVoiceCoilCap_3, n1n2n3VerticalVoiceCoilCap_3] = Move_Right_Prism(Rotation, Translation, pointVerticalVoiceCoilCapBottom_3, pointVerticalVoiceCoilCapTop_3, CoMVerticalVoiceCoilCap_3, n1n2n3VerticalVoiceCoilCap_3);

theta = 2*pi/3;
Rz = [cos(theta),-sin(theta),0;sin(theta),cos(theta),0;0,0,1];
Translation = [0;0;0];
[pointVerticalVoiceCoilBodyBottom_1, pointVerticalVoiceCoilBodyTop_1, CoMVerticalVoiceCoilBody_1, n1n2n3VerticalVoiceCoilBody_1]...
 = Move_Right_Prism(Rz, Translation, pointVerticalVoiceCoilBodyBottom_3, pointVerticalVoiceCoilBodyTop_3, CoMVerticalVoiceCoilBody_3, n1n2n3VerticalVoiceCoilBody_3);
translationVerticalVoiceCoilBody_1 = Rz*translationVerticalVoiceCoilBody_3;
[pointVerticalVoiceCoilBodyBottom_2, pointVerticalVoiceCoilBodyTop_2, CoMVerticalVoiceCoilBody_2, n1n2n3VerticalVoiceCoilBody_2]...
 = Move_Right_Prism(Rz, Translation, pointVerticalVoiceCoilBodyBottom_1, pointVerticalVoiceCoilBodyTop_1, CoMVerticalVoiceCoilBody_1, n1n2n3VerticalVoiceCoilBody_1);
translationVerticalVoiceCoilBody_2 = Rz*translationVerticalVoiceCoilBody_1;

Rotation = n1n2n3WholeStructure;
Translation = pointNozzleHolderBottomCenter;
[pointVerticalVoiceCoilBodyBottom_1, pointVerticalVoiceCoilBodyTop_1, CoMVerticalVoiceCoilBody_1, n1n2n3VerticalVoiceCoilBody_1] = Move_Right_Prism(Rotation, Translation, pointVerticalVoiceCoilBodyBottom_1, pointVerticalVoiceCoilBodyTop_1, CoMVerticalVoiceCoilBody_1, n1n2n3VerticalVoiceCoilBody_1);
[pointVerticalVoiceCoilBodyBottom_2, pointVerticalVoiceCoilBodyTop_2, CoMVerticalVoiceCoilBody_2, n1n2n3VerticalVoiceCoilBody_2] = Move_Right_Prism(Rotation, Translation, pointVerticalVoiceCoilBodyBottom_2, pointVerticalVoiceCoilBodyTop_2, CoMVerticalVoiceCoilBody_2, n1n2n3VerticalVoiceCoilBody_2);
[pointVerticalVoiceCoilBodyBottom_3, pointVerticalVoiceCoilBodyTop_3, CoMVerticalVoiceCoilBody_3, n1n2n3VerticalVoiceCoilBody_3] = Move_Right_Prism(Rotation, Translation, pointVerticalVoiceCoilBodyBottom_3, pointVerticalVoiceCoilBodyTop_3, CoMVerticalVoiceCoilBody_3, n1n2n3VerticalVoiceCoilBody_3);

theta = 2*pi/3;
Rz = [cos(theta),-sin(theta),0;sin(theta),cos(theta),0;0,0,1];
Translation = [0;0;0];
[pointVerticalVoiceCoilShellBottom_1, pointVerticalVoiceCoilShellTop_1, CoMVerticalVoiceCoilShell_1, n1n2n3VerticalVoiceCoilShell_1]...
 = Move_Right_Prism(Rz, Translation, pointVerticalVoiceCoilShellBottom_3, pointVerticalVoiceCoilShellTop_3, CoMVerticalVoiceCoilShell_3, n1n2n3VerticalVoiceCoilShell_3);
translationVerticalVoiceCoilShell_1 = Rz*translationVerticalVoiceCoilShell_3;
[pointVerticalVoiceCoilShellBottom_2, pointVerticalVoiceCoilShellTop_2, CoMVerticalVoiceCoilShell_2, n1n2n3VerticalVoiceCoilShell_2]...
 = Move_Right_Prism(Rz, Translation, pointVerticalVoiceCoilShellBottom_1, pointVerticalVoiceCoilShellTop_1, CoMVerticalVoiceCoilShell_1, n1n2n3VerticalVoiceCoilShell_1);
translationVerticalVoiceCoilShell_2 = Rz*translationVerticalVoiceCoilShell_1;

Rotation = n1n2n3WholeStructure;
Translation = pointNozzleHolderBottomCenter;
[pointVerticalVoiceCoilShellBottom_1, pointVerticalVoiceCoilShellTop_1, CoMVerticalVoiceCoilShell_1, n1n2n3VerticalVoiceCoilShell_1] = Move_Right_Prism(Rotation, Translation, pointVerticalVoiceCoilShellBottom_1, pointVerticalVoiceCoilShellTop_1, CoMVerticalVoiceCoilShell_1, n1n2n3VerticalVoiceCoilShell_1);
[pointVerticalVoiceCoilShellBottom_2, pointVerticalVoiceCoilShellTop_2, CoMVerticalVoiceCoilShell_2, n1n2n3VerticalVoiceCoilShell_2] = Move_Right_Prism(Rotation, Translation, pointVerticalVoiceCoilShellBottom_2, pointVerticalVoiceCoilShellTop_2, CoMVerticalVoiceCoilShell_2, n1n2n3VerticalVoiceCoilShell_2);
[pointVerticalVoiceCoilShellBottom_3, pointVerticalVoiceCoilShellTop_3, CoMVerticalVoiceCoilShell_3, n1n2n3VerticalVoiceCoilShell_3] = Move_Right_Prism(Rotation, Translation, pointVerticalVoiceCoilShellBottom_3, pointVerticalVoiceCoilShellTop_3, CoMVerticalVoiceCoilShell_3, n1n2n3VerticalVoiceCoilShell_3);


%% Horizontal Voice Coil

Rotation = [1, 0, 0;...
		    0, 0, -1;...
		    0, 1, 0];
Translation = [-H+t+parameterActuatorHousingMobileThickness+E/2;B/2-parameterActuatorHousingBladeThickness-parameterBracketClearance-parameterBracketLowerBase;B-C/2];
Translation = Translation+[0;B/2-W/2-F;0];
[pointHorizontalVoiceCoilCapBottom_2, pointHorizontalVoiceCoilCapTop_2, CoMHorizontalVoiceCoilCap_2, n1n2n3HorizontalVoiceCoilCap_2]...
 = Move_Right_Prism(Rotation, Translation, pointVoiceCoilCapBottom, pointVoiceCoilCapTop, CoMVoiceCoilCap, n1n2n3VoiceCoilCap);
translationHorizontalVoiceCoilCap_2 = Translation;

Rotation = [1, 0, 0;...
		    0, 0, -1;...
		    0, 1, 0];
Translation = [-H+t+parameterActuatorHousingMobileThickness+E/2;B/2-parameterActuatorHousingBladeThickness-parameterBracketClearance-parameterBracketLowerBase-parameterActuatorCapLength;B-C/2];
Translation = Translation+[0;B/2-W/2-F;0];
[pointHorizontalVoiceCoilBodyBottom_2, pointHorizontalVoiceCoilBodyTop_2, CoMHorizontalVoiceCoilBody_2, n1n2n3HorizontalVoiceCoilBody_2]...
 = Move_Right_Prism(Rotation, Translation, pointVoiceCoilBodyBottom, pointVoiceCoilBodyTop, CoMVoiceCoilBody, n1n2n3VoiceCoilBody);
translationHorizontalVoiceCoilBody_2 = Translation;

Rotation = [1, 0, 0;...
		    0, 0, -1;...
		    0, 1, 0];
Translation = [-H+t+parameterActuatorHousingMobileThickness+E/2;B/2-parameterActuatorHousingBladeThickness-parameterBracketClearance-parameterBracketLowerBase-parameterActuatorTotalLength+parameterActuatorShellLength;B-C/2];
Translation = Translation+[0;B/2-W/2-F;0];
[pointHorizontalVoiceCoilShellBottom_2, pointHorizontalVoiceCoilShellTop_2, CoMHorizontalVoiceCoilShell_2, n1n2n3HorizontalVoiceCoilShell_2]...
 = Move_Right_Prism(Rotation, Translation, pointVoiceCoilShellBottom, pointVoiceCoilShellTop, CoMVoiceCoilShell, n1n2n3VoiceCoilShell);
translationHorizontalVoiceCoilShell_2 = Translation;

theta = 2*pi/3;
Rz = [cos(theta),-sin(theta),0;sin(theta),cos(theta),0;0,0,1];
Translation = [0;0;0];
[pointHorizontalVoiceCoilCapBottom_3, pointHorizontalVoiceCoilCapTop_3, CoMHorizontalVoiceCoilCap_3, n1n2n3HorizontalVoiceCoilCap_3]...
 = Move_Right_Prism(Rz, Translation, pointHorizontalVoiceCoilCapBottom_2, pointHorizontalVoiceCoilCapTop_2, CoMHorizontalVoiceCoilCap_2, n1n2n3HorizontalVoiceCoilCap_2);
translationHorizontalVoiceCoilCap_3 = Rz*translationHorizontalVoiceCoilCap_2;
[pointHorizontalVoiceCoilCapBottom_1, pointHorizontalVoiceCoilCapTop_1, CoMHorizontalVoiceCoilCap_1, n1n2n3HorizontalVoiceCoilCap_1]...
 = Move_Right_Prism(Rz, Translation, pointHorizontalVoiceCoilCapBottom_3, pointHorizontalVoiceCoilCapTop_3, CoMHorizontalVoiceCoilCap_3, n1n2n3HorizontalVoiceCoilCap_3);
translationHorizontalVoiceCoilCap_1 = Rz*translationHorizontalVoiceCoilCap_3;

Rotation = n1n2n3WholeStructure;
Translation = pointNozzleHolderBottomCenter;
[pointHorizontalVoiceCoilCapBottom_1, pointHorizontalVoiceCoilCapTop_1, CoMHorizontalVoiceCoilCap_1, n1n2n3HorizontalVoiceCoilCap_1] = Move_Right_Prism(Rotation, Translation, pointHorizontalVoiceCoilCapBottom_1, pointHorizontalVoiceCoilCapTop_1, CoMHorizontalVoiceCoilCap_1, n1n2n3HorizontalVoiceCoilCap_1);
[pointHorizontalVoiceCoilCapBottom_2, pointHorizontalVoiceCoilCapTop_2, CoMHorizontalVoiceCoilCap_2, n1n2n3HorizontalVoiceCoilCap_2] = Move_Right_Prism(Rotation, Translation, pointHorizontalVoiceCoilCapBottom_2, pointHorizontalVoiceCoilCapTop_2, CoMHorizontalVoiceCoilCap_2, n1n2n3HorizontalVoiceCoilCap_2);
[pointHorizontalVoiceCoilCapBottom_3, pointHorizontalVoiceCoilCapTop_3, CoMHorizontalVoiceCoilCap_3, n1n2n3HorizontalVoiceCoilCap_3] = Move_Right_Prism(Rotation, Translation, pointHorizontalVoiceCoilCapBottom_3, pointHorizontalVoiceCoilCapTop_3, CoMHorizontalVoiceCoilCap_3, n1n2n3HorizontalVoiceCoilCap_3);

theta = 2*pi/3;
Rz = [cos(theta),-sin(theta),0;sin(theta),cos(theta),0;0,0,1];
Translation = [0;0;0];
[pointHorizontalVoiceCoilBodyBottom_3, pointHorizontalVoiceCoilBodyTop_3, CoMHorizontalVoiceCoilBody_3, n1n2n3HorizontalVoiceCoilBody_3]...
 = Move_Right_Prism(Rz, Translation, pointHorizontalVoiceCoilBodyBottom_2, pointHorizontalVoiceCoilBodyTop_2, CoMHorizontalVoiceCoilBody_2, n1n2n3HorizontalVoiceCoilBody_2);
translationHorizontalVoiceCoilBody_3 = Rz*translationHorizontalVoiceCoilBody_2;
[pointHorizontalVoiceCoilBodyBottom_1, pointHorizontalVoiceCoilBodyTop_1, CoMHorizontalVoiceCoilBody_1, n1n2n3HorizontalVoiceCoilBody_1]...
 = Move_Right_Prism(Rz, Translation, pointHorizontalVoiceCoilBodyBottom_3, pointHorizontalVoiceCoilBodyTop_3, CoMHorizontalVoiceCoilBody_3, n1n2n3HorizontalVoiceCoilBody_3);
translationHorizontalVoiceCoilBody_1 = Rz*translationHorizontalVoiceCoilBody_3;

Rotation = n1n2n3WholeStructure;
Translation = pointNozzleHolderBottomCenter;
[pointHorizontalVoiceCoilBodyBottom_1, pointHorizontalVoiceCoilBodyTop_1, CoMHorizontalVoiceCoilBody_1, n1n2n3HorizontalVoiceCoilBody_1] = Move_Right_Prism(Rotation, Translation, pointHorizontalVoiceCoilBodyBottom_1, pointHorizontalVoiceCoilBodyTop_1, CoMHorizontalVoiceCoilBody_1, n1n2n3HorizontalVoiceCoilBody_1);
[pointHorizontalVoiceCoilBodyBottom_2, pointHorizontalVoiceCoilBodyTop_2, CoMHorizontalVoiceCoilBody_2, n1n2n3HorizontalVoiceCoilBody_2] = Move_Right_Prism(Rotation, Translation, pointHorizontalVoiceCoilBodyBottom_2, pointHorizontalVoiceCoilBodyTop_2, CoMHorizontalVoiceCoilBody_2, n1n2n3HorizontalVoiceCoilBody_2);
[pointHorizontalVoiceCoilBodyBottom_3, pointHorizontalVoiceCoilBodyTop_3, CoMHorizontalVoiceCoilBody_3, n1n2n3HorizontalVoiceCoilBody_3] = Move_Right_Prism(Rotation, Translation, pointHorizontalVoiceCoilBodyBottom_3, pointHorizontalVoiceCoilBodyTop_3, CoMHorizontalVoiceCoilBody_3, n1n2n3HorizontalVoiceCoilBody_3);

theta = 2*pi/3;
Rz = [cos(theta),-sin(theta),0;sin(theta),cos(theta),0;0,0,1];
Translation = [0;0;0];
[pointHorizontalVoiceCoilShellBottom_3, pointHorizontalVoiceCoilShellTop_3, CoMHorizontalVoiceCoilShell_3, n1n2n3HorizontalVoiceCoilShell_3]...
 = Move_Right_Prism(Rz, Translation, pointHorizontalVoiceCoilShellBottom_2, pointHorizontalVoiceCoilShellTop_2, CoMHorizontalVoiceCoilShell_2, n1n2n3HorizontalVoiceCoilShell_2);
translationHorizontalVoiceCoilShell_3 = Rz*translationHorizontalVoiceCoilShell_2;
[pointHorizontalVoiceCoilShellBottom_1, pointHorizontalVoiceCoilShellTop_1, CoMHorizontalVoiceCoilShell_1, n1n2n3HorizontalVoiceCoilShell_1]...
 = Move_Right_Prism(Rz, Translation, pointHorizontalVoiceCoilShellBottom_3, pointHorizontalVoiceCoilShellTop_3, CoMHorizontalVoiceCoilShell_3, n1n2n3HorizontalVoiceCoilShell_3);
translationHorizontalVoiceCoilShell_1 = Rz*translationHorizontalVoiceCoilShell_3;

Rotation = n1n2n3WholeStructure;
Translation = pointNozzleHolderBottomCenter;
[pointHorizontalVoiceCoilShellBottom_1, pointHorizontalVoiceCoilShellTop_1, CoMHorizontalVoiceCoilShell_1, n1n2n3HorizontalVoiceCoilShell_1] = Move_Right_Prism(Rotation, Translation, pointHorizontalVoiceCoilShellBottom_1, pointHorizontalVoiceCoilShellTop_1, CoMHorizontalVoiceCoilShell_1, n1n2n3HorizontalVoiceCoilShell_1);
[pointHorizontalVoiceCoilShellBottom_2, pointHorizontalVoiceCoilShellTop_2, CoMHorizontalVoiceCoilShell_2, n1n2n3HorizontalVoiceCoilShell_2] = Move_Right_Prism(Rotation, Translation, pointHorizontalVoiceCoilShellBottom_2, pointHorizontalVoiceCoilShellTop_2, CoMHorizontalVoiceCoilShell_2, n1n2n3HorizontalVoiceCoilShell_2);
[pointHorizontalVoiceCoilShellBottom_3, pointHorizontalVoiceCoilShellTop_3, CoMHorizontalVoiceCoilShell_3, n1n2n3HorizontalVoiceCoilShell_3] = Move_Right_Prism(Rotation, Translation, pointHorizontalVoiceCoilShellBottom_3, pointHorizontalVoiceCoilShellTop_3, CoMHorizontalVoiceCoilShell_3, n1n2n3HorizontalVoiceCoilShell_3);

