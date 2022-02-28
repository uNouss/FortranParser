Class {
	#name : #IRModelNodeVisitor,
	#superclass : #XMLNodeVisitor,
	#instVars : [
		'current'
	],
	#category : #'FortranParser-Visitor'
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
		data: (Dictionary newFrom: {#name->anObject}).
	current ifNotNil: [ current addChild: entity].
	self flag: #fixme. "'Hydratation' de la class IR avec les elements de l'entité"
"	entity toFamix."
	^entity
]

{ #category : #'instance creation' }
IRModelNodeVisitor >> stack: anIREntity [
	^self class new
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
	^aNode nodesDo: [ :node | node acceptNodeVisitor: visitor ]
]

{ #category : #visiting }
IRModelNodeVisitor >> visitDocument: aNode [
	aNode nodes first acceptNodeVisitor: self.
	^current
]

{ #category : #visiting }
IRModelNodeVisitor >> visitFunctionNode: aNode [
	self visitNodeWithHeaderAndBody: aNode on: IREntityFUNCTION
]

{ #category : #visiting }
IRModelNodeVisitor >> visitModelNode: aNode [ 
	current := IREntityModel new.
	self visitNodeWithElements: aNode.
]

{ #category : #visiting }
IRModelNodeVisitor >> visitModuleNode: aNode [ 
	self visitNodeWithHeaderAndBody: aNode on:  IREntityMODULE
]

{ #category : #visiting }
IRModelNodeVisitor >> visitNameRefNode: aNode [
	^self visitNodeWithElements: aNode
]

{ #category : #'private-visiting' }
IRModelNodeVisitor >> visitNodeWithHeaderAndBody: aNode on: irClass [
	| visitor entity |

	entity := self newEntity: irClass data: (aNode attributeAt: #name).
	visitor := self stack: entity.
	(aNode elementAt: #header) acceptNodeVisitor: visitor.
	(aNode elementAt: #body) acceptNodeVisitor: visitor.
]

{ #category : #visiting }
IRModelNodeVisitor >> visitProgramNode: aNode [
	self visitNodeWithHeaderAndBody: aNode on: IREntityPROGRAM
]

{ #category : #visiting }
IRModelNodeVisitor >> visitSubprogramCallNode: aNode [
	^self visitNodeWithElements: aNode
]

{ #category : #visiting }
IRModelNodeVisitor >> visitSubprogramNode: aNode [

	self visitNodeWithHeaderAndBody: aNode on: IREntitySUBPROGRAM

]

{ #category : #visiting }
IRModelNodeVisitor >> visitUseModuleNode: aNode [
	self newEntity: IREntityUSEMODULE data: (aNode attributeAt: #name)
]

{ #category : #visiting }
IRModelNodeVisitor >> visitVarRefNode: aNode [
	^self visitNodeWithElements: aNode
]

{ #category : #visiting }
IRModelNodeVisitor >> visitVariableNode: aNode [
	| entity visitor |
	
	"	^self visitNodeWithElements: aNode"
	
	self flag: #fixme. "obtenir les variables d'un module"
	entity := self newEntity: IREntityVARIABLE data: (aNode attributeAt: #name).
	visitor := self stack: entity.
	^ aNode nodesDo: [ :node | node acceptNodeVisitor: visitor ]
]
