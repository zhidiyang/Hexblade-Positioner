function [mMass, CoM, I] = Connect_Two_Right_Prisms_For_SPIDRs(n1n2n3_1, mMass_1, CoM_1, I_1, n1n2n3_2, mMass_2, CoM_2, I_2)

mMass = mMass_1+mMass_2;

CoM = (mMass_1*CoM_1+mMass_2*CoM_2)/mMass;

I_1 = n1n2n3_1*I_1*n1n2n3_1';
I_2 = n1n2n3_2*I_2*n1n2n3_2';

CoM_1 = CoM_1-CoM;	% Coordinate to the new CoM
CoM_2 = CoM_2-CoM;	% Coordinate to the new CoM

I_1 = I_1+mMass_1*(CoM_1'*CoM_1*eye(3)-CoM_1*CoM_1');
I_2 = I_2+mMass_2*(CoM_2'*CoM_2*eye(3)-CoM_2*CoM_2');

I = I_1+I_2;

end
