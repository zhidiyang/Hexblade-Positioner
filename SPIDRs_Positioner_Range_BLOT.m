
pointFromBottom = pointVerticalActuatorHousingBottom_1(:,4);
pointFromTop = pointVerticalActuatorHousingTop_1(:,4);
pointFrom = pointFromBottom/2+pointFromTop/2;
pointToBottom = pointVerticalActuatorHousingBottom_1(:,end-1);
pointToTop = pointVerticalActuatorHousingTop_1(:,end-1);
pointTo = pointToBottom/2+pointToTop/2;
vectorL = pointTo-pointFrom;

r = pointTo/2+pointFrom/2;
l = norm(vectorL);
n3 = vectorL/l;

fVerticalDirection_1 = n3;
rVertical_1 = r;

pointFromBottom = pointHorizontalActuatorHousingBottom_1(:,4);
pointFromTop = pointHorizontalActuatorHousingTop_1(:,4);
pointFrom = pointFromBottom/2+pointFromTop/2;
pointToBottom = pointHorizontalActuatorHousingBottom_1(:,end-1);
pointToTop = pointHorizontalActuatorHousingTop_1(:,end-1);
pointTo = pointToBottom/2+pointToTop/2;
vectorL = pointTo-pointFrom;

r = pointTo/2+pointFrom/2;
l = norm(vectorL);
n3 = vectorL/l;

fHorizontalDirection_1 = n3;
rHorizontal_1 = r;

pointFromBottom = pointVerticalActuatorHousingBottom_2(:,4);
pointFromTop = pointVerticalActuatorHousingTop_2(:,4);
pointFrom = pointFromBottom/2+pointFromTop/2;
pointToBottom = pointVerticalActuatorHousingBottom_2(:,end-1);
pointToTop = pointVerticalActuatorHousingTop_2(:,end-1);
pointTo = pointToBottom/2+pointToTop/2;
vectorL = pointTo-pointFrom;

r = pointTo/2+pointFrom/2;
l = norm(vectorL);
n3 = vectorL/l;

fVerticalDirection_2 = n3;
rVertical_2 = r;

pointFromBottom = pointHorizontalActuatorHousingBottom_2(:,4);
pointFromTop = pointHorizontalActuatorHousingTop_2(:,4);
pointFrom = pointFromBottom/2+pointFromTop/2;
pointToBottom = pointHorizontalActuatorHousingBottom_2(:,end-1);
pointToTop = pointHorizontalActuatorHousingTop_2(:,end-1);
pointTo = pointToBottom/2+pointToTop/2;
vectorL = pointTo-pointFrom;

r = pointTo/2+pointFrom/2;
l = norm(vectorL);
n3 = vectorL/l;

fHorizontalDirection_2 = n3;
rHorizontal_2 = r;

pointFromBottom = pointVerticalActuatorHousingBottom_3(:,4);
pointFromTop = pointVerticalActuatorHousingTop_3(:,4);
pointFrom = pointFromBottom/2+pointFromTop/2;
pointToBottom = pointVerticalActuatorHousingBottom_3(:,end-1);
pointToTop = pointVerticalActuatorHousingTop_3(:,end-1);
pointTo = pointToBottom/2+pointToTop/2;
vectorL = pointTo-pointFrom;

r = pointTo/2+pointFrom/2;
l = norm(vectorL);
n3 = vectorL/l;

fVerticalDirection_3 = n3;
rVertical_3 = r;

pointFromBottom = pointHorizontalActuatorHousingBottom_3(:,4);
pointFromTop = pointHorizontalActuatorHousingTop_3(:,4);
pointFrom = pointFromBottom/2+pointFromTop/2;
pointToBottom = pointHorizontalActuatorHousingBottom_3(:,end-1);
pointToTop = pointHorizontalActuatorHousingTop_3(:,end-1);
pointTo = pointToBottom/2+pointToTop/2;
vectorL = pointTo-pointFrom;

r = pointTo/2+pointFrom/2;
l = norm(vectorL);
n3 = vectorL/l;

fHorizontalDirection_3 = n3;
rHorizontal_3 = r;

WTransformTemp = [zeros(6,6);...
				  zeros(3,0),fVerticalDirection_1,zeros(3,5);...
				  zeros(3,0),cross(rVertical_1,fVerticalDirection_1),zeros(3,5);...
				  zeros(6,6);...
				  zeros(3,1),fHorizontalDirection_1,zeros(3,4);...
				  zeros(3,1),cross(rHorizontal_1,fHorizontalDirection_1),zeros(3,4);...
				  zeros(6,6);...
				  zeros(3,2),fVerticalDirection_2,zeros(3,3);...
				  zeros(3,2),cross(rVertical_2,fVerticalDirection_2),zeros(3,3);...
				  zeros(6,6);...
				  zeros(3,3),fHorizontalDirection_2,zeros(3,2);...
				  zeros(3,3),cross(rHorizontal_2,fHorizontalDirection_2),zeros(3,2);...
				  zeros(6,6);...
				  zeros(3,4),fVerticalDirection_3,zeros(3,1);...
				  zeros(3,4),cross(rVertical_3,fVerticalDirection_3),zeros(3,1);...
				  zeros(6,6);...
				  zeros(3,5),fHorizontalDirection_3,zeros(3,0);...
				  zeros(3,5),cross(rHorizontal_3,fHorizontalDirection_3),zeros(3,0);...
				  zeros(6,6)];


KTemp = KKInverse(6*(numNozzleHolder-1)+1:6*numNozzleHolder,:)*WTransformTemp;

rangeAccuracy = 1E-5;
for tempCounter = [1:1:12]
	if tempCounter == 1
		DDx = 10E-3;
		DDy = 0;
		DDz = 0;
		RRx = 0;
		RRy = 0;
		RRz = 0;
		rangeAccuracy = 5E-7;
	elseif tempCounter == 2
		DDx = 0;
		DDy = 10E-3;
		DDz = 0;
		RRx = 0;
		RRy = 0;
		RRz = 0;
		rangeAccuracy = 5E-7;
	elseif tempCounter == 3
		DDx = 0;
		DDy = 0;
		DDz = 10E-3;
		RRx = 0;
		RRy = 0;
		RRz = 0;
		rangeAccuracy = 5E-7;
	elseif tempCounter == 4
		DDx = 0;
		DDy = 0;
		DDz = 0;
		RRx = pi/30;
		RRy = 0;
		RRz = 0;
		rangeAccuracy = 1E-5;
	elseif tempCounter == 5
		DDx = 0;
		DDy = 0;
		DDz = 0;
		RRx = 0;
		RRy = pi/30;
		RRz = 0;
		rangeAccuracy = 1E-5;
	elseif tempCounter == 6
		DDx = 0;
		DDy = 0;
		DDz = 0;
		RRx = 0;
		RRy = 0;
		RRz = pi/30;
		rangeAccuracy = 1E-5;
	elseif tempCounter == 7
		DDx = -10E-3;
		DDy = 0;
		DDz = 0;
		RRx = 0;
		RRy = 0;
		RRz = 0;
		rangeAccuracy = 5E-7;
	elseif tempCounter == 8
		DDx = 0;
		DDy = -10E-3;
		DDz = 0;
		RRx = 0;
		RRy = 0;
		RRz = 0;
		rangeAccuracy = 5E-7;
	elseif tempCounter == 9
		DDx = 0;
		DDy = 0;
		DDz = -10E-3;
		RRx = 0;
		RRy = 0;
		RRz = 0;
		rangeAccuracy = 5E-7;
	elseif tempCounter == 10
		DDx = 0;
		DDy = 0;
		DDz = 0;
		RRx = -pi/30;
		RRy = 0;
		RRz = 0;
		rangeAccuracy = 1E-5;
	elseif tempCounter == 11
		DDx = 0;
		DDy = 0;
		DDz = 0;
		RRx = 0;
		RRy = -pi/30;
		RRz = 0;
		rangeAccuracy = 1E-5;
	elseif tempCounter == 12
		DDx = 0;
		DDy = 0;
		DDz = 0;
		RRx = 0;
		RRy = 0;
		RRz = -pi/30;
		rangeAccuracy = 1E-5;
	end

	TTemp = [RRx;RRy;RRz;DDx;DDy;DDz];

	ForceTemp = KTemp \ TTemp;

	ForceTemp = ForceTemp/max(abs(ForceTemp));

	lastMaxForce = 89.9;
	lastMinForce = 0;

	while abs(lastMaxForce-lastMinForce) > rangeAccuracy

		thisForce = lastMaxForce/2+lastMinForce/2;

		WrenchTemp = WTransformTemp*ForceTemp*thisForce;

		mTwist = KK^-1*WrenchTemp;

		YieldedYorN = YieldedElementsEuler(mConstraint,mTwist);
		BuckledYorN = BuckledElementsEuler(mConstraint,mTwist);

		isCollided = -1;

		if YieldedYorN == 0 && BuckledYorN == 0

			twistBottomBlade_1 = mTwist(6*(numBottomBlade_1-1)+1:6*numBottomBlade_1,:);
			twistVerticalActuatorHousing_1 = mTwist(6*(numVerticalActuatorHousing_1-1)+1:6*numVerticalActuatorHousing_1,:);
			twistTopBlade_1 = mTwist(6*(numTopBlade_1-1)+1:6*numTopBlade_1,:);
			twistHorizontalActuatorHousing_1 = mTwist(6*(numHorizontalActuatorHousing_1-1)+1:6*numHorizontalActuatorHousing_1,:);
			twistBottomBlade_2 = mTwist(6*(numBottomBlade_2-1)+1:6*numBottomBlade_2,:);
			twistVerticalActuatorHousing_2 = mTwist(6*(numVerticalActuatorHousing_2-1)+1:6*numVerticalActuatorHousing_2,:);
			twistTopBlade_2 = mTwist(6*(numTopBlade_2-1)+1:6*numTopBlade_2,:);
			twistHorizontalActuatorHousing_2 = mTwist(6*(numHorizontalActuatorHousing_2-1)+1:6*numHorizontalActuatorHousing_2,:);
			twistBottomBlade_3 = mTwist(6*(numBottomBlade_3-1)+1:6*numBottomBlade_3,:);
			twistVerticalActuatorHousing_3 = mTwist(6*(numVerticalActuatorHousing_3-1)+1:6*numVerticalActuatorHousing_3,:);
			twistTopBlade_3 = mTwist(6*(numTopBlade_3-1)+1:6*numTopBlade_3,:);
			twistHorizontalActuatorHousing_3 = mTwist(6*(numHorizontalActuatorHousing_3-1)+1:6*numHorizontalActuatorHousing_3,:);
			twistNozzleHolder = mTwist(6*(numNozzleHolder-1)+1:6*numNozzleHolder,:);

			lengthPointArray = length(pointNozzleHolderBottom(1,:));
			newPointNozzleHolderBottom = cross(repmat(twistNozzleHolder(1:3),1,lengthPointArray),pointNozzleHolderBottom)+repmat(twistNozzleHolder(4:6),1,lengthPointArray)+pointNozzleHolderBottom;
			newPointNozzleHolderTop = cross(repmat(twistNozzleHolder(1:3),1,lengthPointArray),pointNozzleHolderTop)+repmat(twistNozzleHolder(4:6),1,lengthPointArray)+pointNozzleHolderTop;

			lengthPointArray = length(pointNozzleHolderWithFlexureBottom(1,:));
			newPointNozzleHolderWithFlexureBottom = cross(repmat(twistNozzleHolder(1:3),1,lengthPointArray),pointNozzleHolderWithFlexureBottom)+repmat(twistNozzleHolder(4:6),1,lengthPointArray)+pointNozzleHolderWithFlexureBottom;
			newPointNozzleHolderWithFlexureTop = cross(repmat(twistNozzleHolder(1:3),1,lengthPointArray),pointNozzleHolderWithFlexureTop)+repmat(twistNozzleHolder(4:6),1,lengthPointArray)+pointNozzleHolderWithFlexureTop;

			lengthPointArray = length(pointBottomBladeBottom_1(1,:));
			newPointBottomBladeBottom_1 = cross(repmat(twistBottomBlade_1(1:3),1,lengthPointArray),pointBottomBladeBottom_1)+repmat(twistBottomBlade_1(4:6),1,lengthPointArray)+pointBottomBladeBottom_1;
			newPointBottomBladeTop_1 = cross(repmat(twistBottomBlade_1(1:3),1,lengthPointArray),pointBottomBladeTop_1)+repmat(twistBottomBlade_1(4:6),1,lengthPointArray)+pointBottomBladeTop_1;

			lengthPointArray = length(pointBladeVAHBottom_1(1,:));
			newPointBladeVAHBottom_1 = cross(repmat(twistVerticalActuatorHousing_1(1:3),1,lengthPointArray),pointBladeVAHBottom_1)+repmat(twistVerticalActuatorHousing_1(4:6),1,lengthPointArray)+pointBladeVAHBottom_1;
			newPointBladeVAHTop_1 = cross(repmat(twistVerticalActuatorHousing_1(1:3),1,lengthPointArray),pointBladeVAHTop_1)+repmat(twistVerticalActuatorHousing_1(4:6),1,lengthPointArray)+pointBladeVAHTop_1;

			lengthPointArray = length(pointHorizontalActuatorHousingBottom_1(1,:));
			newPointHorizontalActuatorHousingBottom_1 = cross(repmat(twistHorizontalActuatorHousing_1(1:3),1,lengthPointArray),pointHorizontalActuatorHousingBottom_1)+repmat(twistHorizontalActuatorHousing_1(4:6),1,lengthPointArray)+pointHorizontalActuatorHousingBottom_1;
			newPointHorizontalActuatorHousingTop_1 = cross(repmat(twistHorizontalActuatorHousing_1(1:3),1,lengthPointArray),pointHorizontalActuatorHousingTop_1)+repmat(twistHorizontalActuatorHousing_1(4:6),1,lengthPointArray)+pointHorizontalActuatorHousingTop_1;
			
			lengthPointArray = length(pointTopBladeBottom_1(1,:));
			newPointTopBladeBottom_1 = cross(repmat(twistTopBlade_1(1:3),1,lengthPointArray),pointTopBladeBottom_1)+repmat(twistTopBlade_1(4:6),1,lengthPointArray)+pointTopBladeBottom_1;
			newPointTopBladeTop_1 = cross(repmat(twistTopBlade_1(1:3),1,lengthPointArray),pointTopBladeTop_1)+repmat(twistTopBlade_1(4:6),1,lengthPointArray)+pointTopBladeTop_1;

			lengthPointArray = length(pointBladeHAHBottom_1(1,:));
			newPointBladeHAHBottom_1 = cross(repmat(twistHorizontalActuatorHousing_1(1:3),1,lengthPointArray),pointBladeHAHBottom_1)+repmat(twistHorizontalActuatorHousing_1(4:6),1,lengthPointArray)+pointBladeHAHBottom_1;
			newPointBladeHAHTop_1 = cross(repmat(twistHorizontalActuatorHousing_1(1:3),1,lengthPointArray),pointBladeHAHTop_1)+repmat(twistHorizontalActuatorHousing_1(4:6),1,lengthPointArray)+pointBladeHAHTop_1;

			lengthPointArray = length(pointBladeNHBottom_1(1,:));
			newPointBladeNHBottom_1 = cross(repmat(twistNozzleHolder(1:3),1,lengthPointArray),pointBladeNHBottom_1)+repmat(twistNozzleHolder(4:6),1,lengthPointArray)+pointBladeNHBottom_1;
			newPointBladeNHTop_1 = cross(repmat(twistNozzleHolder(1:3),1,lengthPointArray),pointBladeNHTop_1)+repmat(twistNozzleHolder(4:6),1,lengthPointArray)+pointBladeNHTop_1;

			lengthPointArray = length(pointBottomBladeBottom_2(1,:));
			newPointBottomBladeBottom_2 = cross(repmat(twistBottomBlade_2(1:3),1,lengthPointArray),pointBottomBladeBottom_2)+repmat(twistBottomBlade_2(4:6),1,lengthPointArray)+pointBottomBladeBottom_2;
			newPointBottomBladeTop_2 = cross(repmat(twistBottomBlade_2(1:3),1,lengthPointArray),pointBottomBladeTop_2)+repmat(twistBottomBlade_2(4:6),1,lengthPointArray)+pointBottomBladeTop_2;

			lengthPointArray = length(pointBladeVAHBottom_2(1,:));
			newPointBladeVAHBottom_2 = cross(repmat(twistVerticalActuatorHousing_2(1:3),1,lengthPointArray),pointBladeVAHBottom_2)+repmat(twistVerticalActuatorHousing_2(4:6),1,lengthPointArray)+pointBladeVAHBottom_2;
			newPointBladeVAHTop_2 = cross(repmat(twistVerticalActuatorHousing_2(1:3),1,lengthPointArray),pointBladeVAHTop_2)+repmat(twistVerticalActuatorHousing_2(4:6),1,lengthPointArray)+pointBladeVAHTop_2;

			lengthPointArray = length(pointHorizontalActuatorHousingBottom_2(1,:));
			newPointHorizontalActuatorHousingBottom_2 = cross(repmat(twistHorizontalActuatorHousing_2(1:3),1,lengthPointArray),pointHorizontalActuatorHousingBottom_2)+repmat(twistHorizontalActuatorHousing_2(4:6),1,lengthPointArray)+pointHorizontalActuatorHousingBottom_2;
			newPointHorizontalActuatorHousingTop_2 = cross(repmat(twistHorizontalActuatorHousing_2(1:3),1,lengthPointArray),pointHorizontalActuatorHousingTop_2)+repmat(twistHorizontalActuatorHousing_2(4:6),1,lengthPointArray)+pointHorizontalActuatorHousingTop_2;
			
			lengthPointArray = length(pointTopBladeBottom_2(1,:));
			newPointTopBladeBottom_2 = cross(repmat(twistTopBlade_2(1:3),1,lengthPointArray),pointTopBladeBottom_2)+repmat(twistTopBlade_2(4:6),1,lengthPointArray)+pointTopBladeBottom_2;
			newPointTopBladeTop_2 = cross(repmat(twistTopBlade_2(1:3),1,lengthPointArray),pointTopBladeTop_2)+repmat(twistTopBlade_2(4:6),1,lengthPointArray)+pointTopBladeTop_2;

			lengthPointArray = length(pointBladeHAHBottom_2(1,:));
			newPointBladeHAHBottom_2 = cross(repmat(twistHorizontalActuatorHousing_2(1:3),1,lengthPointArray),pointBladeHAHBottom_2)+repmat(twistHorizontalActuatorHousing_2(4:6),1,lengthPointArray)+pointBladeHAHBottom_2;
			newPointBladeHAHTop_2 = cross(repmat(twistHorizontalActuatorHousing_2(1:3),1,lengthPointArray),pointBladeHAHTop_2)+repmat(twistHorizontalActuatorHousing_2(4:6),1,lengthPointArray)+pointBladeHAHTop_2;

			lengthPointArray = length(pointBladeNHBottom_2(1,:));
			newPointBladeNHBottom_2 = cross(repmat(twistNozzleHolder(1:3),1,lengthPointArray),pointBladeNHBottom_2)+repmat(twistNozzleHolder(4:6),1,lengthPointArray)+pointBladeNHBottom_2;
			newPointBladeNHTop_2 = cross(repmat(twistNozzleHolder(1:3),1,lengthPointArray),pointBladeNHTop_2)+repmat(twistNozzleHolder(4:6),1,lengthPointArray)+pointBladeNHTop_2;

			lengthPointArray = length(pointBottomBladeBottom_3(1,:));
			newPointBottomBladeBottom_3 = cross(repmat(twistBottomBlade_3(1:3),1,lengthPointArray),pointBottomBladeBottom_3)+repmat(twistBottomBlade_3(4:6),1,lengthPointArray)+pointBottomBladeBottom_3;
			newPointBottomBladeTop_3 = cross(repmat(twistBottomBlade_3(1:3),1,lengthPointArray),pointBottomBladeTop_3)+repmat(twistBottomBlade_3(4:6),1,lengthPointArray)+pointBottomBladeTop_3;

			lengthPointArray = length(pointBladeVAHBottom_3(1,:));
			newPointBladeVAHBottom_3 = cross(repmat(twistVerticalActuatorHousing_3(1:3),1,lengthPointArray),pointBladeVAHBottom_3)+repmat(twistVerticalActuatorHousing_3(4:6),1,lengthPointArray)+pointBladeVAHBottom_3;
			newPointBladeVAHTop_3 = cross(repmat(twistVerticalActuatorHousing_3(1:3),1,lengthPointArray),pointBladeVAHTop_3)+repmat(twistVerticalActuatorHousing_3(4:6),1,lengthPointArray)+pointBladeVAHTop_3;

			lengthPointArray = length(pointHorizontalActuatorHousingBottom_3(1,:));
			newPointHorizontalActuatorHousingBottom_3 = cross(repmat(twistHorizontalActuatorHousing_3(1:3),1,lengthPointArray),pointHorizontalActuatorHousingBottom_3)+repmat(twistHorizontalActuatorHousing_3(4:6),1,lengthPointArray)+pointHorizontalActuatorHousingBottom_3;
			newPointHorizontalActuatorHousingTop_3 = cross(repmat(twistHorizontalActuatorHousing_3(1:3),1,lengthPointArray),pointHorizontalActuatorHousingTop_3)+repmat(twistHorizontalActuatorHousing_3(4:6),1,lengthPointArray)+pointHorizontalActuatorHousingTop_3;
			
			lengthPointArray = length(pointTopBladeBottom_3(1,:));
			newPointTopBladeBottom_3 = cross(repmat(twistTopBlade_3(1:3),1,lengthPointArray),pointTopBladeBottom_3)+repmat(twistTopBlade_3(4:6),1,lengthPointArray)+pointTopBladeBottom_3;
			newPointTopBladeTop_3 = cross(repmat(twistTopBlade_3(1:3),1,lengthPointArray),pointTopBladeTop_3)+repmat(twistTopBlade_3(4:6),1,lengthPointArray)+pointTopBladeTop_3;

			lengthPointArray = length(pointBladeHAHBottom_3(1,:));
			newPointBladeHAHBottom_3 = cross(repmat(twistHorizontalActuatorHousing_3(1:3),1,lengthPointArray),pointBladeHAHBottom_3)+repmat(twistHorizontalActuatorHousing_3(4:6),1,lengthPointArray)+pointBladeHAHBottom_3;
			newPointBladeHAHTop_3 = cross(repmat(twistHorizontalActuatorHousing_3(1:3),1,lengthPointArray),pointBladeHAHTop_3)+repmat(twistHorizontalActuatorHousing_3(4:6),1,lengthPointArray)+pointBladeHAHTop_3;

			lengthPointArray = length(pointBladeNHBottom_3(1,:));
			newPointBladeNHBottom_3 = cross(repmat(twistNozzleHolder(1:3),1,lengthPointArray),pointBladeNHBottom_3)+repmat(twistNozzleHolder(4:6),1,lengthPointArray)+pointBladeNHBottom_3;
			newPointBladeNHTop_3 = cross(repmat(twistNozzleHolder(1:3),1,lengthPointArray),pointBladeNHTop_3)+repmat(twistNozzleHolder(4:6),1,lengthPointArray)+pointBladeNHTop_3;

			newPointBottomBladeFirstBottom_1 = [newPointNozzleHolderWithFlexureBottom(:,2),newPointBottomBladeBottom_1(:,2),newPointBottomBladeBottom_1(:,5),newPointNozzleHolderWithFlexureBottom(:,5)];
			newPointBottomBladeFirstTop_1 = [newPointNozzleHolderWithFlexureTop(:,2),newPointBottomBladeTop_1(:,2),newPointBottomBladeTop_1(:,5),newPointNozzleHolderWithFlexureTop(:,5)];
			newPointBottomBladeSecondBottom_1 = [newPointBladeVAHBottom_1(:,1:2),newPointBottomBladeBottom_1(:,5),newPointBottomBladeBottom_1(:,2),newPointBladeVAHBottom_1(:,5:end)];
			newPointBottomBladeSecondTop_1 = [newPointBladeVAHTop_1(:,1:2),newPointBottomBladeTop_1(:,5),newPointBottomBladeTop_1(:,2),newPointBladeVAHTop_1(:,5:end)];

			newPointTopBladeFirstBottom_1 = [newPointBladeHAHBottom_1(:,1:3),newPointTopBladeBottom_1(:,2),newPointTopBladeBottom_1(:,5),newPointBladeHAHBottom_1(:,end)];
			newPointTopBladeFirstTop_1 = [newPointBladeHAHTop_1(:,1:3),newPointTopBladeTop_1(:,2),newPointTopBladeTop_1(:,5),newPointBladeHAHTop_1(:,end)];
			newPointTopBladeSecondBottom_1 = [newPointTopBladeBottom_1(:,2),newPointBladeNHBottom_1(:,2:3),newPointTopBladeBottom_1(:,5)];
			newPointTopBladeSecondTop_1 = [newPointTopBladeTop_1(:,2),newPointBladeNHTop_1(:,2:3),newPointTopBladeTop_1(:,5)];

			newPointBottomBladeFirstBottom_2 = [newPointNozzleHolderWithFlexureBottom(:,2+length(pointNozzleHolderWithFlexureBottom)/3),newPointBottomBladeBottom_2(:,2),newPointBottomBladeBottom_2(:,5),newPointNozzleHolderWithFlexureBottom(:,5+length(pointNozzleHolderWithFlexureBottom)/3)];
			newPointBottomBladeFirstTop_2 = [newPointNozzleHolderWithFlexureTop(:,2+length(pointNozzleHolderWithFlexureBottom)/3),newPointBottomBladeTop_2(:,2),newPointBottomBladeTop_2(:,5),newPointNozzleHolderWithFlexureTop(:,5+length(pointNozzleHolderWithFlexureBottom)/3)];
			newPointBottomBladeSecondBottom_2 = [newPointBladeVAHBottom_2(:,1:2),newPointBottomBladeBottom_2(:,5),newPointBottomBladeBottom_2(:,2),newPointBladeVAHBottom_2(:,5:end)];
			newPointBottomBladeSecondTop_2 = [newPointBladeVAHTop_2(:,1:2),newPointBottomBladeTop_2(:,5),newPointBottomBladeTop_2(:,2),newPointBladeVAHTop_2(:,5:end)];

			newPointTopBladeFirstBottom_2 = [newPointBladeHAHBottom_2(:,1:3),newPointTopBladeBottom_2(:,2),newPointTopBladeBottom_2(:,5),newPointBladeHAHBottom_2(:,end)];
			newPointTopBladeFirstTop_2 = [newPointBladeHAHTop_2(:,1:3),newPointTopBladeTop_2(:,2),newPointTopBladeTop_2(:,5),newPointBladeHAHTop_2(:,end)];
			newPointTopBladeSecondBottom_2 = [newPointTopBladeBottom_2(:,2),newPointBladeNHBottom_2(:,2:3),newPointTopBladeBottom_2(:,5)];
			newPointTopBladeSecondTop_2 = [newPointTopBladeTop_2(:,2),newPointBladeNHTop_2(:,2:3),newPointTopBladeTop_2(:,5)];

			newPointBottomBladeFirstBottom_3 = [newPointNozzleHolderWithFlexureBottom(:,2+length(pointNozzleHolderWithFlexureBottom)/3+length(pointNozzleHolderWithFlexureBottom)/3),newPointBottomBladeBottom_3(:,2),newPointBottomBladeBottom_3(:,5),newPointNozzleHolderWithFlexureBottom(:,5+length(pointNozzleHolderWithFlexureBottom)/3+length(pointNozzleHolderWithFlexureBottom)/3)];
			newPointBottomBladeFirstTop_3 = [newPointNozzleHolderWithFlexureTop(:,2+length(pointNozzleHolderWithFlexureBottom)/3+length(pointNozzleHolderWithFlexureBottom)/3),newPointBottomBladeTop_3(:,2),newPointBottomBladeTop_3(:,5),newPointNozzleHolderWithFlexureTop(:,5+length(pointNozzleHolderWithFlexureBottom)/3+length(pointNozzleHolderWithFlexureBottom)/3)];
			newPointBottomBladeSecondBottom_3 = [newPointBladeVAHBottom_3(:,1:2),newPointBottomBladeBottom_3(:,5),newPointBottomBladeBottom_3(:,2),newPointBladeVAHBottom_3(:,5:end)];
			newPointBottomBladeSecondTop_3 = [newPointBladeVAHTop_3(:,1:2),newPointBottomBladeTop_3(:,5),newPointBottomBladeTop_3(:,2),newPointBladeVAHTop_3(:,5:end)];

			newPointTopBladeFirstBottom_3 = [newPointBladeHAHBottom_3(:,1:3),newPointTopBladeBottom_3(:,2),newPointTopBladeBottom_3(:,5),newPointBladeHAHBottom_3(:,end)];
			newPointTopBladeFirstTop_3 = [newPointBladeHAHTop_3(:,1:3),newPointTopBladeTop_3(:,2),newPointTopBladeTop_3(:,5),newPointBladeHAHTop_3(:,end)];
			newPointTopBladeSecondBottom_3 = [newPointTopBladeBottom_3(:,2),newPointBladeNHBottom_3(:,2:3),newPointTopBladeBottom_3(:,5)];
			newPointTopBladeSecondTop_3 = [newPointTopBladeTop_3(:,2),newPointBladeNHTop_3(:,2:3),newPointTopBladeTop_3(:,5)];

			lengthPointArray = length(pointHorizontalVoiceCoilCapBottom_1(1,:));
			newPointHorizontalVoiceCoilCapBottom_1 = cross(repmat(twistHorizontalActuatorHousing_1(1:3),1,lengthPointArray),pointHorizontalVoiceCoilCapBottom_1)+repmat(twistHorizontalActuatorHousing_1(4:6),1,lengthPointArray)+pointHorizontalVoiceCoilCapBottom_1;
			newPointHorizontalVoiceCoilCapTop_1 = cross(repmat(twistHorizontalActuatorHousing_1(1:3),1,lengthPointArray),pointHorizontalVoiceCoilCapTop_1)+repmat(twistHorizontalActuatorHousing_1(4:6),1,lengthPointArray)+pointHorizontalVoiceCoilCapTop_1;

			lengthPointArray = length(pointHorizontalVoiceCoilCapBottom_2(1,:));
			newPointHorizontalVoiceCoilCapBottom_2 = cross(repmat(twistHorizontalActuatorHousing_2(1:3),1,lengthPointArray),pointHorizontalVoiceCoilCapBottom_2)+repmat(twistHorizontalActuatorHousing_2(4:6),1,lengthPointArray)+pointHorizontalVoiceCoilCapBottom_2;
			newPointHorizontalVoiceCoilCapTop_2 = cross(repmat(twistHorizontalActuatorHousing_2(1:3),1,lengthPointArray),pointHorizontalVoiceCoilCapTop_2)+repmat(twistHorizontalActuatorHousing_2(4:6),1,lengthPointArray)+pointHorizontalVoiceCoilCapTop_2;

			lengthPointArray = length(pointHorizontalVoiceCoilCapBottom_3(1,:));
			newPointHorizontalVoiceCoilCapBottom_3 = cross(repmat(twistHorizontalActuatorHousing_3(1:3),1,lengthPointArray),pointHorizontalVoiceCoilCapBottom_3)+repmat(twistHorizontalActuatorHousing_3(4:6),1,lengthPointArray)+pointHorizontalVoiceCoilCapBottom_3;
			newPointHorizontalVoiceCoilCapTop_3 = cross(repmat(twistHorizontalActuatorHousing_3(1:3),1,lengthPointArray),pointHorizontalVoiceCoilCapTop_3)+repmat(twistHorizontalActuatorHousing_3(4:6),1,lengthPointArray)+pointHorizontalVoiceCoilCapTop_3;

			run SPIDRs_Positioner_Collision_Test.m
			
			maxVoiceCoilDisplacement = max([norm(twistVerticalActuatorHousing_1(4:6));norm(twistVerticalActuatorHousing_2(4:6));norm(twistVerticalActuatorHousing_3(4:6));...
										norm(twistHorizontalActuatorHousing_1(4:6));norm(twistHorizontalActuatorHousing_2(4:6));norm(twistHorizontalActuatorHousing_3(4:6))]);

		end

		if YieldedYorN > 0 || BuckledYorN > 0 || isCollided > 0 || (maxVoiceCoilDisplacement>parameterCoilStroke/2)
			lastMaxForce = thisForce;
		else
			lastMinForce = thisForce;
		end

	end


	if tempCounter == 1
		rangeArray(tempCounter) = twistNozzleHolder(4);
	elseif tempCounter == 2
		rangeArray(tempCounter) = twistNozzleHolder(5);
	elseif tempCounter == 3
		rangeArray(tempCounter) = twistNozzleHolder(6);
	elseif tempCounter == 4
		rangeArray(tempCounter) = twistNozzleHolder(1);
	elseif tempCounter == 5
		rangeArray(tempCounter) = twistNozzleHolder(2);
	elseif tempCounter == 6
		rangeArray(tempCounter) = twistNozzleHolder(3);
	elseif tempCounter == 7
		rangeArray(tempCounter) = twistNozzleHolder(4);
	elseif tempCounter == 8
		rangeArray(tempCounter) = twistNozzleHolder(5);
	elseif tempCounter == 9
		rangeArray(tempCounter) = twistNozzleHolder(6);
	elseif tempCounter == 10
		rangeArray(tempCounter) = twistNozzleHolder(1);
	elseif tempCounter == 11
		rangeArray(tempCounter) = twistNozzleHolder(2);
	elseif tempCounter == 12
		rangeArray(tempCounter) = twistNozzleHolder(3);
	end
end

totalRangeArray = rangeArray(1:6)-rangeArray(7:12);
pointOutlineBottom = [pointBladeHAHBottom_1,pointBladeHAHBottom_2,pointBladeHAHBottom_3,pointHorizontalActuatorHousingBottom_1,pointHorizontalActuatorHousingBottom_2,pointHorizontalActuatorHousingBottom_3,pointVerticalGroundedActuatorHousingBottom_1,pointVerticalGroundedActuatorHousingBottom_2,pointVerticalGroundedActuatorHousingBottom_3];
pointOutlineTop = [pointBladeHAHTop_1,pointBladeHAHTop_2,pointBladeHAHTop_3,pointHorizontalActuatorHousingTop_1,pointHorizontalActuatorHousingTop_2,pointHorizontalActuatorHousingTop_3,pointVerticalGroundedActuatorHousingTop_1,pointVerticalGroundedActuatorHousingTop_2,pointVerticalGroundedActuatorHousingTop_3];
pointOutline = [pointOutlineBottom,pointOutlineTop];
xDimensionMinimum = min(pointOutline(1,:));
xDimensionMaximum = max(pointOutline(1,:));
yDimensionMinimum = min(pointOutline(2,:));
yDimensionMaximum = max(pointOutline(2,:));
zDimensionMinimum = 0;
zDimensionMaximum = max([pointTopBladeTop_1(3,5),pointTopBladeTop_2(3,5),pointTopBladeTop_3(3,5)]);
xDimension = xDimensionMaximum-xDimensionMinimum;
yDimension = yDimensionMaximum-yDimensionMinimum;
zDimension = zDimensionMaximum-zDimensionMinimum;
normalizedRange = sum(totalRangeArray.*totalRangeArray.*parameterWeight)/(xDimension^2+yDimension^2+zDimension^2);