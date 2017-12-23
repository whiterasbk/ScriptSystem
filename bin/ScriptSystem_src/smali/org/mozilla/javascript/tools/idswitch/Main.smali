.class public Lorg/mozilla/javascript/tools/idswitch/Main;
.super Ljava/lang/Object;


# static fields
.field private static final GENERATED_TAG:I = 0x2

.field private static final GENERATED_TAG_STR:Ljava/lang/String; = "generated"

.field private static final NORMAL_LINE:I = 0x0

.field private static final STRING_TAG:I = 0x3

.field private static final STRING_TAG_STR:Ljava/lang/String; = "string"

.field private static final SWITCH_TAG:I = 0x1

.field private static final SWITCH_TAG_STR:Ljava/lang/String; = "string_id_map"


# instance fields
.field private P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

.field private R:Lorg/mozilla/javascript/tools/ToolErrorReporter;

.field private final all_pairs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/mozilla/javascript/tools/idswitch/IdValuePair;",
            ">;"
        }
    .end annotation
.end field

.field private body:Lorg/mozilla/javascript/tools/idswitch/FileBody;

.field private source_file:Ljava/lang/String;

.field private tag_definition_end:I

.field private tag_value_end:I

.field private tag_value_start:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/mozilla/javascript/tools/idswitch/Main;->all_pairs:Ljava/util/List;

    return-void
.end method

.method private add_id([CIIII)V
    .locals 3

    new-instance v0, Ljava/lang/String;

    sub-int v1, p5, p4

    invoke-direct {v0, p1, p4, v1}, Ljava/lang/String;-><init>([CII)V

    new-instance v1, Ljava/lang/String;

    sub-int v2, p3, p2

    invoke-direct {v1, p1, p2, v2}, Ljava/lang/String;-><init>([CII)V

    new-instance v2, Lorg/mozilla/javascript/tools/idswitch/IdValuePair;

    invoke-direct {v2, v0, v1}, Lorg/mozilla/javascript/tools/idswitch/IdValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/mozilla/javascript/tools/idswitch/Main;->body:Lorg/mozilla/javascript/tools/idswitch/FileBody;

    invoke-virtual {v0}, Lorg/mozilla/javascript/tools/idswitch/FileBody;->getLineNumber()I

    move-result v0

    invoke-virtual {v2, v0}, Lorg/mozilla/javascript/tools/idswitch/IdValuePair;->setLineNumber(I)V

    iget-object v0, p0, Lorg/mozilla/javascript/tools/idswitch/Main;->all_pairs:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static equals(Ljava/lang/String;[CII)Z
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int v2, p3, p2

    if-ne v1, v2, :cond_0

    move v1, v0

    :goto_0
    if-eq p2, p3, :cond_2

    aget-char v2, p1, p2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v2, v3, :cond_1

    :cond_0
    :goto_1
    return v0

    :cond_1
    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private exec([Ljava/lang/String;)I
    .locals 5

    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v0, -0x1

    new-instance v2, Lorg/mozilla/javascript/tools/ToolErrorReporter;

    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-direct {v2, v4, v3}, Lorg/mozilla/javascript/tools/ToolErrorReporter;-><init>(ZLjava/io/PrintStream;)V

    iput-object v2, p0, Lorg/mozilla/javascript/tools/idswitch/Main;->R:Lorg/mozilla/javascript/tools/ToolErrorReporter;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/tools/idswitch/Main;->process_options([Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    const-string v1, "msg.idswitch.no_file_argument"

    invoke-static {v1}, Lorg/mozilla/javascript/tools/ToolErrorReporter;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/tools/idswitch/Main;->option_error(Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    if-le v2, v4, :cond_1

    const-string v1, "msg.idswitch.too_many_arguments"

    invoke-static {v1}, Lorg/mozilla/javascript/tools/ToolErrorReporter;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/tools/idswitch/Main;->option_error(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v2, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    invoke-direct {v2}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;-><init>()V

    iput-object v2, p0, Lorg/mozilla/javascript/tools/idswitch/Main;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    iget-object v2, p0, Lorg/mozilla/javascript/tools/idswitch/Main;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->setIndentStep(I)V

    iget-object v2, p0, Lorg/mozilla/javascript/tools/idswitch/Main;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    invoke-virtual {v2, v1}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->setIndentTabSize(I)V

    const/4 v2, 0x0

    :try_start_0
    aget-object v2, p1, v2

    invoke-virtual {p0, v2}, Lorg/mozilla/javascript/tools/idswitch/Main;->process_file(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/mozilla/javascript/EvaluatorException; {:try_start_0 .. :try_end_0} :catch_1

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "msg.idswitch.io_error"

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lorg/mozilla/javascript/tools/ToolErrorReporter;->getMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/tools/idswitch/Main;->print_error(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private extract_line_tag_id([CII)I
    .locals 11

    const/4 v4, 0x0

    const/16 v9, 0x3d

    const/4 v1, 0x1

    const/16 v8, 0x23

    const/4 v5, 0x0

    invoke-static {p1, p2, p3}, Lorg/mozilla/javascript/tools/idswitch/Main;->skip_white_space([CII)I

    move-result v0

    invoke-direct {p0, p1, v0, p3}, Lorg/mozilla/javascript/tools/idswitch/Main;->look_for_slash_slash([CII)I

    move-result v2

    if-eq v2, p3, :cond_7

    add-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_2

    move v0, v1

    :goto_0
    invoke-static {p1, v2, p3}, Lorg/mozilla/javascript/tools/idswitch/Main;->skip_white_space([CII)I

    move-result v2

    if-eq v2, p3, :cond_7

    aget-char v3, p1, v2

    if-ne v3, v8, :cond_7

    add-int/lit8 v2, v2, 0x1

    if-eq v2, p3, :cond_b

    aget-char v3, p1, v2

    const/16 v6, 0x2f

    if-ne v3, v6, :cond_b

    add-int/lit8 v2, v2, 0x1

    :goto_1
    move v3, v2

    :goto_2
    if-eq v3, p3, :cond_0

    aget-char v6, p1, v3

    if-eq v6, v8, :cond_0

    if-eq v6, v9, :cond_0

    invoke-static {v6}, Lorg/mozilla/javascript/tools/idswitch/Main;->is_white_space(I)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_0
    if-eq v3, p3, :cond_7

    invoke-static {p1, v3, p3}, Lorg/mozilla/javascript/tools/idswitch/Main;->skip_white_space([CII)I

    move-result v6

    if-eq v6, p3, :cond_7

    aget-char v7, p1, v6

    if-eq v7, v9, :cond_1

    if-ne v7, v8, :cond_7

    :cond_1
    invoke-direct {p0, p1, v2, v3, v0}, Lorg/mozilla/javascript/tools/idswitch/Main;->get_tag_id([CIIZ)I

    move-result v0

    if-eqz v0, :cond_6

    if-ne v7, v8, :cond_4

    if-eqz v1, :cond_a

    neg-int v1, v0

    invoke-static {v1}, Lorg/mozilla/javascript/tools/idswitch/Main;->is_value_type(I)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "msg.idswitch.no_end_usage"

    :goto_3
    add-int/lit8 v2, v6, 0x1

    iput v2, p0, Lorg/mozilla/javascript/tools/idswitch/Main;->tag_definition_end:I

    move-object v10, v0

    move v0, v1

    move-object v1, v10

    :goto_4
    if-eqz v1, :cond_6

    invoke-static {v0}, Lorg/mozilla/javascript/tools/idswitch/Main;->tag_name(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/mozilla/javascript/tools/ToolErrorReporter;->getMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lorg/mozilla/javascript/tools/idswitch/Main;->R:Lorg/mozilla/javascript/tools/ToolErrorReporter;

    iget-object v2, p0, Lorg/mozilla/javascript/tools/idswitch/Main;->source_file:Ljava/lang/String;

    iget-object v3, p0, Lorg/mozilla/javascript/tools/idswitch/Main;->body:Lorg/mozilla/javascript/tools/idswitch/FileBody;

    invoke-virtual {v3}, Lorg/mozilla/javascript/tools/idswitch/FileBody;->getLineNumber()I

    move-result v3

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/tools/ToolErrorReporter;->runtimeError(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object v0

    throw v0

    :cond_2
    move v0, v5

    goto :goto_0

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    if-eqz v1, :cond_5

    const-string v1, "msg.idswitch.no_end_with_value"

    :goto_5
    add-int/lit8 v2, v6, 0x1

    invoke-direct {p0, p1, v2, p3, v0}, Lorg/mozilla/javascript/tools/idswitch/Main;->extract_tag_value([CIII)I

    move-result v0

    goto :goto_4

    :cond_5
    invoke-static {v0}, Lorg/mozilla/javascript/tools/idswitch/Main;->is_value_type(I)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "msg.idswitch.no_value_allowed"

    goto :goto_5

    :cond_6
    move v5, v0

    :cond_7
    return v5

    :cond_8
    move-object v1, v4

    goto :goto_5

    :cond_9
    move-object v0, v4

    goto :goto_3

    :cond_a
    move v1, v0

    move-object v0, v4

    goto :goto_3

    :cond_b
    move v1, v5

    goto :goto_1
.end method

.method private extract_tag_value([CIII)I
    .locals 6

    const/16 v5, 0x23

    const/4 v1, 0x0

    invoke-static {p1, p2, p3}, Lorg/mozilla/javascript/tools/idswitch/Main;->skip_white_space([CII)I

    move-result v3

    if-eq v3, p3, :cond_4

    move v0, v3

    :goto_0
    if-eq v0, p3, :cond_5

    aget-char v2, p1, v0

    invoke-static {v2}, Lorg/mozilla/javascript/tools/idswitch/Main;->is_white_space(I)Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v2, v0, 0x1

    invoke-static {p1, v2, p3}, Lorg/mozilla/javascript/tools/idswitch/Main;->skip_white_space([CII)I

    move-result v2

    if-eq v2, p3, :cond_0

    aget-char v4, p1, v2

    if-ne v4, v5, :cond_0

    move v4, v2

    move v2, v0

    :goto_1
    if-eq v4, p3, :cond_4

    const/4 v0, 0x1

    iput v3, p0, Lorg/mozilla/javascript/tools/idswitch/Main;->tag_value_start:I

    iput v2, p0, Lorg/mozilla/javascript/tools/idswitch/Main;->tag_value_end:I

    add-int/lit8 v2, v4, 0x1

    iput v2, p0, Lorg/mozilla/javascript/tools/idswitch/Main;->tag_definition_end:I

    :goto_2
    if-eqz v0, :cond_3

    :goto_3
    return p4

    :cond_0
    add-int/lit8 v0, v2, 0x1

    goto :goto_0

    :cond_1
    if-ne v2, v5, :cond_2

    move v2, v0

    move v4, v0

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move p4, v1

    goto :goto_3

    :cond_4
    move v0, v1

    goto :goto_2

    :cond_5
    move v2, v3

    move v4, v0

    goto :goto_1
.end method

.method private generate_java_code()V
    .locals 3

    iget-object v0, p0, Lorg/mozilla/javascript/tools/idswitch/Main;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    invoke-virtual {v0}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->clear()V

    iget-object v0, p0, Lorg/mozilla/javascript/tools/idswitch/Main;->all_pairs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/mozilla/javascript/tools/idswitch/IdValuePair;

    iget-object v1, p0, Lorg/mozilla/javascript/tools/idswitch/Main;->all_pairs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    new-instance v1, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;

    invoke-direct {v1}, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;-><init>()V

    const/4 v2, 0x2

    iput v2, v1, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->char_tail_test_threshold:I

    iget-object v2, p0, Lorg/mozilla/javascript/tools/idswitch/Main;->R:Lorg/mozilla/javascript/tools/ToolErrorReporter;

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->setReporter(Lorg/mozilla/javascript/tools/ToolErrorReporter;)V

    iget-object v2, p0, Lorg/mozilla/javascript/tools/idswitch/Main;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->setCodePrinter(Lorg/mozilla/javascript/tools/idswitch/CodePrinter;)V

    const-string v2, "0"

    invoke-virtual {v1, v0, v2}, Lorg/mozilla/javascript/tools/idswitch/SwitchGenerator;->generateSwitch([Lorg/mozilla/javascript/tools/idswitch/IdValuePair;Ljava/lang/String;)V

    return-void
.end method

.method private get_tag_id([CIIZ)I
    .locals 1

    if-eqz p4, :cond_1

    const-string v0, "string_id_map"

    invoke-static {v0, p1, p2, p3}, Lorg/mozilla/javascript/tools/idswitch/Main;->equals(Ljava/lang/String;[CII)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const-string v0, "generated"

    invoke-static {v0, p1, p2, p3}, Lorg/mozilla/javascript/tools/idswitch/Main;->equals(Ljava/lang/String;[CII)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const-string v0, "string"

    invoke-static {v0, p1, p2, p3}, Lorg/mozilla/javascript/tools/idswitch/Main;->equals(Ljava/lang/String;[CII)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private get_time_stamp()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, " \'Last update:\' yyyy-MM-dd HH:mm:ss z"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static is_value_type(I)Z
    .locals 1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static is_white_space(I)Z
    .locals 1

    const/16 v0, 0x20

    if-eq p0, v0, :cond_0

    const/16 v0, 0x9

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private look_for_id_definitions([CIIZ)V
    .locals 6

    invoke-static {p1, p2, p3}, Lorg/mozilla/javascript/tools/idswitch/Main;->skip_white_space([CII)I

    move-result v2

    const-string v0, "Id_"

    invoke-static {v0, p1, v2, p3}, Lorg/mozilla/javascript/tools/idswitch/Main;->skip_matched_prefix(Ljava/lang/String;[CII)I

    move-result v4

    if-ltz v4, :cond_0

    invoke-static {p1, v4, p3}, Lorg/mozilla/javascript/tools/idswitch/Main;->skip_name_char([CII)I

    move-result v3

    if-eq v4, v3, :cond_0

    invoke-static {p1, v3, p3}, Lorg/mozilla/javascript/tools/idswitch/Main;->skip_white_space([CII)I

    move-result v0

    if-eq v0, p3, :cond_0

    aget-char v0, p1, v0

    const/16 v1, 0x3d

    if-ne v0, v1, :cond_0

    if-eqz p4, :cond_1

    iget v4, p0, Lorg/mozilla/javascript/tools/idswitch/Main;->tag_value_start:I

    iget v5, p0, Lorg/mozilla/javascript/tools/idswitch/Main;->tag_value_end:I

    :goto_0
    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/mozilla/javascript/tools/idswitch/Main;->add_id([CIIII)V

    :cond_0
    return-void

    :cond_1
    move v5, v3

    goto :goto_0
.end method

.method private look_for_slash_slash([CII)I
    .locals 3

    const/16 v2, 0x2f

    :goto_0
    add-int/lit8 v0, p2, 0x2

    if-gt v0, p3, :cond_2

    add-int/lit8 v1, p2, 0x1

    aget-char v0, p1, p2

    if-ne v0, v2, :cond_0

    add-int/lit8 v0, v1, 0x1

    aget-char v1, p1, v1

    if-ne v1, v2, :cond_1

    :goto_1
    return v0

    :cond_0
    move v0, v1

    :cond_1
    move p2, v0

    goto :goto_0

    :cond_2
    move v0, p3

    goto :goto_1
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lorg/mozilla/javascript/tools/idswitch/Main;

    invoke-direct {v0}, Lorg/mozilla/javascript/tools/idswitch/Main;-><init>()V

    invoke-direct {v0, p0}, Lorg/mozilla/javascript/tools/idswitch/Main;->exec([Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method private option_error(Ljava/lang/String;)V
    .locals 1

    const-string v0, "msg.idswitch.bad_invocation"

    invoke-static {v0, p1}, Lorg/mozilla/javascript/tools/ToolErrorReporter;->getMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/tools/idswitch/Main;->print_error(Ljava/lang/String;)V

    return-void
.end method

.method private print_error(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method private process_file()V
    .locals 15

    const/4 v4, 0x0

    const/4 v11, 0x2

    const/4 v5, 0x0

    const/4 v1, -0x1

    const/4 v9, 0x1

    iget-object v0, p0, Lorg/mozilla/javascript/tools/idswitch/Main;->body:Lorg/mozilla/javascript/tools/idswitch/FileBody;

    invoke-virtual {v0}, Lorg/mozilla/javascript/tools/idswitch/FileBody;->getBuffer()[C

    move-result-object v12

    iget-object v0, p0, Lorg/mozilla/javascript/tools/idswitch/Main;->body:Lorg/mozilla/javascript/tools/idswitch/FileBody;

    invoke-virtual {v0}, Lorg/mozilla/javascript/tools/idswitch/FileBody;->startLineLoop()V

    move v0, v1

    move v2, v1

    move v3, v1

    move v6, v1

    move v7, v5

    :cond_0
    iget-object v8, p0, Lorg/mozilla/javascript/tools/idswitch/Main;->body:Lorg/mozilla/javascript/tools/idswitch/FileBody;

    invoke-virtual {v8}, Lorg/mozilla/javascript/tools/idswitch/FileBody;->nextLine()Z

    move-result v8

    if-eqz v8, :cond_c

    iget-object v8, p0, Lorg/mozilla/javascript/tools/idswitch/Main;->body:Lorg/mozilla/javascript/tools/idswitch/FileBody;

    invoke-virtual {v8}, Lorg/mozilla/javascript/tools/idswitch/FileBody;->getLineBegin()I

    move-result v8

    iget-object v10, p0, Lorg/mozilla/javascript/tools/idswitch/Main;->body:Lorg/mozilla/javascript/tools/idswitch/FileBody;

    invoke-virtual {v10}, Lorg/mozilla/javascript/tools/idswitch/FileBody;->getLineEnd()I

    move-result v10

    invoke-direct {p0, v12, v8, v10}, Lorg/mozilla/javascript/tools/idswitch/Main;->extract_line_tag_id([CII)I

    move-result v13

    packed-switch v7, :pswitch_data_0

    :cond_1
    move v8, v5

    :goto_0
    if-eqz v8, :cond_0

    const-string v0, "msg.idswitch.bad_tag_order"

    invoke-static {v13}, Lorg/mozilla/javascript/tools/idswitch/Main;->tag_name(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/mozilla/javascript/tools/ToolErrorReporter;->getMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lorg/mozilla/javascript/tools/idswitch/Main;->R:Lorg/mozilla/javascript/tools/ToolErrorReporter;

    iget-object v2, p0, Lorg/mozilla/javascript/tools/idswitch/Main;->source_file:Ljava/lang/String;

    iget-object v3, p0, Lorg/mozilla/javascript/tools/idswitch/Main;->body:Lorg/mozilla/javascript/tools/idswitch/FileBody;

    invoke-virtual {v3}, Lorg/mozilla/javascript/tools/idswitch/FileBody;->getLineNumber()I

    move-result v3

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/tools/ToolErrorReporter;->runtimeError(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object v0

    throw v0

    :pswitch_0
    if-ne v13, v9, :cond_2

    iget-object v6, p0, Lorg/mozilla/javascript/tools/idswitch/Main;->all_pairs:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    move v8, v5

    move v6, v1

    move v7, v9

    goto :goto_0

    :cond_2
    if-ne v13, v1, :cond_1

    move v8, v9

    goto :goto_0

    :pswitch_1
    if-nez v13, :cond_3

    invoke-direct {p0, v12, v8, v10, v5}, Lorg/mozilla/javascript/tools/idswitch/Main;->look_for_id_definitions([CIIZ)V

    move v8, v5

    goto :goto_0

    :cond_3
    const/4 v14, 0x3

    if-ne v13, v14, :cond_4

    invoke-direct {p0, v12, v8, v10, v9}, Lorg/mozilla/javascript/tools/idswitch/Main;->look_for_id_definitions([CIIZ)V

    move v8, v5

    goto :goto_0

    :cond_4
    if-ne v13, v11, :cond_6

    if-ltz v6, :cond_5

    move v8, v9

    goto :goto_0

    :cond_5
    iget v2, p0, Lorg/mozilla/javascript/tools/idswitch/Main;->tag_definition_end:I

    move v8, v5

    move v0, v10

    move v7, v11

    goto :goto_0

    :cond_6
    if-ne v13, v1, :cond_8

    if-ltz v6, :cond_e

    iget-object v7, p0, Lorg/mozilla/javascript/tools/idswitch/Main;->all_pairs:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_e

    invoke-direct {p0}, Lorg/mozilla/javascript/tools/idswitch/Main;->generate_java_code()V

    iget-object v7, p0, Lorg/mozilla/javascript/tools/idswitch/Main;->P:Lorg/mozilla/javascript/tools/idswitch/CodePrinter;

    invoke-virtual {v7}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lorg/mozilla/javascript/tools/idswitch/Main;->body:Lorg/mozilla/javascript/tools/idswitch/FileBody;

    invoke-virtual {v8, v6, v3, v7}, Lorg/mozilla/javascript/tools/idswitch/FileBody;->setReplacement(IILjava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-direct {p0}, Lorg/mozilla/javascript/tools/idswitch/Main;->get_time_stamp()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lorg/mozilla/javascript/tools/idswitch/Main;->body:Lorg/mozilla/javascript/tools/idswitch/FileBody;

    invoke-virtual {v8, v2, v0, v7}, Lorg/mozilla/javascript/tools/idswitch/FileBody;->setReplacement(IILjava/lang/String;)Z

    :cond_7
    move v8, v5

    move v7, v5

    goto :goto_0

    :cond_8
    move v8, v9

    goto :goto_0

    :pswitch_2
    if-nez v13, :cond_9

    if-gez v6, :cond_1

    move v6, v8

    move v8, v5

    goto :goto_0

    :cond_9
    const/4 v10, -0x2

    if-ne v13, v10, :cond_b

    if-gez v6, :cond_a

    move v6, v8

    :cond_a
    move v3, v8

    move v7, v9

    move v8, v5

    goto :goto_0

    :cond_b
    move v8, v9

    goto/16 :goto_0

    :cond_c
    if-eqz v7, :cond_d

    const-string v0, "msg.idswitch.file_end_in_switch"

    invoke-static {v7}, Lorg/mozilla/javascript/tools/idswitch/Main;->tag_name(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/mozilla/javascript/tools/ToolErrorReporter;->getMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lorg/mozilla/javascript/tools/idswitch/Main;->R:Lorg/mozilla/javascript/tools/ToolErrorReporter;

    iget-object v2, p0, Lorg/mozilla/javascript/tools/idswitch/Main;->source_file:Ljava/lang/String;

    iget-object v3, p0, Lorg/mozilla/javascript/tools/idswitch/Main;->body:Lorg/mozilla/javascript/tools/idswitch/FileBody;

    invoke-virtual {v3}, Lorg/mozilla/javascript/tools/idswitch/FileBody;->getLineNumber()I

    move-result v3

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/tools/ToolErrorReporter;->runtimeError(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object v0

    throw v0

    :cond_d
    return-void

    :cond_e
    move v8, v5

    move v7, v5

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private process_options([Ljava/lang/String;)I
    .locals 14

    const/16 v12, 0x2d

    const/4 v11, 0x2

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v1, 0x1

    array-length v7, p1

    move v6, v3

    move v0, v3

    move v2, v3

    :goto_0
    if-eq v6, v7, :cond_9

    aget-object v8, p1, v6

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-lt v9, v11, :cond_4

    invoke-virtual {v8, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v12, :cond_4

    invoke-virtual {v8, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v12, :cond_7

    if-ne v9, v11, :cond_2

    const/4 v4, 0x0

    aput-object v4, p1, v6

    move v4, v2

    move v2, v1

    :goto_1
    if-ne v2, v1, :cond_8

    if-eqz v4, :cond_0

    invoke-direct {p0}, Lorg/mozilla/javascript/tools/idswitch/Main;->show_usage()V

    move v2, v3

    :cond_0
    if-eqz v0, :cond_8

    invoke-direct {p0}, Lorg/mozilla/javascript/tools/idswitch/Main;->show_version()V

    move v0, v3

    :goto_2
    if-eq v0, v1, :cond_1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    :cond_1
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/tools/idswitch/Main;->remove_nulls([Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_2
    const-string v5, "--help"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    move v2, v1

    :cond_3
    :goto_3
    const/4 v5, 0x0

    aput-object v5, p1, v6

    :cond_4
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_0

    :cond_5
    const-string v5, "--version"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    move v0, v1

    goto :goto_3

    :cond_6
    const-string v5, "msg.idswitch.bad_option"

    invoke-static {v5, v8}, Lorg/mozilla/javascript/tools/ToolErrorReporter;->getMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/mozilla/javascript/tools/idswitch/Main;->option_error(Ljava/lang/String;)V

    move v13, v2

    move v2, v4

    move v4, v13

    goto :goto_1

    :cond_7
    move v5, v1

    :goto_4
    if-eq v5, v9, :cond_3

    invoke-virtual {v8, v5}, Ljava/lang/String;->charAt(I)C

    move-result v10

    packed-switch v10, :pswitch_data_0

    const-string v5, "msg.idswitch.bad_option_char"

    invoke-static {v10}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/mozilla/javascript/tools/ToolErrorReporter;->getMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/mozilla/javascript/tools/idswitch/Main;->option_error(Ljava/lang/String;)V

    move v13, v2

    move v2, v4

    move v4, v13

    goto :goto_1

    :pswitch_0
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    move v2, v1

    goto :goto_4

    :cond_8
    move v0, v2

    goto :goto_2

    :cond_9
    move v4, v2

    move v2, v1

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x68
        :pswitch_0
    .end packed-switch
.end method

.method private remove_nulls([Ljava/lang/String;)I
    .locals 4

    array-length v2, p1

    const/4 v0, 0x0

    :goto_0
    if-eq v0, v2, :cond_0

    aget-object v1, p1, v0

    if-nez v1, :cond_2

    :cond_0
    if-eq v0, v2, :cond_3

    add-int/lit8 v1, v0, 0x1

    :goto_1
    if-eq v1, v2, :cond_3

    aget-object v3, p1, v1

    if-eqz v3, :cond_1

    aput-object v3, p1, v0

    add-int/lit8 v0, v0, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return v0
.end method

.method private show_usage()V
    .locals 2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "msg.idswitch.usage"

    invoke-static {v1}, Lorg/mozilla/javascript/tools/ToolErrorReporter;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    return-void
.end method

.method private show_version()V
    .locals 2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "msg.idswitch.version"

    invoke-static {v1}, Lorg/mozilla/javascript/tools/ToolErrorReporter;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method private static skip_matched_prefix(Ljava/lang/String;[CII)I
    .locals 6

    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int v1, p3, p2

    if-gt v3, v1, :cond_0

    const/4 v1, 0x0

    move v2, v1

    move v1, p2

    :goto_0
    if-eq v2, v3, :cond_2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aget-char v5, p1, v1

    if-eq v4, v5, :cond_1

    :cond_0
    :goto_1
    return v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method private static skip_name_char([CII)I
    .locals 2

    :goto_0
    if-eq p1, p2, :cond_3

    aget-char v0, p0, p1

    const/16 v1, 0x61

    if-gt v1, v0, :cond_0

    const/16 v1, 0x7a

    if-le v0, v1, :cond_4

    :cond_0
    const/16 v1, 0x41

    if-gt v1, v0, :cond_1

    const/16 v1, 0x5a

    if-le v0, v1, :cond_4

    :cond_1
    const/16 v1, 0x30

    if-gt v1, v0, :cond_2

    const/16 v1, 0x39

    if-le v0, v1, :cond_4

    :cond_2
    const/16 v1, 0x5f

    if-eq v0, v1, :cond_4

    :cond_3
    return p1

    :cond_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method private static skip_white_space([CII)I
    .locals 1

    :goto_0
    if-eq p1, p2, :cond_0

    aget-char v0, p0, p1

    invoke-static {v0}, Lorg/mozilla/javascript/tools/idswitch/Main;->is_white_space(I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return p1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method private static tag_name(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const-string v0, ""

    :goto_0
    return-object v0

    :pswitch_1
    const-string v0, "string_id_map"

    goto :goto_0

    :pswitch_2
    const-string v0, "/string_id_map"

    goto :goto_0

    :pswitch_3
    const-string v0, "generated"

    goto :goto_0

    :pswitch_4
    const-string v0, "/generated"

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method process_file(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iput-object p1, p0, Lorg/mozilla/javascript/tools/idswitch/Main;->source_file:Ljava/lang/String;

    new-instance v0, Lorg/mozilla/javascript/tools/idswitch/FileBody;

    invoke-direct {v0}, Lorg/mozilla/javascript/tools/idswitch/FileBody;-><init>()V

    iput-object v0, p0, Lorg/mozilla/javascript/tools/idswitch/Main;->body:Lorg/mozilla/javascript/tools/idswitch/FileBody;

    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Ljava/lang/System;->in:Ljava/io/InputStream;

    move-object v1, v0

    :goto_0
    :try_start_0
    new-instance v0, Ljava/io/InputStreamReader;

    const-string v2, "ASCII"

    invoke-direct {v0, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    iget-object v2, p0, Lorg/mozilla/javascript/tools/idswitch/Main;->body:Lorg/mozilla/javascript/tools/idswitch/FileBody;

    invoke-virtual {v2, v0}, Lorg/mozilla/javascript/tools/idswitch/FileBody;->readData(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    invoke-direct {p0}, Lorg/mozilla/javascript/tools/idswitch/Main;->process_file()V

    iget-object v0, p0, Lorg/mozilla/javascript/tools/idswitch/Main;->body:Lorg/mozilla/javascript/tools/idswitch/FileBody;

    invoke-virtual {v0}, Lorg/mozilla/javascript/tools/idswitch/FileBody;->wasModified()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object v1, v0

    :goto_1
    :try_start_1
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    iget-object v2, p0, Lorg/mozilla/javascript/tools/idswitch/Main;->body:Lorg/mozilla/javascript/tools/idswitch/FileBody;

    invoke-virtual {v2, v0}, Lorg/mozilla/javascript/tools/idswitch/FileBody;->writeData(Ljava/io/Writer;)V

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v1, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v0

    :cond_2
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v1, v0

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    throw v0
.end method
