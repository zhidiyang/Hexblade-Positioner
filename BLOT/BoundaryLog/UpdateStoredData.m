global Ncal AllGeovec 
global InnerDisprawVec InnerForcerawVec InnerDispBKLrawVec InnerForceBKLrawVec OuterDisprawVec OuterForcerawVec OuterDispBKLrawVec OuterForceBKLrawVec VinIDrawVec VinIFrawVec VoutODrawVec VoutOFrawVec
for i=1:Ncal-1
    if isempty(GeoDataBase)
        Index=[];
    else
        Index=find(sum(abs(diag(AllGeovec(:,i))*ones(size(GeoDataBase))-GeoDataBase))<0.0005,'1');
    end
    if isempty(Index)
        GeoDataBase=[GeoDataBase AllGeovec(:,i)];
        
        IDDataBase=[IDDataBase InnerDisprawVec(:,i)];
        IFDataBase=[IFDataBase InnerForcerawVec(:,i)];
        IDBKLDataBase=[IDBKLDataBase InnerDispBKLrawVec(i)];
        IFBKLDataBase=[IFBKLDataBase InnerForceBKLrawVec(i)];
        
        ODDataBase=[ODDataBase OuterDisprawVec(:,i)];
        OFDataBase=[OFDataBase OuterForcerawVec(:,i)];
        ODBKLDataBase=[ODBKLDataBase OuterDispBKLrawVec(i)];
        OFBKLDataBase=[OFBKLDataBase OuterForceBKLrawVec(i)];
        
        VIDDataBase=[VIDDataBase VinIDrawVec(i)];
        VIFDataBase=[VIFDataBase VinIFrawVec(i)];
        VODDataBase=[VODDataBase VoutODrawVec(i)];
        VOFDataBase=[VOFDataBase VoutOFrawVec(i)];
    end
end


%%
save('FEADataBase.mat','GeoDataBase','IDDataBase','IFDataBase','IDBKLDataBase','IFBKLDataBase','ODDataBase','OFDataBase','ODBKLDataBase','OFBKLDataBase','VIDDataBase','VIFDataBase','VODDataBase','VOFDataBase')



