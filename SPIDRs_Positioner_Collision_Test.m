
% isCollided = -1;

tempA1 = newPointTopBladeBottom_2(:,5)-newPointTopBladeTop_1(:,5);
tempA2 = newPointTopBladeTop_2(:,5)-newPointTopBladeBottom_2(:,5);
tempA3 = newPointTopBladeBottom_3(:,5)-newPointTopBladeTop_2(:,5);
tempA4 = newPointTopBladeTop_3(:,5)-newPointTopBladeBottom_3(:,5);
tempA5 = newPointTopBladeBottom_1(:,5)-newPointTopBladeTop_3(:,5);
tempA6 = newPointTopBladeTop_1(:,5)-newPointTopBladeBottom_1(:,5);

tempB1 = newPointNozzleHolderTop(:,1)-newPointNozzleHolderBottom(:,1);

tempC1 = cross(tempA1,tempA2);
tempC2 = cross(tempA1,tempA3);
tempC3 = cross(tempA3,tempA4);
tempC4 = cross(tempA3,tempA5);
tempC5 = cross(tempA5,tempA6);
tempC6 = cross(tempA5,tempA1);

tempD1 = dot(tempC1,tempB1);
tempD2 = dot(tempC2,tempB1);
tempD3 = dot(tempC3,tempB1);
tempD4 = dot(tempC4,tempB1);
tempD5 = dot(tempC5,tempB1);
tempD6 = dot(tempC6,tempB1);

if tempD1<0 || tempD2<0 || tempD3<0 || tempD4<0 || tempD5<0 || tempD6<0 
	isCollided = 1;
end

tempProjectionDirectionX = [-1/2;-sqrt(3)/2;0];
tempProjectionDirectionY = [0;0;1];

tempProjectionDirectionXArray = repmat(tempProjectionDirectionX,1,length(newPointHorizontalVoiceCoilCapBottom_1(:,1:end-1)));
tempProjectionDirectionYArray = repmat(tempProjectionDirectionY,1,length(newPointHorizontalVoiceCoilCapBottom_1(:,1:end-1)));
tempP1X = dot(tempProjectionDirectionXArray,newPointHorizontalVoiceCoilCapBottom_1(:,1:end-1));
tempP1Y = dot(tempProjectionDirectionYArray,newPointHorizontalVoiceCoilCapBottom_1(:,1:end-1));

tempPoint = [newPointHorizontalActuatorHousingBottom_1(:,1),newPointHorizontalActuatorHousingTop_1(:,1),pointHorizontalGroundedActuatorHousingTop_1(:,1),pointHorizontalGroundedActuatorHousingBottom_1(:,1)];
tempProjectionDirectionXArray = repmat(tempProjectionDirectionX,1,length(tempPoint));
tempProjectionDirectionYArray = repmat(tempProjectionDirectionY,1,length(tempPoint));
tempP2X = dot(tempProjectionDirectionXArray,tempPoint);
tempP2Y = dot(tempProjectionDirectionYArray,tempPoint);

tempProjectionDirectionXArray = repmat(tempProjectionDirectionX,1,length(newPointTopBladeFirstBottom_1));
tempProjectionDirectionYArray = repmat(tempProjectionDirectionY,1,length(newPointTopBladeFirstBottom_1));
tempP3X = dot(tempProjectionDirectionXArray,newPointTopBladeFirstBottom_1);
tempP3Y = dot(tempProjectionDirectionYArray,newPointTopBladeFirstBottom_1);

tempProjectionDirectionXArray = repmat(tempProjectionDirectionX,1,length(newPointTopBladeSecondBottom_1));
tempProjectionDirectionYArray = repmat(tempProjectionDirectionY,1,length(newPointTopBladeSecondBottom_1));
tempP4X = dot(tempProjectionDirectionXArray,newPointTopBladeSecondBottom_1);
tempP4Y = dot(tempProjectionDirectionYArray,newPointTopBladeSecondBottom_1);

tempPoint = [newPointBottomBladeFirstBottom_1(:,1),newPointBottomBladeFirstTop_1(:,1),newPointBottomBladeFirstTop_1(:,2),newPointBottomBladeFirstBottom_1(:,2)];
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
	isCollided = 2; 
end

if TF(1,4) > 0
	isCollided = 3; 
end

if TF(2,4) > 0
	isCollided = 4; 
end

if TF(1,5) > 0
	isCollided = 5; 
end

if TF(2,5) > 0
	isCollided = 6; 
end

tempProjectionDirectionX = [1;0;0];
tempProjectionDirectionY = [0;0;1];

tempProjectionDirectionXArray = repmat(tempProjectionDirectionX,1,length(newPointHorizontalVoiceCoilCapBottom_2(:,1:end-1)));
tempProjectionDirectionYArray = repmat(tempProjectionDirectionY,1,length(newPointHorizontalVoiceCoilCapBottom_2(:,1:end-1)));
tempP1X = dot(tempProjectionDirectionXArray,newPointHorizontalVoiceCoilCapBottom_2(:,1:end-1));
tempP1Y = dot(tempProjectionDirectionYArray,newPointHorizontalVoiceCoilCapBottom_2(:,1:end-1));

tempPoint = [newPointHorizontalActuatorHousingBottom_2(:,1),newPointHorizontalActuatorHousingTop_2(:,1),pointHorizontalGroundedActuatorHousingTop_2(:,1),pointHorizontalGroundedActuatorHousingBottom_2(:,1)];
tempProjectionDirectionXArray = repmat(tempProjectionDirectionX,1,length(tempPoint));
tempProjectionDirectionYArray = repmat(tempProjectionDirectionY,1,length(tempPoint));
tempP2X = dot(tempProjectionDirectionXArray,tempPoint);
tempP2Y = dot(tempProjectionDirectionYArray,tempPoint);

tempProjectionDirectionXArray = repmat(tempProjectionDirectionX,1,length(newPointTopBladeFirstBottom_2));
tempProjectionDirectionYArray = repmat(tempProjectionDirectionY,1,length(newPointTopBladeFirstBottom_2));
tempP3X = dot(tempProjectionDirectionXArray,newPointTopBladeFirstBottom_2);
tempP3Y = dot(tempProjectionDirectionYArray,newPointTopBladeFirstBottom_2);

tempProjectionDirectionXArray = repmat(tempProjectionDirectionX,1,length(newPointTopBladeSecondBottom_2));
tempProjectionDirectionYArray = repmat(tempProjectionDirectionY,1,length(newPointTopBladeSecondBottom_2));
tempP4X = dot(tempProjectionDirectionXArray,newPointTopBladeSecondBottom_2);
tempP4Y = dot(tempProjectionDirectionYArray,newPointTopBladeSecondBottom_2);

tempPoint = [newPointBottomBladeFirstBottom_2(:,1),newPointBottomBladeFirstTop_2(:,1),newPointBottomBladeFirstTop_2(:,2),newPointBottomBladeFirstBottom_2(:,2)];
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
	isCollided = 2; 
end

if TF(1,4) > 0
	isCollided = 3; 
end

if TF(2,4) > 0
	isCollided = 4; 
end

if TF(1,5) > 0
	isCollided = 5; 
end

if TF(2,5) > 0
	isCollided = 6; 
end

tempProjectionDirectionX = [-1/2;sqrt(3)/2;0];
tempProjectionDirectionY = [0;0;1];

tempProjectionDirectionXArray = repmat(tempProjectionDirectionX,1,length(newPointHorizontalVoiceCoilCapBottom_3(:,1:end-1)));
tempProjectionDirectionYArray = repmat(tempProjectionDirectionY,1,length(newPointHorizontalVoiceCoilCapBottom_3(:,1:end-1)));
tempP1X = dot(tempProjectionDirectionXArray,newPointHorizontalVoiceCoilCapBottom_3(:,1:end-1));
tempP1Y = dot(tempProjectionDirectionYArray,newPointHorizontalVoiceCoilCapBottom_3(:,1:end-1));

tempPoint = [newPointHorizontalActuatorHousingBottom_3(:,1),newPointHorizontalActuatorHousingTop_3(:,1),pointHorizontalGroundedActuatorHousingTop_3(:,1),pointHorizontalGroundedActuatorHousingBottom_3(:,1)];
tempProjectionDirectionXArray = repmat(tempProjectionDirectionX,1,length(tempPoint));
tempProjectionDirectionYArray = repmat(tempProjectionDirectionY,1,length(tempPoint));
tempP2X = dot(tempProjectionDirectionXArray,tempPoint);
tempP2Y = dot(tempProjectionDirectionYArray,tempPoint);

tempProjectionDirectionXArray = repmat(tempProjectionDirectionX,1,length(newPointTopBladeFirstBottom_3));
tempProjectionDirectionYArray = repmat(tempProjectionDirectionY,1,length(newPointTopBladeFirstBottom_3));
tempP3X = dot(tempProjectionDirectionXArray,newPointTopBladeFirstBottom_3);
tempP3Y = dot(tempProjectionDirectionYArray,newPointTopBladeFirstBottom_3);

tempProjectionDirectionXArray = repmat(tempProjectionDirectionX,1,length(newPointTopBladeSecondBottom_3));
tempProjectionDirectionYArray = repmat(tempProjectionDirectionY,1,length(newPointTopBladeSecondBottom_3));
tempP4X = dot(tempProjectionDirectionXArray,newPointTopBladeSecondBottom_3);
tempP4Y = dot(tempProjectionDirectionYArray,newPointTopBladeSecondBottom_3);

tempPoint = [newPointBottomBladeFirstBottom_3(:,1),newPointBottomBladeFirstTop_3(:,1),newPointBottomBladeFirstTop_3(:,2),newPointBottomBladeFirstBottom_3(:,2)];
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
	isCollided = 2; 
end

if TF(1,4) > 0
	isCollided = 3; 
end

if TF(2,4) > 0
	isCollided = 4; 
end

if TF(1,5) > 0
	isCollided = 5; 
end

if TF(2,5) > 0
	isCollided = 6; 
end


tempProjectionDirectionX = [1;0;0];
tempProjectionDirectionY = [0;1;0];

tempProjectionDirectionXArray = repmat(tempProjectionDirectionX,1,length(newPointNozzleHolderBottom));
tempProjectionDirectionYArray = repmat(tempProjectionDirectionY,1,length(newPointNozzleHolderBottom));
tempP0X = dot(tempProjectionDirectionXArray,newPointNozzleHolderBottom);
tempP0Y = dot(tempProjectionDirectionYArray,newPointNozzleHolderBottom);

tempProjectionDirectionXArray = repmat(tempProjectionDirectionX,1,length(newPointBottomBladeFirstBottom_1));
tempProjectionDirectionYArray = repmat(tempProjectionDirectionY,1,length(newPointBottomBladeFirstBottom_1));
tempP1X = dot(tempProjectionDirectionXArray,newPointBottomBladeFirstBottom_1);
tempP1Y = dot(tempProjectionDirectionYArray,newPointBottomBladeFirstBottom_1);

tempProjectionDirectionXArray = repmat(tempProjectionDirectionX,1,length(newPointBottomBladeSecondBottom_1));
tempProjectionDirectionYArray = repmat(tempProjectionDirectionY,1,length(newPointBottomBladeSecondBottom_1));
tempP2X = dot(tempProjectionDirectionXArray,newPointBottomBladeSecondBottom_1);
tempP2Y = dot(tempProjectionDirectionYArray,newPointBottomBladeSecondBottom_1);

tempProjectionDirectionXArray = repmat(tempProjectionDirectionX,1,length(newPointBottomBladeFirstBottom_2));
tempProjectionDirectionYArray = repmat(tempProjectionDirectionY,1,length(newPointBottomBladeFirstBottom_2));
tempP3X = dot(tempProjectionDirectionXArray,newPointBottomBladeFirstBottom_2);
tempP3Y = dot(tempProjectionDirectionYArray,newPointBottomBladeFirstBottom_2);

tempProjectionDirectionXArray = repmat(tempProjectionDirectionX,1,length(newPointBottomBladeSecondBottom_2));
tempProjectionDirectionYArray = repmat(tempProjectionDirectionY,1,length(newPointBottomBladeSecondBottom_2));
tempP4X = dot(tempProjectionDirectionXArray,newPointBottomBladeSecondBottom_2);
tempP4Y = dot(tempProjectionDirectionYArray,newPointBottomBladeSecondBottom_2);

tempProjectionDirectionXArray = repmat(tempProjectionDirectionX,1,length(newPointBottomBladeFirstBottom_3));
tempProjectionDirectionYArray = repmat(tempProjectionDirectionY,1,length(newPointBottomBladeFirstBottom_3));
tempP5X = dot(tempProjectionDirectionXArray,newPointBottomBladeFirstBottom_3);
tempP5Y = dot(tempProjectionDirectionYArray,newPointBottomBladeFirstBottom_3);

tempProjectionDirectionXArray = repmat(tempProjectionDirectionX,1,length(newPointBottomBladeSecondBottom_3));
tempProjectionDirectionYArray = repmat(tempProjectionDirectionY,1,length(newPointBottomBladeSecondBottom_3));
tempP6X = dot(tempProjectionDirectionXArray,newPointBottomBladeSecondBottom_3);
tempP6Y = dot(tempProjectionDirectionYArray,newPointBottomBladeSecondBottom_3);

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
	isCollided = 8;
end


tempProjectionDirectionX = [1;0;0];
tempProjectionDirectionY = [0;1;0];

tempProjectionDirectionXArray = repmat(tempProjectionDirectionX,1,length(newPointNozzleHolderTop));
tempProjectionDirectionYArray = repmat(tempProjectionDirectionY,1,length(newPointNozzleHolderTop));
tempP0X = dot(tempProjectionDirectionXArray,newPointNozzleHolderTop);
tempP0Y = dot(tempProjectionDirectionYArray,newPointNozzleHolderTop);

tempProjectionDirectionXArray = repmat(tempProjectionDirectionX,1,length(newPointBottomBladeFirstTop_1));
tempProjectionDirectionYArray = repmat(tempProjectionDirectionY,1,length(newPointBottomBladeFirstTop_1));
tempP1X = dot(tempProjectionDirectionXArray,newPointBottomBladeFirstTop_1);
tempP1Y = dot(tempProjectionDirectionYArray,newPointBottomBladeFirstTop_1);

tempProjectionDirectionXArray = repmat(tempProjectionDirectionX,1,length(newPointBottomBladeSecondTop_1));
tempProjectionDirectionYArray = repmat(tempProjectionDirectionY,1,length(newPointBottomBladeSecondTop_1));
tempP2X = dot(tempProjectionDirectionXArray,newPointBottomBladeSecondTop_1);
tempP2Y = dot(tempProjectionDirectionYArray,newPointBottomBladeSecondTop_1);

tempProjectionDirectionXArray = repmat(tempProjectionDirectionX,1,length(newPointBottomBladeFirstTop_2));
tempProjectionDirectionYArray = repmat(tempProjectionDirectionY,1,length(newPointBottomBladeFirstTop_2));
tempP3X = dot(tempProjectionDirectionXArray,newPointBottomBladeFirstTop_2);
tempP3Y = dot(tempProjectionDirectionYArray,newPointBottomBladeFirstTop_2);

tempProjectionDirectionXArray = repmat(tempProjectionDirectionX,1,length(newPointBottomBladeSecondTop_2));
tempProjectionDirectionYArray = repmat(tempProjectionDirectionY,1,length(newPointBottomBladeSecondTop_2));
tempP4X = dot(tempProjectionDirectionXArray,newPointBottomBladeSecondTop_2);
tempP4Y = dot(tempProjectionDirectionYArray,newPointBottomBladeSecondTop_2);

tempProjectionDirectionXArray = repmat(tempProjectionDirectionX,1,length(newPointBottomBladeFirstTop_3));
tempProjectionDirectionYArray = repmat(tempProjectionDirectionY,1,length(newPointBottomBladeFirstTop_3));
tempP5X = dot(tempProjectionDirectionXArray,newPointBottomBladeFirstTop_3);
tempP5Y = dot(tempProjectionDirectionYArray,newPointBottomBladeFirstTop_3);

tempProjectionDirectionXArray = repmat(tempProjectionDirectionX,1,length(newPointBottomBladeSecondTop_3));
tempProjectionDirectionYArray = repmat(tempProjectionDirectionY,1,length(newPointBottomBladeSecondTop_3));
tempP6X = dot(tempProjectionDirectionXArray,newPointBottomBladeSecondTop_3);
tempP6Y = dot(tempProjectionDirectionYArray,newPointBottomBladeSecondTop_3);

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
	isCollided = 8;
end