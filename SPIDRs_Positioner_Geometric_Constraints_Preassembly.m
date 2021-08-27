
% violateGeometricConstraints = -1;

violateGeometricConstraintsAmount = 0;

if violateGeometricConstraints == -1
	if (R*sr3-G/2-C) < 0
		violateGeometricConstraints = 9;
		violateGeometricConstraintsAmount = abs(R*sr3-G/2-C);
		violateGeometricConstraintsAmount = violateGeometricConstraintsAmount*1E2;
    end
end

if violateGeometricConstraints == -1
	if L1 < ((R*sr3-G/2-C)/2+t); 
		violateGeometricConstraints = 7;
		violateGeometricConstraintsAmount = abs(((R*sr3-G/2-C)/2+t)-L1);
		violateGeometricConstraintsAmount = violateGeometricConstraintsAmount*1E2;
	end
end

if violateGeometricConstraints == -1
	pointOrigin = [0;0;0];
	pointNozzleHolderBottomC_1 = pointOrigin+[0;C+G/2;0]+[(C+G/2)/sr3+W/2/sr3*2;0;0];
	pointNozzleHolderBottomE_1 = pointNozzleHolderBottomC_1+[D/2;D/2*sr3;0];
	theta = 2*pi/3;
	Rz = [cos(theta),-sin(theta),0;sin(theta),cos(theta),0;0,0,1];
	pointNozzleHolderBottomE_2 = Rz*pointNozzleHolderBottomE_1;
	coefficientQ = H-abs(pointNozzleHolderBottomE_2(1)-pointOrigin(1));
	coefficientGamma = atan2(coefficientQ-t,B-W);
	tempDistance = norm([coefficientQ-t;B-W]);
	coefficientPsi = asin(tempDistance/2/L2)*2;
	if coefficientPsi/2 > coefficientGamma
		violateGeometricConstraints = 11;
		violateGeometricConstraintsAmount = abs(coefficientPsi/2-coefficientGamma);
		violateGeometricConstraintsAmount = violateGeometricConstraintsAmount*1E1;
	elseif L2 < 0
		violateGeometricConstraints = 11;
		violateGeometricConstraintsAmount = abs(-L2);
		violateGeometricConstraintsAmount = violateGeometricConstraintsAmount*1E1;
	elseif tempDistance/2/L2 > 1
		violateGeometricConstraints = 11;
		violateGeometricConstraintsAmount = abs(tempDistance/2/L2-1);
		violateGeometricConstraintsAmount = violateGeometricConstraintsAmount*1E1;
	end
end