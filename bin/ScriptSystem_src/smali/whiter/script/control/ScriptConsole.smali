.class public Lwhiter/script/control/ScriptConsole;
.super Lorg/mozilla/javascript/ImporterTopLevel;
.source "ScriptConsole.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwhiter/script/control/ScriptConsole$100000000;,
        Lwhiter/script/control/ScriptConsole$100000001;
    }
.end annotation


# instance fields
.field private consoleView:Lwhiter/script/view/ConsoleView;

.field private ctx:Landroid/app/Activity;

.field private scriptName:Ljava/lang/String;

.field private scriptPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lorg/mozilla/javascript/ImporterTopLevel;-><init>()V

    .line 21
    iput-object p1, p0, Lwhiter/script/control/ScriptConsole;->ctx:Landroid/app/Activity;

    .line 22
    iput-object p2, p0, Lwhiter/script/control/ScriptConsole;->scriptPath:Ljava/lang/String;

    .line 23
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwhiter/script/control/ScriptConsole;->scriptName:Ljava/lang/String;

    .line 24
    const/high16 v0, 0x7f0b0000

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lwhiter/script/view/ConsoleView;

    iput-object v0, p0, Lwhiter/script/control/ScriptConsole;->consoleView:Lwhiter/script/view/ConsoleView;

    return-void
.end method

.method static synthetic access$L1000000(Lwhiter/script/control/ScriptConsole;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lwhiter/script/control/ScriptConsole;->ctx:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$L1000002(Lwhiter/script/control/ScriptConsole;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lwhiter/script/control/ScriptConsole;->scriptName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$L1000003(Lwhiter/script/control/ScriptConsole;)Lwhiter/script/view/ConsoleView;
    .locals 1

    iget-object v0, p0, Lwhiter/script/control/ScriptConsole;->consoleView:Lwhiter/script/view/ConsoleView;

    return-object v0
.end method

.method static synthetic access$S1000000(Lwhiter/script/control/ScriptConsole;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lwhiter/script/control/ScriptConsole;->ctx:Landroid/app/Activity;

    return-void
.end method

.method static synthetic access$S1000002(Lwhiter/script/control/ScriptConsole;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lwhiter/script/control/ScriptConsole;->scriptName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$S1000003(Lwhiter/script/control/ScriptConsole;Lwhiter/script/view/ConsoleView;)V
    .locals 0

    iput-object p1, p0, Lwhiter/script/control/ScriptConsole;->consoleView:Lwhiter/script/view/ConsoleView;

    return-void
.end method


# virtual methods
.method public clientMessage(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation runtime Lorg/mozilla/javascript/annotations/JSFunction;
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lwhiter/script/control/ScriptConsole;->ctx:Landroid/app/Activity;

    new-instance v1, Lwhiter/script/control/ScriptConsole$100000001;

    invoke-direct {v1, p0, p1}, Lwhiter/script/control/ScriptConsole$100000001;-><init>(Lwhiter/script/control/ScriptConsole;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getContext()Landroid/app/Activity;
    .locals 1
    .annotation runtime Lorg/mozilla/javascript/annotations/JSFunction;
    .end annotation

    .prologue
    .line 30
    iget-object v0, p0, Lwhiter/script/control/ScriptConsole;->ctx:Landroid/app/Activity;

    return-object v0
.end method

.method public print(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation runtime Lorg/mozilla/javascript/annotations/JSFunction;
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Lwhiter/script/control/ScriptConsole;->ctx:Landroid/app/Activity;

    new-instance v1, Lwhiter/script/control/ScriptConsole$100000000;

    invoke-direct {v1, p0, p1}, Lwhiter/script/control/ScriptConsole$100000000;-><init>(Lwhiter/script/control/ScriptConsole;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
