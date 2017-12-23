.class public Lwhiter/script/base/BaseMainActivity;
.super Lwhiter/script/base/BaseActivity;
.source "BaseMainActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwhiter/script/base/BaseMainActivity$LogServiceConnection;
    }
.end annotation


# static fields
.field public static currentActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected final ACTION_EDIT_SCRIPT:Ljava/lang/String;

.field protected final EXTRA_SCRIPT_CONTENT:Ljava/lang/String;

.field protected final EXTRA_SCRIPT_PATH:Ljava/lang/String;

.field protected actionBar:Landroid/app/ActionBar;

.field public logBinder:Lwhiter/script/service/AppLogService$LogServiceIBinder;

.field protected mLeftMenu:Lwhiter/script/view/SlidingMenu;

.field protected mainGridView:Landroid/widget/GridView;

.field protected menuListView:Landroid/widget/ListView;

.field protected topIcon:Landroid/widget/ImageView;


# direct methods
.method static final constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/ref/WeakReference;

    sput-object v0, Lwhiter/script/base/BaseMainActivity;->currentActivity:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 170
    invoke-direct {p0}, Lwhiter/script/base/BaseActivity;-><init>()V

    move-object v0, v1

    check-cast v0, Lwhiter/script/service/AppLogService$LogServiceIBinder;

    iput-object v0, p0, Lwhiter/script/base/BaseMainActivity;->logBinder:Lwhiter/script/service/AppLogService$LogServiceIBinder;

    const-string v0, "com.googlecode.android_scripting.action.EDIT_SCRIPT"

    iput-object v0, p0, Lwhiter/script/base/BaseMainActivity;->ACTION_EDIT_SCRIPT:Ljava/lang/String;

    const-string v0, "com.googlecode.android_scripting.extra.SCRIPT_CONTENT"

    iput-object v0, p0, Lwhiter/script/base/BaseMainActivity;->EXTRA_SCRIPT_CONTENT:Ljava/lang/String;

    const-string v0, "com.googlecode.android_scripting.extra.SCRIPT_PATH"

    iput-object v0, p0, Lwhiter/script/base/BaseMainActivity;->EXTRA_SCRIPT_PATH:Ljava/lang/String;

    move-object v0, v1

    check-cast v0, Lwhiter/script/view/SlidingMenu;

    iput-object v0, p0, Lwhiter/script/base/BaseMainActivity;->mLeftMenu:Lwhiter/script/view/SlidingMenu;

    move-object v0, v1

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lwhiter/script/base/BaseMainActivity;->menuListView:Landroid/widget/ListView;

    move-object v0, v1

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lwhiter/script/base/BaseMainActivity;->topIcon:Landroid/widget/ImageView;

    move-object v0, v1

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lwhiter/script/base/BaseMainActivity;->mainGridView:Landroid/widget/GridView;

    check-cast v1, Landroid/app/ActionBar;

    iput-object v1, p0, Lwhiter/script/base/BaseMainActivity;->actionBar:Landroid/app/ActionBar;

    return-void
.end method


# virtual methods
.method protected executeScriptFile()Lorg/whiter/javascript/interfaces/Runner$ScriptState;
    .locals 4

    .prologue
    const/4 v1, 0x0

    move-object v0, v1

    .line 123
    check-cast v0, Lorg/whiter/javascript/runner/ScriptRunner;

    .line 126
    :try_start_0
    new-instance v0, Lorg/whiter/javascript/params/RunParams;

    invoke-direct {v0}, Lorg/whiter/javascript/params/RunParams;-><init>()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 127
    :try_start_1
    const-string v2, "org.whiter.javascript.objects.ScriptObject"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    :try_start_2
    invoke-virtual {v0, v2}, Lorg/whiter/javascript/params/RunParams;->addClasses(Ljava/lang/Class;)V

    .line 128
    const-string v2, "Properties"
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    const-string v3, "org.whiter.javascript.objects.Properties"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v3

    :try_start_4
    invoke-virtual {v0, v2, v3}, Lorg/whiter/javascript/params/RunParams;->addProperties(Ljava/lang/String;Ljava/lang/Class;)V

    .line 129
    new-instance v2, Lwhiter/script/control/AppConsole;

    invoke-virtual {p0}, Lwhiter/script/base/BaseMainActivity;->getScriptPathFromIntent()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lwhiter/script/control/AppConsole;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lorg/whiter/javascript/params/RunParams;->setConsole(Lorg/mozilla/javascript/ScriptableObject;)V

    .line 130
    new-instance v2, Lorg/whiter/javascript/runner/ScriptRunner;

    invoke-virtual {p0}, Lwhiter/script/base/BaseMainActivity;->getScriptPathFromIntent()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lorg/whiter/javascript/runner/ScriptRunner;-><init>(Ljava/lang/String;Lorg/whiter/javascript/params/RunParams;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1

    .line 136
    :goto_0
    check-cast v1, Lorg/whiter/javascript/interfaces/Runner$ScriptState;

    return-object v1

    .line 127
    :catch_0
    move-exception v0

    :try_start_5
    new-instance v2, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1

    .line 130
    :catch_1
    move-exception v0

    .line 134
    invoke-static {v0}, Lwhiter/script/debug/Log;->e(Ljava/lang/Object;)V

    goto :goto_0

    .line 128
    :catch_2
    move-exception v0

    :try_start_6
    new-instance v2, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_1
.end method

.method protected getScriptPathFromIntent()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 105
    invoke-virtual {p0}, Lwhiter/script/base/BaseMainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 106
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 107
    :cond_0
    check-cast v0, Ljava/lang/String;

    .line 118
    :goto_0
    return-object v0

    .line 109
    :cond_1
    invoke-virtual {v1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "file"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 111
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 112
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 113
    :goto_1
    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    if-eqz v1, :cond_3

    move-object v0, v1

    .line 115
    goto :goto_0

    .line 112
    :cond_2
    const-string v1, ""

    goto :goto_1

    .line 118
    :cond_3
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method protected getSimpleAdapter([I[Ljava/lang/String;)Landroid/widget/SimpleAdapter;
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v1, 0x0

    .line 85
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 86
    :goto_0
    array-length v3, p2

    if-lt v0, v3, :cond_0

    .line 93
    new-instance v0, Landroid/widget/SimpleAdapter;

    const v3, 0x7f040008

    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "icon"

    aput-object v5, v4, v1

    const/4 v1, 0x1

    const-string v5, "text"

    aput-object v5, v4, v1

    new-array v5, v7, [I

    fill-array-data v5, :array_0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 95
    return-object v0

    .line 88
    :cond_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 89
    const-string v4, "icon"

    aget v5, p1, v0

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v3, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const-string v4, "text"

    aget-object v5, p2, v0

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 93
    nop

    :array_0
    .array-data 4
        0x7f0b0007
        0x7f0b0008
    .end array-data
.end method

.method protected initViews()V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 66
    const v0, 0x7f0b0002

    invoke-virtual {p0, v0}, Lwhiter/script/base/BaseMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lwhiter/script/view/SlidingMenu;

    iput-object v0, p0, Lwhiter/script/base/BaseMainActivity;->mLeftMenu:Lwhiter/script/view/SlidingMenu;

    .line 67
    const v0, 0x7f0b0006

    invoke-virtual {p0, v0}, Lwhiter/script/base/BaseMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lwhiter/script/base/BaseMainActivity;->menuListView:Landroid/widget/ListView;

    .line 68
    const v0, 0x7f0b0004

    invoke-virtual {p0, v0}, Lwhiter/script/base/BaseMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lwhiter/script/base/BaseMainActivity;->topIcon:Landroid/widget/ImageView;

    .line 69
    const v0, 0x7f0b0003

    invoke-virtual {p0, v0}, Lwhiter/script/base/BaseMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lwhiter/script/base/BaseMainActivity;->mainGridView:Landroid/widget/GridView;

    .line 70
    invoke-virtual {p0}, Lwhiter/script/base/BaseMainActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lwhiter/script/base/BaseMainActivity;->actionBar:Landroid/app/ActionBar;

    .line 72
    iget-object v0, p0, Lwhiter/script/base/BaseMainActivity;->mLeftMenu:Lwhiter/script/view/SlidingMenu;

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Lwhiter/script/view/SlidingMenu;->setRightPadding(I)V

    .line 73
    iget-object v0, p0, Lwhiter/script/base/BaseMainActivity;->mLeftMenu:Lwhiter/script/view/SlidingMenu;

    invoke-virtual {v0}, Lwhiter/script/view/SlidingMenu;->toggle()V

    .line 75
    const v0, 0x7f070003

    const v1, 0x7f020049

    invoke-static {p0, v0, v1}, Lwhiter/script/util/ResourceUtil;->getIntArrayFromDrawableArray(Landroid/app/Activity;II)[I

    move-result-object v0

    .line 76
    invoke-virtual {p0}, Lwhiter/script/base/BaseMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 77
    invoke-virtual {p0, v0, v1}, Lwhiter/script/base/BaseMainActivity;->getSimpleAdapter([I[Ljava/lang/String;)Landroid/widget/SimpleAdapter;

    move-result-object v0

    .line 78
    iget-object v1, p0, Lwhiter/script/base/BaseMainActivity;->menuListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public onCreateTest(Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 50
    invoke-super {p0, p1}, Lwhiter/script/base/BaseActivity;->onCreateTest(Landroid/os/Bundle;)V

    .line 51
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lwhiter/script/base/BaseMainActivity;->currentActivity:Ljava/lang/ref/WeakReference;

    .line 53
    const v0, 0x7f040005

    invoke-virtual {p0, v0}, Lwhiter/script/base/BaseMainActivity;->setContentView(I)V

    .line 56
    invoke-virtual {p0}, Lwhiter/script/base/BaseMainActivity;->initViews()V

    .line 58
    iget-object v0, p0, Lwhiter/script/base/BaseMainActivity;->actionBar:Landroid/app/ActionBar;

    const/high16 v1, 0x7f040000

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(I)V

    .line 59
    iget-object v0, p0, Lwhiter/script/base/BaseMainActivity;->actionBar:Landroid/app/ActionBar;

    const-string v1, "ttttt"

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 60
    iget-object v0, p0, Lwhiter/script/base/BaseMainActivity;->actionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    .line 61
    iget-object v0, p0, Lwhiter/script/base/BaseMainActivity;->actionBar:Landroid/app/ActionBar;

    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    return-void
.end method

.method protected onServiceBind(Landroid/content/ComponentName;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method protected onServiceUnBind(Landroid/content/ComponentName;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public parseIntent()V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 141
    invoke-virtual/range {p0 .. p0}, Lwhiter/script/base/BaseMainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 142
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v13, Ljava/lang/StringBuffer;

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v14, Ljava/lang/StringBuffer;

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    const-string v16, "<Action>"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    const-string v15, "\n<Categories>"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    invoke-virtual {v0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    const-string v13, "\n<DataString>"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v11, "\n<Scheme>"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v0}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, "\n<Type>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "\n<Package>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\n<Data>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\n<Extras>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 143
    invoke-static {v0}, Lwhiter/script/debug/Log;->i(Ljava/lang/Object;)V

    return-void
.end method

.method public toggleMenu(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Lwhiter/script/base/BaseMainActivity;->mLeftMenu:Lwhiter/script/view/SlidingMenu;

    invoke-virtual {v0}, Lwhiter/script/view/SlidingMenu;->toggle()V

    return-void
.end method
