.class Lorg/mozilla/javascript/tools/debugger/Evaluator;
.super Ljavax/swing/JTable;


# static fields
.field private static final serialVersionUID:J = 0x70e09bfbd75092d0L


# instance fields
.field tableModel:Lorg/mozilla/javascript/tools/debugger/MyTableModel;


# direct methods
.method public constructor <init>(Lorg/mozilla/javascript/tools/debugger/SwingGui;)V
    .locals 1

    new-instance v0, Lorg/mozilla/javascript/tools/debugger/MyTableModel;

    invoke-direct {v0, p1}, Lorg/mozilla/javascript/tools/debugger/MyTableModel;-><init>(Lorg/mozilla/javascript/tools/debugger/SwingGui;)V

    invoke-direct {p0, v0}, Ljavax/swing/JTable;-><init>(Ljavax/swing/table/TableModel;)V

    invoke-virtual {p0}, Lorg/mozilla/javascript/tools/debugger/Evaluator;->getModel()Ljavax/swing/table/TableModel;

    move-result-object v0

    check-cast v0, Lorg/mozilla/javascript/tools/debugger/MyTableModel;

    iput-object v0, p0, Lorg/mozilla/javascript/tools/debugger/Evaluator;->tableModel:Lorg/mozilla/javascript/tools/debugger/MyTableModel;

    return-void
.end method
