Class {
	#name : #IRModelNodeVisitor,
	#superclass : #XMLNodeVisitor,
	#instVars : [
		'current'
	],
	#category : #'FortranParser-Import'
}

{ #category : #accessing }
IRModelNodeVisitor >> current [

	^ current
]

{ #category : #accessing }
IRModelNodeVisitor >> current: anObject [

	current := anObject
]

{ #category : #'instance creation' }
IRModelNodeVisitor >> newEntity: irClass data: anObject [
	| entity |
	entity := irClass new
		parentIR: current ;
		data: anObject.
	current ifNotNil: [ current addChild: entity].
	^entity
]

{ #category : #'instance creation' }
IRModelNodeVisitor >> stack: anIREntity [
	^IRModelNodeVisitor new
		current: anIREntity
]

{ #category : #visiting }
IRModelNodeVisitor >> visitCommentNode: aNode [ 
	aNode removeNode: aNode nodes first.
	aNode removeNode: aNode nodes last.
	^self visitNodeWithElements: aNode
]

{ #category : #visiting }
IRModelNodeVisitor >> visitCompilationUnitNode: aNode [
	| visitor entity |
	
	entity := self newEntity: IREntityCOMPILATION_UNIT data: (aNode attributeAt: #path).
	visitor := self stack: entity.
	^aNode nodes second acceptNodeVisitor: visitor
]

{ #category : #visiting }
IRModelNodeVisitor >> visitDocument: aNode [
	aNode nodes first acceptNodeVisitor: self.
	^current
]

{ #category : #visiting }
IRModelNodeVisitor >> visitModelNode: aNode [ 
	current := IREntityModel new.
	self visitNodeWithElements: aNode.
]

{ #category : #visiting }
IRModelNodeVisitor >> visitModuleNode: aNode [ 
	| visitor entity |
	entity := self newEntity: IREntityMODULE data: (aNode attributeAt: #name).
	visitor := self stack: entity.
	(aNode elementAt: #body) acceptNodeVisitor: visitor.
	(aNode elementAt: #members) acceptNodeVisitor: visitor.

]

{ #category : #visiting }
IRModelNodeVisitor >> visitNameRefNode: aNode [
	^self visitNodeWithElements: aNode
]

{ #category : #visiting }
IRModelNodeVisitor >> visitSubprogramCallNode: aNode [
	^self visitNodeWithElements: aNode
]

{ #category : #visiting }
IRModelNodeVisitor >> visitSubprogramNode: aNode [
	| visitor entity |
	entity := self newEntity: IREntitySUBPROGRAM data: (aNode attributeAt: #name).
	visitor := self stack: entity.
	(aNode elementAt: #header) acceptNodeVisitor: visitor.
	(aNode elementAt: #body) acceptNodeVisitor: visitor.

]

{ #category : #visiting }
IRModelNodeVisitor >> visitUseModuleNode: aNode [
	self newEntity: IREntityUSEMODULE data: (aNode attributeAt: #path)
]

{ #category : #visiting }
IRModelNodeVisitor >> visitVarRefNode: aNode [
	^self visitNodeWithElements: aNode
]

{ #category : #visiting }
IRModelNodeVisitor >> visitVariableNode: aNode [
	^self visitNodeWithElements: aNode
]
