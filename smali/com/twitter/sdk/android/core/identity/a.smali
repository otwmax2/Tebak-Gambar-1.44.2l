###### Class com.twitter.sdk.android.core.identity.a (com.twitter.sdk.android.core.identity.a)
.class Lcom/twitter/sdk/android/core/identity/a;
.super Ljava/lang/Object;
.source "OAuthController.java"

# interfaces
.implements Lcom/twitter/sdk/android/core/identity/c$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twitter/sdk/android/core/identity/a$c;
    }
.end annotation


# instance fields
.field final a:Lcom/twitter/sdk/android/core/identity/a$c;

.field b:Lcom/twitter/sdk/android/core/t;

.field private final c:Landroid/widget/ProgressBar;

.field private final d:Landroid/webkit/WebView;

.field private final e:Lcom/twitter/sdk/android/core/r;

.field private final f:Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService;


# direct methods
.method constructor <init>(Landroid/widget/ProgressBar;Landroid/webkit/WebView;Lcom/twitter/sdk/android/core/r;Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService;Lcom/twitter/sdk/android/core/identity/a$c;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/twitter/sdk/android/core/identity/a;->c:Landroid/widget/ProgressBar;

    .line 3
    iput-object p2, p0, Lcom/twitter/sdk/android/core/identity/a;->d:Landroid/webkit/WebView;

    .line 4
    iput-object p3, p0, Lcom/twitter/sdk/android/core/identity/a;->e:Lcom/twitter/sdk/android/core/r;

    .line 5
    iput-object p4, p0, Lcom/twitter/sdk/android/core/identity/a;->f:Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService;

    .line 6
    iput-object p5, p0, Lcom/twitter/sdk/android/core/identity/a;->a:Lcom/twitter/sdk/android/core/identity/a$c;

    return-void
.end method

.method static synthetic d(Lcom/twitter/sdk/android/core/identity/a;)Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/twitter/sdk/android/core/identity/a;->f:Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService;

    return-object p0
.end method

.method static synthetic e(Lcom/twitter/sdk/android/core/identity/a;)Landroid/webkit/WebView;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/twitter/sdk/android/core/identity/a;->d:Landroid/webkit/WebView;

    return-object p0
.end method

.method static synthetic f(Lcom/twitter/sdk/android/core/identity/a;)Lcom/twitter/sdk/android/core/r;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/twitter/sdk/android/core/identity/a;->e:Lcom/twitter/sdk/android/core/r;

    return-object p0
.end method

.method private g()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/twitter/sdk/android/core/identity/a;->c:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method private h()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/twitter/sdk/android/core/identity/a;->d:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 2
    invoke-direct {p0}, Lcom/twitter/sdk/android/core/identity/a;->g()V

    return-void
.end method

.method private j(Lcom/twitter/sdk/android/core/identity/d;)V
    .registers 5

    .line 1
    invoke-static {}, Lcom/twitter/sdk/android/core/o;->g()Lcom/twitter/sdk/android/core/h;

    move-result-object v0

    const-string v1, "Twitter"

    const-string v2, "OAuth web view completed with an error"

    invoke-interface {v0, v1, v2, p1}, Lcom/twitter/sdk/android/core/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2
    new-instance p1, Lcom/twitter/sdk/android/core/s;

    invoke-direct {p1, v2}, Lcom/twitter/sdk/android/core/s;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/twitter/sdk/android/core/identity/a;->i(ILcom/twitter/sdk/android/core/s;)V

    return-void
.end method

.method private k(Landroid/os/Bundle;)V
    .registers 6

    .line 1
    invoke-static {}, Lcom/twitter/sdk/android/core/o;->g()Lcom/twitter/sdk/android/core/h;

    move-result-object v0

    const-string v1, "Twitter"

    const-string v2, "OAuth web view completed successfully"

    invoke-interface {v0, v1, v2}, Lcom/twitter/sdk/android/core/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2a

    const-string v0, "oauth_verifier"

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 3
    invoke-static {}, Lcom/twitter/sdk/android/core/o;->g()Lcom/twitter/sdk/android/core/h;

    move-result-object p1

    const-string v2, "Converting the request token to an access token."

    invoke-interface {p1, v1, v2}, Lcom/twitter/sdk/android/core/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/twitter/sdk/android/core/identity/a;->f:Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService;

    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/identity/a;->l()Lcom/twitter/sdk/android/core/c;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/sdk/android/core/identity/a;->b:Lcom/twitter/sdk/android/core/t;

    invoke-virtual {p1, v1, v2, v0}, Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService;->m(Lcom/twitter/sdk/android/core/c;Lcom/twitter/sdk/android/core/t;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_2a
    invoke-static {}, Lcom/twitter/sdk/android/core/o;->g()Lcom/twitter/sdk/android/core/h;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get authorization, bundle incomplete "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Lcom/twitter/sdk/android/core/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x1

    .line 6
    new-instance v0, Lcom/twitter/sdk/android/core/s;

    const-string v1, "Failed to get authorization, bundle incomplete"

    invoke-direct {v0, v1}, Lcom/twitter/sdk/android/core/s;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/twitter/sdk/android/core/identity/a;->i(ILcom/twitter/sdk/android/core/s;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/sdk/android/core/identity/d;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/twitter/sdk/android/core/identity/a;->j(Lcom/twitter/sdk/android/core/identity/d;)V

    .line 2
    invoke-direct {p0}, Lcom/twitter/sdk/android/core/identity/a;->h()V

    return-void
.end method

.method public b(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/twitter/sdk/android/core/identity/a;->g()V

    const/4 p2, 0x0

    .line 2
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setVisibility(I)V

    return-void
.end method

.method public c(Landroid/os/Bundle;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/twitter/sdk/android/core/identity/a;->k(Landroid/os/Bundle;)V

    .line 2
    invoke-direct {p0}, Lcom/twitter/sdk/android/core/identity/a;->h()V

    return-void
.end method

.method protected i(ILcom/twitter/sdk/android/core/s;)V
    .registers 5

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "auth_error"

    .line 2
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 3
    iget-object p2, p0, Lcom/twitter/sdk/android/core/identity/a;->a:Lcom/twitter/sdk/android/core/identity/a$c;

    invoke-interface {p2, p1, v0}, Lcom/twitter/sdk/android/core/identity/a$c;->a(ILandroid/content/Intent;)V

    return-void
.end method

.method l()Lcom/twitter/sdk/android/core/c;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/twitter/sdk/android/core/c<",
            "Lcom/twitter/sdk/android/core/internal/oauth/f;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/twitter/sdk/android/core/identity/a$b;

    invoke-direct {v0, p0}, Lcom/twitter/sdk/android/core/identity/a$b;-><init>(Lcom/twitter/sdk/android/core/identity/a;)V

    return-object v0
.end method

.method m()Lcom/twitter/sdk/android/core/c;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/twitter/sdk/android/core/c<",
            "Lcom/twitter/sdk/android/core/internal/oauth/f;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/twitter/sdk/android/core/identity/a$a;

    invoke-direct {v0, p0}, Lcom/twitter/sdk/android/core/identity/a$a;-><init>(Lcom/twitter/sdk/android/core/identity/a;)V

    return-object v0
.end method

.method n(Landroid/webkit/WebView;Landroid/webkit/WebViewClient;Ljava/lang/String;Landroid/webkit/WebChromeClient;)V
    .registers 7

    .line 1
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 3
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 4
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 5
    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 6
    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 7
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 8
    invoke-virtual {p1, p3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const/4 p2, 0x4

    .line 9
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 10
    invoke-virtual {p1, p4}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-void
.end method

.method o()V
    .registers 4

    .line 1
    invoke-static {}, Lcom/twitter/sdk/android/core/o;->g()Lcom/twitter/sdk/android/core/h;

    move-result-object v0

    const-string v1, "Twitter"

    const-string v2, "Obtaining request token to start the sign in flow"

    invoke-interface {v0, v1, v2}, Lcom/twitter/sdk/android/core/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/twitter/sdk/android/core/identity/a;->f:Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService;

    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/identity/a;->m()Lcom/twitter/sdk/android/core/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService;->n(Lcom/twitter/sdk/android/core/c;)V

    return-void
.end method

###### Class com.twitter.sdk.android.core.identity.a.C0137a (com.twitter.sdk.android.core.identity.a$a)
.class Lcom/twitter/sdk/android/core/identity/a$a;
.super Lcom/twitter/sdk/android/core/c;
.source "OAuthController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twitter/sdk/android/core/identity/a;->m()Lcom/twitter/sdk/android/core/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/sdk/android/core/c<",
        "Lcom/twitter/sdk/android/core/internal/oauth/f;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/sdk/android/core/identity/a;


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/core/identity/a;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/twitter/sdk/android/core/identity/a$a;->a:Lcom/twitter/sdk/android/core/identity/a;

    invoke-direct {p0}, Lcom/twitter/sdk/android/core/c;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lcom/twitter/sdk/android/core/y;)V
    .registers 5

    .line 1
    invoke-static {}, Lcom/twitter/sdk/android/core/o;->g()Lcom/twitter/sdk/android/core/h;

    move-result-object v0

    const-string v1, "Twitter"

    const-string v2, "Failed to get request token"

    invoke-interface {v0, v1, v2, p1}, Lcom/twitter/sdk/android/core/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2
    iget-object p1, p0, Lcom/twitter/sdk/android/core/identity/a$a;->a:Lcom/twitter/sdk/android/core/identity/a;

    new-instance v0, Lcom/twitter/sdk/android/core/s;

    invoke-direct {v0, v2}, Lcom/twitter/sdk/android/core/s;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/twitter/sdk/android/core/identity/a;->i(ILcom/twitter/sdk/android/core/s;)V

    return-void
.end method

.method public d(Lcom/twitter/sdk/android/core/l;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/l<",
            "Lcom/twitter/sdk/android/core/internal/oauth/f;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/twitter/sdk/android/core/identity/a$a;->a:Lcom/twitter/sdk/android/core/identity/a;

    iget-object p1, p1, Lcom/twitter/sdk/android/core/l;->a:Ljava/lang/Object;

    check-cast p1, Lcom/twitter/sdk/android/core/internal/oauth/f;

    iget-object p1, p1, Lcom/twitter/sdk/android/core/internal/oauth/f;->o:Lcom/twitter/sdk/android/core/t;

    iput-object p1, v0, Lcom/twitter/sdk/android/core/identity/a;->b:Lcom/twitter/sdk/android/core/t;

    .line 2
    invoke-static {v0}, Lcom/twitter/sdk/android/core/identity/a;->d(Lcom/twitter/sdk/android/core/identity/a;)Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService;

    move-result-object p1

    iget-object v0, p0, Lcom/twitter/sdk/android/core/identity/a$a;->a:Lcom/twitter/sdk/android/core/identity/a;

    iget-object v0, v0, Lcom/twitter/sdk/android/core/identity/a;->b:Lcom/twitter/sdk/android/core/t;

    invoke-virtual {p1, v0}, Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService;->i(Lcom/twitter/sdk/android/core/t;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {}, Lcom/twitter/sdk/android/core/o;->g()Lcom/twitter/sdk/android/core/h;

    move-result-object v0

    const-string v1, "Twitter"

    const-string v2, "Redirecting user to web view to complete authorization flow"

    invoke-interface {v0, v1, v2}, Lcom/twitter/sdk/android/core/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/twitter/sdk/android/core/identity/a$a;->a:Lcom/twitter/sdk/android/core/identity/a;

    invoke-static {v0}, Lcom/twitter/sdk/android/core/identity/a;->e(Lcom/twitter/sdk/android/core/identity/a;)Landroid/webkit/WebView;

    move-result-object v1

    new-instance v2, Lcom/twitter/sdk/android/core/identity/c;

    iget-object v3, p0, Lcom/twitter/sdk/android/core/identity/a$a;->a:Lcom/twitter/sdk/android/core/identity/a;

    .line 5
    invoke-static {v3}, Lcom/twitter/sdk/android/core/identity/a;->d(Lcom/twitter/sdk/android/core/identity/a;)Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService;

    move-result-object v3

    iget-object v4, p0, Lcom/twitter/sdk/android/core/identity/a$a;->a:Lcom/twitter/sdk/android/core/identity/a;

    invoke-static {v4}, Lcom/twitter/sdk/android/core/identity/a;->f(Lcom/twitter/sdk/android/core/identity/a;)Lcom/twitter/sdk/android/core/r;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService;->g(Lcom/twitter/sdk/android/core/r;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/twitter/sdk/android/core/identity/a$a;->a:Lcom/twitter/sdk/android/core/identity/a;

    invoke-direct {v2, v3, v4}, Lcom/twitter/sdk/android/core/identity/c;-><init>(Ljava/lang/String;Lcom/twitter/sdk/android/core/identity/c$a;)V

    new-instance v3, Lcom/twitter/sdk/android/core/identity/b;

    invoke-direct {v3}, Lcom/twitter/sdk/android/core/identity/b;-><init>()V

    .line 6
    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/twitter/sdk/android/core/identity/a;->n(Landroid/webkit/WebView;Landroid/webkit/WebViewClient;Ljava/lang/String;Landroid/webkit/WebChromeClient;)V

    return-void
.end method

###### Class com.twitter.sdk.android.core.identity.a.b (com.twitter.sdk.android.core.identity.a$b)
.class Lcom/twitter/sdk/android/core/identity/a$b;
.super Lcom/twitter/sdk/android/core/c;
.source "OAuthController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twitter/sdk/android/core/identity/a;->l()Lcom/twitter/sdk/android/core/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/sdk/android/core/c<",
        "Lcom/twitter/sdk/android/core/internal/oauth/f;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/sdk/android/core/identity/a;


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/core/identity/a;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/twitter/sdk/android/core/identity/a$b;->a:Lcom/twitter/sdk/android/core/identity/a;

    invoke-direct {p0}, Lcom/twitter/sdk/android/core/c;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lcom/twitter/sdk/android/core/y;)V
    .registers 5

    .line 1
    invoke-static {}, Lcom/twitter/sdk/android/core/o;->g()Lcom/twitter/sdk/android/core/h;

    move-result-object v0

    const-string v1, "Twitter"

    const-string v2, "Failed to get access token"

    invoke-interface {v0, v1, v2, p1}, Lcom/twitter/sdk/android/core/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2
    iget-object p1, p0, Lcom/twitter/sdk/android/core/identity/a$b;->a:Lcom/twitter/sdk/android/core/identity/a;

    new-instance v0, Lcom/twitter/sdk/android/core/s;

    invoke-direct {v0, v2}, Lcom/twitter/sdk/android/core/s;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/twitter/sdk/android/core/identity/a;->i(ILcom/twitter/sdk/android/core/s;)V

    return-void
.end method

.method public d(Lcom/twitter/sdk/android/core/l;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/l<",
            "Lcom/twitter/sdk/android/core/internal/oauth/f;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2
    iget-object p1, p1, Lcom/twitter/sdk/android/core/l;->a:Ljava/lang/Object;

    check-cast p1, Lcom/twitter/sdk/android/core/internal/oauth/f;

    .line 3
    iget-object v1, p1, Lcom/twitter/sdk/android/core/internal/oauth/f;->p:Ljava/lang/String;

    const-string v2, "screen_name"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    iget-wide v1, p1, Lcom/twitter/sdk/android/core/internal/oauth/f;->q:J

    const-string v3, "user_id"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 5
    iget-object v1, p1, Lcom/twitter/sdk/android/core/internal/oauth/f;->o:Lcom/twitter/sdk/android/core/t;

    iget-object v1, v1, Lcom/twitter/sdk/android/core/t;->p:Ljava/lang/String;

    const-string v2, "tk"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    iget-object p1, p1, Lcom/twitter/sdk/android/core/internal/oauth/f;->o:Lcom/twitter/sdk/android/core/t;

    iget-object p1, p1, Lcom/twitter/sdk/android/core/t;->q:Ljava/lang/String;

    const-string v1, "ts"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7
    iget-object p1, p0, Lcom/twitter/sdk/android/core/identity/a$b;->a:Lcom/twitter/sdk/android/core/identity/a;

    iget-object p1, p1, Lcom/twitter/sdk/android/core/identity/a;->a:Lcom/twitter/sdk/android/core/identity/a$c;

    const/4 v1, -0x1

    invoke-interface {p1, v1, v0}, Lcom/twitter/sdk/android/core/identity/a$c;->a(ILandroid/content/Intent;)V

    return-void
.end method

###### Class com.twitter.sdk.android.core.identity.a.c (com.twitter.sdk.android.core.identity.a$c)
.class interface abstract Lcom/twitter/sdk/android/core/identity/a$c;
.super Ljava/lang/Object;
.source "OAuthController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twitter/sdk/android/core/identity/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "c"
.end annotation


# virtual methods
.method public abstract a(ILandroid/content/Intent;)V
.end method
