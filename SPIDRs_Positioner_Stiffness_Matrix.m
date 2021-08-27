
count = 0;
stagesNum = 13;
wireNum = 0;
bladeNum = 24;

numGround = 0;
numBottomBlade_1 = 1;
numVerticalActuatorHousing_1 = 2;
numTopBlade_1 = 3;
numHorizontalActuatorHousing_1 = 4;
numBottomBlade_2 = 5;
numVerticalActuatorHousing_2 = 6;
numTopBlade_2 = 7;
numHorizontalActuatorHousing_2 = 8;
numBottomBlade_3 = 9;
numVerticalActuatorHousing_3 = 10;
numTopBlade_3 = 11;
numHorizontalActuatorHousing_3 = 12;
numNozzleHolder = 13;

pointFromInnerBottom = pointBottomBladeFirstBottom_1(:,3);
pointFromInnerTop = pointBottomBladeFirstTop_1(:,3);
pointFromOuterBottom = pointBottomBladeFirstBottom_1(:,2);
pointFromOuterTop = pointBottomBladeFirstTop_1(:,2);
pointToInnerBottom = pointBottomBladeFirstBottom_1(:,4);
pointToInnerTop = pointBottomBladeFirstTop_1(:,4);
pointToOuterBottom = pointBottomBladeFirstBottom_1(:,1);
pointToOuterTop = pointBottomBladeFirstTop_1(:,1);

pointFromBottom = pointFromInnerBottom/2+pointFromOuterBottom/2;
pointFromTop = pointFromInnerTop/2+pointFromOuterTop/2;
pointFrom = pointFromBottom/2+pointFromTop/2;
pointToBottom = pointToInnerBottom/2+pointToOuterBottom/2;
pointToTop = pointToInnerTop/2+pointToOuterTop/2;
pointTo = pointToBottom/2+pointToTop/2;
vectorL = pointTo-pointFrom;

r = pointTo;
l = norm(vectorL);
n3 = vectorL/l;
n1 = (pointToTop-pointToBottom)/norm(pointToTop-pointToBottom);
n2 = cross(n3,n1);

Connect = numNozzleHolder;
OtherEnd = numBottomBlade_1;
count = count+1;
mConstraint(count,:)=[r',n3',n2',l-t,W,t,YoungsModulus,ShearModulus,0,YieldStrength,Connect,OtherEnd];

pointFromInnerBottom = pointBottomBladeSecondBottom_1(:,3);
pointFromInnerTop = pointBottomBladeSecondTop_1(:,3);
pointFromOuterBottom = pointBottomBladeSecondBottom_1(:,4);
pointFromOuterTop = pointBottomBladeSecondTop_1(:,4);
pointToInnerBottom = pointBottomBladeSecondBottom_1(:,2);
pointToInnerTop = pointBottomBladeSecondTop_1(:,2);
pointToOuterBottom = pointBottomBladeSecondBottom_1(:,5);
pointToOuterTop = pointBottomBladeSecondTop_1(:,5);

pointFromBottom = pointFromInnerBottom/2+pointFromOuterBottom/2;
pointFromTop = pointFromInnerTop/2+pointFromOuterTop/2;
pointFrom = pointFromBottom/2+pointFromTop/2;
pointToBottom = pointToInnerBottom/2+pointToOuterBottom/2;
pointToTop = pointToInnerTop/2+pointToOuterTop/2;
pointTo = pointToBottom/2+pointToTop/2;
vectorL = pointTo-pointFrom;

r = pointTo;
l = norm(vectorL);
n3 = vectorL/l;
n1 = (pointToTop-pointToBottom)/norm(pointToTop-pointToBottom);
n2 = cross(n3,n1);

Connect = numVerticalActuatorHousing_1;
OtherEnd = numBottomBlade_1;
count = count+1;
mConstraint(count,:)=[r',n3',n2',l-t,W,t,YoungsModulus,ShearModulus,0,YieldStrength,Connect,OtherEnd];


pointFromInnerBottom = pointTopBladeFirstBottom_1(:,4);
pointFromInnerTop = pointTopBladeFirstTop_1(:,4);
pointFromOuterBottom = pointTopBladeFirstBottom_1(:,5);
pointFromOuterTop = pointTopBladeFirstTop_1(:,5);
pointToInnerBottom = pointTopBladeFirstBottom_1(:,3);
pointToInnerTop = pointTopBladeFirstTop_1(:,3);
pointToOuterBottom = pointTopBladeFirstBottom_1(:,6);
pointToOuterTop = pointTopBladeFirstTop_1(:,6);

pointFromBottom = pointFromInnerBottom/2+pointFromOuterBottom/2;
pointFromTop = pointFromInnerTop/2+pointFromOuterTop/2;
pointFrom = pointFromBottom/2+pointFromTop/2;
pointToBottom = pointToInnerBottom/2+pointToOuterBottom/2;
pointToTop = pointToInnerTop/2+pointToOuterTop/2;
pointTo = pointToBottom/2+pointToTop/2;
vectorL = pointTo-pointFrom;

r = pointTo;
l = norm(vectorL);
n3 = vectorL/l;
n1 = (pointToTop-pointToBottom)/norm(pointToTop-pointToBottom);
n2 = cross(n3,n1);

Connect = numHorizontalActuatorHousing_1;
OtherEnd = numTopBlade_1;
count = count+1;
mConstraint(count,:)=[r',n3',n2',l-t,W,t,YoungsModulus,ShearModulus,0,YieldStrength,Connect,OtherEnd];


pointFromInnerBottom = pointTopBladeSecondBottom_1(:,1);
pointFromInnerTop = pointTopBladeSecondTop_1(:,1);
pointFromOuterBottom = pointTopBladeSecondBottom_1(:,4);
pointFromOuterTop = pointTopBladeSecondTop_1(:,4);
pointToInnerBottom = pointTopBladeSecondBottom_1(:,2);
pointToInnerTop = pointTopBladeSecondTop_1(:,2);
pointToOuterBottom = pointTopBladeSecondBottom_1(:,3);
pointToOuterTop = pointTopBladeSecondTop_1(:,3);

pointFromBottom = pointFromInnerBottom/2+pointFromOuterBottom/2;
pointFromTop = pointFromInnerTop/2+pointFromOuterTop/2;
pointFrom = pointFromBottom/2+pointFromTop/2;
pointToBottom = pointToInnerBottom/2+pointToOuterBottom/2;
pointToTop = pointToInnerTop/2+pointToOuterTop/2;
pointTo = pointToBottom/2+pointToTop/2;
vectorL = pointTo-pointFrom;

r = pointTo;
l = norm(vectorL);
n3 = vectorL/l;
n1 = (pointToTop-pointToBottom)/norm(pointToTop-pointToBottom);
n2 = cross(n3,n1);

Connect = numNozzleHolder;
OtherEnd = numTopBlade_1;
count = count+1;
mConstraint(count,:)=[r',n3',n2',l-t,W,t,YoungsModulus,ShearModulus,0,YieldStrength,Connect,OtherEnd];


pointFromInnerBottom = pointVerticalActuatorBladeFirstBottom_1(:,1);
pointFromInnerTop = pointVerticalActuatorBladeFirstTop_1(:,1);
pointFromOuterBottom = pointVerticalActuatorBladeFirstBottom_1(:,4);
pointFromOuterTop = pointVerticalActuatorBladeFirstTop_1(:,4);
pointToInnerBottom = pointVerticalActuatorBladeFirstBottom_1(:,2);
pointToInnerTop = pointVerticalActuatorBladeFirstTop_1(:,2);
pointToOuterBottom = pointVerticalActuatorBladeFirstBottom_1(:,3);
pointToOuterTop = pointVerticalActuatorBladeFirstTop_1(:,3);

pointFromBottom = pointFromInnerBottom/2+pointFromOuterBottom/2;
pointFromTop = pointFromInnerTop/2+pointFromOuterTop/2;
pointFrom = pointFromBottom/2+pointFromTop/2;
pointToBottom = pointToInnerBottom/2+pointToOuterBottom/2;
pointToTop = pointToInnerTop/2+pointToOuterTop/2;
pointTo = pointToBottom/2+pointToTop/2;
vectorL = pointTo-pointFrom;

r = pointTo;
l = norm(vectorL);
n3 = vectorL/l;
n1 = (pointToTop-pointToBottom)/norm(pointToTop-pointToBottom);
n2 = cross(n3,n1);


Connect = numGround;
OtherEnd = numVerticalActuatorHousing_1;
count = count+1;
mConstraint(count,:)=[r',n3',n2',l,C,F,YoungsModulus,ShearModulus,0,YieldStrength,Connect,OtherEnd];


pointFromInnerBottom = pointVerticalActuatorBladeSecondBottom_1(:,2);
pointFromInnerTop = pointVerticalActuatorBladeSecondTop_1(:,2);
pointFromOuterBottom = pointVerticalActuatorBladeSecondBottom_1(:,3);
pointFromOuterTop = pointVerticalActuatorBladeSecondTop_1(:,3);
pointToInnerBottom = pointVerticalActuatorBladeSecondBottom_1(:,1);
pointToInnerTop = pointVerticalActuatorBladeSecondTop_1(:,1);
pointToOuterBottom = pointVerticalActuatorBladeSecondBottom_1(:,4);
pointToOuterTop = pointVerticalActuatorBladeSecondTop_1(:,4);

pointFromBottom = pointFromInnerBottom/2+pointFromOuterBottom/2;
pointFromTop = pointFromInnerTop/2+pointFromOuterTop/2;
pointFrom = pointFromBottom/2+pointFromTop/2;
pointToBottom = pointToInnerBottom/2+pointToOuterBottom/2;
pointToTop = pointToInnerTop/2+pointToOuterTop/2;
pointTo = pointToBottom/2+pointToTop/2;
vectorL = pointTo-pointFrom;

r = pointTo;
l = norm(vectorL);
n3 = vectorL/l;
n1 = (pointToTop-pointToBottom)/norm(pointToTop-pointToBottom);
n2 = cross(n3,n1);


Connect = numGround;
OtherEnd = numVerticalActuatorHousing_1;
count = count+1;
mConstraint(count,:)=[r',n3',n2',l,C,F,YoungsModulus,ShearModulus,0,YieldStrength,Connect,OtherEnd];


pointFromInnerBottom = pointHorizontalActuatorBladeFirstBottom_1(:,1);
pointFromInnerTop = pointHorizontalActuatorBladeFirstTop_1(:,1);
pointFromOuterBottom = pointHorizontalActuatorBladeFirstBottom_1(:,4);
pointFromOuterTop = pointHorizontalActuatorBladeFirstTop_1(:,4);
pointToInnerBottom = pointHorizontalActuatorBladeFirstBottom_1(:,2);
pointToInnerTop = pointHorizontalActuatorBladeFirstTop_1(:,2);
pointToOuterBottom = pointHorizontalActuatorBladeFirstBottom_1(:,3);
pointToOuterTop = pointHorizontalActuatorBladeFirstTop_1(:,3);

pointFromBottom = pointFromInnerBottom/2+pointFromOuterBottom/2;
pointFromTop = pointFromInnerTop/2+pointFromOuterTop/2;
pointFrom = pointFromBottom/2+pointFromTop/2;
pointToBottom = pointToInnerBottom/2+pointToOuterBottom/2;
pointToTop = pointToInnerTop/2+pointToOuterTop/2;
pointTo = pointToBottom/2+pointToTop/2;
vectorL = pointTo-pointFrom;

r = pointTo;
l = norm(vectorL);
n3 = vectorL/l;
n1 = (pointToTop-pointToBottom)/norm(pointToTop-pointToBottom);
n2 = cross(n3,n1);


Connect = numGround;
OtherEnd = numHorizontalActuatorHousing_1;
count = count+1;
mConstraint(count,:)=[r',n3',n2',l,C,F,YoungsModulus,ShearModulus,0,YieldStrength,Connect,OtherEnd];


pointFromInnerBottom = pointHorizontalActuatorBladeSecondBottom_1(:,2);
pointFromInnerTop = pointHorizontalActuatorBladeSecondTop_1(:,2);
pointFromOuterBottom = pointHorizontalActuatorBladeSecondBottom_1(:,3);
pointFromOuterTop = pointHorizontalActuatorBladeSecondTop_1(:,3);
pointToInnerBottom = pointHorizontalActuatorBladeSecondBottom_1(:,1);
pointToInnerTop = pointHorizontalActuatorBladeSecondTop_1(:,1);
pointToOuterBottom = pointHorizontalActuatorBladeSecondBottom_1(:,4);
pointToOuterTop = pointHorizontalActuatorBladeSecondTop_1(:,4);

pointFromBottom = pointFromInnerBottom/2+pointFromOuterBottom/2;
pointFromTop = pointFromInnerTop/2+pointFromOuterTop/2;
pointFrom = pointFromBottom/2+pointFromTop/2;
pointToBottom = pointToInnerBottom/2+pointToOuterBottom/2;
pointToTop = pointToInnerTop/2+pointToOuterTop/2;
pointTo = pointToBottom/2+pointToTop/2;
vectorL = pointTo-pointFrom;

r = pointTo;
l = norm(vectorL);
n3 = vectorL/l;
n1 = (pointToTop-pointToBottom)/norm(pointToTop-pointToBottom);
n2 = cross(n3,n1);

Connect = numGround;
OtherEnd = numHorizontalActuatorHousing_1;
count = count+1;
mConstraint(count,:)=[r',n3',n2',l,C,F,YoungsModulus,ShearModulus,0,YieldStrength,Connect,OtherEnd];


pointFromInnerBottom = pointBottomBladeFirstBottom_2(:,3);
pointFromInnerTop = pointBottomBladeFirstTop_2(:,3);
pointFromOuterBottom = pointBottomBladeFirstBottom_2(:,2);
pointFromOuterTop = pointBottomBladeFirstTop_2(:,2);
pointToInnerBottom = pointBottomBladeFirstBottom_2(:,4);
pointToInnerTop = pointBottomBladeFirstTop_2(:,4);
pointToOuterBottom = pointBottomBladeFirstBottom_2(:,1);
pointToOuterTop = pointBottomBladeFirstTop_2(:,1);

pointFromBottom = pointFromInnerBottom/2+pointFromOuterBottom/2;
pointFromTop = pointFromInnerTop/2+pointFromOuterTop/2;
pointFrom = pointFromBottom/2+pointFromTop/2;
pointToBottom = pointToInnerBottom/2+pointToOuterBottom/2;
pointToTop = pointToInnerTop/2+pointToOuterTop/2;
pointTo = pointToBottom/2+pointToTop/2;
vectorL = pointTo-pointFrom;

r = pointTo;
l = norm(vectorL);
n3 = vectorL/l;
n1 = (pointToTop-pointToBottom)/norm(pointToTop-pointToBottom);
n2 = cross(n3,n1);


Connect = numNozzleHolder;
OtherEnd = numBottomBlade_2;
count = count+1;
mConstraint(count,:)=[r',n3',n2',l-t,W,t,YoungsModulus,ShearModulus,0,YieldStrength,Connect,OtherEnd];


pointFromInnerBottom = pointBottomBladeSecondBottom_2(:,3);
pointFromInnerTop = pointBottomBladeSecondTop_2(:,3);
pointFromOuterBottom = pointBottomBladeSecondBottom_2(:,4);
pointFromOuterTop = pointBottomBladeSecondTop_2(:,4);
pointToInnerBottom = pointBottomBladeSecondBottom_2(:,2);
pointToInnerTop = pointBottomBladeSecondTop_2(:,2);
pointToOuterBottom = pointBottomBladeSecondBottom_2(:,5);
pointToOuterTop = pointBottomBladeSecondTop_2(:,5);

pointFromBottom = pointFromInnerBottom/2+pointFromOuterBottom/2;
pointFromTop = pointFromInnerTop/2+pointFromOuterTop/2;
pointFrom = pointFromBottom/2+pointFromTop/2;
pointToBottom = pointToInnerBottom/2+pointToOuterBottom/2;
pointToTop = pointToInnerTop/2+pointToOuterTop/2;
pointTo = pointToBottom/2+pointToTop/2;
vectorL = pointTo-pointFrom;

r = pointTo;
l = norm(vectorL);
n3 = vectorL/l;
n1 = (pointToTop-pointToBottom)/norm(pointToTop-pointToBottom);
n2 = cross(n3,n1);

Connect = numVerticalActuatorHousing_2;
OtherEnd = numBottomBlade_2;
count = count+1;
mConstraint(count,:)=[r',n3',n2',l-t,W,t,YoungsModulus,ShearModulus,0,YieldStrength,Connect,OtherEnd];


pointFromInnerBottom = pointTopBladeFirstBottom_2(:,4);
pointFromInnerTop = pointTopBladeFirstTop_2(:,4);
pointFromOuterBottom = pointTopBladeFirstBottom_2(:,5);
pointFromOuterTop = pointTopBladeFirstTop_2(:,5);
pointToInnerBottom = pointTopBladeFirstBottom_2(:,3);
pointToInnerTop = pointTopBladeFirstTop_2(:,3);
pointToOuterBottom = pointTopBladeFirstBottom_2(:,6);
pointToOuterTop = pointTopBladeFirstTop_2(:,6);

pointFromBottom = pointFromInnerBottom/2+pointFromOuterBottom/2;
pointFromTop = pointFromInnerTop/2+pointFromOuterTop/2;
pointFrom = pointFromBottom/2+pointFromTop/2;
pointToBottom = pointToInnerBottom/2+pointToOuterBottom/2;
pointToTop = pointToInnerTop/2+pointToOuterTop/2;
pointTo = pointToBottom/2+pointToTop/2;
vectorL = pointTo-pointFrom;

r = pointTo;
l = norm(vectorL);
n3 = vectorL/l;
n1 = (pointToTop-pointToBottom)/norm(pointToTop-pointToBottom);
n2 = cross(n3,n1);

Connect = numHorizontalActuatorHousing_2;
OtherEnd = numTopBlade_2;
count = count+1;
mConstraint(count,:)=[r',n3',n2',l-t,W,t,YoungsModulus,ShearModulus,0,YieldStrength,Connect,OtherEnd];


pointFromInnerBottom = pointTopBladeSecondBottom_2(:,1);
pointFromInnerTop = pointTopBladeSecondTop_2(:,1);
pointFromOuterBottom = pointTopBladeSecondBottom_2(:,4);
pointFromOuterTop = pointTopBladeSecondTop_2(:,4);
pointToInnerBottom = pointTopBladeSecondBottom_2(:,2);
pointToInnerTop = pointTopBladeSecondTop_2(:,2);
pointToOuterBottom = pointTopBladeSecondBottom_2(:,3);
pointToOuterTop = pointTopBladeSecondTop_2(:,3);

pointFromBottom = pointFromInnerBottom/2+pointFromOuterBottom/2;
pointFromTop = pointFromInnerTop/2+pointFromOuterTop/2;
pointFrom = pointFromBottom/2+pointFromTop/2;
pointToBottom = pointToInnerBottom/2+pointToOuterBottom/2;
pointToTop = pointToInnerTop/2+pointToOuterTop/2;
pointTo = pointToBottom/2+pointToTop/2;
vectorL = pointTo-pointFrom;

r = pointTo;
l = norm(vectorL);
n3 = vectorL/l;
n1 = (pointToTop-pointToBottom)/norm(pointToTop-pointToBottom);
n2 = cross(n3,n1);

Connect = numNozzleHolder;
OtherEnd = numTopBlade_2;
count = count+1;
mConstraint(count,:)=[r',n3',n2',l-t,W,t,YoungsModulus,ShearModulus,0,YieldStrength,Connect,OtherEnd];


pointFromInnerBottom = pointVerticalActuatorBladeFirstBottom_2(:,1);
pointFromInnerTop = pointVerticalActuatorBladeFirstTop_2(:,1);
pointFromOuterBottom = pointVerticalActuatorBladeFirstBottom_2(:,4);
pointFromOuterTop = pointVerticalActuatorBladeFirstTop_2(:,4);
pointToInnerBottom = pointVerticalActuatorBladeFirstBottom_2(:,2);
pointToInnerTop = pointVerticalActuatorBladeFirstTop_2(:,2);
pointToOuterBottom = pointVerticalActuatorBladeFirstBottom_2(:,3);
pointToOuterTop = pointVerticalActuatorBladeFirstTop_2(:,3);

pointFromBottom = pointFromInnerBottom/2+pointFromOuterBottom/2;
pointFromTop = pointFromInnerTop/2+pointFromOuterTop/2;
pointFrom = pointFromBottom/2+pointFromTop/2;
pointToBottom = pointToInnerBottom/2+pointToOuterBottom/2;
pointToTop = pointToInnerTop/2+pointToOuterTop/2;
pointTo = pointToBottom/2+pointToTop/2;
vectorL = pointTo-pointFrom;

r = pointTo;
l = norm(vectorL);
n3 = vectorL/l;
n1 = (pointToTop-pointToBottom)/norm(pointToTop-pointToBottom);
n2 = cross(n3,n1);

Connect = numGround;
OtherEnd = numVerticalActuatorHousing_2;
count = count+1;
mConstraint(count,:)=[r',n3',n2',l,C,F,YoungsModulus,ShearModulus,0,YieldStrength,Connect,OtherEnd];


pointFromInnerBottom = pointVerticalActuatorBladeSecondBottom_2(:,2);
pointFromInnerTop = pointVerticalActuatorBladeSecondTop_2(:,2);
pointFromOuterBottom = pointVerticalActuatorBladeSecondBottom_2(:,3);
pointFromOuterTop = pointVerticalActuatorBladeSecondTop_2(:,3);
pointToInnerBottom = pointVerticalActuatorBladeSecondBottom_2(:,1);
pointToInnerTop = pointVerticalActuatorBladeSecondTop_2(:,1);
pointToOuterBottom = pointVerticalActuatorBladeSecondBottom_2(:,4);
pointToOuterTop = pointVerticalActuatorBladeSecondTop_2(:,4);

pointFromBottom = pointFromInnerBottom/2+pointFromOuterBottom/2;
pointFromTop = pointFromInnerTop/2+pointFromOuterTop/2;
pointFrom = pointFromBottom/2+pointFromTop/2;
pointToBottom = pointToInnerBottom/2+pointToOuterBottom/2;
pointToTop = pointToInnerTop/2+pointToOuterTop/2;
pointTo = pointToBottom/2+pointToTop/2;
vectorL = pointTo-pointFrom;

r = pointTo;
l = norm(vectorL);
n3 = vectorL/l;
n1 = (pointToTop-pointToBottom)/norm(pointToTop-pointToBottom);
n2 = cross(n3,n1);

Connect = numGround;
OtherEnd = numVerticalActuatorHousing_2;
count = count+1;
mConstraint(count,:)=[r',n3',n2',l,C,F,YoungsModulus,ShearModulus,0,YieldStrength,Connect,OtherEnd];


pointFromInnerBottom = pointHorizontalActuatorBladeFirstBottom_2(:,1);
pointFromInnerTop = pointHorizontalActuatorBladeFirstTop_2(:,1);
pointFromOuterBottom = pointHorizontalActuatorBladeFirstBottom_2(:,4);
pointFromOuterTop = pointHorizontalActuatorBladeFirstTop_2(:,4);
pointToInnerBottom = pointHorizontalActuatorBladeFirstBottom_2(:,2);
pointToInnerTop = pointHorizontalActuatorBladeFirstTop_2(:,2);
pointToOuterBottom = pointHorizontalActuatorBladeFirstBottom_2(:,3);
pointToOuterTop = pointHorizontalActuatorBladeFirstTop_2(:,3);

pointFromBottom = pointFromInnerBottom/2+pointFromOuterBottom/2;
pointFromTop = pointFromInnerTop/2+pointFromOuterTop/2;
pointFrom = pointFromBottom/2+pointFromTop/2;
pointToBottom = pointToInnerBottom/2+pointToOuterBottom/2;
pointToTop = pointToInnerTop/2+pointToOuterTop/2;
pointTo = pointToBottom/2+pointToTop/2;
vectorL = pointTo-pointFrom;

r = pointTo;
l = norm(vectorL);
n3 = vectorL/l;
n1 = (pointToTop-pointToBottom)/norm(pointToTop-pointToBottom);
n2 = cross(n3,n1);

Connect = numGround;
OtherEnd = numHorizontalActuatorHousing_2;
count = count+1;
mConstraint(count,:)=[r',n3',n2',l,C,F,YoungsModulus,ShearModulus,0,YieldStrength,Connect,OtherEnd];


pointFromInnerBottom = pointHorizontalActuatorBladeSecondBottom_2(:,2);
pointFromInnerTop = pointHorizontalActuatorBladeSecondTop_2(:,2);
pointFromOuterBottom = pointHorizontalActuatorBladeSecondBottom_2(:,3);
pointFromOuterTop = pointHorizontalActuatorBladeSecondTop_2(:,3);
pointToInnerBottom = pointHorizontalActuatorBladeSecondBottom_2(:,1);
pointToInnerTop = pointHorizontalActuatorBladeSecondTop_2(:,1);
pointToOuterBottom = pointHorizontalActuatorBladeSecondBottom_2(:,4);
pointToOuterTop = pointHorizontalActuatorBladeSecondTop_2(:,4);

pointFromBottom = pointFromInnerBottom/2+pointFromOuterBottom/2;
pointFromTop = pointFromInnerTop/2+pointFromOuterTop/2;
pointFrom = pointFromBottom/2+pointFromTop/2;
pointToBottom = pointToInnerBottom/2+pointToOuterBottom/2;
pointToTop = pointToInnerTop/2+pointToOuterTop/2;
pointTo = pointToBottom/2+pointToTop/2;
vectorL = pointTo-pointFrom;

r = pointTo;
l = norm(vectorL);
n3 = vectorL/l;
n1 = (pointToTop-pointToBottom)/norm(pointToTop-pointToBottom);
n2 = cross(n3,n1);

Connect = numGround;
OtherEnd = numHorizontalActuatorHousing_2;
count = count+1;
mConstraint(count,:)=[r',n3',n2',l,C,F,YoungsModulus,ShearModulus,0,YieldStrength,Connect,OtherEnd];


pointFromInnerBottom = pointBottomBladeFirstBottom_3(:,3);
pointFromInnerTop = pointBottomBladeFirstTop_3(:,3);
pointFromOuterBottom = pointBottomBladeFirstBottom_3(:,2);
pointFromOuterTop = pointBottomBladeFirstTop_3(:,2);
pointToInnerBottom = pointBottomBladeFirstBottom_3(:,4);
pointToInnerTop = pointBottomBladeFirstTop_3(:,4);
pointToOuterBottom = pointBottomBladeFirstBottom_3(:,1);
pointToOuterTop = pointBottomBladeFirstTop_3(:,1);

pointFromBottom = pointFromInnerBottom/2+pointFromOuterBottom/2;
pointFromTop = pointFromInnerTop/2+pointFromOuterTop/2;
pointFrom = pointFromBottom/2+pointFromTop/2;
pointToBottom = pointToInnerBottom/2+pointToOuterBottom/2;
pointToTop = pointToInnerTop/2+pointToOuterTop/2;
pointTo = pointToBottom/2+pointToTop/2;
vectorL = pointTo-pointFrom;

r = pointTo;
l = norm(vectorL);
n3 = vectorL/l;
n1 = (pointToTop-pointToBottom)/norm(pointToTop-pointToBottom);
n2 = cross(n3,n1);

Connect = numNozzleHolder;
OtherEnd = numBottomBlade_3;
count = count+1;
mConstraint(count,:)=[r',n3',n2',l-t,W,t,YoungsModulus,ShearModulus,0,YieldStrength,Connect,OtherEnd];


pointFromInnerBottom = pointBottomBladeSecondBottom_3(:,3);
pointFromInnerTop = pointBottomBladeSecondTop_3(:,3);
pointFromOuterBottom = pointBottomBladeSecondBottom_3(:,4);
pointFromOuterTop = pointBottomBladeSecondTop_3(:,4);
pointToInnerBottom = pointBottomBladeSecondBottom_3(:,2);
pointToInnerTop = pointBottomBladeSecondTop_3(:,2);
pointToOuterBottom = pointBottomBladeSecondBottom_3(:,5);
pointToOuterTop = pointBottomBladeSecondTop_3(:,5);

pointFromBottom = pointFromInnerBottom/2+pointFromOuterBottom/2;
pointFromTop = pointFromInnerTop/2+pointFromOuterTop/2;
pointFrom = pointFromBottom/2+pointFromTop/2;
pointToBottom = pointToInnerBottom/2+pointToOuterBottom/2;
pointToTop = pointToInnerTop/2+pointToOuterTop/2;
pointTo = pointToBottom/2+pointToTop/2;
vectorL = pointTo-pointFrom;

r = pointTo;
l = norm(vectorL);
n3 = vectorL/l;
n1 = (pointToTop-pointToBottom)/norm(pointToTop-pointToBottom);
n2 = cross(n3,n1);

Connect = numVerticalActuatorHousing_3;
OtherEnd = numBottomBlade_3;
count = count+1;
mConstraint(count,:)=[r',n3',n2',l-t,W,t,YoungsModulus,ShearModulus,0,YieldStrength,Connect,OtherEnd];


pointFromInnerBottom = pointTopBladeFirstBottom_3(:,4);
pointFromInnerTop = pointTopBladeFirstTop_3(:,4);
pointFromOuterBottom = pointTopBladeFirstBottom_3(:,5);
pointFromOuterTop = pointTopBladeFirstTop_3(:,5);
pointToInnerBottom = pointTopBladeFirstBottom_3(:,3);
pointToInnerTop = pointTopBladeFirstTop_3(:,3);
pointToOuterBottom = pointTopBladeFirstBottom_3(:,6);
pointToOuterTop = pointTopBladeFirstTop_3(:,6);

pointFromBottom = pointFromInnerBottom/2+pointFromOuterBottom/2;
pointFromTop = pointFromInnerTop/2+pointFromOuterTop/2;
pointFrom = pointFromBottom/2+pointFromTop/2;
pointToBottom = pointToInnerBottom/2+pointToOuterBottom/2;
pointToTop = pointToInnerTop/2+pointToOuterTop/2;
pointTo = pointToBottom/2+pointToTop/2;
vectorL = pointTo-pointFrom;

r = pointTo;
l = norm(vectorL);
n3 = vectorL/l;
n1 = (pointToTop-pointToBottom)/norm(pointToTop-pointToBottom);
n2 = cross(n3,n1);

Connect = numHorizontalActuatorHousing_3;
OtherEnd = numTopBlade_3;
count = count+1;
mConstraint(count,:)=[r',n3',n2',l-t,W,t,YoungsModulus,ShearModulus,0,YieldStrength,Connect,OtherEnd];


pointFromInnerBottom = pointTopBladeSecondBottom_3(:,1);
pointFromInnerTop = pointTopBladeSecondTop_3(:,1);
pointFromOuterBottom = pointTopBladeSecondBottom_3(:,4);
pointFromOuterTop = pointTopBladeSecondTop_3(:,4);
pointToInnerBottom = pointTopBladeSecondBottom_3(:,2);
pointToInnerTop = pointTopBladeSecondTop_3(:,2);
pointToOuterBottom = pointTopBladeSecondBottom_3(:,3);
pointToOuterTop = pointTopBladeSecondTop_3(:,3);

pointFromBottom = pointFromInnerBottom/2+pointFromOuterBottom/2;
pointFromTop = pointFromInnerTop/2+pointFromOuterTop/2;
pointFrom = pointFromBottom/2+pointFromTop/2;
pointToBottom = pointToInnerBottom/2+pointToOuterBottom/2;
pointToTop = pointToInnerTop/2+pointToOuterTop/2;
pointTo = pointToBottom/2+pointToTop/2;
vectorL = pointTo-pointFrom;

r = pointTo;
l = norm(vectorL);
n3 = vectorL/l;
n1 = (pointToTop-pointToBottom)/norm(pointToTop-pointToBottom);
n2 = cross(n3,n1);

Connect = numNozzleHolder;
OtherEnd = numTopBlade_3;
count = count+1;
mConstraint(count,:)=[r',n3',n2',l-t,W,t,YoungsModulus,ShearModulus,0,YieldStrength,Connect,OtherEnd];


pointFromInnerBottom = pointVerticalActuatorBladeFirstBottom_3(:,1);
pointFromInnerTop = pointVerticalActuatorBladeFirstTop_3(:,1);
pointFromOuterBottom = pointVerticalActuatorBladeFirstBottom_3(:,4);
pointFromOuterTop = pointVerticalActuatorBladeFirstTop_3(:,4);
pointToInnerBottom = pointVerticalActuatorBladeFirstBottom_3(:,2);
pointToInnerTop = pointVerticalActuatorBladeFirstTop_3(:,2);
pointToOuterBottom = pointVerticalActuatorBladeFirstBottom_3(:,3);
pointToOuterTop = pointVerticalActuatorBladeFirstTop_3(:,3);

pointFromBottom = pointFromInnerBottom/2+pointFromOuterBottom/2;
pointFromTop = pointFromInnerTop/2+pointFromOuterTop/2;
pointFrom = pointFromBottom/2+pointFromTop/2;
pointToBottom = pointToInnerBottom/2+pointToOuterBottom/2;
pointToTop = pointToInnerTop/2+pointToOuterTop/2;
pointTo = pointToBottom/2+pointToTop/2;
vectorL = pointTo-pointFrom;

r = pointTo;
l = norm(vectorL);
n3 = vectorL/l;
n1 = (pointToTop-pointToBottom)/norm(pointToTop-pointToBottom);
n2 = cross(n3,n1);

Connect = numGround;
OtherEnd = numVerticalActuatorHousing_3;
count = count+1;
mConstraint(count,:)=[r',n3',n2',l,C,F,YoungsModulus,ShearModulus,0,YieldStrength,Connect,OtherEnd];


pointFromInnerBottom = pointVerticalActuatorBladeSecondBottom_3(:,2);
pointFromInnerTop = pointVerticalActuatorBladeSecondTop_3(:,2);
pointFromOuterBottom = pointVerticalActuatorBladeSecondBottom_3(:,3);
pointFromOuterTop = pointVerticalActuatorBladeSecondTop_3(:,3);
pointToInnerBottom = pointVerticalActuatorBladeSecondBottom_3(:,1);
pointToInnerTop = pointVerticalActuatorBladeSecondTop_3(:,1);
pointToOuterBottom = pointVerticalActuatorBladeSecondBottom_3(:,4);
pointToOuterTop = pointVerticalActuatorBladeSecondTop_3(:,4);

pointFromBottom = pointFromInnerBottom/2+pointFromOuterBottom/2;
pointFromTop = pointFromInnerTop/2+pointFromOuterTop/2;
pointFrom = pointFromBottom/2+pointFromTop/2;
pointToBottom = pointToInnerBottom/2+pointToOuterBottom/2;
pointToTop = pointToInnerTop/2+pointToOuterTop/2;
pointTo = pointToBottom/2+pointToTop/2;
vectorL = pointTo-pointFrom;

r = pointTo;
l = norm(vectorL);
n3 = vectorL/l;
n1 = (pointToTop-pointToBottom)/norm(pointToTop-pointToBottom);
n2 = cross(n3,n1);

Connect = numGround;
OtherEnd = numVerticalActuatorHousing_3;
count = count+1;
mConstraint(count,:)=[r',n3',n2',l,C,F,YoungsModulus,ShearModulus,0,YieldStrength,Connect,OtherEnd];


pointFromInnerBottom = pointHorizontalActuatorBladeFirstBottom_3(:,1);
pointFromInnerTop = pointHorizontalActuatorBladeFirstTop_3(:,1);
pointFromOuterBottom = pointHorizontalActuatorBladeFirstBottom_3(:,4);
pointFromOuterTop = pointHorizontalActuatorBladeFirstTop_3(:,4);
pointToInnerBottom = pointHorizontalActuatorBladeFirstBottom_3(:,2);
pointToInnerTop = pointHorizontalActuatorBladeFirstTop_3(:,2);
pointToOuterBottom = pointHorizontalActuatorBladeFirstBottom_3(:,3);
pointToOuterTop = pointHorizontalActuatorBladeFirstTop_3(:,3);

pointFromBottom = pointFromInnerBottom/2+pointFromOuterBottom/2;
pointFromTop = pointFromInnerTop/2+pointFromOuterTop/2;
pointFrom = pointFromBottom/2+pointFromTop/2;
pointToBottom = pointToInnerBottom/2+pointToOuterBottom/2;
pointToTop = pointToInnerTop/2+pointToOuterTop/2;
pointTo = pointToBottom/2+pointToTop/2;
vectorL = pointTo-pointFrom;

r = pointTo;
l = norm(vectorL);
n3 = vectorL/l;
n1 = (pointToTop-pointToBottom)/norm(pointToTop-pointToBottom);
n2 = cross(n3,n1);

Connect = numGround;
OtherEnd = numHorizontalActuatorHousing_3;
count = count+1;
mConstraint(count,:)=[r',n3',n2',l,C,F,YoungsModulus,ShearModulus,0,YieldStrength,Connect,OtherEnd];


pointFromInnerBottom = pointHorizontalActuatorBladeSecondBottom_3(:,2);
pointFromInnerTop = pointHorizontalActuatorBladeSecondTop_3(:,2);
pointFromOuterBottom = pointHorizontalActuatorBladeSecondBottom_3(:,3);
pointFromOuterTop = pointHorizontalActuatorBladeSecondTop_3(:,3);
pointToInnerBottom = pointHorizontalActuatorBladeSecondBottom_3(:,1);
pointToInnerTop = pointHorizontalActuatorBladeSecondTop_3(:,1);
pointToOuterBottom = pointHorizontalActuatorBladeSecondBottom_3(:,4);
pointToOuterTop = pointHorizontalActuatorBladeSecondTop_3(:,4);

pointFromBottom = pointFromInnerBottom/2+pointFromOuterBottom/2;
pointFromTop = pointFromInnerTop/2+pointFromOuterTop/2;
pointFrom = pointFromBottom/2+pointFromTop/2;
pointToBottom = pointToInnerBottom/2+pointToOuterBottom/2;
pointToTop = pointToInnerTop/2+pointToOuterTop/2;
pointTo = pointToBottom/2+pointToTop/2;
vectorL = pointTo-pointFrom;

r = pointTo;
l = norm(vectorL);
n3 = vectorL/l;
n1 = (pointToTop-pointToBottom)/norm(pointToTop-pointToBottom);
n2 = cross(n3,n1);

Connect = numGround;
OtherEnd = numHorizontalActuatorHousing_3;
count = count+1;
mConstraint(count,:)=[r',n3',n2',l,C,F,YoungsModulus,ShearModulus,0,YieldStrength,Connect,OtherEnd];

mConstraint(count+1,:)=[stagesNum,wireNum,bladeNum,zeros(1,15)];

KK = TimoshenkoStiffnessMatrix(mConstraint);
KKInverse = KK^-1;