###### Class com.twitter.sdk.android.tweetcomposer.a (com.twitter.sdk.android.tweetcomposer.a)
.class Lcom/twitter/sdk/android/tweetcomposer/a;
.super Ljava/lang/Object;
.source "ComposerController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twitter/sdk/android/tweetcomposer/a$d;,
        Lcom/twitter/sdk/android/tweetcomposer/a$c;,
        Lcom/twitter/sdk/android/tweetcomposer/a$b;
    }
.end annotation


# instance fields
.field final a:Lcom/twitter/sdk/android/tweetcomposer/ComposerView;

.field final b:Lcom/twitter/sdk/android/core/a0;

.field final c:Landroid/net/Uri;

.field final d:Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity$a;

.field final e:Lcom/twitter/sdk/android/tweetcomposer/a$d;


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/tweetcomposer/ComposerView;Lcom/twitter/sdk/android/core/a0;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity$a;)V
    .registers 15

    .line 1
    new-instance v7, Lcom/twitter/sdk/android/tweetcomposer/a$d;

    invoke-direct {v7}, Lcom/twitter/sdk/android/tweetcomposer/a$d;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/twitter/sdk/android/tweetcomposer/a;-><init>(Lcom/twitter/sdk/android/tweetcomposer/ComposerView;Lcom/twitter/sdk/android/core/a0;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity$a;Lcom/twitter/sdk/android/tweetcomposer/a$d;)V

    return-void
.end method

.method constructor <init>(Lcom/twitter/sdk/android/tweetcomposer/ComposerView;Lcom/twitter/sdk/android/core/a0;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity$a;Lcom/twitter/sdk/android/tweetcomposer/a$d;)V
    .registers 8

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetcomposer/a;->a:Lcom/twitter/sdk/android/tweetcomposer/ComposerView;

    .line 4
    iput-object p2, p0, Lcom/twitter/sdk/android/tweetcomposer/a;->b:Lcom/twitter/sdk/android/core/a0;

    .line 5
    iput-object p3, p0, Lcom/twitter/sdk/android/tweetcomposer/a;->c:Landroid/net/Uri;

    .line 6
    iput-object p6, p0, Lcom/twitter/sdk/android/tweetcomposer/a;->d:Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity$a;

    .line 7
    iput-object p7, p0, Lcom/twitter/sdk/android/tweetcomposer/a;->e:Lcom/twitter/sdk/android/tweetcomposer/a$d;

    .line 8
    new-instance p2, Lcom/twitter/sdk/android/tweetcomposer/a$c;

    invoke-direct {p2, p0}, Lcom/twitter/sdk/android/tweetcomposer/a$c;-><init>(Lcom/twitter/sdk/android/tweetcomposer/a;)V

    invoke-virtual {p1, p2}, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->setCallbacks(Lcom/twitter/sdk/android/tweetcomposer/a$b;)V

    .line 9
    invoke-virtual {p0, p4, p5}, Lcom/twitter/sdk/android/tweetcomposer/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->setTweetText(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetcomposer/a;->h()V

    .line 11
    invoke-virtual {p0, p3}, Lcom/twitter/sdk/android/tweetcomposer/a;->g(Landroid/net/Uri;)V

    return-void
.end method

.method static b(I)Z
    .registers 2

    if-lez p0, :cond_8

    const/16 v0, 0x8c

    if-gt p0, v0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method static c(I)Z
    .registers 2

    const/16 v0, 0x8c

    if-le p0, v0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method static e(I)I
    .registers 1

    rsub-int p0, p0, 0x8c

    return p0
.end method


# virtual methods
.method a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    :cond_e
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_22

    .line 5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-lez p1, :cond_1f

    const-string p1, " "

    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    :cond_1f
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    :cond_22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method d()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetcomposer/a;->f()V

    .line 2
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/a;->d:Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity$a;

    invoke-interface {v0}, Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity$a;->a()V

    return-void
.end method

.method f()V
    .registers 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.twitter.sdk.android.tweetcomposer.TWEET_COMPOSE_CANCEL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetcomposer/a;->a:Lcom/twitter/sdk/android/tweetcomposer/ComposerView;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetcomposer/a;->a:Lcom/twitter/sdk/android/tweetcomposer/ComposerView;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method g(Landroid/net/Uri;)V
    .registers 3

    if-eqz p1, :cond_7

    .line 1
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/a;->a:Lcom/twitter/sdk/android/tweetcomposer/ComposerView;

    invoke-virtual {v0, p1}, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->setImageView(Landroid/net/Uri;)V

    :cond_7
    return-void
.end method

.method h()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/a;->e:Lcom/twitter/sdk/android/tweetcomposer/a$d;

    iget-object v1, p0, Lcom/twitter/sdk/android/tweetcomposer/a;->b:Lcom/twitter/sdk/android/core/a0;

    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/tweetcomposer/a$d;->a(Lcom/twitter/sdk/android/core/a0;)Lcom/twitter/sdk/android/core/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/p;->d()Lcom/twitter/sdk/android/core/services/AccountService;

    move-result-object v0

    .line 2
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2, v1}, Lcom/twitter/sdk/android/core/services/AccountService;->verifyCredentials(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lwa/b;

    move-result-object v0

    new-instance v1, Lcom/twitter/sdk/android/tweetcomposer/a$a;

    invoke-direct {v1, p0}, Lcom/twitter/sdk/android/tweetcomposer/a$a;-><init>(Lcom/twitter/sdk/android/tweetcomposer/a;)V

    invoke-interface {v0, v1}, Lwa/b;->v3(Lwa/d;)V

    return-void
.end method

.method i(Ljava/lang/String;)I
    .registers 3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_8
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/a;->e:Lcom/twitter/sdk/android/tweetcomposer/a$d;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/tweetcomposer/a$d;->b()La9/d;

    move-result-object v0

    invoke-virtual {v0, p1}, La9/d;->a(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

###### Class com.twitter.sdk.android.tweetcomposer.a.C0139a (com.twitter.sdk.android.tweetcomposer.a$a)
.class Lcom/twitter/sdk/android/tweetcomposer/a$a;
.super Lcom/twitter/sdk/android/core/c;
.source "ComposerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twitter/sdk/android/tweetcomposer/a;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/sdk/android/core/c<",
        "Lf9/p;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/sdk/android/tweetcomposer/a;


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/tweetcomposer/a;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetcomposer/a$a;->a:Lcom/twitter/sdk/android/tweetcomposer/a;

    invoke-direct {p0}, Lcom/twitter/sdk/android/core/c;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lcom/twitter/sdk/android/core/y;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/twitter/sdk/android/tweetcomposer/a$a;->a:Lcom/twitter/sdk/android/tweetcomposer/a;

    iget-object p1, p1, Lcom/twitter/sdk/android/tweetcomposer/a;->a:Lcom/twitter/sdk/android/tweetcomposer/ComposerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->setProfilePhotoView(Lf9/p;)V

    return-void
.end method

.method public d(Lcom/twitter/sdk/android/core/l;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/l<",
            "Lf9/p;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/a$a;->a:Lcom/twitter/sdk/android/tweetcomposer/a;

    iget-object v0, v0, Lcom/twitter/sdk/android/tweetcomposer/a;->a:Lcom/twitter/sdk/android/tweetcomposer/ComposerView;

    iget-object p1, p1, Lcom/twitter/sdk/android/core/l;->a:Ljava/lang/Object;

    check-cast p1, Lf9/p;

    invoke-virtual {v0, p1}, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->setProfilePhotoView(Lf9/p;)V

    return-void
.end method

###### Class com.twitter.sdk.android.tweetcomposer.a.b (com.twitter.sdk.android.tweetcomposer.a$b)
.class interface abstract Lcom/twitter/sdk/android/tweetcomposer/a$b;
.super Ljava/lang/Object;
.source "ComposerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twitter/sdk/android/tweetcomposer/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "b"
.end annotation


# virtual methods
.method public abstract a()V
.end method

.method public abstract b(Ljava/lang/String;)V
.end method

.method public abstract c(Ljava/lang/String;)V
.end method

###### Class com.twitter.sdk.android.tweetcomposer.a.c (com.twitter.sdk.android.tweetcomposer.a$c)
.class Lcom/twitter/sdk/android/tweetcomposer/a$c;
.super Ljava/lang/Object;
.source "ComposerController.java"

# interfaces
.implements Lcom/twitter/sdk/android/tweetcomposer/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twitter/sdk/android/tweetcomposer/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/sdk/android/tweetcomposer/a;


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/tweetcomposer/a;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetcomposer/a$c;->a:Lcom/twitter/sdk/android/tweetcomposer/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/a$c;->a:Lcom/twitter/sdk/android/tweetcomposer/a;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/tweetcomposer/a;->d()V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/a$c;->a:Lcom/twitter/sdk/android/tweetcomposer/a;

    invoke-virtual {v0, p1}, Lcom/twitter/sdk/android/tweetcomposer/a;->i(Ljava/lang/String;)I

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/a$c;->a:Lcom/twitter/sdk/android/tweetcomposer/a;

    iget-object v0, v0, Lcom/twitter/sdk/android/tweetcomposer/a;->a:Lcom/twitter/sdk/android/tweetcomposer/ComposerView;

    invoke-static {p1}, Lcom/twitter/sdk/android/tweetcomposer/a;->e(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->setCharCount(I)V

    .line 3
    invoke-static {p1}, Lcom/twitter/sdk/android/tweetcomposer/a;->c(I)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 4
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/a$c;->a:Lcom/twitter/sdk/android/tweetcomposer/a;

    iget-object v0, v0, Lcom/twitter/sdk/android/tweetcomposer/a;->a:Lcom/twitter/sdk/android/tweetcomposer/ComposerView;

    sget v1, Lcom/twitter/sdk/android/tweetcomposer/j;->c:I

    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->setCharCountTextStyle(I)V

    goto :goto_2a

    .line 5
    :cond_21
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/a$c;->a:Lcom/twitter/sdk/android/tweetcomposer/a;

    iget-object v0, v0, Lcom/twitter/sdk/android/tweetcomposer/a;->a:Lcom/twitter/sdk/android/tweetcomposer/ComposerView;

    sget v1, Lcom/twitter/sdk/android/tweetcomposer/j;->b:I

    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->setCharCountTextStyle(I)V

    .line 6
    :goto_2a
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/a$c;->a:Lcom/twitter/sdk/android/tweetcomposer/a;

    iget-object v0, v0, Lcom/twitter/sdk/android/tweetcomposer/a;->a:Lcom/twitter/sdk/android/tweetcomposer/ComposerView;

    invoke-static {p1}, Lcom/twitter/sdk/android/tweetcomposer/a;->b(I)Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->k(Z)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 5

    .line 1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/twitter/sdk/android/tweetcomposer/a$c;->a:Lcom/twitter/sdk/android/tweetcomposer/a;

    iget-object v1, v1, Lcom/twitter/sdk/android/tweetcomposer/a;->a:Lcom/twitter/sdk/android/tweetcomposer/ComposerView;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetcomposer/a$c;->a:Lcom/twitter/sdk/android/tweetcomposer/a;

    iget-object v1, v1, Lcom/twitter/sdk/android/tweetcomposer/a;->b:Lcom/twitter/sdk/android/core/a0;

    invoke-virtual {v1}, Lcom/twitter/sdk/android/core/m;->a()Lcom/twitter/sdk/android/core/a;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    const-string v2, "EXTRA_USER_TOKEN"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "EXTRA_TWEET_TEXT"

    .line 3
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    iget-object p1, p0, Lcom/twitter/sdk/android/tweetcomposer/a$c;->a:Lcom/twitter/sdk/android/tweetcomposer/a;

    iget-object p1, p1, Lcom/twitter/sdk/android/tweetcomposer/a;->c:Landroid/net/Uri;

    const-string v1, "EXTRA_IMAGE_URI"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 5
    iget-object p1, p0, Lcom/twitter/sdk/android/tweetcomposer/a$c;->a:Lcom/twitter/sdk/android/tweetcomposer/a;

    iget-object p1, p1, Lcom/twitter/sdk/android/tweetcomposer/a;->a:Lcom/twitter/sdk/android/tweetcomposer/ComposerView;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 6
    iget-object p1, p0, Lcom/twitter/sdk/android/tweetcomposer/a$c;->a:Lcom/twitter/sdk/android/tweetcomposer/a;

    iget-object p1, p1, Lcom/twitter/sdk/android/tweetcomposer/a;->d:Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity$a;

    invoke-interface {p1}, Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity$a;->a()V

    return-void
.end method

###### Class com.twitter.sdk.android.tweetcomposer.a.d (com.twitter.sdk.android.tweetcomposer.a$d)
.class Lcom/twitter/sdk/android/tweetcomposer/a$d;
.super Ljava/lang/Object;
.source "ComposerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twitter/sdk/android/tweetcomposer/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation


# instance fields
.field final a:La9/d;


# direct methods
.method constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, La9/d;

    invoke-direct {v0}, La9/d;-><init>()V

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/a$d;->a:La9/d;

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

.method b()La9/d;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/a$d;->a:La9/d;

    return-object v0
.end method
