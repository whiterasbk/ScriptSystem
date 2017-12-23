.class public Lorg/whiter/javascript/runner/RunnerUtils;
.super Ljava/lang/Object;
.source "RunnerUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static classConstantsToJSObject(Ljava/lang/Class;)Lorg/mozilla/javascript/ScriptableObject;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/mozilla/javascript/ScriptableObject;"
        }
    .end annotation

    .prologue
    .line 21
    new-instance v2, Lorg/mozilla/javascript/NativeObject;

    invoke-direct {v2}, Lorg/mozilla/javascript/NativeObject;-><init>()V

    .line 23
    invoke-virtual {p0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v0, 0x0

    move v1, v0

    .line 34
    :goto_0
    array-length v0, v3

    if-lt v1, v0, :cond_0

    .line 37
    return-object v2

    .line 23
    :cond_0
    aget-object v4, v3, v1

    .line 25
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    .line 26
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 34
    :cond_1
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 30
    :cond_2
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Object;

    invoke-virtual {v4, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v5, v2, v0}, Lorg/mozilla/javascript/ScriptableObject;->putConst(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 34
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static exec(Ljava/lang/String;)Lorg/whiter/javascript/interfaces/Runner$ScriptState;
    .locals 2

    .prologue
    .line 60
    new-instance v0, Lorg/whiter/javascript/params/CodeParams;

    invoke-direct {v0}, Lorg/whiter/javascript/params/CodeParams;-><init>()V

    .line 61
    invoke-virtual {v0, p0}, Lorg/whiter/javascript/params/CodeParams;->setCode(Ljava/lang/String;)V

    .line 62
    new-instance v1, Lorg/whiter/javascript/objects/Console;

    invoke-direct {v1}, Lorg/whiter/javascript/objects/Console;-><init>()V

    invoke-virtual {v0, v1}, Lorg/whiter/javascript/params/CodeParams;->setHostObject(Lorg/mozilla/javascript/ScriptableObject;)V

    .line 63
    invoke-static {v0}, Lorg/whiter/javascript/runner/RunnerUtils;->exec(Lorg/whiter/javascript/params/CodeParams;)Lorg/whiter/javascript/interfaces/Runner$ScriptState;

    move-result-object v0

    return-object v0
.end method

.method public static exec(Ljava/lang/String;Ljava/lang/String;)Lorg/whiter/javascript/interfaces/Runner$ScriptState;
    .locals 3

    .prologue
    .line 68
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/whiter/javascript/runner/RunnerUtils;->exec(Ljava/lang/String;)Lorg/whiter/javascript/interfaces/Runner$ScriptState;

    move-result-object v0

    return-object v0
.end method

.method public static exec(Lorg/whiter/javascript/params/CodeParams;)Lorg/whiter/javascript/interfaces/Runner$ScriptState;
    .locals 10

    .prologue
    const/4 v2, 0x0

    move-object v1, v2

    .line 73
    check-cast v1, Ljava/lang/Object;

    move-object v9, v2

    .line 74
    check-cast v9, Lorg/whiter/javascript/interfaces/Runner$ScriptState;

    .line 77
    :try_start_0
    invoke-virtual {p0}, Lorg/whiter/javascript/params/CodeParams;->getContext()Lorg/mozilla/javascript/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 79
    invoke-virtual {p0}, Lorg/whiter/javascript/params/CodeParams;->getContext()Lorg/mozilla/javascript/Context;

    move-result-object v1

    .line 80
    invoke-virtual {p0}, Lorg/whiter/javascript/params/CodeParams;->getHostObject()Lorg/mozilla/javascript/ScriptableObject;

    move-result-object v2

    .line 81
    invoke-static {v1}, Lorg/whiter/javascript/runner/RunnerUtils;->setupContext(Lorg/mozilla/javascript/Context;)V

    .line 82
    if-nez v2, :cond_0

    invoke-virtual {v1}, Lorg/mozilla/javascript/Context;->initStandardObjects()Lorg/mozilla/javascript/ScriptableObject;

    move-result-object v2

    .line 83
    :goto_0
    move-object v0, v2

    check-cast v0, Lorg/mozilla/javascript/ScriptableObject;

    move-object v3, v0

    invoke-virtual {p0}, Lorg/whiter/javascript/params/CodeParams;->getHostObject()Lorg/mozilla/javascript/ScriptableObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/mozilla/javascript/ScriptableObject;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lorg/whiter/javascript/runner/RunnerUtils;->getAllJsFunctions(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lorg/whiter/javascript/params/CodeParams;->getHostObject()Lorg/mozilla/javascript/ScriptableObject;

    move-result-object v5

    invoke-virtual {v5}, Lorg/mozilla/javascript/ScriptableObject;->getClass()Ljava/lang/Class;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v3, v4, v5, v6}, Lorg/mozilla/javascript/ScriptableObject;->defineFunctionProperties([Ljava/lang/String;Ljava/lang/Class;I)V

    .line 84
    invoke-virtual {p0}, Lorg/whiter/javascript/params/CodeParams;->getDefobject()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/mozilla/javascript/ScriptableObject;->defineClass(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Class;)V

    .line 85
    invoke-virtual {p0}, Lorg/whiter/javascript/params/CodeParams;->getCode()Ljava/lang/String;

    move-result-object v3

    const-string v4, "js"

    const/4 v5, 0x1

    const/4 v6, 0x0

    check-cast v6, Ljava/lang/Object;

    invoke-virtual/range {v1 .. v6}, Lorg/mozilla/javascript/Context;->evaluateString(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 86
    invoke-static {}, Lorg/mozilla/javascript/Context;->exit()V

    .line 87
    new-instance v3, Lorg/whiter/javascript/interfaces/Runner$ScriptState;

    const-string v5, "string"

    const/4 v6, 0x0

    check-cast v6, Lorg/mozilla/javascript/Script;

    move-object v4, v1

    move-object v7, v2

    invoke-direct/range {v3 .. v8}, Lorg/whiter/javascript/interfaces/Runner$ScriptState;-><init>(Lorg/mozilla/javascript/Context;Ljava/lang/String;Lorg/mozilla/javascript/Script;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    .line 106
    :goto_1
    return-object v3

    .line 82
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/mozilla/javascript/Context;->initStandardObjects(Lorg/mozilla/javascript/ScriptableObject;Z)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object v2

    goto :goto_0

    .line 91
    :cond_1
    invoke-static {}, Lorg/mozilla/javascript/Context;->enter()Lorg/mozilla/javascript/Context;

    move-result-object v1

    .line 92
    invoke-virtual {p0}, Lorg/whiter/javascript/params/CodeParams;->getHostObject()Lorg/mozilla/javascript/ScriptableObject;

    move-result-object v2

    .line 93
    invoke-static {v1}, Lorg/whiter/javascript/runner/RunnerUtils;->setupContext(Lorg/mozilla/javascript/Context;)V

    .line 94
    if-nez v2, :cond_3

    invoke-virtual {v1}, Lorg/mozilla/javascript/Context;->initStandardObjects()Lorg/mozilla/javascript/ScriptableObject;

    move-result-object v2

    .line 95
    :goto_2
    move-object v0, v2

    check-cast v0, Lorg/mozilla/javascript/ScriptableObject;

    move-object v3, v0

    invoke-virtual {p0}, Lorg/whiter/javascript/params/CodeParams;->getHostObject()Lorg/mozilla/javascript/ScriptableObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/mozilla/javascript/ScriptableObject;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lorg/whiter/javascript/runner/RunnerUtils;->getAllJsFunctions(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lorg/whiter/javascript/params/CodeParams;->getHostObject()Lorg/mozilla/javascript/ScriptableObject;

    move-result-object v5

    invoke-virtual {v5}, Lorg/mozilla/javascript/ScriptableObject;->getClass()Ljava/lang/Class;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v3, v4, v5, v6}, Lorg/mozilla/javascript/ScriptableObject;->defineFunctionProperties([Ljava/lang/String;Ljava/lang/Class;I)V

    .line 96
    invoke-virtual {p0}, Lorg/whiter/javascript/params/CodeParams;->getDefobject()Ljava/lang/Class;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lorg/whiter/javascript/params/CodeParams;->getDefobject()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/mozilla/javascript/ScriptableObject;->defineClass(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Class;)V

    .line 97
    :cond_2
    invoke-virtual {p0}, Lorg/whiter/javascript/params/CodeParams;->getCode()Ljava/lang/String;

    move-result-object v3

    const-string v4, "js"

    const/4 v5, 0x1

    const/4 v6, 0x0

    check-cast v6, Ljava/lang/Object;

    invoke-virtual/range {v1 .. v6}, Lorg/mozilla/javascript/Context;->evaluateString(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 98
    invoke-static {}, Lorg/mozilla/javascript/Context;->exit()V

    .line 99
    new-instance v3, Lorg/whiter/javascript/interfaces/Runner$ScriptState;

    const-string v5, "string"

    const/4 v6, 0x0

    check-cast v6, Lorg/mozilla/javascript/Script;

    move-object v4, v1

    move-object v7, v2

    invoke-direct/range {v3 .. v8}, Lorg/whiter/javascript/interfaces/Runner$ScriptState;-><init>(Lorg/mozilla/javascript/Context;Ljava/lang/String;Lorg/mozilla/javascript/Script;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 104
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v3, v9

    goto :goto_1

    .line 94
    :cond_3
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v1, v2, v3}, Lorg/mozilla/javascript/Context;->initStandardObjects(Lorg/mozilla/javascript/ScriptableObject;Z)Lorg/mozilla/javascript/ScriptableObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    goto :goto_2
.end method

.method public static getAllJsFunctions(Ljava/lang/Class;)[Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/mozilla/javascript/ScriptableObject;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 42
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 43
    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v4

    move v1, v2

    .line 47
    :goto_0
    array-length v0, v4

    if-lt v1, v0, :cond_0

    .line 50
    new-array v0, v2, [Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0

    .line 43
    :cond_0
    aget-object v5, v4, v1

    .line 45
    :try_start_0
    const-string v0, "org.mozilla.javascript.annotations.JSFunction"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/mozilla/javascript/annotations/JSFunction;

    if-eqz v0, :cond_1

    .line 47
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 45
    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static setupContext(Lorg/mozilla/javascript/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/javascript/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 55
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/Context;->setOptimizationLevel(I)V

    return-void
.end method
