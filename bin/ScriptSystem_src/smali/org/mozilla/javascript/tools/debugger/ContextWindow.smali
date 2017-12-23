.class Lorg/mozilla/javascript/tools/debugger/ContextWindow;
.super Ljavax/swing/JPanel;

# interfaces
.implements Ljava/awt/event/ActionListener;


# static fields
.field private static final serialVersionUID:J = 0x2000b40c9d971f53L


# instance fields
.field private cmdLine:Lorg/mozilla/javascript/tools/debugger/EvalTextArea;

.field context:Ljavax/swing/JComboBox;

.field private debugGui:Lorg/mozilla/javascript/tools/debugger/SwingGui;

.field private enabled:Z

.field private evaluator:Lorg/mozilla/javascript/tools/debugger/Evaluator;

.field private localsTable:Lorg/mozilla/javascript/tools/debugger/MyTreeTable;

.field split:Ljavax/swing/JSplitPane;

.field private tableModel:Lorg/mozilla/javascript/tools/debugger/MyTableModel;

.field private tabs:Ljavax/swing/JTabbedPane;

.field private tabs2:Ljavax/swing/JTabbedPane;

.field private thisTable:Lorg/mozilla/javascript/tools/debugger/MyTreeTable;

.field toolTips:Ljava/util/List;
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
.method public constructor <init>(Lorg/mozilla/javascript/tools/debugger/SwingGui;)V
    .locals 18

    invoke-direct/range {p0 .. p0}, Ljavax/swing/JPanel;-><init>()V

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/mozilla/javascript/tools/debugger/ContextWindow;->debugGui:Lorg/mozilla/javascript/tools/debugger/SwingGui;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/mozilla/javascript/tools/debugger/ContextWindow;->enabled:Z

    new-instance v2, Ljavax/swing/JPanel;

    invoke-direct {v2}, Ljavax/swing/JPanel;-><init>()V

    new-instance v5, Ljavax/swing/JToolBar;

    invoke-direct {v5}, Ljavax/swing/JToolBar;-><init>()V

    const-string v3, "Variables"

    invoke-virtual {v5, v3}, Ljavax/swing/JToolBar;->setName(Ljava/lang/String;)V

    new-instance v3, Ljava/awt/GridLayout;

    invoke-direct {v3}, Ljava/awt/GridLayout;-><init>()V

    invoke-virtual {v5, v3}, Ljavax/swing/JToolBar;->setLayout(Ljava/awt/LayoutManager;)V

    invoke-virtual {v5, v2}, Ljavax/swing/JToolBar;->add(Ljava/awt/Component;)Ljava/awt/Component;

    new-instance v6, Ljavax/swing/JPanel;

    invoke-direct {v6}, Ljavax/swing/JPanel;-><init>()V

    new-instance v3, Ljava/awt/GridLayout;

    invoke-direct {v3}, Ljava/awt/GridLayout;-><init>()V

    invoke-virtual {v6, v3}, Ljavax/swing/JPanel;->setLayout(Ljava/awt/LayoutManager;)V

    new-instance v9, Ljavax/swing/JPanel;

    invoke-direct {v9}, Ljavax/swing/JPanel;-><init>()V

    new-instance v3, Ljava/awt/GridLayout;

    invoke-direct {v3}, Ljava/awt/GridLayout;-><init>()V

    invoke-virtual {v9, v3}, Ljavax/swing/JPanel;->setLayout(Ljava/awt/LayoutManager;)V

    invoke-virtual {v6, v5}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;)Ljava/awt/Component;

    new-instance v3, Ljavax/swing/JLabel;

    const-string v4, "Context:"

    invoke-direct {v3, v4}, Ljavax/swing/JLabel;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljavax/swing/JComboBox;

    invoke-direct {v4}, Ljavax/swing/JComboBox;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/mozilla/javascript/tools/debugger/ContextWindow;->context:Ljavax/swing/JComboBox;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/mozilla/javascript/tools/debugger/ContextWindow;->context:Ljavax/swing/JComboBox;

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Ljavax/swing/JComboBox;->setLightWeightPopupEnabled(Z)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v4}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/mozilla/javascript/tools/debugger/ContextWindow;->toolTips:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/mozilla/javascript/tools/debugger/ContextWindow;->context:Ljavax/swing/JComboBox;

    invoke-virtual {v4}, Ljavax/swing/JComboBox;->getBorder()Ljavax/swing/border/Border;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavax/swing/JLabel;->setBorder(Ljavax/swing/border/Border;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/mozilla/javascript/tools/debugger/ContextWindow;->context:Ljavax/swing/JComboBox;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Ljavax/swing/JComboBox;->addActionListener(Ljava/awt/event/ActionListener;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/mozilla/javascript/tools/debugger/ContextWindow;->context:Ljavax/swing/JComboBox;

    const-string v7, "ContextSwitch"

    invoke-virtual {v4, v7}, Ljavax/swing/JComboBox;->setActionCommand(Ljava/lang/String;)V

    new-instance v4, Ljava/awt/GridBagLayout;

    invoke-direct {v4}, Ljava/awt/GridBagLayout;-><init>()V

    invoke-virtual {v2, v4}, Ljavax/swing/JPanel;->setLayout(Ljava/awt/LayoutManager;)V

    new-instance v7, Ljava/awt/GridBagConstraints;

    invoke-direct {v7}, Ljava/awt/GridBagConstraints;-><init>()V

    iget-object v8, v7, Ljava/awt/GridBagConstraints;->insets:Ljava/awt/Insets;

    const/4 v10, 0x5

    iput v10, v8, Ljava/awt/Insets;->left:I

    const/16 v8, 0x11

    iput v8, v7, Ljava/awt/GridBagConstraints;->anchor:I

    const/4 v8, 0x5

    iput v8, v7, Ljava/awt/GridBagConstraints;->ipadx:I

    invoke-virtual {v4, v3, v7}, Ljava/awt/GridBagLayout;->setConstraints(Ljava/awt/Component;Ljava/awt/GridBagConstraints;)V

    invoke-virtual {v2, v3}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;)Ljava/awt/Component;

    new-instance v3, Ljava/awt/GridBagConstraints;

    invoke-direct {v3}, Ljava/awt/GridBagConstraints;-><init>()V

    const/4 v7, 0x0

    iput v7, v3, Ljava/awt/GridBagConstraints;->gridwidth:I

    const/4 v7, 0x2

    iput v7, v3, Ljava/awt/GridBagConstraints;->fill:I

    const/16 v7, 0x11

    iput v7, v3, Ljava/awt/GridBagConstraints;->anchor:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/mozilla/javascript/tools/debugger/ContextWindow;->context:Ljavax/swing/JComboBox;

    invoke-virtual {v4, v7, v3}, Ljava/awt/GridBagLayout;->setConstraints(Ljava/awt/Component;Ljava/awt/GridBagConstraints;)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/mozilla/javascript/tools/debugger/ContextWindow;->context:Ljavax/swing/JComboBox;

    invoke-virtual {v2, v7}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;)Ljava/awt/Component;

    new-instance v7, Ljavax/swing/JTabbedPane;

    const/4 v8, 0x3

    invoke-direct {v7, v8}, Ljavax/swing/JTabbedPane;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lorg/mozilla/javascript/tools/debugger/ContextWindow;->tabs:Ljavax/swing/JTabbedPane;

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/mozilla/javascript/tools/debugger/ContextWindow;->tabs:Ljavax/swing/JTabbedPane;

    new-instance v8, Ljava/awt/Dimension;

    const/16 v10, 0x1f4

    const/16 v11, 0x12c

    invoke-direct {v8, v10, v11}, Ljava/awt/Dimension;-><init>(II)V

    invoke-virtual {v7, v8}, Ljavax/swing/JTabbedPane;->setPreferredSize(Ljava/awt/Dimension;)V

    new-instance v7, Lorg/mozilla/javascript/tools/debugger/MyTreeTable;

    new-instance v8, Lorg/mozilla/javascript/tools/debugger/VariableModel;

    invoke-direct {v8}, Lorg/mozilla/javascript/tools/debugger/VariableModel;-><init>()V

    invoke-direct {v7, v8}, Lorg/mozilla/javascript/tools/debugger/MyTreeTable;-><init>(Lorg/mozilla/javascript/tools/debugger/VariableModel;)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lorg/mozilla/javascript/tools/debugger/ContextWindow;->thisTable:Lorg/mozilla/javascript/tools/debugger/MyTreeTable;

    new-instance v7, Ljavax/swing/JScrollPane;

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/mozilla/javascript/tools/debugger/ContextWindow;->thisTable:Lorg/mozilla/javascript/tools/debugger/MyTreeTable;

    invoke-direct {v7, v8}, Ljavax/swing/JScrollPane;-><init>(Ljava/awt/Component;)V

    invoke-virtual {v7}, Ljavax/swing/JScrollPane;->getViewport()Ljavax/swing/JViewport;

    move-result-object v8

    new-instance v10, Ljava/awt/Dimension;

    const/4 v11, 0x5

    const/4 v12, 0x2

    invoke-direct {v10, v11, v12}, Ljava/awt/Dimension;-><init>(II)V

    invoke-virtual {v8, v10}, Ljavax/swing/JViewport;->setViewSize(Ljava/awt/Dimension;)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/mozilla/javascript/tools/debugger/ContextWindow;->tabs:Ljavax/swing/JTabbedPane;

    const-string v10, "this"

    invoke-virtual {v8, v10, v7}, Ljavax/swing/JTabbedPane;->add(Ljava/lang/String;Ljava/awt/Component;)Ljava/awt/Component;

    new-instance v7, Lorg/mozilla/javascript/tools/debugger/MyTreeTable;

    new-instance v8, Lorg/mozilla/javascript/tools/debugger/VariableModel;

    invoke-direct {v8}, Lorg/mozilla/javascript/tools/debugger/VariableModel;-><init>()V

    invoke-direct {v7, v8}, Lorg/mozilla/javascript/tools/debugger/MyTreeTable;-><init>(Lorg/mozilla/javascript/tools/debugger/VariableModel;)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lorg/mozilla/javascript/tools/debugger/ContextWindow;->localsTable:Lorg/mozilla/javascript/tools/debugger/MyTreeTable;

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/mozilla/javascript/tools/debugger/ContextWindow;->localsTable:Lorg/mozilla/javascript/tools/debugger/MyTreeTable;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Lorg/mozilla/javascript/tools/debugger/MyTreeTable;->setAutoResizeMode(I)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/mozilla/javascript/tools/debugger/ContextWindow;->localsTable:Lorg/mozilla/javascript/tools/debugger/MyTreeTable;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lorg/mozilla/javascript/tools/debugger/MyTreeTable;->setPreferredSize(Ljava/awt/Dimension;)V

    new-instance v7, Ljavax/swing/JScrollPane;

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/mozilla/javascript/tools/debugger/ContextWindow;->localsTable:Lorg/mozilla/javascript/tools/debugger/MyTreeTable;

    invoke-direct {v7, v8}, Ljavax/swing/JScrollPane;-><init>(Ljava/awt/Component;)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/mozilla/javascript/tools/debugger/ContextWindow;->tabs:Ljavax/swing/JTabbedPane;

    const-string v10, "Locals"

    invoke-virtual {v8, v10, v7}, Ljavax/swing/JTabbedPane;->add(Ljava/lang/String;Ljava/awt/Component;)Ljava/awt/Component;

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    iput-wide v7, v3, Ljava/awt/GridBagConstraints;->weighty:D

    iput-wide v7, v3, Ljava/awt/GridBagConstraints;->weightx:D

    const/4 v7, 0x0

    iput v7, v3, Ljava/awt/GridBagConstraints;->gridheight:I

    const/4 v7, 0x1

    iput v7, v3, Ljava/awt/GridBagConstraints;->fill:I

    const/16 v7, 0x11

    iput v7, v3, Ljava/awt/GridBagConstraints;->anchor:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/mozilla/javascript/tools/debugger/ContextWindow;->tabs:Ljavax/swing/JTabbedPane;

    invoke-virtual {v4, v7, v3}, Ljava/awt/GridBagLayout;->setConstraints(Ljava/awt/Component;Ljava/awt/GridBagConstraints;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/mozilla/javascript/tools/debugger/ContextWindow;->tabs:Ljavax/swing/JTabbedPane;

    invoke-virtual {v2, v3}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;)Ljava/awt/Component;

    new-instance v2, Lorg/mozilla/javascript/tools/debugger/Evaluator;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Lorg/mozilla/javascript/tools/debugger/Evaluator;-><init>(Lorg/mozilla/javascript/tools/debugger/SwingGui;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/mozilla/javascript/tools/debugger/ContextWindow;->evaluator:Lorg/mozilla/javascript/tools/debugger/Evaluator;

    new-instance v2, Lorg/mozilla/javascript/tools/debugger/EvalTextArea;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Lorg/mozilla/javascript/tools/debugger/EvalTextArea;-><init>(Lorg/mozilla/javascript/tools/debugger/SwingGui;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/mozilla/javascript/tools/debugger/ContextWindow;->cmdLine:Lorg/mozilla/javascript/tools/debugger/EvalTextArea;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/mozilla/javascript/tools/debugger/ContextWindow;->evaluator:Lorg/mozilla/javascript/tools/debugger/Evaluator;

    iget-object v2, v2, Lorg/mozilla/javascript/tools/debugger/Evaluator;->tableModel:Lorg/mozilla/javascript/tools/debugger/MyTableModel;

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/mozilla/javascript/tools/debugger/ContextWindow;->tableModel:Lorg/mozilla/javascript/tools/debugger/MyTableModel;

    new-instance v2, Ljavax/swing/JScrollPane;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/mozilla/javascript/tools/debugger/ContextWindow;->evaluator:Lorg/mozilla/javascript/tools/debugger/Evaluator;

    invoke-direct {v2, v3}, Ljavax/swing/JScrollPane;-><init>(Ljava/awt/Component;)V

    new-instance v8, Ljavax/swing/JToolBar;

    invoke-direct {v8}, Ljavax/swing/JToolBar;-><init>()V

    const-string v3, "Evaluate"

    invoke-virtual {v8, v3}, Ljavax/swing/JToolBar;->setName(Ljava/lang/String;)V

    new-instance v3, Ljavax/swing/JTabbedPane;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Ljavax/swing/JTabbedPane;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/mozilla/javascript/tools/debugger/ContextWindow;->tabs2:Ljavax/swing/JTabbedPane;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/mozilla/javascript/tools/debugger/ContextWindow;->tabs2:Ljavax/swing/JTabbedPane;

    const-string v4, "Watch"

    invoke-virtual {v3, v4, v2}, Ljavax/swing/JTabbedPane;->add(Ljava/lang/String;Ljava/awt/Component;)Ljava/awt/Component;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/mozilla/javascript/tools/debugger/ContextWindow;->tabs2:Ljavax/swing/JTabbedPane;

    const-string v3, "Evaluate"

    new-instance v4, Ljavax/swing/JScrollPane;

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/mozilla/javascript/tools/debugger/ContextWindow;->cmdLine:Lorg/mozilla/javascript/tools/debugger/EvalTextArea;

    invoke-direct {v4, v7}, Ljavax/swing/JScrollPane;-><init>(Ljava/awt/Component;)V

    invoke-virtual {v2, v3, v4}, Ljavax/swing/JTabbedPane;->add(Ljava/lang/String;Ljava/awt/Component;)Ljava/awt/Component;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/mozilla/javascript/tools/debugger/ContextWindow;->tabs2:Ljavax/swing/JTabbedPane;

    new-instance v3, Ljava/awt/Dimension;

    const/16 v4, 0x1f4

    const/16 v7, 0x12c

    invoke-direct {v3, v4, v7}, Ljava/awt/Dimension;-><init>(II)V

    invoke-virtual {v2, v3}, Ljavax/swing/JTabbedPane;->setPreferredSize(Ljava/awt/Dimension;)V

    new-instance v2, Ljava/awt/GridLayout;

    invoke-direct {v2}, Ljava/awt/GridLayout;-><init>()V

    invoke-virtual {v8, v2}, Ljavax/swing/JToolBar;->setLayout(Ljava/awt/LayoutManager;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/mozilla/javascript/tools/debugger/ContextWindow;->tabs2:Ljavax/swing/JTabbedPane;

    invoke-virtual {v8, v2}, Ljavax/swing/JToolBar;->add(Ljava/awt/Component;)Ljava/awt/Component;

    invoke-virtual {v9, v8}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;)Ljava/awt/Component;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/mozilla/javascript/tools/debugger/ContextWindow;->evaluator:Lorg/mozilla/javascript/tools/debugger/Evaluator;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lorg/mozilla/javascript/tools/debugger/Evaluator;->setAutoResizeMode(I)V

    new-instance v2, Ljavax/swing/JSplitPane;

    const/4 v3, 0x1

    invoke-direct {v2, v3, v6, v9}, Ljavax/swing/JSplitPane;-><init>(ILjava/awt/Component;Ljava/awt/Component;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/mozilla/javascript/tools/debugger/ContextWindow;->split:Ljavax/swing/JSplitPane;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/mozilla/javascript/tools/debugger/ContextWindow;->split:Ljavax/swing/JSplitPane;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljavax/swing/JSplitPane;->setOneTouchExpandable(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/mozilla/javascript/tools/debugger/ContextWindow;->split:Ljavax/swing/JSplitPane;

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    invoke-static {v2, v3, v4}, Lorg/mozilla/javascript/tools/debugger/SwingGui;->setResizeWeight(Ljavax/swing/JSplitPane;D)V

    new-instance v2, Ljava/awt/BorderLayout;

    invoke-direct {v2}, Ljava/awt/BorderLayout;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/mozilla/javascript/tools/debugger/ContextWindow;->setLayout(Ljava/awt/LayoutManager;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/mozilla/javascript/tools/debugger/ContextWindow;->split:Ljavax/swing/JSplitPane;

    const-string v3, "Center"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lorg/mozilla/javascript/tools/debugger/ContextWindow;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/mozilla/javascript/tools/debugger/ContextWindow;->split:Ljavax/swing/JSplitPane;

    new-instance v2, Lorg/mozilla/javascript/tools/debugger/ContextWindow$1;

    move-object/from16 v3, p0

    move-object/from16 v4, p0

    move-object/from16 v7, p1

    invoke-direct/range {v2 .. v10}, Lorg/mozilla/javascript/tools/debugger/ContextWindow$1;-><init>(Lorg/mozilla/javascript/tools/debugger/ContextWindow;Ljavax/swing/JPanel;Ljavax/swing/JToolBar;Ljavax/swing/JPanel;Lorg/mozilla/javascript/tools/debugger/SwingGui;Ljavax/swing/JToolBar;Ljavax/swing/JPanel;Ljavax/swing/JSplitPane;)V

    new-instance v11, Lorg/mozilla/javascript/tools/debugger/ContextWindow$2;

    move-object/from16 v12, p0

    move-object/from16 v13, p0

    move-object v14, v5

    move-object v15, v8

    move-object/from16 v16, v9

    move-object/from16 v17, v10

    invoke-direct/range {v11 .. v17}, Lorg/mozilla/javascript/tools/debugger/ContextWindow$2;-><init>(Lorg/mozilla/javascript/tools/debugger/ContextWindow;Ljavax/swing/JPanel;Ljavax/swing/JToolBar;Ljavax/swing/JToolBar;Ljavax/swing/JPanel;Ljavax/swing/JSplitPane;)V

    invoke-virtual {v6, v11}, Ljavax/swing/JPanel;->addContainerListener(Ljava/awt/event/ContainerListener;)V

    invoke-virtual {v5, v2}, Ljavax/swing/JToolBar;->addComponentListener(Ljava/awt/event/ComponentListener;)V

    invoke-virtual {v8, v2}, Ljavax/swing/JToolBar;->addComponentListener(Ljava/awt/event/ComponentListener;)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/mozilla/javascript/tools/debugger/ContextWindow;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public actionPerformed(Ljava/awt/event/ActionEvent;)V
    .locals 7

    iget-boolean v0, p0, Lorg/mozilla/javascript/tools/debugger/ContextWindow;->enabled:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/awt/event/ActionEvent;->getActionCommand()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ContextSwitch"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/ContextWindow;->debugGui:Lorg/mozilla/javascript/tools/debugger/SwingGui;

    iget-object v0, v0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->dim:Lorg/mozilla/javascript/tools/debugger/Dim;

    invoke-virtual {v0}, Lorg/mozilla/javascript/tools/debugger/Dim;->currentContextData()Lorg/mozilla/javascript/tools/debugger/Dim$ContextData;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/ContextWindow;->context:Ljavax/swing/JComboBox;

    invoke-virtual {v0}, Ljavax/swing/JComboBox;->getSelectedIndex()I

    move-result v2

    iget-object v3, p0, Lorg/mozilla/javascript/tools/debugger/ContextWindow;->context:Ljavax/swing/JComboBox;

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/ContextWindow;->toolTips:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljavax/swing/JComboBox;->setToolTipText(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/mozilla/javascript/tools/debugger/Dim$ContextData;->frameCount()I

    move-result v0

    if-ge v2, v0, :cond_0

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/tools/debugger/Dim$ContextData;->getFrame(I)Lorg/mozilla/javascript/tools/debugger/Dim$StackFrame;

    move-result-object v1

    invoke-virtual {v1}, Lorg/mozilla/javascript/tools/debugger/Dim$StackFrame;->scope()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1}, Lorg/mozilla/javascript/tools/debugger/Dim$StackFrame;->thisObj()Ljava/lang/Object;

    move-result-object v0

    iget-object v4, p0, Lorg/mozilla/javascript/tools/debugger/ContextWindow;->thisTable:Lorg/mozilla/javascript/tools/debugger/MyTreeTable;

    new-instance v5, Lorg/mozilla/javascript/tools/debugger/VariableModel;

    iget-object v6, p0, Lorg/mozilla/javascript/tools/debugger/ContextWindow;->debugGui:Lorg/mozilla/javascript/tools/debugger/SwingGui;

    iget-object v6, v6, Lorg/mozilla/javascript/tools/debugger/SwingGui;->dim:Lorg/mozilla/javascript/tools/debugger/Dim;

    invoke-direct {v5, v6, v0}, Lorg/mozilla/javascript/tools/debugger/VariableModel;-><init>(Lorg/mozilla/javascript/tools/debugger/Dim;Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Lorg/mozilla/javascript/tools/debugger/MyTreeTable;->resetTree(Lorg/mozilla/javascript/tools/debugger/treetable/TreeTableModel;)Ljavax/swing/JTree;

    if-eq v3, v0, :cond_2

    new-instance v0, Lorg/mozilla/javascript/tools/debugger/VariableModel;

    iget-object v4, p0, Lorg/mozilla/javascript/tools/debugger/ContextWindow;->debugGui:Lorg/mozilla/javascript/tools/debugger/SwingGui;

    iget-object v4, v4, Lorg/mozilla/javascript/tools/debugger/SwingGui;->dim:Lorg/mozilla/javascript/tools/debugger/Dim;

    invoke-direct {v0, v4, v3}, Lorg/mozilla/javascript/tools/debugger/VariableModel;-><init>(Lorg/mozilla/javascript/tools/debugger/Dim;Ljava/lang/Object;)V

    :goto_1
    iget-object v3, p0, Lorg/mozilla/javascript/tools/debugger/ContextWindow;->localsTable:Lorg/mozilla/javascript/tools/debugger/MyTreeTable;

    invoke-virtual {v3, v0}, Lorg/mozilla/javascript/tools/debugger/MyTreeTable;->resetTree(Lorg/mozilla/javascript/tools/debugger/treetable/TreeTableModel;)Ljavax/swing/JTree;

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/ContextWindow;->debugGui:Lorg/mozilla/javascript/tools/debugger/SwingGui;

    iget-object v0, v0, Lorg/mozilla/javascript/tools/debugger/SwingGui;->dim:Lorg/mozilla/javascript/tools/debugger/Dim;

    invoke-virtual {v0, v2}, Lorg/mozilla/javascript/tools/debugger/Dim;->contextSwitch(I)V

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/ContextWindow;->debugGui:Lorg/mozilla/javascript/tools/debugger/SwingGui;

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/tools/debugger/SwingGui;->showStopLine(Lorg/mozilla/javascript/tools/debugger/Dim$StackFrame;)V

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/ContextWindow;->tableModel:Lorg/mozilla/javascript/tools/debugger/MyTableModel;

    invoke-virtual {v0}, Lorg/mozilla/javascript/tools/debugger/MyTableModel;->updateModel()V

    goto :goto_0

    :cond_2
    new-instance v0, Lorg/mozilla/javascript/tools/debugger/VariableModel;

    invoke-direct {v0}, Lorg/mozilla/javascript/tools/debugger/VariableModel;-><init>()V

    goto :goto_1
.end method

.method public disableUpdate()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mozilla/javascript/tools/debugger/ContextWindow;->enabled:Z

    return-void
.end method

.method public enableUpdate()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mozilla/javascript/tools/debugger/ContextWindow;->enabled:Z

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/ContextWindow;->context:Ljavax/swing/JComboBox;

    invoke-virtual {v0, p1}, Ljavax/swing/JComboBox;->setEnabled(Z)V

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/ContextWindow;->thisTable:Lorg/mozilla/javascript/tools/debugger/MyTreeTable;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/tools/debugger/MyTreeTable;->setEnabled(Z)V

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/ContextWindow;->localsTable:Lorg/mozilla/javascript/tools/debugger/MyTreeTable;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/tools/debugger/MyTreeTable;->setEnabled(Z)V

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/ContextWindow;->evaluator:Lorg/mozilla/javascript/tools/debugger/Evaluator;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/tools/debugger/Evaluator;->setEnabled(Z)V

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/ContextWindow;->cmdLine:Lorg/mozilla/javascript/tools/debugger/EvalTextArea;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/tools/debugger/EvalTextArea;->setEnabled(Z)V

    return-void
.end method
