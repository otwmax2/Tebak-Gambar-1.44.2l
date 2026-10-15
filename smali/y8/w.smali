###### Class y8.w (y8.w)
.class public Ly8/w;
.super Ljava/lang/Object;
.source "SocialMediaSharer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ly8/w$g;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ly8/w$g;

.field private c:I

.field private d:Landroid/app/Activity;

.field private e:Lj8/a0;

.field private f:Lb9/e;

.field private g:Lcom/twitter/sdk/android/core/a0;

.field private h:Lcom/facebook/CallbackManager;

.field private i:Lcom/twitter/sdk/android/core/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/sdk/android/core/c<",
            "Lcom/twitter/sdk/android/core/a0;",
            ">;"
        }
    .end annotation
.end field

.field public j:Z

.field public k:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Ly8/w;->j:Z

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Ly8/w;->k:Z

    .line 4
    iput-object p1, p0, Ly8/w;->d:Landroid/app/Activity;

    const-string p1, ""

    .line 5
    iput-object p1, p0, Ly8/w;->a:Ljava/lang/String;

    return-void
.end method

.method private C(Landroid/net/Uri;)V
    .registers 5

    .line 1
    new-instance v0, Lj8/a0;

    iget-object v1, p0, Ly8/w;->d:Landroid/app/Activity;

    const v2, 0x7f1300ec

    invoke-direct {v0, v1, v2}, Lj8/a0;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Ly8/w;->e:Lj8/a0;

    .line 2
    invoke-virtual {p0}, Ly8/w;->m()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lj8/a0;->J:Ljava/lang/String;

    .line 3
    iget-object v0, p0, Ly8/w;->e:Lj8/a0;

    new-instance v1, Ly8/w$d;

    invoke-direct {v1, p0, p1}, Ly8/w$d;-><init>(Ly8/w;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lj8/a0;->d(Lj8/a0$c;)V

    .line 4
    iget-object p1, p0, Ly8/w;->e:Lj8/a0;

    iget v0, p0, Ly8/w;->c:I

    invoke-virtual {p1, v0}, Lj8/a0;->p(I)V

    .line 5
    iget-object p1, p0, Ly8/w;->e:Lj8/a0;

    invoke-direct {p0}, Ly8/w;->l()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lj8/a0;->o(Ljava/lang/String;Z)V

    .line 6
    iget-object p1, p0, Ly8/w;->e:Lj8/a0;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method static synthetic a(Ly8/w;Landroid/net/Uri;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Ly8/w;->z(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic b(Ly8/w;)Ly8/w$g;
    .registers 1

    .line 1
    iget-object p0, p0, Ly8/w;->b:Ly8/w$g;

    return-object p0
.end method

.method static synthetic c(Ly8/w;)Landroid/app/Activity;
    .registers 1

    .line 1
    iget-object p0, p0, Ly8/w;->d:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic d(Ly8/w;)I
    .registers 1

    .line 1
    iget p0, p0, Ly8/w;->c:I

    return p0
.end method

.method static synthetic e(Ly8/w;Ljava/lang/String;Landroid/net/Uri;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Ly8/w;->q(Ljava/lang/String;Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic f(Ly8/w;Ljava/lang/String;Landroid/net/Uri;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ly8/w;->t(Ljava/lang/String;Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic g(Ly8/w;Ljava/lang/String;Landroid/net/Uri;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Ly8/w;->r(Ljava/lang/String;Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic h(Ly8/w;Ljava/lang/String;Landroid/net/Uri;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Ly8/w;->s(Ljava/lang/String;Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic i(Ly8/w;)Lj8/a0;
    .registers 1

    .line 1
    iget-object p0, p0, Ly8/w;->e:Lj8/a0;

    return-object p0
.end method

.method static synthetic j(Ly8/w;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Ly8/w;->k()V

    return-void
.end method

.method private k()V
    .registers 2

    .line 1
    iget-object v0, p0, Ly8/w;->e:Lj8/a0;

    if-eqz v0, :cond_a

    .line 2
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Ly8/w;->e:Lj8/a0;

    :cond_a
    return-void
.end method

.method private l()Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    iget-object v1, p0, Ly8/w;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, " "

    if-nez v1, :cond_17

    .line 3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget-object v1, p0, Ly8/w;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    :cond_17
    iget-boolean v1, p0, Ly8/w;->j:Z

    if-eqz v1, :cond_23

    .line 6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#MainTebakGambar"

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    :cond_23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private q(Ljava/lang/String;Landroid/net/Uri;)V
    .registers 6

    .line 1
    new-instance v0, Lcom/facebook/share/model/SharePhoto$Builder;

    invoke-direct {v0}, Lcom/facebook/share/model/SharePhoto$Builder;-><init>()V

    invoke-virtual {v0, p2}, Lcom/facebook/share/model/SharePhoto$Builder;->setImageUrl(Landroid/net/Uri;)Lcom/facebook/share/model/SharePhoto$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/share/model/SharePhoto$Builder;->setCaption(Ljava/lang/String;)Lcom/facebook/share/model/SharePhoto$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/share/model/SharePhoto$Builder;->build()Lcom/facebook/share/model/SharePhoto;

    move-result-object p1

    .line 2
    new-instance v0, Lcom/facebook/share/model/SharePhotoContent$Builder;

    invoke-direct {v0}, Lcom/facebook/share/model/SharePhotoContent$Builder;-><init>()V

    .line 3
    invoke-virtual {v0, p1}, Lcom/facebook/share/model/SharePhotoContent$Builder;->addPhoto(Lcom/facebook/share/model/SharePhoto;)Lcom/facebook/share/model/SharePhotoContent$Builder;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lcom/facebook/share/model/SharePhotoContent$Builder;->build()Lcom/facebook/share/model/SharePhotoContent;

    move-result-object p1

    .line 5
    iget-object v0, p0, Ly8/w;->h:Lcom/facebook/CallbackManager;

    if-nez v0, :cond_28

    .line 6
    invoke-static {}, Lcom/facebook/CallbackManager$Factory;->create()Lcom/facebook/CallbackManager;

    move-result-object v0

    iput-object v0, p0, Ly8/w;->h:Lcom/facebook/CallbackManager;

    .line 7
    :cond_28
    new-instance v0, Lcom/facebook/share/widget/ShareDialog;

    iget-object v1, p0, Ly8/w;->d:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/facebook/share/widget/ShareDialog;-><init>(Landroid/app/Activity;)V

    .line 8
    new-instance v1, Ly8/w$f;

    invoke-direct {v1, p0, p2}, Ly8/w$f;-><init>(Ly8/w;Landroid/net/Uri;)V

    .line 9
    invoke-virtual {v0, p1}, Lcom/facebook/internal/FacebookDialogBase;->canShow(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 10
    sget-object p2, Lcom/facebook/share/widget/ShareDialog$Mode;->NATIVE:Lcom/facebook/share/widget/ShareDialog$Mode;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/share/widget/ShareDialog;->show(Lcom/facebook/share/model/ShareContent;Lcom/facebook/share/widget/ShareDialog$Mode;)V

    .line 11
    iget-object p1, p0, Ly8/w;->h:Lcom/facebook/CallbackManager;

    invoke-virtual {v0, p1, v1}, Lcom/facebook/internal/FacebookDialogBase;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    goto :goto_64

    .line 12
    :cond_45
    invoke-virtual {v0, p1}, Lcom/facebook/internal/FacebookDialogBase;->canShow(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_53

    .line 13
    iget-object p2, p0, Ly8/w;->b:Ly8/w$g;

    if-eqz p2, :cond_64

    .line 14
    invoke-static {p1, v1}, Lcom/facebook/share/ShareApi;->share(Lcom/facebook/share/model/ShareContent;Lcom/facebook/FacebookCallback;)V

    goto :goto_64

    .line 15
    :cond_53
    iget-object p1, p0, Ly8/w;->b:Ly8/w$g;

    if-eqz p1, :cond_64

    .line 16
    iget-object v0, p0, Ly8/w;->d:Landroid/app/Activity;

    const v1, 0x7f1200c1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1, p2}, Ly8/w$g;->d(Ljava/lang/String;ILandroid/net/Uri;)V

    :cond_64
    :goto_64
    return-void
.end method

.method private r(Ljava/lang/String;Landroid/net/Uri;)V
    .registers 5

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "image/*"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.STREAM"

    .line 3
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.TEXT"

    .line 4
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "com.instagram.android"

    .line 5
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    iget-object p1, p0, Ly8/w;->d:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 7
    invoke-direct {p0}, Ly8/w;->k()V

    .line 8
    iget-object p1, p0, Ly8/w;->b:Ly8/w$g;

    if-eqz p1, :cond_2b

    const/4 v0, 0x2

    .line 9
    invoke-interface {p1, v0, p2}, Ly8/w$g;->y(ILandroid/net/Uri;)V

    :cond_2b
    return-void
.end method

.method private s(Ljava/lang/String;Landroid/net/Uri;)V
    .registers 5

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "image/*"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.STREAM"

    .line 3
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.TEXT"

    .line 4
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    iget-object p1, p0, Ly8/w;->d:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 6
    invoke-direct {p0}, Ly8/w;->k()V

    .line 7
    iget-object p1, p0, Ly8/w;->b:Ly8/w$g;

    if-eqz p1, :cond_26

    const/4 v0, 0x3

    .line 8
    invoke-interface {p1, v0, p2}, Ly8/w$g;->y(ILandroid/net/Uri;)V

    :cond_26
    return-void
.end method

.method private t(Ljava/lang/String;Landroid/net/Uri;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/twitter/sdk/android/core/x;->h()Lcom/twitter/sdk/android/core/x;

    move-result-object v0

    iget-object v1, p0, Ly8/w;->g:Lcom/twitter/sdk/android/core/a0;

    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/core/x;->d(Lcom/twitter/sdk/android/core/a0;)Lcom/twitter/sdk/android/core/p;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/p;->e()Lcom/twitter/sdk/android/core/services/MediaService;

    move-result-object v1

    const-string v2, "image/*"

    .line 3
    invoke-static {v2}, Lja/v;->d(Ljava/lang/String;)Lja/v;

    move-result-object v2

    iget-object v3, p0, Ly8/w;->d:Landroid/app/Activity;

    invoke-static {v3, p2}, Ly8/h;->a(Landroid/content/Context;Landroid/net/Uri;)[B

    move-result-object v3

    invoke-static {v2, v3}, Lja/b0;->create(Lja/v;[B)Lja/b0;

    move-result-object v2

    const/4 v3, 0x0

    .line 4
    invoke-interface {v1, v2, v3, v3}, Lcom/twitter/sdk/android/core/services/MediaService;->upload(Lja/b0;Lja/b0;Lja/b0;)Lwa/b;

    move-result-object v1

    .line 5
    new-instance v2, Ly8/w$e;

    invoke-direct {v2, p0, v0, p1, p2}, Ly8/w$e;-><init>(Ly8/w;Lcom/twitter/sdk/android/core/p;Ljava/lang/String;Landroid/net/Uri;)V

    invoke-interface {v1, v2}, Lwa/b;->v3(Lwa/d;)V

    return-void
.end method

.method private z(Landroid/net/Uri;)V
    .registers 3

    const/4 v0, 0x3

    .line 1
    iput v0, p0, Ly8/w;->c:I

    .line 2
    invoke-direct {p0, p1}, Ly8/w;->C(Landroid/net/Uri;)V

    return-void
.end method


# virtual methods
.method public A(Landroid/net/Uri;)V
    .registers 3

    const/4 v0, 0x3

    .line 1
    iput v0, p0, Ly8/w;->c:I

    const-string v0, ""

    .line 2
    invoke-direct {p0, v0, p1}, Ly8/w;->s(Ljava/lang/String;Landroid/net/Uri;)V

    return-void
.end method

.method public B(Landroid/net/Uri;)V
    .registers 4

    const/4 v0, 0x1

    .line 1
    iput v0, p0, Ly8/w;->c:I

    .line 2
    iget-object v0, p0, Ly8/w;->i:Lcom/twitter/sdk/android/core/c;

    if-nez v0, :cond_e

    .line 3
    new-instance v0, Ly8/w$c;

    invoke-direct {v0, p0, p1}, Ly8/w$c;-><init>(Ly8/w;Landroid/net/Uri;)V

    iput-object v0, p0, Ly8/w;->i:Lcom/twitter/sdk/android/core/c;

    .line 4
    :cond_e
    invoke-static {}, Ly8/a;->e()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 5
    invoke-static {}, Lcom/twitter/sdk/android/core/x;->h()Lcom/twitter/sdk/android/core/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/x;->i()Lcom/twitter/sdk/android/core/n;

    move-result-object v0

    invoke-interface {v0}, Lcom/twitter/sdk/android/core/n;->c()Lcom/twitter/sdk/android/core/m;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/a0;

    iput-object v0, p0, Ly8/w;->g:Lcom/twitter/sdk/android/core/a0;

    .line 6
    invoke-direct {p0, p1}, Ly8/w;->C(Landroid/net/Uri;)V

    goto :goto_41

    .line 7
    :cond_28
    iget-object p1, p0, Ly8/w;->f:Lb9/e;

    if-nez p1, :cond_33

    .line 8
    new-instance p1, Lb9/e;

    invoke-direct {p1}, Lb9/e;-><init>()V

    iput-object p1, p0, Ly8/w;->f:Lb9/e;

    .line 9
    :cond_33
    iget-object p1, p0, Ly8/w;->f:Lb9/e;

    invoke-virtual {p1}, Lb9/e;->d()V

    .line 10
    iget-object p1, p0, Ly8/w;->f:Lb9/e;

    iget-object v0, p0, Ly8/w;->d:Landroid/app/Activity;

    iget-object v1, p0, Ly8/w;->i:Lcom/twitter/sdk/android/core/c;

    invoke-virtual {p1, v0, v1}, Lb9/e;->a(Landroid/app/Activity;Lcom/twitter/sdk/android/core/c;)V

    :goto_41
    return-void
.end method

.method public m()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Ly8/w;->a:Ljava/lang/String;

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .registers 3

    .line 1
    iget v0, p0, Ly8/w;->c:I

    if-eqz v0, :cond_13

    const/4 v1, 0x1

    if-eq v0, v1, :cond_10

    const/4 v1, 0x2

    if-eq v0, v1, :cond_d

    const-string v0, "other"

    return-object v0

    :cond_d
    const-string v0, "instagram"

    return-object v0

    :cond_10
    const-string v0, "twitter"

    return-object v0

    :cond_13
    const-string v0, "facebook"

    return-object v0
.end method

.method public o(IILandroid/content/Intent;)V
    .registers 5

    .line 1
    iget-object v0, p0, Ly8/w;->f:Lb9/e;

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Lb9/e;->f(IILandroid/content/Intent;)V

    .line 3
    :cond_7
    iget-object v0, p0, Ly8/w;->h:Lcom/facebook/CallbackManager;

    if-eqz v0, :cond_e

    .line 4
    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/CallbackManager;->onActivityResult(IILandroid/content/Intent;)Z

    :cond_e
    return-void
.end method

.method public p()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Ly8/w;->d:Landroid/app/Activity;

    return-void
.end method

.method public u(Ly8/w$g;)V
    .registers 2

    .line 1
    iput-object p1, p0, Ly8/w;->b:Ly8/w$g;

    return-void
.end method

.method public v(Ljava/lang/String;)V
    .registers 2

    if-eqz p1, :cond_4

    .line 1
    iput-object p1, p0, Ly8/w;->a:Ljava/lang/String;

    :cond_4
    return-void
.end method

.method public w(Landroid/net/Uri;)V
    .registers 5

    .line 1
    iget-boolean v0, p0, Ly8/w;->k:Z

    if-eqz v0, :cond_17

    .line 2
    new-instance v0, Lj8/w0;

    iget-object v1, p0, Ly8/w;->d:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lj8/w0;-><init>(Landroid/content/Context;)V

    .line 3
    new-instance v1, Ly8/w$a;

    invoke-direct {v1, p0, v0, p1}, Ly8/w$a;-><init>(Ly8/w;Lj8/w0;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lj8/w0;->l(Lj8/w0$a;)V

    .line 4
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_2c

    .line 5
    :cond_17
    new-instance v0, Lj8/a0;

    iget-object v1, p0, Ly8/w;->d:Landroid/app/Activity;

    const v2, 0x7f1300ec

    invoke-direct {v0, v1, v2}, Lj8/a0;-><init>(Landroid/content/Context;I)V

    .line 6
    new-instance v1, Ly8/w$b;

    invoke-direct {v1, p0, v0, p1}, Ly8/w$b;-><init>(Ly8/w;Lj8/a0;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lj8/a0;->e(Lj8/a0$d;)V

    .line 7
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :goto_2c
    return-void
.end method

.method public x(Landroid/net/Uri;)V
    .registers 5

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Ly8/w;->c:I

    .line 2
    iget-object v0, p0, Ly8/w;->d:Landroid/app/Activity;

    invoke-static {v0}, Ly8/a;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 3
    invoke-direct {p0, p1}, Ly8/w;->C(Landroid/net/Uri;)V

    goto :goto_20

    .line 4
    :cond_f
    iget-object v0, p0, Ly8/w;->b:Ly8/w$g;

    if-eqz v0, :cond_20

    .line 5
    iget-object v1, p0, Ly8/w;->d:Landroid/app/Activity;

    const v2, 0x7f1200c1

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2, p1}, Ly8/w$g;->d(Ljava/lang/String;ILandroid/net/Uri;)V

    :cond_20
    :goto_20
    return-void
.end method

.method public y(Landroid/net/Uri;)V
    .registers 6

    const/4 v0, 0x2

    .line 1
    iput v0, p0, Ly8/w;->c:I

    .line 2
    iget-object v1, p0, Ly8/w;->d:Landroid/app/Activity;

    invoke-static {v1}, Ly8/a;->d(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 3
    invoke-direct {p0, p1}, Ly8/w;->C(Landroid/net/Uri;)V

    goto :goto_1f

    .line 4
    :cond_f
    iget-object v1, p0, Ly8/w;->b:Ly8/w$g;

    if-eqz v1, :cond_1f

    .line 5
    iget-object v2, p0, Ly8/w;->d:Landroid/app/Activity;

    const v3, 0x7f1200e7

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0, p1}, Ly8/w$g;->d(Ljava/lang/String;ILandroid/net/Uri;)V

    :cond_1f
    :goto_1f
    return-void
.end method

###### Class y8.w.a (y8.w$a)
.class Ly8/w$a;
.super Ljava/lang/Object;
.source "SocialMediaSharer.java"

# interfaces
.implements Lj8/w0$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ly8/w;->w(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lj8/w0;

.field final synthetic b:Landroid/net/Uri;

.field final synthetic c:Ly8/w;


# direct methods
.method constructor <init>(Ly8/w;Lj8/w0;Landroid/net/Uri;)V
    .registers 4

    .line 1
    iput-object p1, p0, Ly8/w$a;->c:Ly8/w;

    iput-object p2, p0, Ly8/w$a;->a:Lj8/w0;

    iput-object p3, p0, Ly8/w$a;->b:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .line 1
    iget-object v0, p0, Ly8/w$a;->a:Lj8/w0;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2
    iget-object v0, p0, Ly8/w$a;->c:Ly8/w;

    iget-object v1, p0, Ly8/w$a;->b:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ly8/w;->y(Landroid/net/Uri;)V

    return-void
.end method

.method public b()V
    .registers 3

    .line 1
    iget-object v0, p0, Ly8/w$a;->a:Lj8/w0;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2
    iget-object v0, p0, Ly8/w$a;->c:Ly8/w;

    iget-object v1, p0, Ly8/w$a;->b:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ly8/w;->B(Landroid/net/Uri;)V

    return-void
.end method

.method public c()V
    .registers 3

    .line 1
    iget-object v0, p0, Ly8/w$a;->a:Lj8/w0;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2
    iget-object v0, p0, Ly8/w$a;->c:Ly8/w;

    iget-object v1, p0, Ly8/w$a;->b:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ly8/w;->x(Landroid/net/Uri;)V

    return-void
.end method

.method public d()V
    .registers 3

    .line 1
    iget-object v0, p0, Ly8/w$a;->a:Lj8/w0;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2
    iget-object v0, p0, Ly8/w$a;->c:Ly8/w;

    iget-object v1, p0, Ly8/w$a;->b:Landroid/net/Uri;

    invoke-static {v0, v1}, Ly8/w;->a(Ly8/w;Landroid/net/Uri;)V

    return-void
.end method

###### Class y8.w.b (y8.w$b)
.class Ly8/w$b;
.super Ljava/lang/Object;
.source "SocialMediaSharer.java"

# interfaces
.implements Lj8/a0$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ly8/w;->w(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lj8/a0;

.field final synthetic b:Landroid/net/Uri;

.field final synthetic c:Ly8/w;


# direct methods
.method constructor <init>(Ly8/w;Lj8/a0;Landroid/net/Uri;)V
    .registers 4

    .line 1
    iput-object p1, p0, Ly8/w$b;->c:Ly8/w;

    iput-object p2, p0, Ly8/w$b;->a:Lj8/a0;

    iput-object p3, p0, Ly8/w$b;->b:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .line 1
    iget-object v0, p0, Ly8/w$b;->a:Lj8/a0;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2
    iget-object v0, p0, Ly8/w$b;->c:Ly8/w;

    iget-object v1, p0, Ly8/w$b;->b:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ly8/w;->y(Landroid/net/Uri;)V

    return-void
.end method

.method public b()V
    .registers 3

    .line 1
    iget-object v0, p0, Ly8/w$b;->a:Lj8/a0;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2
    iget-object v0, p0, Ly8/w$b;->c:Ly8/w;

    iget-object v1, p0, Ly8/w$b;->b:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ly8/w;->B(Landroid/net/Uri;)V

    return-void
.end method

.method public c()V
    .registers 3

    .line 1
    iget-object v0, p0, Ly8/w$b;->a:Lj8/a0;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2
    iget-object v0, p0, Ly8/w$b;->c:Ly8/w;

    iget-object v1, p0, Ly8/w$b;->b:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ly8/w;->x(Landroid/net/Uri;)V

    return-void
.end method

###### Class y8.w.c (y8.w$c)
.class Ly8/w$c;
.super Lcom/twitter/sdk/android/core/c;
.source "SocialMediaSharer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ly8/w;->B(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/sdk/android/core/c<",
        "Lcom/twitter/sdk/android/core/a0;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/net/Uri;

.field final synthetic b:Ly8/w;


# direct methods
.method constructor <init>(Ly8/w;Landroid/net/Uri;)V
    .registers 3

    .line 1
    iput-object p1, p0, Ly8/w$c;->b:Ly8/w;

    iput-object p2, p0, Ly8/w$c;->a:Landroid/net/Uri;

    invoke-direct {p0}, Lcom/twitter/sdk/android/core/c;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lcom/twitter/sdk/android/core/y;)V
    .registers 5

    .line 1
    iget-object p1, p0, Ly8/w$c;->b:Ly8/w;

    invoke-static {p1}, Ly8/w;->b(Ly8/w;)Ly8/w$g;

    move-result-object p1

    if-eqz p1, :cond_21

    .line 2
    iget-object p1, p0, Ly8/w$c;->b:Ly8/w;

    invoke-static {p1}, Ly8/w;->b(Ly8/w;)Ly8/w$g;

    move-result-object p1

    iget-object v0, p0, Ly8/w$c;->b:Ly8/w;

    invoke-static {v0}, Ly8/w;->c(Ly8/w;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f1200ad

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Ly8/w$c;->a:Landroid/net/Uri;

    invoke-interface {p1, v0, v1, v2}, Ly8/w$g;->d(Ljava/lang/String;ILandroid/net/Uri;)V

    :cond_21
    return-void
.end method

.method public d(Lcom/twitter/sdk/android/core/l;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/l<",
            "Lcom/twitter/sdk/android/core/a0;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Ly8/w$c;->b:Ly8/w;

    iget-object v0, p0, Ly8/w$c;->a:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Ly8/w;->B(Landroid/net/Uri;)V

    return-void
.end method

###### Class y8.w.d (y8.w$d)
.class Ly8/w$d;
.super Ljava/lang/Object;
.source "SocialMediaSharer.java"

# interfaces
.implements Lj8/a0$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ly8/w;->C(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/net/Uri;

.field final synthetic b:Ly8/w;


# direct methods
.method constructor <init>(Ly8/w;Landroid/net/Uri;)V
    .registers 3

    .line 1
    iput-object p1, p0, Ly8/w$d;->b:Ly8/w;

    iput-object p2, p0, Ly8/w$d;->a:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .line 1
    iget-object v0, p0, Ly8/w$d;->b:Ly8/w;

    invoke-static {v0}, Ly8/w;->i(Ly8/w;)Lj8/a0;

    move-result-object v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Ly8/w$d;->b:Ly8/w;

    invoke-static {v0}, Ly8/w;->i(Ly8/w;)Lj8/a0;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_1e

    .line 2
    :cond_15
    iget-object v0, p0, Ly8/w$d;->b:Ly8/w;

    invoke-static {v0}, Ly8/w;->i(Ly8/w;)Lj8/a0;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_1e
    :goto_1e
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 4

    .line 1
    :try_start_0
    iget-object v0, p0, Ly8/w$d;->b:Ly8/w;

    invoke-static {v0}, Ly8/w;->d(Ly8/w;)I

    move-result v0

    if-nez v0, :cond_10

    .line 2
    iget-object v0, p0, Ly8/w$d;->b:Ly8/w;

    iget-object v1, p0, Ly8/w$d;->a:Landroid/net/Uri;

    invoke-static {v0, p1, v1}, Ly8/w;->e(Ly8/w;Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_4e

    .line 3
    :cond_10
    iget-object v0, p0, Ly8/w$d;->b:Ly8/w;

    invoke-static {v0}, Ly8/w;->d(Ly8/w;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_21

    .line 4
    iget-object v0, p0, Ly8/w$d;->b:Ly8/w;

    iget-object v1, p0, Ly8/w$d;->a:Landroid/net/Uri;

    invoke-static {v0, p1, v1}, Ly8/w;->f(Ly8/w;Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_4e

    .line 5
    :cond_21
    iget-object v0, p0, Ly8/w$d;->b:Ly8/w;

    invoke-static {v0}, Ly8/w;->d(Ly8/w;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_32

    .line 6
    iget-object v0, p0, Ly8/w$d;->b:Ly8/w;

    iget-object v1, p0, Ly8/w$d;->a:Landroid/net/Uri;

    invoke-static {v0, p1, v1}, Ly8/w;->g(Ly8/w;Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_4e

    .line 7
    :cond_32
    iget-object v0, p0, Ly8/w$d;->b:Ly8/w;

    invoke-static {v0}, Ly8/w;->d(Ly8/w;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4e

    .line 8
    iget-object v0, p0, Ly8/w$d;->b:Ly8/w;

    iget-object v1, p0, Ly8/w$d;->a:Landroid/net/Uri;

    invoke-static {v0, p1, v1}, Ly8/w;->h(Ly8/w;Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_42} :catch_43

    goto :goto_4e

    :catch_43
    move-exception p1

    .line 9
    invoke-static {}, Lcom/google/firebase/crashlytics/a;->a()Lcom/google/firebase/crashlytics/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/a;->d(Ljava/lang/Throwable;)V

    .line 10
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_4e
    :goto_4e
    return-void
.end method

###### Class y8.w.e (y8.w$e)
.class Ly8/w$e;
.super Lcom/twitter/sdk/android/core/c;
.source "SocialMediaSharer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ly8/w;->t(Ljava/lang/String;Landroid/net/Uri;)V
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
.field final synthetic a:Lcom/twitter/sdk/android/core/p;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroid/net/Uri;

.field final synthetic d:Ly8/w;


# direct methods
.method constructor <init>(Ly8/w;Lcom/twitter/sdk/android/core/p;Ljava/lang/String;Landroid/net/Uri;)V
    .registers 5

    .line 1
    iput-object p1, p0, Ly8/w$e;->d:Ly8/w;

    iput-object p2, p0, Ly8/w$e;->a:Lcom/twitter/sdk/android/core/p;

    iput-object p3, p0, Ly8/w$e;->b:Ljava/lang/String;

    iput-object p4, p0, Ly8/w$e;->c:Landroid/net/Uri;

    invoke-direct {p0}, Lcom/twitter/sdk/android/core/c;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lcom/twitter/sdk/android/core/y;)V
    .registers 5

    .line 1
    iget-object p1, p0, Ly8/w$e;->d:Ly8/w;

    invoke-static {p1}, Ly8/w;->b(Ly8/w;)Ly8/w$g;

    move-result-object p1

    if-eqz p1, :cond_21

    .line 2
    iget-object p1, p0, Ly8/w$e;->d:Ly8/w;

    invoke-static {p1}, Ly8/w;->b(Ly8/w;)Ly8/w$g;

    move-result-object p1

    iget-object v0, p0, Ly8/w$e;->d:Ly8/w;

    invoke-static {v0}, Ly8/w;->c(Ly8/w;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f1200ad

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Ly8/w$e;->c:Landroid/net/Uri;

    invoke-interface {p1, v0, v1, v2}, Ly8/w$g;->d(Ljava/lang/String;ILandroid/net/Uri;)V

    :cond_21
    return-void
.end method

.method public d(Lcom/twitter/sdk/android/core/l;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/l<",
            "Lf9/i;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ly8/w$e;->a:Lcom/twitter/sdk/android/core/p;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/p;->g()Lcom/twitter/sdk/android/core/services/StatusesService;

    move-result-object v1

    .line 2
    iget-object v2, p0, Ly8/w$e;->b:Ljava/lang/String;

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object p1, p1, Lcom/twitter/sdk/android/core/l;->a:Ljava/lang/Object;

    check-cast p1, Lf9/i;

    iget-object v10, p1, Lf9/i;->b:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v4, v9

    invoke-interface/range {v1 .. v10}, Lcom/twitter/sdk/android/core/services/StatusesService;->update(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;)Lwa/b;

    move-result-object p1

    .line 3
    new-instance v0, Ly8/w$e$a;

    invoke-direct {v0, p0}, Ly8/w$e$a;-><init>(Ly8/w$e;)V

    invoke-interface {p1, v0}, Lwa/b;->v3(Lwa/d;)V

    return-void
.end method

###### Class y8.w.e.a (y8.w$e$a)
.class Ly8/w$e$a;
.super Lcom/twitter/sdk/android/core/c;
.source "SocialMediaSharer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ly8/w$e;->d(Lcom/twitter/sdk/android/core/l;)V
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
.field final synthetic a:Ly8/w$e;


# direct methods
.method constructor <init>(Ly8/w$e;)V
    .registers 2

    .line 1
    iput-object p1, p0, Ly8/w$e$a;->a:Ly8/w$e;

    invoke-direct {p0}, Lcom/twitter/sdk/android/core/c;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lcom/twitter/sdk/android/core/y;)V
    .registers 5

    .line 1
    iget-object p1, p0, Ly8/w$e$a;->a:Ly8/w$e;

    iget-object p1, p1, Ly8/w$e;->d:Ly8/w;

    invoke-static {p1}, Ly8/w;->b(Ly8/w;)Ly8/w$g;

    move-result-object p1

    if-eqz p1, :cond_29

    .line 2
    iget-object p1, p0, Ly8/w$e$a;->a:Ly8/w$e;

    iget-object p1, p1, Ly8/w$e;->d:Ly8/w;

    invoke-static {p1}, Ly8/w;->b(Ly8/w;)Ly8/w$g;

    move-result-object p1

    iget-object v0, p0, Ly8/w$e$a;->a:Ly8/w$e;

    iget-object v0, v0, Ly8/w$e;->d:Ly8/w;

    invoke-static {v0}, Ly8/w;->c(Ly8/w;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f1200ad

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Ly8/w$e$a;->a:Ly8/w$e;

    iget-object v2, v2, Ly8/w$e;->c:Landroid/net/Uri;

    invoke-interface {p1, v0, v1, v2}, Ly8/w$g;->d(Ljava/lang/String;ILandroid/net/Uri;)V

    :cond_29
    return-void
.end method

.method public d(Lcom/twitter/sdk/android/core/l;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/l<",
            "Lf9/n;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Ly8/w$e$a;->a:Ly8/w$e;

    iget-object p1, p1, Ly8/w$e;->d:Ly8/w;

    invoke-static {p1}, Ly8/w;->b(Ly8/w;)Ly8/w$g;

    move-result-object p1

    if-eqz p1, :cond_1a

    .line 2
    iget-object p1, p0, Ly8/w$e$a;->a:Ly8/w$e;

    iget-object p1, p1, Ly8/w$e;->d:Ly8/w;

    invoke-static {p1}, Ly8/w;->b(Ly8/w;)Ly8/w$g;

    move-result-object p1

    const/4 v0, 0x1

    iget-object v1, p0, Ly8/w$e$a;->a:Ly8/w$e;

    iget-object v1, v1, Ly8/w$e;->c:Landroid/net/Uri;

    invoke-interface {p1, v0, v1}, Ly8/w$g;->y(ILandroid/net/Uri;)V

    .line 3
    :cond_1a
    iget-object p1, p0, Ly8/w$e$a;->a:Ly8/w$e;

    iget-object p1, p1, Ly8/w$e;->d:Ly8/w;

    invoke-static {p1}, Ly8/w;->j(Ly8/w;)V

    return-void
.end method

###### Class y8.w.f (y8.w$f)
.class Ly8/w$f;
.super Ljava/lang/Object;
.source "SocialMediaSharer.java"

# interfaces
.implements Lcom/facebook/FacebookCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ly8/w;->q(Ljava/lang/String;Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/FacebookCallback<",
        "Lcom/facebook/share/Sharer$Result;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic o:Landroid/net/Uri;

.field final synthetic p:Ly8/w;


# direct methods
.method constructor <init>(Ly8/w;Landroid/net/Uri;)V
    .registers 3

    .line 1
    iput-object p1, p0, Ly8/w$f;->p:Ly8/w;

    iput-object p2, p0, Ly8/w$f;->o:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/share/Sharer$Result;)V
    .registers 4

    .line 1
    iget-object p1, p0, Ly8/w$f;->p:Ly8/w;

    invoke-static {p1}, Ly8/w;->b(Ly8/w;)Ly8/w$g;

    move-result-object p1

    if-eqz p1, :cond_14

    .line 2
    iget-object p1, p0, Ly8/w$f;->p:Ly8/w;

    invoke-static {p1}, Ly8/w;->b(Ly8/w;)Ly8/w$g;

    move-result-object p1

    const/4 v0, 0x0

    iget-object v1, p0, Ly8/w$f;->o:Landroid/net/Uri;

    invoke-interface {p1, v0, v1}, Ly8/w$g;->y(ILandroid/net/Uri;)V

    .line 3
    :cond_14
    iget-object p1, p0, Ly8/w$f;->p:Ly8/w;

    invoke-static {p1}, Ly8/w;->j(Ly8/w;)V

    return-void
.end method

.method public onCancel()V
    .registers 5

    .line 1
    iget-object v0, p0, Ly8/w$f;->p:Ly8/w;

    invoke-static {v0}, Ly8/w;->b(Ly8/w;)Ly8/w$g;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 2
    iget-object v0, p0, Ly8/w$f;->p:Ly8/w;

    invoke-static {v0}, Ly8/w;->b(Ly8/w;)Ly8/w$g;

    move-result-object v0

    iget-object v1, p0, Ly8/w$f;->p:Ly8/w;

    invoke-static {v1}, Ly8/w;->c(Ly8/w;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f1200ad

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Ly8/w$f;->o:Landroid/net/Uri;

    invoke-interface {v0, v1, v2, v3}, Ly8/w$g;->d(Ljava/lang/String;ILandroid/net/Uri;)V

    :cond_21
    return-void
.end method

.method public onError(Lcom/facebook/FacebookException;)V
    .registers 5

    .line 1
    iget-object p1, p0, Ly8/w$f;->p:Ly8/w;

    invoke-static {p1}, Ly8/w;->b(Ly8/w;)Ly8/w$g;

    move-result-object p1

    if-eqz p1, :cond_21

    .line 2
    iget-object p1, p0, Ly8/w$f;->p:Ly8/w;

    invoke-static {p1}, Ly8/w;->b(Ly8/w;)Ly8/w$g;

    move-result-object p1

    iget-object v0, p0, Ly8/w$f;->p:Ly8/w;

    invoke-static {v0}, Ly8/w;->c(Ly8/w;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f1200ad

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Ly8/w$f;->o:Landroid/net/Uri;

    invoke-interface {p1, v0, v1, v2}, Ly8/w$g;->d(Ljava/lang/String;ILandroid/net/Uri;)V

    :cond_21
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Lcom/facebook/share/Sharer$Result;

    invoke-virtual {p0, p1}, Ly8/w$f;->a(Lcom/facebook/share/Sharer$Result;)V

    return-void
.end method

###### Class y8.w.g (y8.w$g)
.class public interface abstract Ly8/w$g;
.super Ljava/lang/Object;
.source "SocialMediaSharer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ly8/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "g"
.end annotation


# virtual methods
.method public abstract d(Ljava/lang/String;ILandroid/net/Uri;)V
.end method

.method public abstract y(ILandroid/net/Uri;)V
.end method
