.class Lorg/mozilla/javascript/tools/debugger/SwingGui$2;
.super Ljava/awt/event/WindowAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/javascript/tools/debugger/SwingGui;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mozilla/javascript/tools/debugger/SwingGui;


# direct methods
.method constructor <init>(Lorg/mozilla/javascript/tools/debugger/SwingGui;)V
    .locals 0

    iput-object p1, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui$2;->this$0:Lorg/mozilla/javascript/tools/debugger/SwingGui;

    invoke-direct {p0}, Ljava/awt/event/WindowAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public windowClosing(Ljava/awt/event/WindowEvent;)V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/SwingGui$2;->this$0:Lorg/mozilla/javascript/tools/debugger/SwingGui;

    # invokes: Lorg/mozilla/javascript/tools/debugger/SwingGui;->exit()V
    invoke-static {v0}, Lorg/mozilla/javascript/tools/debugger/SwingGui;->access$000(Lorg/mozilla/javascript/tools/debugger/SwingGui;)V

    return-void
.end method
