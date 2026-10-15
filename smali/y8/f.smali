###### Class y8.f (y8.f)
.class public Ly8/f;
.super Ljava/lang/Object;
.source "DeeplinkNavigator.java"


# static fields
.field private static final a:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 1
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Ly8/f;->a:Landroid/content/UriMatcher;

    const-string v2, "home"

    const/4 v3, 0x0

    .line 2
    invoke-virtual {v0, v2, v3, v1}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "howto"

    const/4 v2, 0x2

    .line 3
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "send-ideas"

    const/4 v2, 0x3

    .line 4
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "popup"

    const-string v2, "login"

    const/4 v4, 0x4

    .line 5
    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "photo-frame"

    const/4 v2, 0x5

    .line 6
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "webview"

    const/16 v4, 0xd

    .line 7
    invoke-virtual {v0, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "browser"

    const/16 v4, 0xe

    .line 8
    invoke-virtual {v0, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "#"

    const/4 v4, 0x6

    .line 9
    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "sticker"

    const-string v2, "wa"

    const/4 v4, 0x7

    .line 10
    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "wa/#"

    const/16 v4, 0x8

    .line 11
    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "level"

    const/16 v2, 0x9

    .line 12
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v3, "reguler"

    .line 13
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "reguler/#"

    const/16 v3, 0xa

    .line 14
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "reguler/#/#"

    const/16 v3, 0xb

    .line 15
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "event/#"

    const/16 v3, 0xc

    .line 16
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic a(Landroid/content/Context;Lt1/h;)Landroid/content/Intent;
    .registers 2

    invoke-static {p0, p1}, Ly8/f;->i(Landroid/content/Context;Lt1/h;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lt1/h;)Landroid/content/Intent;
    .registers 1

    invoke-static {p0}, Ly8/f;->h(Lt1/h;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Landroid/net/Uri;Lt1/i;Lcom/google/android/gms/tasks/Task;)V
    .registers 3

    invoke-static {p0, p1, p2}, Ly8/f;->g(Landroid/net/Uri;Lt1/i;Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method

.method private static d(Landroid/net/Uri;)Lt1/h;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Lt1/h<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lt1/i;

    invoke-direct {v0}, Lt1/i;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/auth/FirebaseAuth;->b()Lg5/s;

    move-result-object v1

    if-nez v1, :cond_14

    .line 3
    invoke-static {p0}, Lt1/h;->q(Ljava/lang/Object;)Lt1/h;

    move-result-object p0

    return-object p0

    :cond_14
    const/4 v2, 0x0

    .line 4
    invoke-virtual {v1, v2}, Lg5/s;->W3(Z)Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    new-instance v2, Ly8/c;

    invoke-direct {v2, p0, v0}, Ly8/c;-><init>(Landroid/net/Uri;Lt1/i;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/Task;->c(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 5
    invoke-virtual {v0}, Lt1/i;->a()Lt1/h;

    move-result-object p0

    return-object p0
.end method

.method private static e(Landroid/net/Uri;)Lt1/h;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Lt1/h<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Ly8/f;->d(Landroid/net/Uri;)Lt1/h;

    move-result-object p0

    sget-object v0, Ly8/e;->a:Ly8/e;

    invoke-virtual {p0, v0}, Lt1/h;->x(Lt1/f;)Lt1/h;

    move-result-object p0

    return-object p0
.end method

.method private static f(Landroid/content/Context;Landroid/net/Uri;)Lt1/h;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            ")",
            "Lt1/h<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ly8/f;->d(Landroid/net/Uri;)Lt1/h;

    move-result-object p1

    new-instance v0, Ly8/d;

    invoke-direct {v0, p0}, Ly8/d;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Lt1/h;->x(Lt1/f;)Lt1/h;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic g(Landroid/net/Uri;Lt1/i;Lcom/google/android/gms/tasks/Task;)V
    .registers 4

    .line 1
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->t()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->p()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->p()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lg5/u;

    .line 3
    invoke-virtual {p2}, Lg5/u;->c()Ljava/lang/String;

    move-result-object p2

    .line 4
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p0

    const-string v0, "token"

    .line 5
    invoke-virtual {p0, v0, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 6
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    .line 7
    invoke-virtual {p1, p0}, Lt1/i;->d(Ljava/lang/Object;)V

    goto :goto_2b

    .line 8
    :cond_28
    invoke-virtual {p1, p0}, Lt1/i;->d(Ljava/lang/Object;)V

    :goto_2b
    return-void
.end method

.method private static synthetic h(Lt1/h;)Landroid/content/Intent;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lt1/h;->s()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/Uri;

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    return-object v0
.end method

.method private static synthetic i(Landroid/content/Context;Lt1/h;)Landroid/content/Intent;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lt1/h;->s()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    .line 2
    new-instance v0, Landroidx/browser/customtabs/d$a;

    invoke-direct {v0}, Landroidx/browser/customtabs/d$a;-><init>()V

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f06003c

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/browser/customtabs/d$a;->d(I)Landroidx/browser/customtabs/d$a;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Landroidx/browser/customtabs/d$a;->a()Landroidx/browser/customtabs/d;

    move-result-object p0

    iget-object p0, p0, Landroidx/browser/customtabs/d;->a:Landroid/content/Intent;

    .line 5
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    return-object p0
.end method

.method public static j(Landroid/content/Context;Landroid/net/Uri;)Lt1/h;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            ")",
            "Lt1/h<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    const-string v2, "http"

    .line 3
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    const-string v2, "https"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    :cond_18
    const-string v0, "tebakgambar.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 4
    invoke-static {p0, p1}, Ly8/f;->f(Landroid/content/Context;Landroid/net/Uri;)Lt1/h;

    move-result-object p0

    return-object p0

    .line 5
    :cond_25
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "https://tebakgambar.com/"

    const-string v1, "tebakgambar://"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 6
    sget-object v0, Ly8/f;->a:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const-string v1, "url"

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_25e

    .line 7
    invoke-static {p0}, Lcom/tebakgambar/Henson;->with(Landroid/content/Context;)Lcom/tebakgambar/Henson$b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tebakgambar/Henson$b;->b()Lcom/tebakgambar/home/HomeActivity$$IntentBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tebakgambar/home/HomeActivity$$IntentBuilder;->build()Landroid/content/Intent;

    move-result-object p0

    goto/16 :goto_258

    .line 8
    :pswitch_4f
    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 9
    invoke-static {p0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 10
    invoke-static {p0}, Ly8/f;->e(Landroid/net/Uri;)Lt1/h;

    move-result-object p0

    return-object p0

    .line 11
    :pswitch_60
    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 12
    invoke-static {p1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 13
    invoke-static {p0, p1}, Ly8/f;->f(Landroid/content/Context;Landroid/net/Uri;)Lt1/h;

    move-result-object p0

    return-object p0

    .line 14
    :pswitch_71
    :try_start_71
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 15
    invoke-static {p0}, Lcom/tebakgambar/Henson;->with(Landroid/content/Context;)Lcom/tebakgambar/Henson$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tebakgambar/Henson$b;->e()Lcom/tebakgambar/levelselection/LevelSelectionActivity$$IntentBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tebakgambar/levelselection/LevelSelectionActivity$$IntentBuilder;->eventId(I)Lcom/tebakgambar/levelselection/LevelSelectionActivity$$IntentBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tebakgambar/levelselection/LevelSelectionActivity$$IntentBuilder;->build()Landroid/content/Intent;

    move-result-object p0
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_8f} :catch_91

    goto/16 :goto_258

    .line 16
    :catch_91
    invoke-static {p0}, Lcom/tebakgambar/Henson;->with(Landroid/content/Context;)Lcom/tebakgambar/Henson$b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tebakgambar/Henson$b;->e()Lcom/tebakgambar/levelselection/LevelSelectionActivity$$IntentBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tebakgambar/levelselection/LevelSelectionActivity$$IntentBuilder;->build()Landroid/content/Intent;

    move-result-object p0

    goto/16 :goto_258

    .line 17
    :pswitch_9f
    :try_start_9f
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 18
    invoke-static {p1}, Lcom/tebakgambar/model/Level;->fromGlobalIndex(I)Lcom/tebakgambar/model/Level;

    move-result-object v0

    if-eqz v0, :cond_10b

    .line 19
    invoke-virtual {v0}, Lcom/tebakgambar/model/Level;->isLocked()Z

    move-result v1

    if-nez v1, :cond_10b

    .line 20
    invoke-virtual {v0, p0}, Lcom/tebakgambar/model/Level;->generateLevelIfNeeded(Landroid/content/Context;)V

    .line 21
    invoke-virtual {v0}, Lcom/tebakgambar/model/Level;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_f7

    .line 22
    invoke-virtual {v0, p1}, Lcom/tebakgambar/model/Level;->getQuestionSavedData(I)Lcom/tebakgambar/model/QuestionSavedData;

    move-result-object v1

    if-eqz v1, :cond_df

    .line 23
    iget-boolean v1, v1, Lcom/tebakgambar/model/QuestionSavedData;->open:Z

    if-eqz v1, :cond_df

    .line 24
    invoke-static {p0}, Lcom/tebakgambar/Henson;->with(Landroid/content/Context;)Lcom/tebakgambar/Henson$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tebakgambar/Henson$b;->h()Lcom/tebakgambar/question/RegularQuestionActivity$$IntentBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tebakgambar/question/RegularQuestionActivity$$IntentBuilder;->questionGlobalIndex(I)Lcom/tebakgambar/question/RegularQuestionActivity$$IntentBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tebakgambar/question/RegularQuestionActivity$$IntentBuilder;->build()Landroid/content/Intent;

    move-result-object p0

    goto/16 :goto_258

    .line 25
    :cond_df
    invoke-static {p0}, Lcom/tebakgambar/Henson;->with(Landroid/content/Context;)Lcom/tebakgambar/Henson$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tebakgambar/Henson$b;->g()Lcom/tebakgambar/levelselection/QuestionSelectionActivity$$IntentBuilder;

    move-result-object p1

    iget v0, v0, Lcom/tebakgambar/model/Level;->id:I

    invoke-virtual {p1, v0}, Lcom/tebakgambar/levelselection/QuestionSelectionActivity$$IntentBuilder;->level(I)Lcom/tebakgambar/levelselection/QuestionSelectionActivity$$IntentBuilder$a;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/tebakgambar/levelselection/QuestionSelectionActivity$$IntentBuilder$a;->b(Z)Lcom/tebakgambar/levelselection/QuestionSelectionActivity$$IntentBuilder$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tebakgambar/levelselection/QuestionSelectionActivity$$IntentBuilder$a;->a()Landroid/content/Intent;

    move-result-object p0

    goto/16 :goto_258

    .line 26
    :cond_f7
    invoke-static {p0}, Lcom/tebakgambar/Henson;->with(Landroid/content/Context;)Lcom/tebakgambar/Henson$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tebakgambar/Henson$b;->d()Lcom/tebakgambar/levelselection/LevelLoadingActivity$$IntentBuilder;

    move-result-object p1

    iget v0, v0, Lcom/tebakgambar/model/Level;->id:I

    invoke-virtual {p1, v0}, Lcom/tebakgambar/levelselection/LevelLoadingActivity$$IntentBuilder;->level(I)Lcom/tebakgambar/levelselection/LevelLoadingActivity$$IntentBuilder$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tebakgambar/levelselection/LevelLoadingActivity$$IntentBuilder$a;->a()Landroid/content/Intent;

    move-result-object p0

    goto/16 :goto_258

    .line 27
    :cond_10b
    invoke-static {p0}, Lcom/tebakgambar/Henson;->with(Landroid/content/Context;)Lcom/tebakgambar/Henson$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tebakgambar/Henson$b;->e()Lcom/tebakgambar/levelselection/LevelSelectionActivity$$IntentBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/tebakgambar/levelselection/LevelSelectionActivity$$IntentBuilder;->isLevelNotEligible(Z)Lcom/tebakgambar/levelselection/LevelSelectionActivity$$IntentBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tebakgambar/levelselection/LevelSelectionActivity$$IntentBuilder;->build()Landroid/content/Intent;

    move-result-object p0
    :try_end_11b
    .catch Ljava/lang/Exception; {:try_start_9f .. :try_end_11b} :catch_11d

    goto/16 :goto_258

    .line 28
    :catch_11d
    invoke-static {p0}, Lcom/tebakgambar/Henson;->with(Landroid/content/Context;)Lcom/tebakgambar/Henson$b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tebakgambar/Henson$b;->e()Lcom/tebakgambar/levelselection/LevelSelectionActivity$$IntentBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tebakgambar/levelselection/LevelSelectionActivity$$IntentBuilder;->build()Landroid/content/Intent;

    move-result-object p0

    goto/16 :goto_258

    .line 29
    :pswitch_12b
    :try_start_12b
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 30
    invoke-static {p1}, Lcom/tebakgambar/model/Level;->fromId(I)Lcom/tebakgambar/model/Level;

    move-result-object p1

    if-eqz p1, :cond_176

    .line 31
    invoke-virtual {p1}, Lcom/tebakgambar/model/Level;->isLocked()Z

    move-result v0

    if-nez v0, :cond_176

    .line 32
    invoke-virtual {p1, p0}, Lcom/tebakgambar/model/Level;->generateLevelIfNeeded(Landroid/content/Context;)V

    .line 33
    invoke-virtual {p1}, Lcom/tebakgambar/model/Level;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_162

    .line 34
    invoke-static {p0}, Lcom/tebakgambar/Henson;->with(Landroid/content/Context;)Lcom/tebakgambar/Henson$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tebakgambar/Henson$b;->g()Lcom/tebakgambar/levelselection/QuestionSelectionActivity$$IntentBuilder;

    move-result-object v0

    iget p1, p1, Lcom/tebakgambar/model/Level;->id:I

    invoke-virtual {v0, p1}, Lcom/tebakgambar/levelselection/QuestionSelectionActivity$$IntentBuilder;->level(I)Lcom/tebakgambar/levelselection/QuestionSelectionActivity$$IntentBuilder$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tebakgambar/levelselection/QuestionSelectionActivity$$IntentBuilder$a;->a()Landroid/content/Intent;

    move-result-object p0

    goto/16 :goto_258

    .line 35
    :cond_162
    invoke-static {p0}, Lcom/tebakgambar/Henson;->with(Landroid/content/Context;)Lcom/tebakgambar/Henson$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tebakgambar/Henson$b;->d()Lcom/tebakgambar/levelselection/LevelLoadingActivity$$IntentBuilder;

    move-result-object v0

    iget p1, p1, Lcom/tebakgambar/model/Level;->id:I

    invoke-virtual {v0, p1}, Lcom/tebakgambar/levelselection/LevelLoadingActivity$$IntentBuilder;->level(I)Lcom/tebakgambar/levelselection/LevelLoadingActivity$$IntentBuilder$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tebakgambar/levelselection/LevelLoadingActivity$$IntentBuilder$a;->a()Landroid/content/Intent;

    move-result-object p0

    goto/16 :goto_258

    .line 36
    :cond_176
    invoke-static {p0}, Lcom/tebakgambar/Henson;->with(Landroid/content/Context;)Lcom/tebakgambar/Henson$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tebakgambar/Henson$b;->e()Lcom/tebakgambar/levelselection/LevelSelectionActivity$$IntentBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/tebakgambar/levelselection/LevelSelectionActivity$$IntentBuilder;->isLevelNotEligible(Z)Lcom/tebakgambar/levelselection/LevelSelectionActivity$$IntentBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tebakgambar/levelselection/LevelSelectionActivity$$IntentBuilder;->build()Landroid/content/Intent;

    move-result-object p0
    :try_end_186
    .catch Ljava/lang/Exception; {:try_start_12b .. :try_end_186} :catch_188

    goto/16 :goto_258

    .line 37
    :catch_188
    invoke-static {p0}, Lcom/tebakgambar/Henson;->with(Landroid/content/Context;)Lcom/tebakgambar/Henson$b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tebakgambar/Henson$b;->e()Lcom/tebakgambar/levelselection/LevelSelectionActivity$$IntentBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tebakgambar/levelselection/LevelSelectionActivity$$IntentBuilder;->build()Landroid/content/Intent;

    move-result-object p0

    goto/16 :goto_258

    .line 38
    :pswitch_196
    invoke-static {p0}, Lcom/tebakgambar/Henson;->with(Landroid/content/Context;)Lcom/tebakgambar/Henson$b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tebakgambar/Henson$b;->e()Lcom/tebakgambar/levelselection/LevelSelectionActivity$$IntentBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tebakgambar/levelselection/LevelSelectionActivity$$IntentBuilder;->build()Landroid/content/Intent;

    move-result-object p0

    goto/16 :goto_258

    .line 39
    :pswitch_1a4
    :try_start_1a4
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 40
    invoke-static {p0}, Lcom/tebakgambar/Henson;->with(Landroid/content/Context;)Lcom/tebakgambar/Henson$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tebakgambar/Henson$b;->l()Lcom/tebakgambar/sticker/StickerCampaignActivity$$IntentBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tebakgambar/sticker/StickerCampaignActivity$$IntentBuilder;->campaignDetailId(Ljava/lang/Integer;)Lcom/tebakgambar/sticker/StickerCampaignActivity$$IntentBuilder$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tebakgambar/sticker/StickerCampaignActivity$$IntentBuilder$a;->a()Landroid/content/Intent;

    move-result-object p0
    :try_end_1c6
    .catch Ljava/lang/Exception; {:try_start_1a4 .. :try_end_1c6} :catch_1c8

    goto/16 :goto_258

    .line 41
    :catch_1c8
    invoke-static {p0}, Lcom/tebakgambar/Henson;->with(Landroid/content/Context;)Lcom/tebakgambar/Henson$b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tebakgambar/Henson$b;->i()Lcom/tebakgambar/selfie/SelfieFrameChooserActivity$$IntentBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tebakgambar/selfie/SelfieFrameChooserActivity$$IntentBuilder;->build()Landroid/content/Intent;

    move-result-object p0

    goto/16 :goto_258

    .line 42
    :pswitch_1d6
    invoke-static {p0}, Lcom/tebakgambar/Henson;->with(Landroid/content/Context;)Lcom/tebakgambar/Henson$b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tebakgambar/Henson$b;->m()Lcom/tebakgambar/sticker/StickerCampaignListActivity$$IntentBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tebakgambar/sticker/StickerCampaignListActivity$$IntentBuilder;->build()Landroid/content/Intent;

    move-result-object p0

    goto/16 :goto_258

    .line 43
    :pswitch_1e4
    :try_start_1e4
    invoke-static {p0}, Ly8/y;->s(Landroid/content/Context;)I

    move-result v0

    .line 44
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-lt v0, p1, :cond_207

    .line 45
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tebakgambar/selfie/EditFrameActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "frameLevel"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    goto :goto_258

    .line 46
    :cond_207
    invoke-static {p0}, Lcom/tebakgambar/Henson;->with(Landroid/content/Context;)Lcom/tebakgambar/Henson$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tebakgambar/Henson$b;->i()Lcom/tebakgambar/selfie/SelfieFrameChooserActivity$$IntentBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tebakgambar/selfie/SelfieFrameChooserActivity$$IntentBuilder;->build()Landroid/content/Intent;

    move-result-object p0
    :try_end_213
    .catch Ljava/lang/Exception; {:try_start_1e4 .. :try_end_213} :catch_214

    goto :goto_258

    .line 47
    :catch_214
    invoke-static {p0}, Lcom/tebakgambar/Henson;->with(Landroid/content/Context;)Lcom/tebakgambar/Henson$b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tebakgambar/Henson$b;->i()Lcom/tebakgambar/selfie/SelfieFrameChooserActivity$$IntentBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tebakgambar/selfie/SelfieFrameChooserActivity$$IntentBuilder;->build()Landroid/content/Intent;

    move-result-object p0

    goto :goto_258

    .line 48
    :pswitch_221
    invoke-static {p0}, Lcom/tebakgambar/Henson;->with(Landroid/content/Context;)Lcom/tebakgambar/Henson$b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tebakgambar/Henson$b;->i()Lcom/tebakgambar/selfie/SelfieFrameChooserActivity$$IntentBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tebakgambar/selfie/SelfieFrameChooserActivity$$IntentBuilder;->build()Landroid/content/Intent;

    move-result-object p0

    goto :goto_258

    .line 49
    :pswitch_22e
    invoke-static {p0}, Lcom/tebakgambar/Henson;->with(Landroid/content/Context;)Lcom/tebakgambar/Henson$b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tebakgambar/Henson$b;->b()Lcom/tebakgambar/home/HomeActivity$$IntentBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/tebakgambar/home/HomeActivity$$IntentBuilder;->showLoginImmediately(Z)Lcom/tebakgambar/home/HomeActivity$$IntentBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tebakgambar/home/HomeActivity$$IntentBuilder;->build()Landroid/content/Intent;

    move-result-object p0

    goto :goto_258

    .line 50
    :pswitch_23f
    invoke-static {p0}, Lcom/tebakgambar/Henson;->with(Landroid/content/Context;)Lcom/tebakgambar/Henson$b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tebakgambar/Henson$b;->j()Lcom/tebakgambar/sendquestion/SendQuestionActivity$$IntentBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tebakgambar/sendquestion/SendQuestionActivity$$IntentBuilder;->build()Landroid/content/Intent;

    move-result-object p0

    goto :goto_258

    .line 51
    :pswitch_24c
    invoke-static {p0}, Lcom/tebakgambar/Henson;->with(Landroid/content/Context;)Lcom/tebakgambar/Henson$b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tebakgambar/Henson$b;->c()Lcom/tebakgambar/howtoplay/HowToPlayActivity$$IntentBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tebakgambar/howtoplay/HowToPlayActivity$$IntentBuilder;->build()Landroid/content/Intent;

    move-result-object p0

    .line 52
    :goto_258
    invoke-static {p0}, Lt1/h;->q(Ljava/lang/Object;)Lt1/h;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_25e
    .packed-switch 0x2
        :pswitch_24c
        :pswitch_23f
        :pswitch_22e
        :pswitch_221
        :pswitch_1e4
        :pswitch_1d6
        :pswitch_1a4
        :pswitch_196
        :pswitch_12b
        :pswitch_9f
        :pswitch_71
        :pswitch_60
        :pswitch_4f
    .end packed-switch
.end method

.method public static k(Landroid/content/Context;Ljava/lang/String;)Lt1/h;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Lt1/h<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 2
    invoke-static {p0, p1}, Ly8/f;->j(Landroid/content/Context;Landroid/net/Uri;)Lt1/h;

    move-result-object p0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return-object p0

    :catch_9
    move-exception p0

    .line 3
    invoke-static {p0}, Lt1/h;->p(Ljava/lang/Exception;)Lt1/h;

    move-result-object p0

    return-object p0
.end method

###### Class y8.c (y8.c)
.class public final synthetic Ly8/c;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field public final synthetic a:Landroid/net/Uri;

.field public final synthetic b:Lt1/i;


# direct methods
.method public synthetic constructor <init>(Landroid/net/Uri;Lt1/i;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly8/c;->a:Landroid/net/Uri;

    iput-object p2, p0, Ly8/c;->b:Lt1/i;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/tasks/Task;)V
    .registers 4

    iget-object v0, p0, Ly8/c;->a:Landroid/net/Uri;

    iget-object v1, p0, Ly8/c;->b:Lt1/i;

    invoke-static {v0, v1, p1}, Ly8/f;->c(Landroid/net/Uri;Lt1/i;Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method

###### Class y8.d (y8.d)
.class public final synthetic Ly8/d;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lt1/f;


# instance fields
.field public final synthetic a:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly8/d;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(Lt1/h;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Ly8/d;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Ly8/f;->a(Landroid/content/Context;Lt1/h;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

###### Class y8.e (y8.e)
.class public final synthetic Ly8/e;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lt1/f;


# static fields
.field public static final synthetic a:Ly8/e;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Ly8/e;

    invoke-direct {v0}, Ly8/e;-><init>()V

    sput-object v0, Ly8/e;->a:Ly8/e;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lt1/h;)Ljava/lang/Object;
    .registers 2

    invoke-static {p1}, Ly8/f;->b(Lt1/h;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method
