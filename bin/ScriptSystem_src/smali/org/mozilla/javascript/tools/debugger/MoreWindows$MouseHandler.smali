.class Lorg/mozilla/javascript/tools/debugger/MoreWindows$MouseHandler;
.super Ljava/awt/event/MouseAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/javascript/tools/debugger/MoreWindows;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MouseHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mozilla/javascript/tools/debugger/MoreWindows;


# direct methods
.method private constructor <init>(Lorg/mozilla/javascript/tools/debugger/MoreWindows;)V
    .locals 0

    iput-object p1, p0, Lorg/mozilla/javascript/tools/debugger/MoreWindows$MouseHandler;->this$0:Lorg/mozilla/javascript/tools/debugger/MoreWindows;

    invoke-direct {p0}, Ljava/awt/event/MouseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/mozilla/javascript/tools/debugger/MoreWindows;Lorg/mozilla/javascript/tools/debugger/MoreWindows$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/tools/debugger/MoreWindows$MouseHandler;-><init>(Lorg/mozilla/javascript/tools/debugger/MoreWindows;)V

    return-void
.end method


# virtual methods
.method public mouseClicked(Ljava/awt/event/MouseEvent;)V
    .locals 2

    invoke-virtual {p1}, Ljava/awt/event/MouseEvent;->getClickCount()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/MoreWindows$MouseHandler;->this$0:Lorg/mozilla/javascript/tools/debugger/MoreWindows;

    # getter for: Lorg/mozilla/javascript/tools/debugger/MoreWindows;->setButton:Ljavax/swing/JButton;
    invoke-static {v0}, Lorg/mozilla/javascript/tools/debugger/MoreWindows;->access$200(Lorg/mozilla/javascript/tools/debugger/MoreWindows;)Ljavax/swing/JButton;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/swing/JButton;->doClick()V

    :cond_0
    return-void
.end method
