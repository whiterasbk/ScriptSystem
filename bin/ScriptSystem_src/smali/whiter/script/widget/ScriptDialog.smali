.class public Lwhiter/script/widget/ScriptDialog;
.super Landroid/app/AlertDialog;
.source "ScriptDialog.java"


# instance fields
.field private ctx:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lwhiter/script/widget/ScriptDialog;->ctx:Landroid/content/Context;

    .line 12
    iput-object p1, p0, Lwhiter/script/widget/ScriptDialog;->ctx:Landroid/content/Context;

    return-void
.end method
