
[massNozzleHolderWithFlexure, CoMNozzleHolderWithFlexure, INozzleHolderWithFlexure] = Connect_Two_Right_Prisms_For_SPIDRs(n1n2n3NozzleHolderWithFlexure, massNozzleHolderWithFlexure, CoMNozzleHolderWithFlexure, INozzleHolderWithFlexure,...
 n1n2n3BladeNH_1, massBladeNH, CoMBladeNH_1, IBladeNH);
[massNozzleHolderWithFlexure, CoMNozzleHolderWithFlexure, INozzleHolderWithFlexure] = Connect_Two_Right_Prisms_For_SPIDRs(eye(3), massNozzleHolderWithFlexure, CoMNozzleHolderWithFlexure, INozzleHolderWithFlexure,...
 n1n2n3BladeNH_2, massBladeNH, CoMBladeNH_2, IBladeNH);
[massNozzleHolderWithFlexure, CoMNozzleHolderWithFlexure, INozzleHolderWithFlexure] = Connect_Two_Right_Prisms_For_SPIDRs(eye(3), massNozzleHolderWithFlexure, CoMNozzleHolderWithFlexure, INozzleHolderWithFlexure,...
 n1n2n3BladeNH_3, massBladeNH, CoMBladeNH_3, IBladeNH);

[massNozzleHolderWithFlexure, CoMNozzleHolderWithFlexure, INozzleHolderWithFlexure] = Connect_Two_Right_Prisms_For_SPIDRs(eye(3), massNozzleHolderWithFlexure, CoMNozzleHolderWithFlexure, INozzleHolderWithFlexure,...
 n1n2n3NozzleHolderCut, massNozzleHolderCut, CoMNozzleHolderCut, INozzleHolderCut);

[massVerticalActuatorHousingWithFlexure_1, CoMVerticalActuatorHousingWithFlexure_1, IVerticalActuatorHousingWithFlexure_1] = Connect_Two_Right_Prisms_For_SPIDRs(n1n2n3VerticalActuatorHousing_1, massActuatorHousing, CoMVerticalActuatorHousing_1, IActuatorHousing,...
 n1n2n3BladeVAH_1, massBladeVAH, CoMBladeVAH_1, IBladeVAH);
[massHorizontalActuatorHousingWithFlexure_1, CoMHorizontalActuatorHousingWithFlexure_1, IHorizontalActuatorHousingWithFlexure_1] = Connect_Two_Right_Prisms_For_SPIDRs(n1n2n3HorizontalActuatorHousing_1, massActuatorHousing, CoMHorizontalActuatorHousing_1, IActuatorHousing,...
 n1n2n3BladeHAH_1, massBladeHAH, CoMBladeHAH_1, IBladeHAH);

[massVerticalActuatorHousingWithFlexure_2, CoMVerticalActuatorHousingWithFlexure_2, IVerticalActuatorHousingWithFlexure_2] = Connect_Two_Right_Prisms_For_SPIDRs(n1n2n3VerticalActuatorHousing_2, massActuatorHousing, CoMVerticalActuatorHousing_2, IActuatorHousing,...
 n1n2n3BladeVAH_2, massBladeVAH, CoMBladeVAH_2, IBladeVAH);
[massHorizontalActuatorHousingWithFlexure_2, CoMHorizontalActuatorHousingWithFlexure_2, IHorizontalActuatorHousingWithFlexure_2] = Connect_Two_Right_Prisms_For_SPIDRs(n1n2n3HorizontalActuatorHousing_2, massActuatorHousing, CoMHorizontalActuatorHousing_2, IActuatorHousing,...
 n1n2n3BladeHAH_2, massBladeHAH, CoMBladeHAH_2, IBladeHAH);

[massVerticalActuatorHousingWithFlexure_3, CoMVerticalActuatorHousingWithFlexure_3, IVerticalActuatorHousingWithFlexure_3] = Connect_Two_Right_Prisms_For_SPIDRs(n1n2n3VerticalActuatorHousing_3, massActuatorHousing, CoMVerticalActuatorHousing_3, IActuatorHousing,...
 n1n2n3BladeVAH_3, massBladeVAH, CoMBladeVAH_3, IBladeVAH);
[massHorizontalActuatorHousingWithFlexure_3, CoMHorizontalActuatorHousingWithFlexure_3, IHorizontalActuatorHousingWithFlexure_3] = Connect_Two_Right_Prisms_For_SPIDRs(n1n2n3HorizontalActuatorHousing_3, massActuatorHousing, CoMHorizontalActuatorHousing_3, IActuatorHousing,...
 n1n2n3BladeHAH_3, massBladeHAH, CoMBladeHAH_3, IBladeHAH);

[massVerticalActuatorHousingWithFlexure_1, CoMVerticalActuatorHousingWithFlexure_1, IVerticalActuatorHousingWithFlexure_1] = Connect_Two_Right_Prisms_For_SPIDRs(eye(3), massVerticalActuatorHousingWithFlexure_1, CoMVerticalActuatorHousingWithFlexure_1, IVerticalActuatorHousingWithFlexure_1,...
n1n2n3VerticalVoiceCoilCap_1, massVoiceCoilCap, CoMVerticalVoiceCoilCap_1, IVoiceCoilCap);
[massVerticalActuatorHousingWithFlexure_1, CoMVerticalActuatorHousingWithFlexure_1, IVerticalActuatorHousingWithFlexure_1] = Connect_Two_Right_Prisms_For_SPIDRs(eye(3), massVerticalActuatorHousingWithFlexure_1, CoMVerticalActuatorHousingWithFlexure_1, IVerticalActuatorHousingWithFlexure_1,...
n1n2n3VerticalVoiceCoilBody_1, massVoiceCoilBody, CoMVerticalVoiceCoilBody_1, IVoiceCoilBody);
[massHorizontalActuatorHousingWithFlexure_1, CoMHorizontalActuatorHousingWithFlexure_1, IHorizontalActuatorHousingWithFlexure_1] = Connect_Two_Right_Prisms_For_SPIDRs(eye(3), massHorizontalActuatorHousingWithFlexure_1, CoMHorizontalActuatorHousingWithFlexure_1, IHorizontalActuatorHousingWithFlexure_1,...
n1n2n3HorizontalVoiceCoilCap_1, massVoiceCoilCap, CoMHorizontalVoiceCoilCap_1, IVoiceCoilCap);
[massHorizontalActuatorHousingWithFlexure_1, CoMHorizontalActuatorHousingWithFlexure_1, IHorizontalActuatorHousingWithFlexure_1] = Connect_Two_Right_Prisms_For_SPIDRs(eye(3), massHorizontalActuatorHousingWithFlexure_1, CoMHorizontalActuatorHousingWithFlexure_1, IHorizontalActuatorHousingWithFlexure_1,...
n1n2n3HorizontalVoiceCoilBody_1, massVoiceCoilBody, CoMHorizontalVoiceCoilBody_1, IVoiceCoilBody);

[massVerticalActuatorHousingWithFlexure_2, CoMVerticalActuatorHousingWithFlexure_2, IVerticalActuatorHousingWithFlexure_2] = Connect_Two_Right_Prisms_For_SPIDRs(eye(3), massVerticalActuatorHousingWithFlexure_2, CoMVerticalActuatorHousingWithFlexure_2, IVerticalActuatorHousingWithFlexure_2,...
n1n2n3VerticalVoiceCoilCap_2, massVoiceCoilCap, CoMVerticalVoiceCoilCap_2, IVoiceCoilCap);
[massVerticalActuatorHousingWithFlexure_2, CoMVerticalActuatorHousingWithFlexure_2, IVerticalActuatorHousingWithFlexure_2] = Connect_Two_Right_Prisms_For_SPIDRs(eye(3), massVerticalActuatorHousingWithFlexure_2, CoMVerticalActuatorHousingWithFlexure_2, IVerticalActuatorHousingWithFlexure_2,...
n1n2n3VerticalVoiceCoilBody_2, massVoiceCoilBody, CoMVerticalVoiceCoilBody_2, IVoiceCoilBody);
[massHorizontalActuatorHousingWithFlexure_2, CoMHorizontalActuatorHousingWithFlexure_2, IHorizontalActuatorHousingWithFlexure_2] = Connect_Two_Right_Prisms_For_SPIDRs(eye(3), massHorizontalActuatorHousingWithFlexure_2, CoMHorizontalActuatorHousingWithFlexure_2, IHorizontalActuatorHousingWithFlexure_2,...
n1n2n3HorizontalVoiceCoilCap_2, massVoiceCoilCap, CoMHorizontalVoiceCoilCap_2, IVoiceCoilCap);
[massHorizontalActuatorHousingWithFlexure_2, CoMHorizontalActuatorHousingWithFlexure_2, IHorizontalActuatorHousingWithFlexure_2] = Connect_Two_Right_Prisms_For_SPIDRs(eye(3), massHorizontalActuatorHousingWithFlexure_2, CoMHorizontalActuatorHousingWithFlexure_2, IHorizontalActuatorHousingWithFlexure_2,...
n1n2n3HorizontalVoiceCoilBody_2, massVoiceCoilBody, CoMHorizontalVoiceCoilBody_2, IVoiceCoilBody);

[massVerticalActuatorHousingWithFlexure_3, CoMVerticalActuatorHousingWithFlexure_3, IVerticalActuatorHousingWithFlexure_3] = Connect_Two_Right_Prisms_For_SPIDRs(eye(3), massVerticalActuatorHousingWithFlexure_3, CoMVerticalActuatorHousingWithFlexure_3, IVerticalActuatorHousingWithFlexure_3,...
n1n2n3VerticalVoiceCoilCap_3, massVoiceCoilCap, CoMVerticalVoiceCoilCap_3, IVoiceCoilCap);
[massVerticalActuatorHousingWithFlexure_3, CoMVerticalActuatorHousingWithFlexure_3, IVerticalActuatorHousingWithFlexure_3] = Connect_Two_Right_Prisms_For_SPIDRs(eye(3), massVerticalActuatorHousingWithFlexure_3, CoMVerticalActuatorHousingWithFlexure_3, IVerticalActuatorHousingWithFlexure_3,...
n1n2n3VerticalVoiceCoilBody_3, massVoiceCoilBody, CoMVerticalVoiceCoilBody_3, IVoiceCoilBody);
[massHorizontalActuatorHousingWithFlexure_3, CoMHorizontalActuatorHousingWithFlexure_3, IHorizontalActuatorHousingWithFlexure_3] = Connect_Two_Right_Prisms_For_SPIDRs(eye(3), massHorizontalActuatorHousingWithFlexure_3, CoMHorizontalActuatorHousingWithFlexure_3, IHorizontalActuatorHousingWithFlexure_3,...
n1n2n3HorizontalVoiceCoilCap_3, massVoiceCoilCap, CoMHorizontalVoiceCoilCap_3, IVoiceCoilCap);
[massHorizontalActuatorHousingWithFlexure_3, CoMHorizontalActuatorHousingWithFlexure_3, IHorizontalActuatorHousingWithFlexure_3] = Connect_Two_Right_Prisms_For_SPIDRs(eye(3), massHorizontalActuatorHousingWithFlexure_3, CoMHorizontalActuatorHousingWithFlexure_3, IHorizontalActuatorHousingWithFlexure_3,...
n1n2n3HorizontalVoiceCoilBody_3, massVoiceCoilBody, CoMHorizontalVoiceCoilBody_3, IVoiceCoilBody);

L = CoMNozzleHolderWithFlexure;
n1 = [1; 0; 0];
n2 = [0; 1; 0];
n3 = [0; 0; 1];
N = [n1, n2, n3, zeros(3);...
       cross(L,n1), cross(L,n2), cross(L,n3), n1, n2, n3];
Delta = [zeros(3), eye(3);...
         eye(3), zeros(3)];
Im = [INozzleHolderWithFlexure, zeros(3);...
	  zeros(3), massNozzleHolderWithFlexure*eye(3)];
massMatrixNozzleHolderWithFlexure = N*Delta*Im*N^-1;

L = CoMBottomBlade_1;
n1 = n1n2n3BottomBlade_1(:,1);
n2 = n1n2n3BottomBlade_1(:,2);
n3 = n1n2n3BottomBlade_1(:,3);
N = [n1, n2, n3, zeros(3);...
       cross(L,n1), cross(L,n2), cross(L,n3), n1, n2, n3];
Delta = [zeros(3), eye(3);...
         eye(3), zeros(3)];
Im = [IBottomBlade, zeros(3);...
	  zeros(3), massBottomBlade*eye(3)];
massMatrixBottomBlade_1 = N*Delta*Im*N^-1;

L = CoMVerticalActuatorHousingWithFlexure_1;
n1 = [1; 0; 0];
n2 = [0; 1; 0];
n3 = [0; 0; 1];
N = [n1, n2, n3, zeros(3);...
       cross(L,n1), cross(L,n2), cross(L,n3), n1, n2, n3];
Delta = [zeros(3), eye(3);...
         eye(3), zeros(3)];
Im = [IVerticalActuatorHousingWithFlexure_1, zeros(3);...
	  zeros(3), massVerticalActuatorHousingWithFlexure_1*eye(3)];
massMatrixVerticalActuatorHousingWithFlexure_1 = N*Delta*Im*N^-1;

L = CoMTopBlade_1;
n1 = n1n2n3TopBlade_1(:,1);
n2 = n1n2n3TopBlade_1(:,2);
n3 = n1n2n3TopBlade_1(:,3);
N = [n1, n2, n3, zeros(3);...
       cross(L,n1), cross(L,n2), cross(L,n3), n1, n2, n3];
Delta = [zeros(3), eye(3);...
         eye(3), zeros(3)];
Im = [ITopBlade, zeros(3);...
	  zeros(3), massTopBlade*eye(3)];
massMatrixTopBlade_1 = N*Delta*Im*N^-1;

L = CoMHorizontalActuatorHousingWithFlexure_1;
n1 = [1; 0; 0];
n2 = [0; 1; 0];
n3 = [0; 0; 1];
N = [n1, n2, n3, zeros(3);...
       cross(L,n1), cross(L,n2), cross(L,n3), n1, n2, n3];
Delta = [zeros(3), eye(3);...
         eye(3), zeros(3)];
Im = [IHorizontalActuatorHousingWithFlexure_1, zeros(3);...
	  zeros(3), massHorizontalActuatorHousingWithFlexure_1*eye(3)];
massMatrixHorizontalActuatorHousingWithFlexure_1 = N*Delta*Im*N^-1;

L = CoMBottomBlade_2;
n1 = n1n2n3BottomBlade_2(:,1);
n2 = n1n2n3BottomBlade_2(:,2);
n3 = n1n2n3BottomBlade_2(:,3);
N = [n1, n2, n3, zeros(3);...
       cross(L,n1), cross(L,n2), cross(L,n3), n1, n2, n3];
Delta = [zeros(3), eye(3);...
         eye(3), zeros(3)];
Im = [IBottomBlade, zeros(3);...
    zeros(3), massBottomBlade*eye(3)];
massMatrixBottomBlade_2 = N*Delta*Im*N^-1;

L = CoMVerticalActuatorHousingWithFlexure_2;
n1 = [1; 0; 0];
n2 = [0; 1; 0];
n3 = [0; 0; 1];
N = [n1, n2, n3, zeros(3);...
       cross(L,n1), cross(L,n2), cross(L,n3), n1, n2, n3];
Delta = [zeros(3), eye(3);...
         eye(3), zeros(3)];
Im = [IVerticalActuatorHousingWithFlexure_2, zeros(3);...
    zeros(3), massVerticalActuatorHousingWithFlexure_2*eye(3)];
massMatrixVerticalActuatorHousingWithFlexure_2 = N*Delta*Im*N^-1;

L = CoMTopBlade_2;
n1 = n1n2n3TopBlade_2(:,1);
n2 = n1n2n3TopBlade_2(:,2);
n3 = n1n2n3TopBlade_2(:,3);
N = [n1, n2, n3, zeros(3);...
       cross(L,n1), cross(L,n2), cross(L,n3), n1, n2, n3];
Delta = [zeros(3), eye(3);...
         eye(3), zeros(3)];
Im = [ITopBlade, zeros(3);...
    zeros(3), massTopBlade*eye(3)];
massMatrixTopBlade_2 = N*Delta*Im*N^-1;

L = CoMHorizontalActuatorHousingWithFlexure_2;
n1 = [1; 0; 0];
n2 = [0; 1; 0];
n3 = [0; 0; 1];
N = [n1, n2, n3, zeros(3);...
       cross(L,n1), cross(L,n2), cross(L,n3), n1, n2, n3];
Delta = [zeros(3), eye(3);...
         eye(3), zeros(3)];
Im = [IHorizontalActuatorHousingWithFlexure_2, zeros(3);...
    zeros(3), massHorizontalActuatorHousingWithFlexure_2*eye(3)];
massMatrixHorizontalActuatorHousingWithFlexure_2 = N*Delta*Im*N^-1;

L = CoMBottomBlade_3;
n1 = n1n2n3BottomBlade_3(:,1);
n2 = n1n2n3BottomBlade_3(:,2);
n3 = n1n2n3BottomBlade_3(:,3);
N = [n1, n2, n3, zeros(3);...
       cross(L,n1), cross(L,n2), cross(L,n3), n1, n2, n3];
Delta = [zeros(3), eye(3);...
         eye(3), zeros(3)];
Im = [IBottomBlade, zeros(3);...
    zeros(3), massBottomBlade*eye(3)];
massMatrixBottomBlade_3 = N*Delta*Im*N^-1;

L = CoMVerticalActuatorHousingWithFlexure_3;
n1 = [1; 0; 0];
n2 = [0; 1; 0];
n3 = [0; 0; 1];
N = [n1, n2, n3, zeros(3);...
       cross(L,n1), cross(L,n2), cross(L,n3), n1, n2, n3];
Delta = [zeros(3), eye(3);...
         eye(3), zeros(3)];
Im = [IVerticalActuatorHousingWithFlexure_3, zeros(3);...
    zeros(3), massVerticalActuatorHousingWithFlexure_3*eye(3)];
massMatrixVerticalActuatorHousingWithFlexure_3 = N*Delta*Im*N^-1;

L = CoMTopBlade_3;
n1 = n1n2n3TopBlade_3(:,1);
n2 = n1n2n3TopBlade_3(:,2);
n3 = n1n2n3TopBlade_3(:,3);
N = [n1, n2, n3, zeros(3);...
       cross(L,n1), cross(L,n2), cross(L,n3), n1, n2, n3];
Delta = [zeros(3), eye(3);...
         eye(3), zeros(3)];
Im = [ITopBlade, zeros(3);...
    zeros(3), massTopBlade*eye(3)];
massMatrixTopBlade_3 = N*Delta*Im*N^-1;

L = CoMHorizontalActuatorHousingWithFlexure_3;
n1 = [1; 0; 0];
n2 = [0; 1; 0];
n3 = [0; 0; 1];
N = [n1, n2, n3, zeros(3);...
       cross(L,n1), cross(L,n2), cross(L,n3), n1, n2, n3];
Delta = [zeros(3), eye(3);...
         eye(3), zeros(3)];
Im = [IHorizontalActuatorHousingWithFlexure_3, zeros(3);...
    zeros(3), massHorizontalActuatorHousingWithFlexure_3*eye(3)];
massMatrixHorizontalActuatorHousingWithFlexure_3 = N*Delta*Im*N^-1;

MM = [massMatrixBottomBlade_1, zeros(6), zeros(6), zeros(6), zeros(6), zeros(6), zeros(6), zeros(6), zeros(6), zeros(6), zeros(6), zeros(6), zeros(6);
     zeros(6), massMatrixVerticalActuatorHousingWithFlexure_1, zeros(6), zeros(6), zeros(6), zeros(6), zeros(6), zeros(6), zeros(6), zeros(6), zeros(6), zeros(6), zeros(6);
     zeros(6), zeros(6), massMatrixTopBlade_1, zeros(6), zeros(6), zeros(6), zeros(6), zeros(6), zeros(6), zeros(6), zeros(6), zeros(6), zeros(6);
     zeros(6), zeros(6), zeros(6), massMatrixHorizontalActuatorHousingWithFlexure_1, zeros(6), zeros(6), zeros(6), zeros(6), zeros(6), zeros(6), zeros(6), zeros(6), zeros(6);
     zeros(6), zeros(6), zeros(6), zeros(6), massMatrixBottomBlade_2, zeros(6), zeros(6), zeros(6), zeros(6), zeros(6), zeros(6), zeros(6), zeros(6);
     zeros(6), zeros(6), zeros(6), zeros(6), zeros(6), massMatrixVerticalActuatorHousingWithFlexure_2, zeros(6), zeros(6), zeros(6), zeros(6), zeros(6), zeros(6), zeros(6);
     zeros(6), zeros(6), zeros(6), zeros(6), zeros(6), zeros(6), massMatrixTopBlade_2, zeros(6), zeros(6), zeros(6), zeros(6), zeros(6), zeros(6);
     zeros(6), zeros(6), zeros(6), zeros(6), zeros(6), zeros(6), zeros(6), massMatrixHorizontalActuatorHousingWithFlexure_2, zeros(6), zeros(6), zeros(6), zeros(6), zeros(6);
     zeros(6), zeros(6), zeros(6), zeros(6), zeros(6), zeros(6), zeros(6), zeros(6), massMatrixBottomBlade_3, zeros(6), zeros(6), zeros(6), zeros(6);
     zeros(6), zeros(6), zeros(6), zeros(6), zeros(6), zeros(6), zeros(6), zeros(6), zeros(6), massMatrixVerticalActuatorHousingWithFlexure_3, zeros(6), zeros(6), zeros(6);
     zeros(6), zeros(6), zeros(6), zeros(6), zeros(6), zeros(6), zeros(6), zeros(6), zeros(6), zeros(6), massMatrixTopBlade_3, zeros(6), zeros(6);
     zeros(6), zeros(6), zeros(6), zeros(6), zeros(6), zeros(6), zeros(6), zeros(6), zeros(6), zeros(6), zeros(6), massMatrixHorizontalActuatorHousingWithFlexure_3, zeros(6);
     zeros(6), zeros(6), zeros(6), zeros(6), zeros(6), zeros(6), zeros(6), zeros(6), zeros(6), zeros(6), zeros(6), zeros(6), massMatrixNozzleHolderWithFlexure];

[V,D] = eig(inv(MM)*KK);

mOmega = sqrt(diag(D));

[sortedOmega,mIndex] = sort(mOmega/2/pi);

minimalNaturalFrequency = min(mOmega)/2/pi;

minimalNaturalFrequency = real(minimalNaturalFrequency);