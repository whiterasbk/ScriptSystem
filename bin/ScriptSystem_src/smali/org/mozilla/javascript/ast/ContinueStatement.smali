.class public Lorg/mozilla/javascript/ast/ContinueStatement;
.super Lorg/mozilla/javascript/ast/Jump;


# instance fields
.field private label:Lorg/mozilla/javascript/ast/Name;

.field private target:Lorg/mozilla/javascript/ast/Loop;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/mozilla/javascript/ast/Jump;-><init>()V

    const/16 v0, 0x79

    iput v0, p0, Lorg/mozilla/javascript/ast/ContinueStatement;->type:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lorg/mozilla/javascript/ast/ContinueStatement;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Lorg/mozilla/javascript/ast/Jump;-><init>()V

    const/16 v0, 0x79

    iput v0, p0, Lorg/mozilla/javascript/ast/ContinueStatement;->type:I

    iput p1, p0, Lorg/mozilla/javascript/ast/ContinueStatement;->position:I

    iput p2, p0, Lorg/mozilla/javascript/ast/ContinueStatement;->length:I

    return-void
.end method

.method public constructor <init>(IILorg/mozilla/javascript/ast/Name;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/ast/ContinueStatement;-><init>(II)V

    invoke-virtual {p0, p3}, Lorg/mozilla/javascript/ast/ContinueStatement;->setLabel(Lorg/mozilla/javascript/ast/Name;)V

    return-void
.end method

.method public constructor <init>(ILorg/mozilla/javascript/ast/Name;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/ast/ContinueStatement;-><init>(I)V

    invoke-virtual {p0, p2}, Lorg/mozilla/javascript/ast/ContinueStatement;->setLabel(Lorg/mozilla/javascript/ast/Name;)V

    return-void
.end method

.method public constructor <init>(Lorg/mozilla/javascript/ast/Name;)V
    .locals 1

    invoke-direct {p0}, Lorg/mozilla/javascript/ast/Jump;-><init>()V

    const/16 v0, 0x79

    iput v0, p0, Lorg/mozilla/javascript/ast/ContinueStatement;->type:I

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/ContinueStatement;->setLabel(Lorg/mozilla/javascript/ast/Name;)V

    return-void
.end method


# virtual methods
.method public getLabel()Lorg/mozilla/javascript/ast/Name;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/ast/ContinueStatement;->label:Lorg/mozilla/javascript/ast/Name;

    return-object v0
.end method

.method public getTarget()Lorg/mozilla/javascript/ast/Loop;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/ast/ContinueStatement;->target:Lorg/mozilla/javascript/ast/Loop;

    return-object v0
.end method

.method public setLabel(Lorg/mozilla/javascript/ast/Name;)V
    .locals 0

    iput-object p1, p0, Lorg/mozilla/javascript/ast/ContinueStatement;->label:Lorg/mozilla/javascript/ast/Name;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/ast/Name;->setParent(Lorg/mozilla/javascript/ast/AstNode;)V

    :cond_0
    return-void
.end method

.method public setTarget(Lorg/mozilla/javascript/ast/Loop;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/ContinueStatement;->assertNotNull(Ljava/lang/Object;)V

    iput-object p1, p0, Lorg/mozilla/javascript/ast/ContinueStatement;->target:Lorg/mozilla/javascript/ast/Loop;

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/ContinueStatement;->setJumpStatement(Lorg/mozilla/javascript/ast/Jump;)V

    return-void
.end method

.method public toSource(I)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/ContinueStatement;->makeIndent(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "continue"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/mozilla/javascript/ast/ContinueStatement;->label:Lorg/mozilla/javascript/ast/Name;

    if-eqz v1, :cond_0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/mozilla/javascript/ast/ContinueStatement;->label:Lorg/mozilla/javascript/ast/Name;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/ast/Name;->toSource(I)Ljava/lang/String;

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

    iget-object v0, p0, Lorg/mozilla/javascript/ast/ContinueStatement;->label:Lorg/mozilla/javascript/ast/Name;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/javascript/ast/ContinueStatement;->label:Lorg/mozilla/javascript/ast/Name;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ast/Name;->visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V

    :cond_0
    return-void
.end method
