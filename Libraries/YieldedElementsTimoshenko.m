function [YorN,MaxMises] = YieldedElementsTimoshenko(Constraint,Twist)
%Function reads in a matrix (Constraint) and a set of twists on the nodes
%and returns an answer as to whether the structure has yielded.

MaxMises = -1;

format long;

Del = zeros(6,6);
Del(4:6,1:3) = eye(3);
Del(1:3,4:6) = eye(3);

[row column] = size(Constraint);
stages = Constraint(row,1);
wire = Constraint(row,2);
blade = Constraint(row,3);
ConstNum = row-1;

count = 0;

for i = 1:wire
    Connect = Constraint(i,column-1);
    OtherEnd = Constraint(i,column);
    if (Connect~=0)
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
        Forces = S*inv(Na)*Twist(((Connect-1)*6)+1:(Connect*6),1);
        if (Constraint(i,column)~=0)
            P = zeros(6,6);
            P(4,2) = -l;
            P(5,1) = l;
            Forces = Forces+(S*(P-eye(6))*inv(Nb)*Twist(((OtherEnd-1)*6)+1:(OtherEnd*6),1));
        end
    else
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
        n3 = -1*Constraint(i,4:6);
        n3 = n3/sqrt(dot(n3,n3));
        r = Constraint(i,1:3)+(l*n3);
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
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        Forces = S*inv(Na)*Twist(((OtherEnd-1)*6)+1:(OtherEnd*6),1);
    end
    TotalForces = Del*Forces;
    [Answer,tempMaxMises] = Yielded(Constraint(i,:),transpose(TotalForces));   %%%%%%%%%%%%Function
    if (tempMaxMises>MaxMises)
        MaxMises = tempMaxMises;
    end
    if (Answer==1)
        count = 1;
        break;
    end
end

for i = 1+wire:blade+wire
    Connect = Constraint(i,column-1);
    OtherEnd = Constraint(i,column);
    if (Connect~=0)
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
        Forces = S*inv(Na)*Twist(((Connect-1)*6)+1:(Connect*6),1);
        if (Constraint(i,column)~=0)
            P = zeros(6,6);
            P(4,2) = -l;
            P(5,1) = l;
            Forces = Forces+(S*(P-eye(6))*inv(Nb)*Twist(((OtherEnd-1)*6)+1:(OtherEnd*6),1));
        end
    else
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
        n3 = -1*Constraint(i,4:6);
        n3 = n3/sqrt(dot(n3,n3));
        r = Constraint(i,1:3)+(l*n3);
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
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        Forces = S*inv(Na)*Twist(((OtherEnd-1)*6)+1:(OtherEnd*6),1);
    end
    TotalForces = Del*Forces;
    [Answer,tempMaxMises] = Yielded(Constraint(i,:),transpose(TotalForces));   %%%%%%%%%%%%Function
    if (tempMaxMises>MaxMises)
        MaxMises = tempMaxMises;
    end
    if (Answer==1)
        count = 1;
        break;
    end
end

if (count==1)
    YorN = 1;
else
    YorN = 0;
end

end