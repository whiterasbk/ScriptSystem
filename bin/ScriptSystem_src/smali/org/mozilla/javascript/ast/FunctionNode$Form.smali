.class public final enum Lorg/mozilla/javascript/ast/FunctionNode$Form;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/javascript/ast/FunctionNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Form"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/mozilla/javascript/ast/FunctionNode$Form;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/mozilla/javascript/ast/FunctionNode$Form;

.field public static final enum FUNCTION:Lorg/mozilla/javascript/ast/FunctionNode$Form;

.field public static final enum GETTER:Lorg/mozilla/javascript/ast/FunctionNode$Form;

.field public static final enum SETTER:Lorg/mozilla/javascript/ast/FunctionNode$Form;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lorg/mozilla/javascript/ast/FunctionNode$Form;

    const-string v1, "FUNCTION"

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/ast/FunctionNode$Form;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mozilla/javascript/ast/FunctionNode$Form;->FUNCTION:Lorg/mozilla/javascript/ast/FunctionNode$Form;

    new-instance v0, Lorg/mozilla/javascript/ast/FunctionNode$Form;

    const-string v1, "GETTER"

    invoke-direct {v0, v1, v3}, Lorg/mozilla/javascript/ast/FunctionNode$Form;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mozilla/javascript/ast/FunctionNode$Form;->GETTER:Lorg/mozilla/javascript/ast/FunctionNode$Form;

    new-instance v0, Lorg/mozilla/javascript/ast/FunctionNode$Form;

    const-string v1, "SETTER"

    invoke-direct {v0, v1, v4}, Lorg/mozilla/javascript/ast/FunctionNode$Form;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mozilla/javascript/ast/FunctionNode$Form;->SETTER:Lorg/mozilla/javascript/ast/FunctionNode$Form;

    const/4 v0, 0x3

    new-array v0, v0, [Lorg/mozilla/javascript/ast/FunctionNode$Form;

    sget-object v1, Lorg/mozilla/javascript/ast/FunctionNode$Form;->FUNCTION:Lorg/mozilla/javascript/ast/FunctionNode$Form;

    aput-object v1, v0, v2

    sget-object v1, Lorg/mozilla/javascript/ast/FunctionNode$Form;->GETTER:Lorg/mozilla/javascript/ast/FunctionNode$Form;

    aput-object v1, v0, v3

    sget-object v1, Lorg/mozilla/javascript/ast/FunctionNode$Form;->SETTER:Lorg/mozilla/javascript/ast/FunctionNode$Form;

    aput-object v1, v0, v4

    sput-object v0, Lorg/mozilla/javascript/ast/FunctionNode$Form;->$VALUES:[Lorg/mozilla/javascript/ast/FunctionNode$Form;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/mozilla/javascript/ast/FunctionNode$Form;
    .locals 1

    const-class v0, Lorg/mozilla/javascript/ast/FunctionNode$Form;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/mozilla/javascript/ast/FunctionNode$Form;

    return-object v0
.end method

.method public static values()[Lorg/mozilla/javascript/ast/FunctionNode$Form;
    .locals 1

    sget-object v0, Lorg/mozilla/javascript/ast/FunctionNode$Form;->$VALUES:[Lorg/mozilla/javascript/ast/FunctionNode$Form;

    invoke-virtual {v0}, [Lorg/mozilla/javascript/ast/FunctionNode$Form;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/mozilla/javascript/ast/FunctionNode$Form;

    return-object v0
.end method
