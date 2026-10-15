###### Class com.twitter.sdk.android.core.internal.oauth.OAuth2Service (com.twitter.sdk.android.core.internal.oauth.OAuth2Service)
.class public Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service;
.super Lcom/twitter/sdk/android/core/internal/oauth/h;
.source "OAuth2Service.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service$OAuth2Api;
    }
.end annotation


# instance fields
.field e:Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service$OAuth2Api;


# direct methods
.method public constructor <init>(Lcom/twitter/sdk/android/core/x;Lc9/j;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/twitter/sdk/android/core/internal/oauth/h;-><init>(Lcom/twitter/sdk/android/core/x;Lc9/j;)V

    .line 2
    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/internal/oauth/h;->c()Lwa/m;

    move-result-object p1

    const-class p2, Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service$OAuth2Api;

    invoke-virtual {p1, p2}, Lwa/m;->d(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service$OAuth2Api;

    iput-object p1, p0, Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service;->e:Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service$OAuth2Api;

    return-void
.end method

.method private g()Ljava/lang/String;
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/internal/oauth/h;->d()Lcom/twitter/sdk/android/core/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/x;->e()Lcom/twitter/sdk/android/core/r;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/r;->h()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ld9/f;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/r;->t()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ld9/f;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {v0}, Lokio/f;->l(Ljava/lang/String;)Lokio/f;

    move-result-object v0

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Basic "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lokio/f;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private h(Lcom/twitter/sdk/android/core/internal/oauth/e;)Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bearer "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/twitter/sdk/android/core/internal/oauth/e;->h()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method i(Lcom/twitter/sdk/android/core/c;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/c<",
            "Lcom/twitter/sdk/android/core/internal/oauth/e;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service;->e:Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service$OAuth2Api;

    invoke-direct {p0}, Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service;->g()Ljava/lang/String;

    move-result-object v1

    const-string v2, "client_credentials"

    invoke-interface {v0, v1, v2}, Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service$OAuth2Api;->getAppAuthToken(Ljava/lang/String;Ljava/lang/String;)Lwa/b;

    move-result-object v0

    .line 2
    invoke-interface {v0, p1}, Lwa/b;->v3(Lwa/d;)V

    return-void
.end method

.method public j(Lcom/twitter/sdk/android/core/c;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/c<",
            "Lcom/twitter/sdk/android/core/internal/oauth/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service$a;

    invoke-direct {v0, p0, p1}, Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service$a;-><init>(Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service;Lcom/twitter/sdk/android/core/c;)V

    .line 2
    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service;->i(Lcom/twitter/sdk/android/core/c;)V

    return-void
.end method

.method k(Lcom/twitter/sdk/android/core/c;Lcom/twitter/sdk/android/core/internal/oauth/e;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/c<",
            "Lcom/twitter/sdk/android/core/internal/oauth/b;",
            ">;",
            "Lcom/twitter/sdk/android/core/internal/oauth/e;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service;->e:Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service$OAuth2Api;

    invoke-direct {p0, p2}, Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service;->h(Lcom/twitter/sdk/android/core/internal/oauth/e;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service$OAuth2Api;->getGuestToken(Ljava/lang/String;)Lwa/b;

    move-result-object p2

    invoke-interface {p2, p1}, Lwa/b;->v3(Lwa/d;)V

    return-void
.end method

###### Class com.twitter.sdk.android.core.internal.oauth.OAuth2Service.OAuth2Api (com.twitter.sdk.android.core.internal.oauth.OAuth2Service$OAuth2Api)
.class interface abstract Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service$OAuth2Api;
.super Ljava/lang/Object;
.source "OAuth2Service.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "OAuth2Api"
.end annotation


# virtual methods
.method public abstract getAppAuthToken(Ljava/lang/String;Ljava/lang/String;)Lwa/b;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lya/i;
            value = "Authorization"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lya/c;
            value = "grant_type"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lwa/b<",
            "Lcom/twitter/sdk/android/core/internal/oauth/e;",
            ">;"
        }
    .end annotation

    .annotation runtime Lya/e;
    .end annotation

    .annotation runtime Lya/k;
        value = {
            "Content-Type: application/x-www-form-urlencoded;charset=UTF-8"
        }
    .end annotation

    .annotation runtime Lya/o;
        value = "/oauth2/token"
    .end annotation
.end method

.method public abstract getGuestToken(Ljava/lang/String;)Lwa/b;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lya/i;
            value = "Authorization"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lwa/b<",
            "Lcom/twitter/sdk/android/core/internal/oauth/b;",
            ">;"
        }
    .end annotation

    .annotation runtime Lya/o;
        value = "/1.1/guest/activate.json"
    .end annotation
.end method

###### Class com.twitter.sdk.android.core.internal.oauth.OAuth2Service.a (com.twitter.sdk.android.core.internal.oauth.OAuth2Service$a)
.class Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service$a;
.super Lcom/twitter/sdk/android/core/c;
.source "OAuth2Service.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service;->j(Lcom/twitter/sdk/android/core/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/sdk/android/core/c<",
        "Lcom/twitter/sdk/android/core/internal/oauth/e;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/sdk/android/core/c;

.field final synthetic b:Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service;


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service;Lcom/twitter/sdk/android/core/c;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service$a;->b:Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service;

    iput-object p2, p0, Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service$a;->a:Lcom/twitter/sdk/android/core/c;

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

    const-string v2, "Failed to get app auth token"

    invoke-interface {v0, v1, v2, p1}, Lcom/twitter/sdk/android/core/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service$a;->a:Lcom/twitter/sdk/android/core/c;

    if-eqz v0, :cond_12

    .line 3
    invoke-virtual {v0, p1}, Lcom/twitter/sdk/android/core/c;->c(Lcom/twitter/sdk/android/core/y;)V

    :cond_12
    return-void
.end method

.method public d(Lcom/twitter/sdk/android/core/l;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/l<",
            "Lcom/twitter/sdk/android/core/internal/oauth/e;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p1, Lcom/twitter/sdk/android/core/l;->a:Ljava/lang/Object;

    check-cast p1, Lcom/twitter/sdk/android/core/internal/oauth/e;

    .line 2
    new-instance v0, Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service$a$a;

    invoke-direct {v0, p0, p1}, Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service$a$a;-><init>(Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service$a;Lcom/twitter/sdk/android/core/internal/oauth/e;)V

    .line 3
    iget-object v1, p0, Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service$a;->b:Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service;

    invoke-virtual {v1, v0, p1}, Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service;->k(Lcom/twitter/sdk/android/core/c;Lcom/twitter/sdk/android/core/internal/oauth/e;)V

    return-void
.end method

###### Class com.twitter.sdk.android.core.internal.oauth.OAuth2Service.a.C0138a (com.twitter.sdk.android.core.internal.oauth.OAuth2Service$a$a)
.class Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service$a$a;
.super Lcom/twitter/sdk/android/core/c;
.source "OAuth2Service.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service$a;->d(Lcom/twitter/sdk/android/core/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/sdk/android/core/c<",
        "Lcom/twitter/sdk/android/core/internal/oauth/b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/sdk/android/core/internal/oauth/e;

.field final synthetic b:Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service$a;


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service$a;Lcom/twitter/sdk/android/core/internal/oauth/e;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service$a$a;->b:Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service$a;

    iput-object p2, p0, Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service$a$a;->a:Lcom/twitter/sdk/android/core/internal/oauth/e;

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

    const-string v2, "Your app may not allow guest auth. Please talk to us regarding upgrading your consumer key."

    invoke-interface {v0, v1, v2, p1}, Lcom/twitter/sdk/android/core/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service$a$a;->b:Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service$a;

    iget-object v0, v0, Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service$a;->a:Lcom/twitter/sdk/android/core/c;

    invoke-virtual {v0, p1}, Lcom/twitter/sdk/android/core/c;->c(Lcom/twitter/sdk/android/core/y;)V

    return-void
.end method

.method public d(Lcom/twitter/sdk/android/core/l;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/l<",
            "Lcom/twitter/sdk/android/core/internal/oauth/b;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/twitter/sdk/android/core/internal/oauth/a;

    iget-object v1, p0, Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service$a$a;->a:Lcom/twitter/sdk/android/core/internal/oauth/e;

    .line 2
    invoke-virtual {v1}, Lcom/twitter/sdk/android/core/internal/oauth/e;->t()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service$a$a;->a:Lcom/twitter/sdk/android/core/internal/oauth/e;

    invoke-virtual {v2}, Lcom/twitter/sdk/android/core/internal/oauth/e;->h()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p1, Lcom/twitter/sdk/android/core/l;->a:Ljava/lang/Object;

    check-cast p1, Lcom/twitter/sdk/android/core/internal/oauth/b;

    iget-object p1, p1, Lcom/twitter/sdk/android/core/internal/oauth/b;->a:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1}, Lcom/twitter/sdk/android/core/internal/oauth/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service$a$a;->b:Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service$a;

    iget-object p1, p1, Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service$a;->a:Lcom/twitter/sdk/android/core/c;

    new-instance v1, Lcom/twitter/sdk/android/core/l;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/twitter/sdk/android/core/l;-><init>(Ljava/lang/Object;Lwa/l;)V

    invoke-virtual {p1, v1}, Lcom/twitter/sdk/android/core/c;->d(Lcom/twitter/sdk/android/core/l;)V

    return-void
.end method
