%hook PLGenericAlbum 
-(BOOL) canMoveToTrash {
	return NO;
}
%end

%hook PLManagedAsset
-(BOOL) canMoveToTrash {
	return NO;
}
%end
