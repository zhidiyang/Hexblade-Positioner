function [KK] = TimoshenkoStiffnessMatrix(Constraint)
%Function reads in a matrix (Constraint) that contains all the info needed
%to describe a flexure system, and returns its stiffness matrix

%Before you construct the matrix Constraint, be sure to number all of your
%system's rigid stages and number all of your flexure elements.  Grounded
%stages are numbered zero.

%Each row of the Constraint matrix corresponds to a flexure element.

%The following describes what each component of an individual row entails.
%the first 3 components are the chosen location vector, L, that points to
%one end of the element (the end doesn't matter but be consistent)
%the next 3 components are the direction of the n3 unit vector that points
%into the stage that the element attaches to along the element's axis.
%the next 3 components are the direction of the n2 unit vector that points
%perpendicular to the width, W, side of the rectangular element.  W is the
%length of the flat face of a blade flexure.
%the 10th component is the length of the element, L.
%the 11th component is the width of the element, W.
%the 12th component is the thickness of the element, t.
%the 13th component is the Young's Modulus of the material, E.
%the 14th component is the Shear Modulus of the material, G.
%the last two components correspond to what stages the element joings.
%start with the stage number that the chosen L vector points to and then
%end with the other stage that the element joins.

%Once you have filled a row with every element in the system make a final
%row that contains the following components:
%the 1st component is the number of stages in the system (excluding the
%ground, which is numbered 0).
%the 2nd component will always be zero.
%the 3rd component is how many rectangular elements are in the entire
%system.  Then fill the rest of the row with zeros.


format long;

[row column] = size(Constraint);
stages = Constraint(row,1);
wire = Constraint(row,2);
blade = Constraint(row,3);
ConstNum = row-1;
MainMatrix = zeros(stages*6,stages*6);

NumStageConst = zeros(stages,1);
for i = 1:ConstNum
    for j = 1:stages
        if (Constraint(i,column-1)==j || Constraint(i,column)==j)
            NumStageConst(j,1) = NumStageConst(j,1)+1;
        end
    end
end

for j = 1:stages
    Iden = zeros(6,6*NumStageConst(j,1));
    for k = 0:NumStageConst(j,1)-1
        Iden(1:6,(k*6)+1:(k*6)+6) = eye(6);
    end
    WrenchMatrix = zeros(6*NumStageConst(j,1),6*stages);
    count = 0;
    for i = 1:wire
        if (Constraint(i,column-1)==j)
            count = count+1;
            %Construct S for wire flexure i
            S = zeros(6,6);
            l = Constraint(i,10);
            d = Constraint(i,11);
            E = Constraint(i,13);
            G = Constraint(i,14);
            I = (pi*(d^4))/64;
            J = (pi*(d^4))/32;
            A = (pi*(d^2))/4;
            po = (E/(2*G))-1;  %poisson ratio
            scf = (5+po)/(6+po);
            ASX = A*scf;
            ASY = A*scf;
            thiX = 12*E*I/(G*ASX*l*l);
            thiY = 12*E*I/(G*ASY*l*l);
            S(1,1) = ((4+thiY)*E*I)/(l*(1+thiY));
            S(1,5) = (6*E*I)/(l*l*(1+thiY));
            S(2,2) = ((4+thiX)*E*I)/(l*(1+thiX));
            S(2,4) = -(6*E*I)/(l*l*(1+thiX));
            S(3,3) = (G*J)/l;
            S(4,2) = S(2,4);
            S(4,4) = (12*E*I)/((1+thiX)*(l^3));
            S(5,1) = S(1,5);
            S(5,5) = (12*E*I)/((1+thiY)*(l^3));
            S(6,6) = (E*A)/l;
            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            r = Constraint(i,1:3);
            n3 = Constraint(i,4:6);
            n3 = n3/sqrt(dot(n3,n3));
            orth = null(n3);
            n2 = transpose(orth(1:3,1));
            n2 = n2/sqrt(dot(n2,n2));
            n1 = cross(n2,n3);
            Na = zeros(6,6);
            Na(1:3,1) = transpose(n1);
            Na(1:3,2) = transpose(n2);
            Na(1:3,3) = transpose(n3);
            Na(4:6,4) = transpose(n1);
            Na(4:6,5) = transpose(n2);
            Na(4:6,6) = transpose(n3);
            Na(4:6,1) = transpose(cross(r,n1));
            Na(4:6,2) = transpose(cross(r,n2));
            Na(4:6,3) = transpose(cross(r,n3));
            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            NR = zeros(6,6);
            NR(1:6,1:3) = Na(1:6,4:6);
            NR(1:6,4:6) = Na(1:6,1:3);
            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            Nb = zeros(6,6);
            Nb(1:3,1) = transpose(n1);
            Nb(1:3,2) = transpose(n2);
            Nb(1:3,3) = transpose(n3);
            Nb(4:6,4) = transpose(n1);
            Nb(4:6,5) = transpose(n2);
            Nb(4:6,6) = transpose(n3);
            Nb(4:6,1) = transpose(cross((r-(l*n3)),n1));
            Nb(4:6,2) = transpose(cross((r-(l*n3)),n2));
            Nb(4:6,3) = transpose(cross((r-(l*n3)),n3));
            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            WrenchMatrix(((count-1)*6)+1:((count-1)*6)+6,((j-1)*6)+1:((j-1)*6)+6) = NR*S/(Na);
            if (Constraint(i,column)~=0)
                P = zeros(6,6);
                P(4,2) = -l;
                P(5,1) = l;
                WrenchMatrix(((count-1)*6)+1:((count-1)*6)+6,((Constraint(i,column)-1)*6)+1:((Constraint(i,column)-1)*6)+6) = NR*S*(P-eye(6))/(Nb);
            end
        elseif (Constraint(i,column)==j)
            count = count+1;
            %Construct S for wire flexure i
            S = zeros(6,6);
            l = Constraint(i,10);
            d = Constraint(i,11);
            E = Constraint(i,13);
            G = Constraint(i,14);
            I = (pi*(d^4))/64;
            J = (pi*(d^4))/32;
            A = (pi*(d^2))/4;
            po = (E/(2*G))-1;  %poisson ratio
            scf = (5+po)/(6+po);
            ASX = A*scf;
            ASY = A*scf;
            thiX = 12*E*I/(G*ASX*l*l);
            thiY = 12*E*I/(G*ASY*l*l);
            S(1,1) = ((4+thiY)*E*I)/(l*(1+thiY));
            S(1,5) = (6*E*I)/(l*l*(1+thiY));
            S(2,2) = ((4+thiX)*E*I)/(l*(1+thiX));
            S(2,4) = -(6*E*I)/(l*l*(1+thiX));
            S(3,3) = (G*J)/l;
            S(4,2) = S(2,4);
            S(4,4) = (12*E*I)/((1+thiX)*(l^3));
            S(5,1) = S(1,5);
            S(5,5) = (12*E*I)/((1+thiY)*(l^3));
            S(6,6) = (E*A)/l;
            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            n3 = -Constraint(i,4:6);
            n3 = n3/sqrt(dot(n3,n3));
            r = Constraint(i,1:3)+l*n3;
            orth = null(n3);
            n2 = transpose(orth(1:3,1));
            n2 = n2/sqrt(dot(n2,n2));
            n1 = cross(n2,n3);
            Na = zeros(6,6);
            Na(1:3,1) = transpose(n1);
            Na(1:3,2) = transpose(n2);
            Na(1:3,3) = transpose(n3);
            Na(4:6,4) = transpose(n1);
            Na(4:6,5) = transpose(n2);
            Na(4:6,6) = transpose(n3);
            Na(4:6,1) = transpose(cross(r,n1));
            Na(4:6,2) = transpose(cross(r,n2));
            Na(4:6,3) = transpose(cross(r,n3));
            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            NR = zeros(6,6);
            NR(1:6,1:3) = Na(1:6,4:6);
            NR(1:6,4:6) = Na(1:6,1:3);
            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            Nb = zeros(6,6);
            Nb(1:3,1) = transpose(n1);
            Nb(1:3,2) = transpose(n2);
            Nb(1:3,3) = transpose(n3);
            Nb(4:6,4) = transpose(n1);
            Nb(4:6,5) = transpose(n2);
            Nb(4:6,6) = transpose(n3);
            Nb(4:6,1) = transpose(cross((r-(l*n3)),n1));
            Nb(4:6,2) = transpose(cross((r-(l*n3)),n2));
            Nb(4:6,3) = transpose(cross((r-(l*n3)),n3));
            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            WrenchMatrix(((count-1)*6)+1:((count-1)*6)+6,((j-1)*6)+1:((j-1)*6)+6) = NR*S/(Na);
            if (Constraint(i,column-1)~=0)
                P = zeros(6,6);
                P(4,2) = -l;
                P(5,1) = l;
                WrenchMatrix(((count-1)*6)+1:((count-1)*6)+6,((Constraint(i,column-1)-1)*6)+1:((Constraint(i,column-1)-1)*6)+6) = NR*S*(P-eye(6))/(Nb);
            end
        end
    end
    for i = 1+wire:blade+wire
        if (Constraint(i,column-1)==j)
            count = count+1;
            %Construct S for blade flexure i
            S = zeros(6,6);
            l = Constraint(i,10);
            w = Constraint(i,11);
            t = Constraint(i,12);
            E = Constraint(i,13);
            G = Constraint(i,14);
            I1 = w*(t^3)/12;
            I2 = t*(w^3)/12;
            Temp = 0;
            if (w>t)
                for n = 1:2:7
                    Temp = Temp+(tanh(n*pi*w/(2*t))/(n^5));
                end
                J = ((t^3)*w/3)*(1-((192*t/((pi^5)*w))*Temp));
            else
                for n = 1:2:7
                    Temp = Temp+(tanh(n*pi*t/(2*w))/(n^5));
                end
                J = ((w^3)*t/3)*(1-((192*w/((pi^5)*t))*Temp));
            end
            A = w*t;
            po = (E/(2*G))-1;  %poisson ratio
            scf = (5+po)/(6+po);
            ASX = A*scf;
            ASY = A*scf;
            thiX = 12*E*I2/(G*ASX*l*l);
            thiY = 12*E*I1/(G*ASY*l*l);
            S(1,1) = ((4+thiY)*E*I1)/(l*(1+thiY));
            S(1,5) = (6*E*I1)/(l*l*(1+thiY));
            S(2,2) = ((4+thiX)*E*I2)/(l*(1+thiX));
            S(2,4) = -(6*E*I2)/(l*l*(1+thiX));
            S(3,3) = (G*J)/l;
            S(4,2) = S(2,4);
            S(4,4) = (12*E*I2)/((1+thiX)*(l^3));
            S(5,1) = S(1,5);
            S(5,5) = (12*E*I1)/((1+thiY)*(l^3));
            S(6,6) = (E*A)/l;
            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            r = Constraint(i,1:3);
            n3 = Constraint(i,4:6);
            n3 = n3/sqrt(dot(n3,n3));
            n2 = Constraint(i,7:9);
            n2 = n2/sqrt(dot(n2,n2));
            n1 = cross(n2,n3);
            Na = zeros(6,6);
            Na(1:3,1) = transpose(n1);
            Na(1:3,2) = transpose(n2);
            Na(1:3,3) = transpose(n3);
            Na(4:6,4) = transpose(n1);
            Na(4:6,5) = transpose(n2);
            Na(4:6,6) = transpose(n3);
            Na(4:6,1) = transpose(cross(r,n1));
            Na(4:6,2) = transpose(cross(r,n2));
            Na(4:6,3) = transpose(cross(r,n3));
            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            NR = zeros(6,6);
            NR(1:6,1:3) = Na(1:6,4:6);
            NR(1:6,4:6) = Na(1:6,1:3);
            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            Nb = zeros(6,6);
            Nb(1:3,1) = transpose(n1);
            Nb(1:3,2) = transpose(n2);
            Nb(1:3,3) = transpose(n3);
            Nb(4:6,4) = transpose(n1);
            Nb(4:6,5) = transpose(n2);
            Nb(4:6,6) = transpose(n3);
            Nb(4:6,1) = transpose(cross((r-(l*n3)),n1));
            Nb(4:6,2) = transpose(cross((r-(l*n3)),n2));
            Nb(4:6,3) = transpose(cross((r-(l*n3)),n3));
            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            WrenchMatrix(((count-1)*6)+1:((count-1)*6)+6,((j-1)*6)+1:((j-1)*6)+6) = NR*S/(Na);
            if (Constraint(i,column)~=0)
                P = zeros(6,6);
                P(4,2) = -l;
                P(5,1) = l;
                WrenchMatrix(((count-1)*6)+1:((count-1)*6)+6,((Constraint(i,column)-1)*6)+1:((Constraint(i,column)-1)*6)+6) = NR*S*(P-eye(6))/(Nb);
            end
        elseif (Constraint(i,column)==j)
            count = count+1;
            %Construct S for blade flexure i
            S = zeros(6,6);
            l = Constraint(i,10);
            w = Constraint(i,11);
            t = Constraint(i,12);
            E = Constraint(i,13);
            G = Constraint(i,14);
            I1 = w*(t^3)/12;
            I2 = t*(w^3)/12;
            Temp = 0;
            if (w>t)
                for n = 1:2:7
                    Temp = Temp+(tanh(n*pi*w/(2*t))/(n^5));
                end
                J = ((t^3)*w/3)*(1-((192*t/((pi^5)*w))*Temp));
            else
                for n = 1:2:7
                    Temp = Temp+(tanh(n*pi*t/(2*w))/(n^5));
                end
                J = ((w^3)*t/3)*(1-((192*w/((pi^5)*t))*Temp));
            end
            A = w*t;
            po = (E/(2*G))-1;  %poisson ratio
            scf = (5+po)/(6+po);
            ASX = A*scf;
            ASY = A*scf;
            thiX = 12*E*I2/(G*ASX*l*l);
            thiY = 12*E*I1/(G*ASY*l*l);
            S(1,1) = ((4+thiY)*E*I1)/(l*(1+thiY));
            S(1,5) = (6*E*I1)/(l*l*(1+thiY));
            S(2,2) = ((4+thiX)*E*I2)/(l*(1+thiX));
            S(2,4) = -(6*E*I2)/(l*l*(1+thiX));
            S(3,3) = (G*J)/l;
            S(4,2) = S(2,4);
            S(4,4) = (12*E*I2)/((1+thiX)*(l^3));
            S(5,1) = S(1,5);
            S(5,5) = (12*E*I1)/((1+thiY)*(l^3));
            S(6,6) = (E*A)/l;
            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            n3 = -Constraint(i,4:6);
            n3 = n3/sqrt(dot(n3,n3));
            r = Constraint(i,1:3)+l*n3;
            n2 = Constraint(i,7:9);
            n2 = n2/sqrt(dot(n2,n2));
            n1 = cross(n2,n3);
            Na = zeros(6,6);
            Na(1:3,1) = transpose(n1);
            Na(1:3,2) = transpose(n2);
            Na(1:3,3) = transpose(n3);
            Na(4:6,4) = transpose(n1);
            Na(4:6,5) = transpose(n2);
            Na(4:6,6) = transpose(n3);
            Na(4:6,1) = transpose(cross(r,n1));
            Na(4:6,2) = transpose(cross(r,n2));
            Na(4:6,3) = transpose(cross(r,n3));
            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            NR = zeros(6,6);
            NR(1:6,1:3) = Na(1:6,4:6);
            NR(1:6,4:6) = Na(1:6,1:3);
            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            Nb = zeros(6,6);
            Nb(1:3,1) = transpose(n1);
            Nb(1:3,2) = transpose(n2);
            Nb(1:3,3) = transpose(n3);
            Nb(4:6,4) = transpose(n1);
            Nb(4:6,5) = transpose(n2);
            Nb(4:6,6) = transpose(n3);
            Nb(4:6,1) = transpose(cross((r-(l*n3)),n1));
            Nb(4:6,2) = transpose(cross((r-(l*n3)),n2));
            Nb(4:6,3) = transpose(cross((r-(l*n3)),n3));
            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            WrenchMatrix(((count-1)*6)+1:((count-1)*6)+6,((j-1)*6)+1:((j-1)*6)+6) = NR*S/(Na);
            if (Constraint(i,column-1)~=0)
                P = zeros(6,6);
                P(4,2) = -l;
                P(5,1) = l;
                WrenchMatrix(((count-1)*6)+1:((count-1)*6)+6,((Constraint(i,column-1)-1)*6)+1:((Constraint(i,column-1)-1)*6)+6) = NR*S*(P-eye(6))/(Nb);
            end
        end
    end
    MainMatrix(((j-1)*6)+1:((j-1)*6)+6,1:(stages*6)) = Iden*WrenchMatrix;
end

KK = MainMatrix;

end







