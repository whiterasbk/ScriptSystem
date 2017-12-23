.class public abstract Lorg/whiter/javascript/runner/BaseScriptRunner;
.super Lorg/whiter/javascript/runner/RunnerUtils;
.source "BaseScriptRunner.java"

# interfaces
.implements Lorg/whiter/javascript/interfaces/Runner;


# instance fields
.field protected console:Lorg/mozilla/javascript/ScriptableObject;

.field protected reader:Ljava/io/Reader;

.field protected rhino:Lorg/mozilla/javascript/Context;

.field protected runParams:Lorg/whiter/javascript/params/RunParams;

.field protected scope:Lorg/mozilla/javascript/Scriptable;

.field protected script:Lorg/mozilla/javascript/Script;

.field protected sourceName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/File;Lorg/whiter/javascript/params/RunParams;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Lorg/whiter/javascript/runner/RunnerUtils;-><init>()V

    move-object v0, v1

    check-cast v0, Ljava/io/Reader;

    iput-object v0, p0, Lorg/whiter/javascript/runner/BaseScriptRunner;->reader:Ljava/io/Reader;

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/whiter/javascript/runner/BaseScriptRunner;->sourceName:Ljava/lang/String;

    move-object v0, v1

    check-cast v0, Lorg/whiter/javascript/params/RunParams;

    iput-object v0, p0, Lorg/whiter/javascript/runner/BaseScriptRunner;->runParams:Lorg/whiter/javascript/params/RunParams;

    move-object v0, v1

    check-cast v0, Lorg/mozilla/javascript/Scriptable;

    iput-object v0, p0, Lorg/whiter/javascript/runner/BaseScriptRunner;->scope:Lorg/mozilla/javascript/Scriptable;

    move-object v0, v1

    check-cast v0, Lorg/mozilla/javascript/Script;

    iput-object v0, p0, Lorg/whiter/javascript/runner/BaseScriptRunner;->script:Lorg/mozilla/javascript/Script;

    move-object v0, v1

    check-cast v0, Lorg/mozilla/javascript/Context;

    iput-object v0, p0, Lorg/whiter/javascript/runner/BaseScriptRunner;->rhino:Lorg/mozilla/javascript/Context;

    check-cast v1, Lorg/mozilla/javascript/ScriptableObject;

    iput-object v1, p0, Lorg/whiter/javascript/runner/BaseScriptRunner;->console:Lorg/mozilla/javascript/ScriptableObject;

    .line 42
    new-instance v0, Ljava/io/FileReader;

    invoke-direct {v0, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p2}, Lorg/whiter/javascript/runner/BaseScriptRunner;->init(Ljava/io/Reader;Ljava/lang/String;Lorg/whiter/javascript/params/RunParams;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;Lorg/whiter/javascript/params/RunParams;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Lorg/whiter/javascript/runner/RunnerUtils;-><init>()V

    move-object v0, v1

    check-cast v0, Ljava/io/Reader;

    iput-object v0, p0, Lorg/whiter/javascript/runner/BaseScriptRunner;->reader:Ljava/io/Reader;

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/whiter/javascript/runner/BaseScriptRunner;->sourceName:Ljava/lang/String;

    move-object v0, v1

    check-cast v0, Lorg/whiter/javascript/params/RunParams;

    iput-object v0, p0, Lorg/whiter/javascript/runner/BaseScriptRunner;->runParams:Lorg/whiter/javascript/params/RunParams;

    move-object v0, v1

    check-cast v0, Lorg/mozilla/javascript/Scriptable;

    iput-object v0, p0, Lorg/whiter/javascript/runner/BaseScriptRunner;->scope:Lorg/mozilla/javascript/Scriptable;

    move-object v0, v1

    check-cast v0, Lorg/mozilla/javascript/Script;

    iput-object v0, p0, Lorg/whiter/javascript/runner/BaseScriptRunner;->script:Lorg/mozilla/javascript/Script;

    move-object v0, v1

    check-cast v0, Lorg/mozilla/javascript/Context;

    iput-object v0, p0, Lorg/whiter/javascript/runner/BaseScriptRunner;->rhino:Lorg/mozilla/javascript/Context;

    check-cast v1, Lorg/mozilla/javascript/ScriptableObject;

    iput-object v1, p0, Lorg/whiter/javascript/runner/BaseScriptRunner;->console:Lorg/mozilla/javascript/ScriptableObject;

    .line 37
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0, v0, p2, p3}, Lorg/whiter/javascript/runner/BaseScriptRunner;->init(Ljava/io/Reader;Ljava/lang/String;Lorg/whiter/javascript/params/RunParams;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;Ljava/lang/String;Lorg/whiter/javascript/params/RunParams;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 31
    invoke-direct {p0}, Lorg/whiter/javascript/runner/RunnerUtils;-><init>()V

    move-object v0, v1

    check-cast v0, Ljava/io/Reader;

    iput-object v0, p0, Lorg/whiter/javascript/runner/BaseScriptRunner;->reader:Ljava/io/Reader;

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/whiter/javascript/runner/BaseScriptRunner;->sourceName:Ljava/lang/String;

    move-object v0, v1

    check-cast v0, Lorg/whiter/javascript/params/RunParams;

    iput-object v0, p0, Lorg/whiter/javascript/runner/BaseScriptRunner;->runParams:Lorg/whiter/javascript/params/RunParams;

    move-object v0, v1

    check-cast v0, Lorg/mozilla/javascript/Scriptable;

    iput-object v0, p0, Lorg/whiter/javascript/runner/BaseScriptRunner;->scope:Lorg/mozilla/javascript/Scriptable;

    move-object v0, v1

    check-cast v0, Lorg/mozilla/javascript/Script;

    iput-object v0, p0, Lorg/whiter/javascript/runner/BaseScriptRunner;->script:Lorg/mozilla/javascript/Script;

    move-object v0, v1

    check-cast v0, Lorg/mozilla/javascript/Context;

    iput-object v0, p0, Lorg/whiter/javascript/runner/BaseScriptRunner;->rhino:Lorg/mozilla/javascript/Context;

    check-cast v1, Lorg/mozilla/javascript/ScriptableObject;

    iput-object v1, p0, Lorg/whiter/javascript/runner/BaseScriptRunner;->console:Lorg/mozilla/javascript/ScriptableObject;

    .line 32
    invoke-virtual {p0, p1, p2, p3}, Lorg/whiter/javascript/runner/BaseScriptRunner;->init(Ljava/io/Reader;Ljava/lang/String;Lorg/whiter/javascript/params/RunParams;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/whiter/javascript/params/RunParams;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Lorg/whiter/javascript/runner/RunnerUtils;-><init>()V

    move-object v0, v1

    check-cast v0, Ljava/io/Reader;

    iput-object v0, p0, Lorg/whiter/javascript/runner/BaseScriptRunner;->reader:Ljava/io/Reader;

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/whiter/javascript/runner/BaseScriptRunner;->sourceName:Ljava/lang/String;

    move-object v0, v1

    check-cast v0, Lorg/whiter/javascript/params/RunParams;

    iput-object v0, p0, Lorg/whiter/javascript/runner/BaseScriptRunner;->runParams:Lorg/whiter/javascript/params/RunParams;

    move-object v0, v1

    check-cast v0, Lorg/mozilla/javascript/Scriptable;

    iput-object v0, p0, Lorg/whiter/javascript/runner/BaseScriptRunner;->scope:Lorg/mozilla/javascript/Scriptable;

    move-object v0, v1

    check-cast v0, Lorg/mozilla/javascript/Script;

    iput-object v0, p0, Lorg/whiter/javascript/runner/BaseScriptRunner;->script:Lorg/mozilla/javascript/Script;

    move-object v0, v1

    check-cast v0, Lorg/mozilla/javascript/Context;

    iput-object v0, p0, Lorg/whiter/javascript/runner/BaseScriptRunner;->rhino:Lorg/mozilla/javascript/Context;

    check-cast v1, Lorg/mozilla/javascript/ScriptableObject;

    iput-object v1, p0, Lorg/whiter/javascript/runner/BaseScriptRunner;->console:Lorg/mozilla/javascript/ScriptableObject;

    .line 47
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 48
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 49
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0, p2}, Lorg/whiter/javascript/runner/BaseScriptRunner;->init(Ljava/io/Reader;Ljava/lang/String;Lorg/whiter/javascript/params/RunParams;)V

    return-void
.end method


# virtual methods
.method public varargs callScriptMethod(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 93
    invoke-virtual {p0, p1}, Lorg/whiter/javascript/runner/BaseScriptRunner;->getScriptObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/javascript/Function;

    .line 95
    if-eqz v0, :cond_0

    instance-of v1, v0, Lorg/mozilla/javascript/Function;

    if-eqz v1, :cond_0

    .line 99
    :try_start_0
    iget-object v1, p0, Lorg/whiter/javascript/runner/BaseScriptRunner;->rhino:Lorg/mozilla/javascript/Context;

    iget-object v2, p0, Lorg/whiter/javascript/runner/BaseScriptRunner;->scope:Lorg/mozilla/javascript/Scriptable;

    iget-object v3, p0, Lorg/whiter/javascript/runner/BaseScriptRunner;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-interface {v0, v1, v2, v3, p2}, Lorg/mozilla/javascript/Function;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 106
    :goto_0
    return-object v0

    .line 99
    :catch_0
    move-exception v0

    .line 103
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 106
    :cond_0
    const/4 v1, 0x0

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    goto :goto_0
.end method

.method public abstract execute()Lorg/whiter/javascript/interfaces/Runner$ScriptState;
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 111
    invoke-virtual {p0, p1}, Lorg/whiter/javascript/runner/BaseScriptRunner;->getScriptObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getBytes(Ljava/lang/String;)[B
    .locals 1

    .prologue
    .line 136
    invoke-virtual {p0, p1}, Lorg/whiter/javascript/runner/BaseScriptRunner;->getScriptObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getChars(Ljava/lang/String;)[C
    .locals 1

    .prologue
    .line 141
    invoke-virtual {p0, p1}, Lorg/whiter/javascript/runner/BaseScriptRunner;->getScriptObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    return-object v0
.end method

.method public getDouble(Ljava/lang/String;)D
    .locals 2

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Lorg/whiter/javascript/runner/BaseScriptRunner;->getScriptObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public getFloat(Ljava/lang/String;)F
    .locals 1

    .prologue
    .line 126
    invoke-virtual {p0, p1}, Lorg/whiter/javascript/runner/BaseScriptRunner;->getScriptObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 121
    invoke-virtual {p0, p1}, Lorg/whiter/javascript/runner/BaseScriptRunner;->getScriptObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getNativeArray(Ljava/lang/String;)Lorg/mozilla/javascript/NativeArray;
    .locals 1

    .prologue
    .line 206
    invoke-virtual {p0, p1}, Lorg/whiter/javascript/runner/BaseScriptRunner;->getScriptObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/javascript/NativeArray;

    return-object v0
.end method

.method public getNativeBoolean(Ljava/lang/String;)Lorg/mozilla/javascript/NativeBoolean;
    .locals 1

    .prologue
    .line 201
    invoke-virtual {p0, p1}, Lorg/whiter/javascript/runner/BaseScriptRunner;->getScriptObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/javascript/NativeBoolean;

    return-object v0
.end method

.method public getNativeCall(Ljava/lang/String;)Lorg/mozilla/javascript/NativeCall;
    .locals 1

    .prologue
    .line 221
    invoke-virtual {p0, p1}, Lorg/whiter/javascript/runner/BaseScriptRunner;->getScriptObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/javascript/NativeCall;

    return-object v0
.end method

.method public getNativeError(Ljava/lang/String;)Lorg/mozilla/javascript/NativeError;
    .locals 1

    .prologue
    .line 211
    invoke-virtual {p0, p1}, Lorg/whiter/javascript/runner/BaseScriptRunner;->getScriptObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/javascript/NativeError;

    return-object v0
.end method

.method public getNativeFunction(Ljava/lang/String;)Lorg/mozilla/javascript/NativeFunction;
    .locals 1

    .prologue
    .line 161
    invoke-virtual {p0, p1}, Lorg/whiter/javascript/runner/BaseScriptRunner;->getScriptObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/javascript/NativeFunction;

    return-object v0
.end method

.method public getNativeJavaArray(Ljava/lang/String;)Lorg/mozilla/javascript/NativeJavaArray;
    .locals 1

    .prologue
    .line 166
    invoke-virtual {p0, p1}, Lorg/whiter/javascript/runner/BaseScriptRunner;->getScriptObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/javascript/NativeJavaArray;

    return-object v0
.end method

.method public getNativeJavaClass(Ljava/lang/String;)Lorg/mozilla/javascript/NativeJavaClass;
    .locals 1

    .prologue
    .line 171
    invoke-virtual {p0, p1}, Lorg/whiter/javascript/runner/BaseScriptRunner;->getScriptObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/javascript/NativeJavaClass;

    return-object v0
.end method

.method public getNativeJavaMethod(Ljava/lang/String;)Lorg/mozilla/javascript/NativeJavaMethod;
    .locals 1

    .prologue
    .line 176
    invoke-virtual {p0, p1}, Lorg/whiter/javascript/runner/BaseScriptRunner;->getScriptObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/javascript/NativeJavaMethod;

    return-object v0
.end method

.method public getNativeJavaObject(Ljava/lang/String;)Lorg/mozilla/javascript/NativeJavaObject;
    .locals 1

    .prologue
    .line 156
    invoke-virtual {p0, p1}, Lorg/whiter/javascript/runner/BaseScriptRunner;->getScriptObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/javascript/NativeJavaObject;

    return-object v0
.end method

.method public getNativeJavaPackage(Ljava/lang/String;)Lorg/mozilla/javascript/NativeJavaPackage;
    .locals 1

    .prologue
    .line 181
    invoke-virtual {p0, p1}, Lorg/whiter/javascript/runner/BaseScriptRunner;->getScriptObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/javascript/NativeJavaPackage;

    return-object v0
.end method

.method public getNativeMath(Ljava/lang/String;)Lorg/mozilla/javascript/NativeMath;
    .locals 1

    .prologue
    .line 216
    invoke-virtual {p0, p1}, Lorg/whiter/javascript/runner/BaseScriptRunner;->getScriptObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/javascript/NativeMath;

    return-object v0
.end method

.method public getNativeNumber(Ljava/lang/String;)Lorg/mozilla/javascript/NativeNumber;
    .locals 1

    .prologue
    .line 191
    invoke-virtual {p0, p1}, Lorg/whiter/javascript/runner/BaseScriptRunner;->getScriptObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/javascript/NativeNumber;

    return-object v0
.end method

.method public getNativeObject(Ljava/lang/String;)Lorg/mozilla/javascript/NativeObject;
    .locals 1

    .prologue
    .line 151
    invoke-virtual {p0, p1}, Lorg/whiter/javascript/runner/BaseScriptRunner;->getScriptObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/javascript/NativeObject;

    return-object v0
.end method

.method public getNativeRegExp(Ljava/lang/String;)Lorg/mozilla/javascript/regexp/NativeRegExp;
    .locals 1

    .prologue
    .line 186
    invoke-virtual {p0, p1}, Lorg/whiter/javascript/runner/BaseScriptRunner;->getScriptObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/javascript/regexp/NativeRegExp;

    return-object v0
.end method

.method public getNativeString(Ljava/lang/String;)Lorg/mozilla/javascript/NativeString;
    .locals 1

    .prologue
    .line 196
    invoke-virtual {p0, p1}, Lorg/whiter/javascript/runner/BaseScriptRunner;->getScriptObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/javascript/NativeString;

    return-object v0
.end method

.method public getScriptObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lorg/whiter/javascript/runner/BaseScriptRunner;->scope:Lorg/mozilla/javascript/Scriptable;

    iget-object v1, p0, Lorg/whiter/javascript/runner/BaseScriptRunner;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-interface {v0, p1, v1}, Lorg/mozilla/javascript/Scriptable;->get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    invoke-virtual {p0, p1}, Lorg/whiter/javascript/runner/BaseScriptRunner;->getScriptObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method protected init(Ljava/io/Reader;Ljava/lang/String;Lorg/whiter/javascript/params/RunParams;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Reader;",
            "Ljava/lang/String;",
            "Lorg/whiter/javascript/params/RunParams;",
            ")V"
        }
    .end annotation

    .prologue
    .line 54
    iput-object p1, p0, Lorg/whiter/javascript/runner/BaseScriptRunner;->reader:Ljava/io/Reader;

    .line 55
    iput-object p2, p0, Lorg/whiter/javascript/runner/BaseScriptRunner;->sourceName:Ljava/lang/String;

    .line 56
    iput-object p3, p0, Lorg/whiter/javascript/runner/BaseScriptRunner;->runParams:Lorg/whiter/javascript/params/RunParams;

    .line 57
    invoke-virtual {p3}, Lorg/whiter/javascript/params/RunParams;->getConsole()Lorg/mozilla/javascript/ScriptableObject;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/whiter/javascript/objects/Console;

    invoke-direct {v0}, Lorg/whiter/javascript/objects/Console;-><init>()V

    :goto_0
    iput-object v0, p0, Lorg/whiter/javascript/runner/BaseScriptRunner;->console:Lorg/mozilla/javascript/ScriptableObject;

    return-void

    :cond_0
    invoke-virtual {p3}, Lorg/whiter/javascript/params/RunParams;->getConsole()Lorg/mozilla/javascript/ScriptableObject;

    move-result-object v0

    goto :goto_0
.end method

.method protected initClasses()V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 64
    :try_start_0
    iget-object v0, p0, Lorg/whiter/javascript/runner/BaseScriptRunner;->runParams:Lorg/whiter/javascript/params/RunParams;

    invoke-virtual {v0}, Lorg/whiter/javascript/params/RunParams;->getDefindFunctions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 65
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    iget-object v0, p0, Lorg/whiter/javascript/runner/BaseScriptRunner;->runParams:Lorg/whiter/javascript/params/RunParams;

    invoke-virtual {v0}, Lorg/whiter/javascript/params/RunParams;->getDefindClasses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 72
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 77
    iget-object v0, p0, Lorg/whiter/javascript/runner/BaseScriptRunner;->runParams:Lorg/whiter/javascript/params/RunParams;

    invoke-virtual {v0}, Lorg/whiter/javascript/params/RunParams;->getDefindProperties()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 78
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 79
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 87
    :goto_3
    return-void

    .line 67
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 68
    iget-object v1, p0, Lorg/whiter/javascript/runner/BaseScriptRunner;->scope:Lorg/mozilla/javascript/Scriptable;

    check-cast v1, Lorg/mozilla/javascript/ScriptableObject;

    invoke-static {v0}, Lorg/whiter/javascript/runner/RunnerUtils;->getAllJsFunctions(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v1, v3, v0, v4}, Lorg/mozilla/javascript/ScriptableObject;->defineFunctionProperties([Ljava/lang/String;Ljava/lang/Class;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 79
    :catch_0
    move-exception v0

    .line 87
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 74
    :cond_1
    :try_start_1
    iget-object v2, p0, Lorg/whiter/javascript/runner/BaseScriptRunner;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-static {v2, v0}, Lorg/mozilla/javascript/ScriptableObject;->defineClass(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Class;)V

    goto :goto_1

    .line 81
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 82
    iget-object v3, p0, Lorg/whiter/javascript/runner/BaseScriptRunner;->scope:Lorg/mozilla/javascript/Scriptable;

    iget-object v1, p0, Lorg/whiter/javascript/runner/BaseScriptRunner;->runParams:Lorg/whiter/javascript/params/RunParams;

    invoke-virtual {v1}, Lorg/whiter/javascript/params/RunParams;->getDefindProperties()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-static {v1}, Lorg/whiter/javascript/runner/RunnerUtils;->classConstantsToJSObject(Ljava/lang/Class;)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lorg/mozilla/javascript/ScriptableObject;->putProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public abstract load()V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V^",
            "Ljava/lang/Exception;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
