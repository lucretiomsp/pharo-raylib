Class {
	#name : 'RayBoneInfo',
	#superclass : 'RayStructure',
	#classVars : [
		'OFFSET_NAME',
		'OFFSET_PARENT'
	],
	#category : 'LibRaylib-Base',
	#package : 'LibRaylib',
	#tag : 'Base'
}

{ #category : 'field definition' }
RayBoneInfo class >> fieldsDesc [

	^ #(
	char_32 name;
	int parent
	)
]

{ #category : 'accessing - structure variables' }
RayBoneInfo >> name [
	"This method was automatically generated"
	^(FFIArray ofType: #FFICharacterType size: 32) fromHandle: (handle copyFrom: OFFSET_NAME to: OFFSET_NAME + 31)
]

{ #category : 'accessing - structure variables' }
RayBoneInfo >> name: anObject [
	"This method was automatically generated"
	handle replaceFrom: OFFSET_NAME to: OFFSET_NAME + 31 with: anObject getHandle startingAt: 1
]

{ #category : 'accessing - structure variables' }
RayBoneInfo >> parent [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_PARENT
]

{ #category : 'accessing - structure variables' }
RayBoneInfo >> parent: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_PARENT put: anObject
]
