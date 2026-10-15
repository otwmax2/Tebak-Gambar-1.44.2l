###### Class com.twitter.sdk.android.core.internal.oauth.h (com.twitter.sdk.android.core.internal.oauth.h)
.class abstract Lcom/twitter/sdk/android/core/internal/oauth/h;
.super Ljava/lang/Object;
.source "OAuthService.java"


# instance fields
.field private final a:Lcom/twitter/sdk/android/core/x;

.field private final b:Lc9/j;

.field private final c:Ljava/lang/String;

.field private final d:Lwa/m;


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/core/x;Lc9/j;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/twitter/sdk/android/core/internal/oauth/h;->a:Lcom/twitter/sdk/android/core/x;

    .line 3
    iput-object p2, p0, Lcom/twitter/sdk/android/core/internal/oauth/h;->b:Lc9/j;

    .line 4
    invoke-virtual {p1}, Lcom/twitter/sdk/android/core/x;->j()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TwitterAndroidSDK"

    invoke-static {p2, p1}, Lc9/j;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/twitter/sdk/android/core/internal/oauth/h;->c:Ljava/lang/String;

    .line 5
    new-instance p1, Lja/x$b;

    invoke-direct {p1}, Lja/x$b;-><init>()V

    new-instance p2, Lcom/twitter/sdk/android/core/internal/oauth/g;

    invoke-direct {p2, p0}, Lcom/twitter/sdk/android/core/internal/oauth/g;-><init>(Lcom/twitter/sdk/android/core/internal/oauth/h;)V

    .line 6
    invoke-virtual {p1, p2}, Lja/x$b;->a(Lja/u;)Lja/x$b;

    move-result-object p1

    .line 7
    invoke-static {}, Ld9/e;->c()Lja/g;

    move-result-object p2

    invoke-virtual {p1, p2}, Lja/x$b;->f(Lja/g;)Lja/x$b;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Lja/x$b;->d()Lja/x;

    move-result-object p1

    .line 9
    new-instance p2, Lwa/m$b;

    invoke-direct {p2}, Lwa/m$b;-><init>()V

    .line 10
    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/internal/oauth/h;->b()Lc9/j;

    move-result-object v0

    invoke-virtual {v0}, Lc9/j;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lwa/m$b;->c(Ljava/lang/String;)Lwa/m$b;

    move-result-object p2

    .line 11
    invoke-virtual {p2, p1}, Lwa/m$b;->f(Lja/x;)Lwa/m$b;

    move-result-object p1

    .line 12
    invoke-static {}, Lxa/a;->d()Lxa/a;

    move-result-object p2

    invoke-virtual {p1, p2}, Lwa/m$b;->a(Lwa/e$a;)Lwa/m$b;

    move-result-object p1

    .line 13
    invoke-virtual {p1}, Lwa/m$b;->d()Lwa/m;

    move-result-object p1

    iput-object p1, p0, Lcom/twitter/sdk/android/core/internal/oauth/h;->d:Lwa/m;

    return-void
.end method

.method public static synthetic a(Lcom/twitter/sdk/android/core/internal/oauth/h;Lja/u$a;)Lja/c0;
    .registers 2

    invoke-direct {p0, p1}, Lcom/twitter/sdk/android/core/internal/oauth/h;->f(Lja/u$a;)Lja/c0;

    move-result-object p0

    return-object p0
.end method

.method private synthetic f(Lja/u$a;)Lja/c0;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lja/u$a;->f()Lja/a0;

    move-result-object v0

    invoke-virtual {v0}, Lja/a0;->g()Lja/a0$a;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/internal/oauth/h;->e()Ljava/lang/String;

    move-result-object v1

    const-string v2, "User-Agent"

    invoke-virtual {v0, v2, v1}, Lja/a0$a;->d(Ljava/lang/String;Ljava/lang/String;)Lja/a0$a;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lja/a0$a;->b()Lja/a0;

    move-result-object v0

    .line 4
    invoke-interface {p1, v0}, Lja/u$a;->e(Lja/a0;)Lja/c0;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected b()Lc9/j;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/oauth/h;->b:Lc9/j;

    return-object v0
.end method

.method protected c()Lwa/m;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/oauth/h;->d:Lwa/m;

    return-object v0
.end method

.method protected d()Lcom/twitter/sdk/android/core/x;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/oauth/h;->a:Lcom/twitter/sdk/android/core/x;

    return-object v0
.end method

.method protected e()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/oauth/h;->c:Ljava/lang/String;

    return-object v0
.end method

###### Class com.twitter.sdk.android.core.internal.oauth.g (com.twitter.sdk.android.core.internal.oauth.g)
.class public final synthetic Lcom/twitter/sdk/android/core/internal/oauth/g;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lja/u;


# instance fields
.field public final synthetic a:Lcom/twitter/sdk/android/core/internal/oauth/h;


# direct methods
.method public synthetic constructor <init>(Lcom/twitter/sdk/android/core/internal/oauth/h;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/twitter/sdk/android/core/internal/oauth/g;->a:Lcom/twitter/sdk/android/core/internal/oauth/h;

    return-void
.end method


# virtual methods
.method public final intercept(Lja/u$a;)Lja/c0;
    .registers 3

    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/oauth/g;->a:Lcom/twitter/sdk/android/core/internal/oauth/h;

    invoke-static {v0, p1}, Lcom/twitter/sdk/android/core/internal/oauth/h;->a(Lcom/twitter/sdk/android/core/internal/oauth/h;Lja/u$a;)Lja/c0;

    move-result-object p1

    return-object p1
.end method
