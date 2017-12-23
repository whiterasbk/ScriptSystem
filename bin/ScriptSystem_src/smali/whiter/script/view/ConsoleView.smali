.class public Lwhiter/script/view/ConsoleView;
.super Landroid/widget/EditText;
.source "ConsoleView.java"

# interfaces
.implements Lorg/whiter/javascript/runner/ScriptRunner$OnScriptThreadListener;


# instance fields
.field protected context:Landroid/content/Context;

.field protected maxLogColmus:I

.field protected maxLogLines:I

.field protected runner:Lorg/whiter/javascript/runner/ScriptRunner;

.field protected textBuffer:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 24
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    move-object v0, v1

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lwhiter/script/view/ConsoleView;->context:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lwhiter/script/view/ConsoleView;->textBuffer:Ljava/util/List;

    const/16 v0, 0xc8

    iput v0, p0, Lwhiter/script/view/ConsoleView;->maxLogLines:I

    const/16 v0, 0x64

    iput v0, p0, Lwhiter/script/view/ConsoleView;->maxLogColmus:I

    check-cast v1, Lorg/whiter/javascript/runner/ScriptRunner;

    iput-object v1, p0, Lwhiter/script/view/ConsoleView;->runner:Lorg/whiter/javascript/runner/ScriptRunner;

    .line 25
    iput-object p1, p0, Lwhiter/script/view/ConsoleView;->context:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v0, v1

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lwhiter/script/view/ConsoleView;->context:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lwhiter/script/view/ConsoleView;->textBuffer:Ljava/util/List;

    const/16 v0, 0xc8

    iput v0, p0, Lwhiter/script/view/ConsoleView;->maxLogLines:I

    const/16 v0, 0x64

    iput v0, p0, Lwhiter/script/view/ConsoleView;->maxLogColmus:I

    check-cast v1, Lorg/whiter/javascript/runner/ScriptRunner;

    iput-object v1, p0, Lwhiter/script/view/ConsoleView;->runner:Lorg/whiter/javascript/runner/ScriptRunner;

    .line 32
    iput-object p1, p0, Lwhiter/script/view/ConsoleView;->context:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    move-object v0, v1

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lwhiter/script/view/ConsoleView;->context:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lwhiter/script/view/ConsoleView;->textBuffer:Ljava/util/List;

    const/16 v0, 0xc8

    iput v0, p0, Lwhiter/script/view/ConsoleView;->maxLogLines:I

    const/16 v0, 0x64

    iput v0, p0, Lwhiter/script/view/ConsoleView;->maxLogColmus:I

    check-cast v1, Lorg/whiter/javascript/runner/ScriptRunner;

    iput-object v1, p0, Lwhiter/script/view/ConsoleView;->runner:Lorg/whiter/javascript/runner/ScriptRunner;

    .line 38
    iput-object p1, p0, Lwhiter/script/view/ConsoleView;->context:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    move-object v0, v1

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lwhiter/script/view/ConsoleView;->context:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lwhiter/script/view/ConsoleView;->textBuffer:Ljava/util/List;

    const/16 v0, 0xc8

    iput v0, p0, Lwhiter/script/view/ConsoleView;->maxLogLines:I

    const/16 v0, 0x64

    iput v0, p0, Lwhiter/script/view/ConsoleView;->maxLogColmus:I

    check-cast v1, Lorg/whiter/javascript/runner/ScriptRunner;

    iput-object v1, p0, Lwhiter/script/view/ConsoleView;->runner:Lorg/whiter/javascript/runner/ScriptRunner;

    .line 44
    iput-object p1, p0, Lwhiter/script/view/ConsoleView;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public addLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 59
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "<"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "> : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lwhiter/script/view/ConsoleView;->addText(Ljava/lang/String;)V

    return-void
.end method

.method public addText(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lwhiter/script/view/ConsoleView;->addTextToBuffer(Ljava/lang/String;)V

    .line 65
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 66
    iget-object v0, p0, Lwhiter/script/view/ConsoleView;->textBuffer:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 67
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    invoke-virtual {p0}, Lwhiter/script/view/ConsoleView;->getText()Landroid/text/Editable;

    .line 73
    invoke-virtual {p0}, Lwhiter/script/view/ConsoleView;->getText()Landroid/text/Editable;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    return-void

    .line 69
    :cond_0
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method protected addTextToBuffer(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 80
    iget-object v0, p0, Lwhiter/script/view/ConsoleView;->textBuffer:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    iget-object v0, p0, Lwhiter/script/view/ConsoleView;->textBuffer:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lwhiter/script/view/ConsoleView;->maxLogLines:I

    if-le v0, v1, :cond_0

    .line 83
    iget-object v0, p0, Lwhiter/script/view/ConsoleView;->textBuffer:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 85
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lwhiter/script/view/ConsoleView;->maxLogColmus:I

    if-le v0, v1, :cond_1

    .line 87
    iget v0, p0, Lwhiter/script/view/ConsoleView;->maxLogColmus:I

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lwhiter/script/view/ConsoleView;->addText(Ljava/lang/String;)V

    .line 89
    :cond_1
    iget-object v0, p0, Lwhiter/script/view/ConsoleView;->textBuffer:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getMaxLogColmus()I
    .locals 1

    .prologue
    .line 138
    iget v0, p0, Lwhiter/script/view/ConsoleView;->maxLogColmus:I

    return v0
.end method

.method public getMaxLogLines()I
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lwhiter/script/view/ConsoleView;->maxLogLines:I

    return v0
.end method

.method public getScriptRunner()Lorg/whiter/javascript/runner/ScriptRunner;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lwhiter/script/view/ConsoleView;->runner:Lorg/whiter/javascript/runner/ScriptRunner;

    return-object v0
.end method

.method public onException(Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 118
    invoke-static {p1}, Lwhiter/script/debug/Log;->e(Ljava/lang/Object;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 95
    const/16 v0, 0x42

    if-ne p1, v0, :cond_0

    .line 99
    :try_start_0
    iget-object v0, p0, Lwhiter/script/view/ConsoleView;->runner:Lorg/whiter/javascript/runner/ScriptRunner;

    const-string v1, "onConsoleLine"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/whiter/javascript/runner/ScriptRunner;->callScriptMethod(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 99
    :catch_0
    move-exception v0

    .line 103
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "KeyException:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lwhiter/script/debug/Log;->e(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onRun(Lorg/mozilla/javascript/Context;Lorg/whiter/javascript/interfaces/Runner$ScriptState;Lorg/whiter/javascript/runner/ScriptRunner;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/javascript/Context;",
            "Lorg/whiter/javascript/interfaces/Runner$ScriptState;",
            "Lorg/whiter/javascript/runner/ScriptRunner;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 112
    iput-object p3, p0, Lwhiter/script/view/ConsoleView;->runner:Lorg/whiter/javascript/runner/ScriptRunner;

    return-void
.end method

.method public setMaxLogColmus(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 133
    iput p1, p0, Lwhiter/script/view/ConsoleView;->maxLogColmus:I

    return-void
.end method

.method public setMaxLogLines(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 123
    iput p1, p0, Lwhiter/script/view/ConsoleView;->maxLogLines:I

    return-void
.end method

.method public setScriptRunner(Lorg/whiter/javascript/runner/ScriptRunner;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/whiter/javascript/runner/ScriptRunner;",
            ")V"
        }
    .end annotation

    .prologue
    .line 49
    iput-object p1, p0, Lwhiter/script/view/ConsoleView;->runner:Lorg/whiter/javascript/runner/ScriptRunner;

    return-void
.end method
