function [newPointBottom, newPointTop, newCoM, newN1n2n3] = Move_Right_Prism(Rotation, Translation, pointBottom, pointTop, CoM, n1n2n3)

n = length(pointBottom(1,:));
newPointBottom = Rotation*pointBottom+[ones(1,n)*Translation(1);ones(1,n)*Translation(2);ones(1,n)*Translation(3)];
newPointTop = Rotation*pointTop+[ones(1,n)*Translation(1);ones(1,n)*Translation(2);ones(1,n)*Translation(3)];
newCoM = Rotation*CoM+Translation;
newN1n2n3 = Rotation*n1n2n3;

end