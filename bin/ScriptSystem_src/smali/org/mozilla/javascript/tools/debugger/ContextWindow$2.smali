.class Lorg/mozilla/javascript/tools/debugger/ContextWindow$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/awt/event/ContainerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/javascript/tools/debugger/ContextWindow;-><init>(Lorg/mozilla/javascript/tools/debugger/SwingGui;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mozilla/javascript/tools/debugger/ContextWindow;

.field final synthetic val$finalP2:Ljavax/swing/JPanel;

.field final synthetic val$finalSplit:Ljavax/swing/JSplitPane;

.field final synthetic val$finalT1:Ljavax/swing/JToolBar;

.field final synthetic val$finalT2:Ljavax/swing/JToolBar;

.field final synthetic val$finalThis:Ljavax/swing/JPanel;


# direct methods
.method constructor <init>(Lorg/mozilla/javascript/tools/debugger/ContextWindow;Ljavax/swing/JPanel;Ljavax/swing/JToolBar;Ljavax/swing/JToolBar;Ljavax/swing/JPanel;Ljavax/swing/JSplitPane;)V
    .locals 0

    iput-object p1, p0, Lorg/mozilla/javascript/tools/debugger/ContextWindow$2;->this$0:Lorg/mozilla/javascript/tools/debugger/ContextWindow;

    iput-object p2, p0, Lorg/mozilla/javascript/tools/debugger/ContextWindow$2;->val$finalThis:Ljavax/swing/JPanel;

    iput-object p3, p0, Lorg/mozilla/javascript/tools/debugger/ContextWindow$2;->val$finalT1:Ljavax/swing/JToolBar;

    iput-object p4, p0, Lorg/mozilla/javascript/tools/debugger/ContextWindow$2;->val$finalT2:Ljavax/swing/JToolBar;

    iput-object p5, p0, Lorg/mozilla/javascript/tools/debugger/ContextWindow$2;->val$finalP2:Ljavax/swing/JPanel;

    iput-object p6, p0, Lorg/mozilla/javascript/tools/debugger/ContextWindow$2;->val$finalSplit:Ljavax/swing/JSplitPane;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public componentAdded(Ljava/awt/event/ContainerEvent;)V
    .locals 4

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/ContextWindow$2;->val$finalThis:Ljavax/swing/JPanel;

    invoke-virtual {v0}, Ljavax/swing/JPanel;->getParent()Ljava/awt/Container;

    move-result-object v0

    check-cast v0, Ljavax/swing/JSplitPane;

    invoke-virtual {p1}, Ljava/awt/event/ContainerEvent;->getChild()Ljava/awt/Component;

    move-result-object v1

    iget-object v2, p0, Lorg/mozilla/javascript/tools/debugger/ContextWindow$2;->val$finalT1:Ljavax/swing/JToolBar;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lorg/mozilla/javascript/tools/debugger/ContextWindow$2;->val$finalT2:Ljavax/swing/JToolBar;

    invoke-virtual {v1}, Ljavax/swing/JToolBar;->getParent()Ljava/awt/Container;

    move-result-object v1

    iget-object v2, p0, Lorg/mozilla/javascript/tools/debugger/ContextWindow$2;->val$finalP2:Ljavax/swing/JPanel;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lorg/mozilla/javascript/tools/debugger/ContextWindow$2;->val$finalSplit:Ljavax/swing/JSplitPane;

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    invoke-virtual {v1, v2, v3}, Ljavax/swing/JSplitPane;->setDividerLocation(D)V

    :goto_0
    const-wide v1, 0x3fe51eb851eb851fL    # 0.66

    invoke-virtual {v0, v1, v2}, Ljavax/swing/JSplitPane;->setDividerLocation(D)V

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lorg/mozilla/javascript/tools/debugger/ContextWindow$2;->val$finalSplit:Ljavax/swing/JSplitPane;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v1, v2, v3}, Ljavax/swing/JSplitPane;->setDividerLocation(D)V

    goto :goto_0
.end method

.method public componentRemoved(Ljava/awt/event/ContainerEvent;)V
    .locals 4

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/ContextWindow$2;->val$finalThis:Ljavax/swing/JPanel;

    invoke-virtual {v0}, Ljavax/swing/JPanel;->getParent()Ljava/awt/Container;

    move-result-object v0

    check-cast v0, Ljavax/swing/JSplitPane;

    invoke-virtual {p1}, Ljava/awt/event/ContainerEvent;->getChild()Ljava/awt/Component;

    move-result-object v1

    iget-object v2, p0, Lorg/mozilla/javascript/tools/debugger/ContextWindow$2;->val$finalT1:Ljavax/swing/JToolBar;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lorg/mozilla/javascript/tools/debugger/ContextWindow$2;->val$finalT2:Ljavax/swing/JToolBar;

    invoke-virtual {v1}, Ljavax/swing/JToolBar;->getParent()Ljava/awt/Container;

    move-result-object v1

    iget-object v2, p0, Lorg/mozilla/javascript/tools/debugger/ContextWindow$2;->val$finalP2:Ljavax/swing/JPanel;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lorg/mozilla/javascript/tools/debugger/ContextWindow$2;->val$finalSplit:Ljavax/swing/JSplitPane;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljavax/swing/JSplitPane;->setDividerLocation(D)V

    const-wide v1, 0x3fe51eb851eb851fL    # 0.66

    invoke-virtual {v0, v1, v2}, Ljavax/swing/JSplitPane;->setDividerLocation(D)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v0, v1, v2}, Ljavax/swing/JSplitPane;->setDividerLocation(D)V

    goto :goto_0
.end method
