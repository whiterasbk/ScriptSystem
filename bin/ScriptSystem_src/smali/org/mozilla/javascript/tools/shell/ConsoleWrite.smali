.class Lorg/mozilla/javascript/tools/shell/ConsoleWrite;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private str:Ljava/lang/String;

.field private textArea:Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;


# direct methods
.method public constructor <init>(Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mozilla/javascript/tools/shell/ConsoleWrite;->textArea:Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;

    iput-object p2, p0, Lorg/mozilla/javascript/tools/shell/ConsoleWrite;->str:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/mozilla/javascript/tools/shell/ConsoleWrite;->textArea:Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;

    iget-object v1, p0, Lorg/mozilla/javascript/tools/shell/ConsoleWrite;->str:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/tools/shell/ConsoleTextArea;->write(Ljava/lang/String;)V

    return-void
.end method
