.class Lorg/mozilla/javascript/tools/debugger/FindFunction;
.super Ljavax/swing/JDialog;

# interfaces
.implements Ljava/awt/event/ActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/javascript/tools/debugger/FindFunction$MouseHandler;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x7c3b61d31fa8114L


# instance fields
.field private cancelButton:Ljavax/swing/JButton;

.field private debugGui:Lorg/mozilla/javascript/tools/debugger/SwingGui;

.field private list:Ljavax/swing/JList;

.field private setButton:Ljavax/swing/JButton;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/mozilla/javascript/tools/debugger/SwingGui;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/16 v6, 0xa

    invoke-direct {p0, p1, p2, v3}, Ljavax/swing/JDialog;-><init>(Ljava/awt/Frame;Ljava/lang/String;Z)V

    iput-object p1, p0, Lorg/mozilla/javascript/tools/debugger/FindFunction;->debugGui:Lorg/mozilla/javascript/tools/debugger/SwingGui;

    new-instance v0, Ljavax/swing/JButton;

    const-string v1, "Cancel"

    invoke-direct {v0, v1}, Ljavax/swing/JButton;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/mozilla/javascript/tools/debugger/FindFunction;->cancelButton:Ljavax/swing/JButton;

    new-instance v0, Ljavax/swing/JButton;

    const-string v1, "Select"

    invoke-direct {v0, v1}, Ljavax/swing/JButton;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/mozilla/javascript/tools/debugger/FindFunction;->setButton:Ljavax/swing/JButton;

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/FindFunction;->cancelButton:Ljavax/swing/JButton;

    invoke-virtual {v0, p0}, Ljavax/swing/JButton;->addActionListener(Ljava/awt/event/ActionListener;)V

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/FindFunction;->setButton:Ljavax/swing/JButton;

    invoke-virtual {v0, p0}, Ljavax/swing/JButton;->addActionListener(Ljava/awt/event/ActionListener;)V

    invoke-virtual {p0}, Lorg/mozilla/javascript/tools/debugger/FindFunction;->getRootPane()Ljavax/swing/JRootPane;

    move-result-object v0

    iget-object v1, p0, Lorg/mozilla/javascript/tools/debugger/FindFunction;->setButton:Ljavax/swing/JButton;

    invoke-virtual {v0, v1}, Ljavax/swing/JRootPane;->setDefaultButton(Ljavax/swing/JButton;)V

    new-instance v0, Ljavax/swing/JList;

    new-instance v1, Ljavax/swing/DefaultListModel;

    invoke-direct {v1}, Ljavax/swing/DefaultListModel;-><init>()V

    invoke-direct {v0, v1}, Ljavax/swing/JList;-><init>(Ljavax/swing/ListModel;)V

    iput-object v0, p0, Lorg/mozilla/javascript/tools/debugger/FindFunction;->list:Ljavax/swing/JList;

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/FindFunction;->list:Ljavax/swing/JList;

    invoke-virtual {v0}, Ljavax/swing/JList;->getModel()Ljavax/swing/ListModel;

    move-result-object v0

    check-cast v0, Ljavax/swing/DefaultListModel;

    invoke-virtual {v0}, Ljavax/swing/DefaultListModel;->clear()V

    iget-object v1, p1, Lorg/mozilla/javascript/tools/debugger/SwingGui;->dim:Lorg/mozilla/javascript/tools/debugger/Dim;

    invoke-virtual {v1}, Lorg/mozilla/javascript/tools/debugger/Dim;->functionNames()[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    move v1, v2

    :goto_0
    array-length v5, v4

    if-ge v1, v5, :cond_0

    aget-object v5, v4, v1

    invoke-virtual {v0, v5}, Ljavax/swing/DefaultListModel;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/FindFunction;->list:Ljavax/swing/JList;

    invoke-virtual {v0, v2}, Ljavax/swing/JList;->setSelectedIndex(I)V

    iget-object v1, p0, Lorg/mozilla/javascript/tools/debugger/FindFunction;->setButton:Ljavax/swing/JButton;

    array-length v0, v4

    if-lez v0, :cond_1

    move v0, v3

    :goto_1
    invoke-virtual {v1, v0}, Ljavax/swing/JButton;->setEnabled(Z)V

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/FindFunction;->list:Ljavax/swing/JList;

    invoke-virtual {v0, v3}, Ljavax/swing/JList;->setSelectionMode(I)V

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/FindFunction;->list:Ljavax/swing/JList;

    new-instance v1, Lorg/mozilla/javascript/tools/debugger/FindFunction$MouseHandler;

    invoke-direct {v1, p0}, Lorg/mozilla/javascript/tools/debugger/FindFunction$MouseHandler;-><init>(Lorg/mozilla/javascript/tools/debugger/FindFunction;)V

    invoke-virtual {v0, v1}, Ljavax/swing/JList;->addMouseListener(Ljava/awt/event/MouseListener;)V

    new-instance v0, Ljavax/swing/JScrollPane;

    iget-object v1, p0, Lorg/mozilla/javascript/tools/debugger/FindFunction;->list:Ljavax/swing/JList;

    invoke-direct {v0, v1}, Ljavax/swing/JScrollPane;-><init>(Ljava/awt/Component;)V

    new-instance v1, Ljava/awt/Dimension;

    const/16 v4, 0x140

    const/16 v5, 0xf0

    invoke-direct {v1, v4, v5}, Ljava/awt/Dimension;-><init>(II)V

    invoke-virtual {v0, v1}, Ljavax/swing/JScrollPane;->setPreferredSize(Ljava/awt/Dimension;)V

    new-instance v1, Ljava/awt/Dimension;

    const/16 v4, 0xfa

    const/16 v5, 0x50

    invoke-direct {v1, v4, v5}, Ljava/awt/Dimension;-><init>(II)V

    invoke-virtual {v0, v1}, Ljavax/swing/JScrollPane;->setMinimumSize(Ljava/awt/Dimension;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljavax/swing/JScrollPane;->setAlignmentX(F)V

    new-instance v1, Ljavax/swing/JPanel;

    invoke-direct {v1}, Ljavax/swing/JPanel;-><init>()V

    new-instance v4, Ljavax/swing/BoxLayout;

    invoke-direct {v4, v1, v3}, Ljavax/swing/BoxLayout;-><init>(Ljava/awt/Container;I)V

    invoke-virtual {v1, v4}, Ljavax/swing/JPanel;->setLayout(Ljava/awt/LayoutManager;)V

    new-instance v3, Ljavax/swing/JLabel;

    invoke-direct {v3, p3}, Ljavax/swing/JLabel;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lorg/mozilla/javascript/tools/debugger/FindFunction;->list:Ljavax/swing/JList;

    invoke-virtual {v3, v4}, Ljavax/swing/JLabel;->setLabelFor(Ljava/awt/Component;)V

    invoke-virtual {v1, v3}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;)Ljava/awt/Component;

    new-instance v3, Ljava/awt/Dimension;

    const/4 v4, 0x5

    invoke-direct {v3, v2, v4}, Ljava/awt/Dimension;-><init>(II)V

    invoke-static {v3}, Ljavax/swing/Box;->createRigidArea(Ljava/awt/Dimension;)Ljava/awt/Component;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;)Ljava/awt/Component;

    invoke-virtual {v1, v0}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;)Ljava/awt/Component;

    invoke-static {v6, v6, v6, v6}, Ljavax/swing/BorderFactory;->createEmptyBorder(IIII)Ljavax/swing/border/Border;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljavax/swing/JPanel;->setBorder(Ljavax/swing/border/Border;)V

    new-instance v0, Ljavax/swing/JPanel;

    invoke-direct {v0}, Ljavax/swing/JPanel;-><init>()V

    new-instance v3, Ljavax/swing/BoxLayout;

    invoke-direct {v3, v0, v2}, Ljavax/swing/BoxLayout;-><init>(Ljava/awt/Container;I)V

    invoke-virtual {v0, v3}, Ljavax/swing/JPanel;->setLayout(Ljava/awt/LayoutManager;)V

    invoke-static {v2, v6, v6, v6}, Ljavax/swing/BorderFactory;->createEmptyBorder(IIII)Ljavax/swing/border/Border;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljavax/swing/JPanel;->setBorder(Ljavax/swing/border/Border;)V

    invoke-static {}, Ljavax/swing/Box;->createHorizontalGlue()Ljava/awt/Component;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;)Ljava/awt/Component;

    iget-object v3, p0, Lorg/mozilla/javascript/tools/debugger/FindFunction;->cancelButton:Ljavax/swing/JButton;

    invoke-virtual {v0, v3}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;)Ljava/awt/Component;

    new-instance v3, Ljava/awt/Dimension;

    invoke-direct {v3, v6, v2}, Ljava/awt/Dimension;-><init>(II)V

    invoke-static {v3}, Ljavax/swing/Box;->createRigidArea(Ljava/awt/Dimension;)Ljava/awt/Component;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;)Ljava/awt/Component;

    iget-object v2, p0, Lorg/mozilla/javascript/tools/debugger/FindFunction;->setButton:Ljavax/swing/JButton;

    invoke-virtual {v0, v2}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;)Ljava/awt/Component;

    invoke-virtual {p0}, Lorg/mozilla/javascript/tools/debugger/FindFunction;->getContentPane()Ljava/awt/Container;

    move-result-object v2

    const-string v3, "Center"

    invoke-virtual {v2, v1, v3}, Ljava/awt/Container;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    const-string v1, "South"

    invoke-virtual {v2, v0, v1}, Ljava/awt/Container;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/mozilla/javascript/tools/debugger/FindFunction;->pack()V

    new-instance v0, Lorg/mozilla/javascript/tools/debugger/FindFunction$1;

    invoke-direct {v0, p0}, Lorg/mozilla/javascript/tools/debugger/FindFunction$1;-><init>(Lorg/mozilla/javascript/tools/debugger/FindFunction;)V

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/tools/debugger/FindFunction;->addKeyListener(Ljava/awt/event/KeyListener;)V

    return-void

    :cond_1
    move v0, v2

    goto/16 :goto_1
.end method

.method static synthetic access$002(Lorg/mozilla/javascript/tools/debugger/FindFunction;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lorg/mozilla/javascript/tools/debugger/FindFunction;->value:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lorg/mozilla/javascript/tools/debugger/FindFunction;)Ljavax/swing/JButton;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/FindFunction;->setButton:Ljavax/swing/JButton;

    return-object v0
.end method


# virtual methods
.method public actionPerformed(Ljava/awt/event/ActionEvent;)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/awt/event/ActionEvent;->getActionCommand()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cancel"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v2}, Lorg/mozilla/javascript/tools/debugger/FindFunction;->setVisible(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mozilla/javascript/tools/debugger/FindFunction;->value:Ljava/lang/String;

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "Select"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/FindFunction;->list:Ljavax/swing/JList;

    invoke-virtual {v0}, Ljavax/swing/JList;->getSelectedIndex()I

    move-result v0

    if-ltz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/FindFunction;->list:Ljavax/swing/JList;

    invoke-virtual {v0}, Ljavax/swing/JList;->getSelectedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/mozilla/javascript/tools/debugger/FindFunction;->value:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0, v2}, Lorg/mozilla/javascript/tools/debugger/FindFunction;->setVisible(Z)V

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/FindFunction;->debugGui:Lorg/mozilla/javascript/tools/debugger/SwingGui;

    iget-object v0, v0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->dim:Lorg/mozilla/javascript/tools/debugger/Dim;

    iget-object v1, p0, Lorg/mozilla/javascript/tools/debugger/FindFunction;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/tools/debugger/Dim;->functionSourceByName(Ljava/lang/String;)Lorg/mozilla/javascript/tools/debugger/Dim$FunctionSource;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/mozilla/javascript/tools/debugger/Dim$FunctionSource;->sourceInfo()Lorg/mozilla/javascript/tools/debugger/Dim$SourceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lorg/mozilla/javascript/tools/debugger/Dim$SourceInfo;->url()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/mozilla/javascript/tools/debugger/Dim$FunctionSource;->firstLine()I

    move-result v0

    iget-object v2, p0, Lorg/mozilla/javascript/tools/debugger/FindFunction;->debugGui:Lorg/mozilla/javascript/tools/debugger/SwingGui;

    invoke-virtual {v2, v1, v0}, Lorg/mozilla/javascript/tools/debugger/SwingGui;->showFileWindow(Ljava/lang/String;I)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public showDialog(Ljava/awt/Component;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mozilla/javascript/tools/debugger/FindFunction;->value:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/tools/debugger/FindFunction;->setLocationRelativeTo(Ljava/awt/Component;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/tools/debugger/FindFunction;->setVisible(Z)V

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/FindFunction;->value:Ljava/lang/String;

    return-object v0
.end method
