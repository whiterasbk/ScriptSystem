.class public Lorg/whiter/javascript/runner/ScriptGroup$ScriptItem;
.super Ljava/lang/Object;
.source "ScriptGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/whiter/javascript/runner/ScriptGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x21
    name = "ScriptItem"
.end annotation


# instance fields
.field private reader:Ljava/io/Reader;

.field private sourceName:Ljava/lang/String;

.field private final this$0:Lorg/whiter/javascript/runner/ScriptGroup;


# direct methods
.method public constructor <init>(Lorg/whiter/javascript/runner/ScriptGroup;Ljava/io/File;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 112
    new-instance v0, Ljava/io/FileReader;

    invoke-direct {v0, p2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lorg/whiter/javascript/runner/ScriptGroup$ScriptItem;-><init>(Lorg/whiter/javascript/runner/ScriptGroup;Ljava/io/Reader;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/whiter/javascript/runner/ScriptGroup;Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 107
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, p1, v0, p3}, Lorg/whiter/javascript/runner/ScriptGroup$ScriptItem;-><init>(Lorg/whiter/javascript/runner/ScriptGroup;Ljava/io/Reader;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/whiter/javascript/runner/ScriptGroup;Ljava/io/Reader;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/whiter/javascript/runner/ScriptGroup$ScriptItem;->this$0:Lorg/whiter/javascript/runner/ScriptGroup;

    move-object v0, v1

    check-cast v0, Ljava/io/Reader;

    iput-object v0, p0, Lorg/whiter/javascript/runner/ScriptGroup$ScriptItem;->reader:Ljava/io/Reader;

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lorg/whiter/javascript/runner/ScriptGroup$ScriptItem;->sourceName:Ljava/lang/String;

    .line 101
    iput-object p2, p0, Lorg/whiter/javascript/runner/ScriptGroup$ScriptItem;->reader:Ljava/io/Reader;

    .line 102
    iput-object p3, p0, Lorg/whiter/javascript/runner/ScriptGroup$ScriptItem;->sourceName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/whiter/javascript/runner/ScriptGroup;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 117
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lorg/whiter/javascript/runner/ScriptGroup$ScriptItem;-><init>(Lorg/whiter/javascript/runner/ScriptGroup;Ljava/io/File;)V

    return-void
.end method

.method static access$0(Lorg/whiter/javascript/runner/ScriptGroup$ScriptItem;)Lorg/whiter/javascript/runner/ScriptGroup;
    .locals 1

    iget-object v0, p0, Lorg/whiter/javascript/runner/ScriptGroup$ScriptItem;->this$0:Lorg/whiter/javascript/runner/ScriptGroup;

    return-object v0
.end method


# virtual methods
.method public getReader()Ljava/io/Reader;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lorg/whiter/javascript/runner/ScriptGroup$ScriptItem;->reader:Ljava/io/Reader;

    return-object v0
.end method

.method public getSourceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lorg/whiter/javascript/runner/ScriptGroup$ScriptItem;->sourceName:Ljava/lang/String;

    return-object v0
.end method
