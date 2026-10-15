###### Class com.twitter.sdk.android.tweetcomposer.TweetUploadService (com.twitter.sdk.android.tweetcomposer.TweetUploadService)
.class public Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;
.super Landroid/app/IntentService;
.source "TweetUploadService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService$c;
    }
.end annotation


# instance fields
.field o:Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService$c;

.field p:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService$c;

    invoke-direct {v0}, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService$c;-><init>()V

    invoke-direct {p0, v0}, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;-><init>(Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService$c;)V

    return-void
.end method

.method constructor <init>(Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService$c;)V
    .registers 3

    const-string v0, "TweetUploadService"

    .line 2
    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;->o:Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService$c;

    return-void
.end method


# virtual methods
.method a(Lcom/twitter/sdk/android/core/y;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;->p:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;->b(Landroid/content/Intent;)V

    .line 2
    invoke-static {}, Lcom/twitter/sdk/android/core/o;->g()Lcom/twitter/sdk/android/core/h;

    move-result-object v0

    const-string v1, "TweetUploadService"

    const-string v2, "Post Tweet failed"

    invoke-interface {v0, v1, v2, p1}, Lcom/twitter/sdk/android/core/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3
    invoke-virtual {p0}, Landroid/app/IntentService;->stopSelf()V

    return-void
.end method

.method b(Landroid/content/Intent;)V
    .registers 4

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.twitter.sdk.android.tweetcomposer.UPLOAD_FAILURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "EXTRA_RETRY_INTENT"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3
    invoke-virtual {p0}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    invoke-virtual {p0, v0}, Landroid/app/IntentService;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method c(J)V
    .registers 5

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.twitter.sdk.android.tweetcomposer.UPLOAD_SUCCESS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "EXTRA_TWEET_ID"

    .line 2
    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3
    invoke-virtual {p0}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    invoke-virtual {p0, v0}, Landroid/app/IntentService;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method d(Lcom/twitter/sdk/android/core/a0;Landroid/net/Uri;Lcom/twitter/sdk/android/core/c;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/a0;",
            "Landroid/net/Uri;",
            "Lcom/twitter/sdk/android/core/c<",
            "Lf9/i;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;->o:Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService$c;

    invoke-virtual {v0, p1}, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService$c;->a(Lcom/twitter/sdk/android/core/a0;)Lcom/twitter/sdk/android/core/p;

    move-result-object p1

    .line 2
    invoke-static {p0, p2}, Lcom/twitter/sdk/android/tweetcomposer/f;->c(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_17

    .line 3
    new-instance p1, Lcom/twitter/sdk/android/core/y;

    const-string p2, "Uri file path resolved to null"

    invoke-direct {p1, p2}, Lcom/twitter/sdk/android/core/y;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;->a(Lcom/twitter/sdk/android/core/y;)V

    return-void

    .line 4
    :cond_17
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-static {v0}, Lcom/twitter/sdk/android/tweetcomposer/f;->b(Ljava/io/File;)Ljava/lang/String;

    move-result-object p2

    .line 6
    invoke-static {p2}, Lja/v;->d(Ljava/lang/String;)Lja/v;

    move-result-object p2

    invoke-static {p2, v0}, Lja/b0;->create(Lja/v;Ljava/io/File;)Lja/b0;

    move-result-object p2

    .line 7
    invoke-virtual {p1}, Lcom/twitter/sdk/android/core/p;->e()Lcom/twitter/sdk/android/core/services/MediaService;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0, v0}, Lcom/twitter/sdk/android/core/services/MediaService;->upload(Lja/b0;Lja/b0;Lja/b0;)Lwa/b;

    move-result-object p1

    invoke-interface {p1, p3}, Lwa/b;->v3(Lwa/d;)V

    return-void
.end method

.method e(Lcom/twitter/sdk/android/core/a0;Ljava/lang/String;Landroid/net/Uri;)V
    .registers 5

    if-eqz p3, :cond_b

    .line 1
    new-instance v0, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService$a;

    invoke-direct {v0, p0, p1, p2}, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService$a;-><init>(Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;Lcom/twitter/sdk/android/core/a0;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p3, v0}, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;->d(Lcom/twitter/sdk/android/core/a0;Landroid/net/Uri;Lcom/twitter/sdk/android/core/c;)V

    goto :goto_f

    :cond_b
    const/4 p3, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;->f(Lcom/twitter/sdk/android/core/a0;Ljava/lang/String;Ljava/lang/String;)V

    :goto_f
    return-void
.end method

.method f(Lcom/twitter/sdk/android/core/a0;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14

    .line 1
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;->o:Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService$c;

    invoke-virtual {v0, p1}, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService$c;->a(Lcom/twitter/sdk/android/core/a0;)Lcom/twitter/sdk/android/core/p;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lcom/twitter/sdk/android/core/p;->g()Lcom/twitter/sdk/android/core/services/StatusesService;

    move-result-object v0

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p2

    move-object v9, p3

    invoke-interface/range {v0 .. v9}, Lcom/twitter/sdk/android/core/services/StatusesService;->update(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;)Lwa/b;

    move-result-object p1

    new-instance p2, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService$b;

    invoke-direct {p2, p0}, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService$b;-><init>(Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;)V

    .line 3
    invoke-interface {p1, p2}, Lwa/b;->v3(Lwa/d;)V

    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .registers 7

    const-string v0, "EXTRA_USER_TOKEN"

    .line 1
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/t;

    .line 2
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;->p:Landroid/content/Intent;

    .line 3
    new-instance v1, Lcom/twitter/sdk/android/core/a0;

    const-wide/16 v2, -0x1

    const-string v4, ""

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/twitter/sdk/android/core/a0;-><init>(Lcom/twitter/sdk/android/core/t;JLjava/lang/String;)V

    const-string v0, "EXTRA_TWEET_TEXT"

    .line 4
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "EXTRA_IMAGE_URI"

    .line 5
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    .line 6
    invoke-virtual {p0, v1, v0, p1}, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;->e(Lcom/twitter/sdk/android/core/a0;Ljava/lang/String;Landroid/net/Uri;)V

    return-void
.end method

###### Class com.twitter.sdk.android.tweetcomposer.TweetUploadService.a (com.twitter.sdk.android.tweetcomposer.TweetUploadService$a)
.class Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService$a;
.super Lcom/twitter/sdk/android/core/c;
.source "TweetUploadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;->e(Lcom/twitter/sdk/android/core/a0;Ljava/lang/String;Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/sdk/android/core/c<",
        "Lf9/i;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/sdk/android/core/a0;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;Lcom/twitter/sdk/android/core/a0;Ljava/lang/String;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService$a;->c:Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;

    iput-object p2, p0, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService$a;->a:Lcom/twitter/sdk/android/core/a0;

    iput-object p3, p0, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService$a;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcom/twitter/sdk/android/core/c;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lcom/twitter/sdk/android/core/y;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService$a;->c:Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;

    invoke-virtual {v0, p1}, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;->a(Lcom/twitter/sdk/android/core/y;)V

    return-void
.end method

.method public d(Lcom/twitter/sdk/android/core/l;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/l<",
            "Lf9/i;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService$a;->c:Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;

    iget-object v1, p0, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService$a;->a:Lcom/twitter/sdk/android/core/a0;

    iget-object v2, p0, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService$a;->b:Ljava/lang/String;

    iget-object p1, p1, Lcom/twitter/sdk/android/core/l;->a:Ljava/lang/Object;

    check-cast p1, Lf9/i;

    iget-object p1, p1, Lf9/i;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;->f(Lcom/twitter/sdk/android/core/a0;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

###### Class com.twitter.sdk.android.tweetcomposer.TweetUploadService.b (com.twitter.sdk.android.tweetcomposer.TweetUploadService$b)
.class Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService$b;
.super Lcom/twitter/sdk/android/core/c;
.source "TweetUploadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;->f(Lcom/twitter/sdk/android/core/a0;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/sdk/android/core/c<",
        "Lf9/n;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService$b;->a:Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;

    invoke-direct {p0}, Lcom/twitter/sdk/android/core/c;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lcom/twitter/sdk/android/core/y;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService$b;->a:Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;

    invoke-virtual {v0, p1}, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;->a(Lcom/twitter/sdk/android/core/y;)V

    return-void
.end method

.method public d(Lcom/twitter/sdk/android/core/l;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/l<",
            "Lf9/n;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService$b;->a:Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;

    iget-object p1, p1, Lcom/twitter/sdk/android/core/l;->a:Ljava/lang/Object;

    check-cast p1, Lf9/n;

    invoke-virtual {p1}, Lf9/n;->a()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;->c(J)V

    .line 2
    iget-object p1, p0, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService$b;->a:Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;

    invoke-virtual {p1}, Landroid/app/IntentService;->stopSelf()V

    return-void
.end method

###### Class com.twitter.sdk.android.tweetcomposer.TweetUploadService.c (com.twitter.sdk.android.tweetcomposer.TweetUploadService$c)
.class Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService$c;
.super Ljava/lang/Object;
.source "TweetUploadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(Lcom/twitter/sdk/android/core/a0;)Lcom/twitter/sdk/android/core/p;
    .registers 3

    .line 1
    invoke-static {}, Lcom/twitter/sdk/android/core/x;->h()Lcom/twitter/sdk/android/core/x;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/twitter/sdk/android/core/x;->d(Lcom/twitter/sdk/android/core/a0;)Lcom/twitter/sdk/android/core/p;

    move-result-object p1

    return-object p1
.end method
