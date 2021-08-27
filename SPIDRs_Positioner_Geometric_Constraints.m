
% violateGeometricConstraints = -1;

if violateGeometricConstraints == -1
	tempA1 = pointTopBladeBottom_2(:,5)-pointTopBladeTop_1(:,5);
	tempA2 = pointTopBladeTop_2(:,5)-pointTopBladeBottom_2(:,5);
	tempA3 = pointTopBladeBottom_3(:,5)-pointTopBladeTop_2(:,5);
	tempB1 = pointNozzleHolderTop(:,1)-pointNozzleHolderBottom(:,1);
	tempC1 = cross(tempA1,tempA2);
	tempC2 = cross(tempA1,tempA3);
	tempD1 = dot(tempC1,tempB1);
	tempD2 = dot(tempC2,tempB1);

	if tempD1<0 || tempD2<0
		violateGeometricConstraints = 1;
		violateGeometricConstraintsAmount = max([-tempD1,-tempD2]);
		violateGeometricConstraintsAmount = violateGeometricConstraintsAmount*1E5;
	end
end

if violateGeometricConstraints == -1
	tempProjectionDirectionX = [-1/2;-sqrt(3)/2;0];
	tempProjectionDirectionY = [0;0;1];

	tempProjectionDirectionXArray = repmat(tempProjectionDirectionX,1,length(pointHorizontalVoiceCoilCapBottom_1(:,1:end-1)));
	tempProjectionDirectionYArray = repmat(tempProjectionDirectionY,1,length(pointHorizontalVoiceCoilCapBottom_1(:,1:end-1)));
	tempP1X = dot(tempProjectionDirectionXArray,pointHorizontalVoiceCoilCapBottom_1(:,1:end-1));
	tempP1Y = dot(tempProjectionDirectionYArray,pointHorizontalVoiceCoilCapBottom_1(:,1:end-1));

	tempPoint = [pointHorizontalActuatorHousingBottom_1(:,1),pointHorizontalActuatorHousingTop_1(:,1),pointHorizontalGroundedActuatorHousingTop_1(:,1),pointHorizontalGroundedActuatorHousingBottom_1(:,1)];
	tempProjectionDirectionXArray = repmat(tempProjectionDirectionX,1,length(tempPoint));
	tempProjectionDirectionYArray = repmat(tempProjectionDirectionY,1,length(tempPoint));
	tempP2X = dot(tempProjectionDirectionXArray,tempPoint);
	tempP2Y = dot(tempProjectionDirectionYArray,tempPoint);

	tempProjectionDirectionXArray = repmat(tempProjectionDirectionX,1,length(pointTopBladeFirstBottom_1));
	tempProjectionDirectionYArray = repmat(tempProjectionDirectionY,1,length(pointTopBladeFirstBottom_1));
	tempP3X = dot(tempProjectionDirectionXArray,pointTopBladeFirstBottom_1);
	tempP3Y = dot(tempProjectionDirectionYArray,pointTopBladeFirstBottom_1);

	tempProjectionDirectionXArray = repmat(tempProjectionDirectionX,1,length(pointTopBladeSecondBottom_1));
	tempProjectionDirectionYArray = repmat(tempProjectionDirectionY,1,length(pointTopBladeSecondBottom_1));
	tempP4X = dot(tempProjectionDirectionXArray,pointTopBladeSecondBottom_1);
	tempP4Y = dot(tempProjectionDirectionYArray,pointTopBladeSecondBottom_1);

	tempPoint = [pointBottomBladeFirstBottom_1(:,1),pointBottomBladeFirstTop_1(:,1),pointBottomBladeFirstTop_1(:,2),pointBottomBladeFirstBottom_1(:,2)];
	tempProjectionDirectionXArray = repmat(tempProjectionDirectionX,1,length(tempPoint));
	tempProjectionDirectionYArray = repmat(tempProjectionDirectionY,1,length(tempPoint));
	tempP5X = dot(tempProjectionDirectionXArray,tempPoint);
	tempP5Y = dot(tempProjectionDirectionYArray,tempPoint);

	tempP1 = polyshape(tempP1X,tempP1Y);
	tempP2 = polyshape(tempP2X,tempP2Y);
	tempP3 = polyshape(tempP3X,tempP3Y);
	tempP4 = polyshape(tempP4X,tempP4Y);
	tempP5 = polyshape(tempP5X,tempP5Y);

	polyvec = [tempP1,tempP2,tempP3,tempP4,tempP5];

	TF = overlaps(polyvec)-eye(5);

	if TF(1,3) > 0
		violateGeometricConstraints = 2; 
	end

	if TF(1,4) > 0
		violateGeometricConstraints = 3; 
	end

	if TF(2,4) > 0
		violateGeometricConstraints = 4;
	end

	if TF(1,5) > 0
		violateGeometricConstraints = 5;
	end

	if TF(2,5) > 0
		violateGeometricConstraints = 6;
	end

	if violateGeometricConstraints ~= -1
		[tempIntersectRow,tempIntersectColumn] = find(TF,1,'last');
		violateGeometricConstraintsAmount = area(intersect(polyvec(tempIntersectRow),polyvec(tempIntersectColumn)));
		violateGeometricConstraintsAmount = violateGeometricConstraintsAmount*1E5;
	end
end

if violateGeometricConstraints == -1
	tempProjectionDirectionX = [1;0;0];
	tempProjectionDirectionY = [0;1;0];

	tempProjectionDirectionXArray = repmat(tempProjectionDirectionX,1,length(pointNozzleHolderBottom));
	tempProjectionDirectionYArray = repmat(tempProjectionDirectionY,1,length(pointNozzleHolderBottom));
	tempP0X = dot(tempProjectionDirectionXArray,pointNozzleHolderBottom);
	tempP0Y = dot(tempProjectionDirectionYArray,pointNozzleHolderBottom);

	tempProjectionDirectionXArray = repmat(tempProjectionDirectionX,1,length(pointBottomBladeFirstBottom_1));
	tempProjectionDirectionYArray = repmat(tempProjectionDirectionY,1,length(pointBottomBladeFirstBottom_1));
	tempP1X = dot(tempProjectionDirectionXArray,pointBottomBladeFirstBottom_1);
	tempP1Y = dot(tempProjectionDirectionYArray,pointBottomBladeFirstBottom_1);

	tempProjectionDirectionXArray = repmat(tempProjectionDirectionX,1,length(pointBottomBladeSecondBottom_1));
	tempProjectionDirectionYArray = repmat(tempProjectionDirectionY,1,length(pointBottomBladeSecondBottom_1));
	tempP2X = dot(tempProjectionDirectionXArray,pointBottomBladeSecondBottom_1);
	tempP2Y = dot(tempProjectionDirectionYArray,pointBottomBladeSecondBottom_1);

	tempProjectionDirectionXArray = repmat(tempProjectionDirectionX,1,length(pointBottomBladeFirstBottom_2));
	tempProjectionDirectionYArray = repmat(tempProjectionDirectionY,1,length(pointBottomBladeFirstBottom_2));
	tempP3X = dot(tempProjectionDirectionXArray,pointBottomBladeFirstBottom_2);
	tempP3Y = dot(tempProjectionDirectionYArray,pointBottomBladeFirstBottom_2);

	tempProjectionDirectionXArray = repmat(tempProjectionDirectionX,1,length(pointBottomBladeSecondBottom_2));
	tempProjectionDirectionYArray = repmat(tempProjectionDirectionY,1,length(pointBottomBladeSecondBottom_2));
	tempP4X = dot(tempProjectionDirectionXArray,pointBottomBladeSecondBottom_2);
	tempP4Y = dot(tempProjectionDirectionYArray,pointBottomBladeSecondBottom_2);

	tempProjectionDirectionXArray = repmat(tempProjectionDirectionX,1,length(pointBottomBladeFirstBottom_3));
	tempProjectionDirectionYArray = repmat(tempProjectionDirectionY,1,length(pointBottomBladeFirstBottom_3));
	tempP5X = dot(tempProjectionDirectionXArray,pointBottomBladeFirstBottom_3);
	tempP5Y = dot(tempProjectionDirectionYArray,pointBottomBladeFirstBottom_3);

	tempProjectionDirectionXArray = repmat(tempProjectionDirectionX,1,length(pointBottomBladeSecondBottom_3));
	tempProjectionDirectionYArray = repmat(tempProjectionDirectionY,1,length(pointBottomBladeSecondBottom_3));
	tempP6X = dot(tempProjectionDirectionXArray,pointBottomBladeSecondBottom_3);
	tempP6Y = dot(tempProjectionDirectionYArray,pointBottomBladeSecondBottom_3);

	tempP0 = polyshape(tempP0X,tempP0Y);
	tempP1 = polyshape(tempP1X,tempP1Y);
	tempP2 = polyshape(tempP2X,tempP2Y);
	tempP3 = polyshape(tempP3X,tempP3Y);
	tempP4 = polyshape(tempP4X,tempP4Y);
	tempP5 = polyshape(tempP5X,tempP5Y);
	tempP6 = polyshape(tempP6X,tempP6Y);

	polyvec = [tempP0,tempP1,tempP2,tempP3,tempP4,tempP5,tempP6];

	TF = overlaps(polyvec)-eye(7);

	if sum(sum(TF)) > 0
		violateGeometricConstraints = 8;
		[tempIntersectRow,tempIntersectColumn] = find(TF,1,'last');
		violateGeometricConstraintsAmount = area(intersect(polyvec(tempIntersectRow),polyvec(tempIntersectColumn)));
		violateGeometricConstraintsAmount = violateGeometricConstraintsAmount*1E5;
	end
end

if violateGeometricConstraints == -1
	tempProjectionDirectionX = [1;0;0];
	tempProjectionDirectionY = [0;1;0];

	tempPoint = [pointVerticalActuatorHousingBottom_1(:,1),pointVerticalActuatorHousingTop_1(:,1),pointVerticalGroundedActuatorHousingTop_1(:,1),pointVerticalGroundedActuatorHousingBottom_1(:,1)];
	tempProjectionDirectionXArray = repmat(tempProjectionDirectionX,1,length(tempPoint));
	tempProjectionDirectionYArray = repmat(tempProjectionDirectionY,1,length(tempPoint));
	tempP1X = dot(tempProjectionDirectionXArray,tempPoint);
	tempP1Y = dot(tempProjectionDirectionYArray,tempPoint);

	tempPoint = [pointHorizontalActuatorHousingBottom_1(:,1),pointHorizontalActuatorHousingBottom_1(:,2),pointHorizontalGroundedActuatorHousingBottom_1(:,1),pointHorizontalGroundedActuatorHousingBottom_1(:,2)];
	tempProjectionDirectionXArray = repmat(tempProjectionDirectionX,1,length(tempPoint));
	tempProjectionDirectionYArray = repmat(tempProjectionDirectionY,1,length(tempPoint));
	tempP2X = dot(tempProjectionDirectionXArray,tempPoint);
	tempP2Y = dot(tempProjectionDirectionYArray,tempPoint);

	tempPoint = [pointVerticalActuatorHousingBottom_2(:,1),pointVerticalActuatorHousingTop_2(:,1),pointVerticalGroundedActuatorHousingTop_2(:,1),pointVerticalGroundedActuatorHousingBottom_2(:,1)];
	tempProjectionDirectionXArray = repmat(tempProjectionDirectionX,1,length(tempPoint));
	tempProjectionDirectionYArray = repmat(tempProjectionDirectionY,1,length(tempPoint));
	tempP3X = dot(tempProjectionDirectionXArray,tempPoint);
	tempP3Y = dot(tempProjectionDirectionYArray,tempPoint);

	tempPoint = [pointHorizontalActuatorHousingBottom_2(:,1),pointHorizontalActuatorHousingBottom_2(:,2),pointHorizontalGroundedActuatorHousingBottom_2(:,1),pointHorizontalGroundedActuatorHousingBottom_2(:,2)];
	tempProjectionDirectionXArray = repmat(tempProjectionDirectionX,1,length(tempPoint));
	tempProjectionDirectionYArray = repmat(tempProjectionDirectionY,1,length(tempPoint));
	tempP4X = dot(tempProjectionDirectionXArray,tempPoint);
	tempP4Y = dot(tempProjectionDirectionYArray,tempPoint);

	tempPoint = [pointVerticalActuatorHousingBottom_3(:,1),pointVerticalActuatorHousingTop_3(:,1),pointVerticalGroundedActuatorHousingTop_3(:,1),pointVerticalGroundedActuatorHousingBottom_3(:,1)];
	tempProjectionDirectionXArray = repmat(tempProjectionDirectionX,1,length(tempPoint));
	tempProjectionDirectionYArray = repmat(tempProjectionDirectionY,1,length(tempPoint));
	tempP5X = dot(tempProjectionDirectionXArray,tempPoint);
	tempP5Y = dot(tempProjectionDirectionYArray,tempPoint);

	tempPoint = [pointHorizontalActuatorHousingBottom_3(:,1),pointHorizontalActuatorHousingBottom_3(:,2),pointHorizontalGroundedActuatorHousingBottom_3(:,1),pointHorizontalGroundedActuatorHousingBottom_3(:,2)];
	tempProjectionDirectionXArray = repmat(tempProjectionDirectionX,1,length(tempPoint));
	tempProjectionDirectionYArray = repmat(tempProjectionDirectionY,1,length(tempPoint));
	tempP6X = dot(tempProjectionDirectionXArray,tempPoint);
	tempP6Y = dot(tempProjectionDirectionYArray,tempPoint);

	tempP1 = polyshape(tempP1X,tempP1Y);
	tempP2 = polyshape(tempP2X,tempP2Y);
	tempP3 = polyshape(tempP3X,tempP3Y);
	tempP4 = polyshape(tempP4X,tempP4Y);
	tempP5 = polyshape(tempP5X,tempP5Y);
	tempP6 = polyshape(tempP6X,tempP6Y);

	polyvec = [tempP1,tempP2,tempP3,tempP4,tempP5,tempP6];

	TF = overlaps(polyvec)-eye(6);

	if sum(sum(TF)) > 0
		violateGeometricConstraints = 12;
		[tempIntersectRow,tempIntersectColumn] = find(TF,1,'last');
		violateGeometricConstraintsAmount = area(intersect(polyvec(tempIntersectRow),polyvec(tempIntersectColumn)));
		violateGeometricConstraintsAmount = violateGeometricConstraintsAmount*1E5;
	end
end