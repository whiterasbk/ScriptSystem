.class public Lorg/mozilla/javascript/ast/ReturnStatement;
.super Lorg/mozilla/javascript/ast/AstNode;


# instance fields
.field private returnValue:Lorg/mozilla/javascript/ast/AstNode;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/mozilla/javascript/ast/AstNode;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Lorg/mozilla/javascript/ast/ReturnStatement;->type:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/ast/AstNode;-><init>(I)V

    const/4 v0, 0x4

    iput v0, p0, Lorg/mozilla/javascript/ast/ReturnStatement;->type:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/ast/AstNode;-><init>(II)V

    const/4 v0, 0x4

    iput v0, p0, Lorg/mozilla/javascript/ast/ReturnStatement;->type:I

    return-void
.end method

.method public constructor <init>(IILorg/mozilla/javascript/ast/AstNode;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/ast/AstNode;-><init>(II)V

    const/4 v0, 0x4

    iput v0, p0, Lorg/mozilla/javascript/ast/ReturnStatement;->type:I

    invoke-virtual {p0, p3}, Lorg/mozilla/javascript/ast/ReturnStatement;->setReturnValue(Lorg/mozilla/javascript/ast/AstNode;)V

    return-void
.end method


# virtual methods
.method public getReturnValue()Lorg/mozilla/javascript/ast/AstNode;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/ast/ReturnStatement;->returnValue:Lorg/mozilla/javascript/ast/AstNode;

    return-object v0
.end method

.method public setReturnValue(Lorg/mozilla/javascript/ast/AstNode;)V
    .locals 0

    iput-object p1, p0, Lorg/mozilla/javascript/ast/ReturnStatement;->returnValue:Lorg/mozilla/javascript/ast/AstNode;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/ast/AstNode;->setParent(Lorg/mozilla/javascript/ast/AstNode;)V

    :cond_0
    return-void
.end method

.method public toSource(I)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/ReturnStatement;->makeIndent(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "return"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/mozilla/javascript/ast/ReturnStatement;->returnValue:Lorg/mozilla/javascript/ast/AstNode;

    if-eqz v1, :cond_0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/mozilla/javascript/ast/ReturnStatement;->returnValue:Lorg/mozilla/javascript/ast/AstNode;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/ast/AstNode;->toSource(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, ";\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V
    .locals 1

    invoke-interface {p1, p0}, Lorg/mozilla/javascript/ast/NodeVisitor;->visit(Lorg/mozilla/javascript/ast/AstNode;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/javascript/ast/ReturnStatement;->returnValue:Lorg/mozilla/javascript/ast/AstNode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/javascript/ast/ReturnStatement;->returnValue:Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ast/AstNode;->visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V

    :cond_0
    return-void
.end method
