###### Class com.twitter.sdk.android.core.internal.oauth.OAuth1aService (com.twitter.sdk.android.core.internal.oauth.OAuth1aService)
.class public Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService;
.super Lcom/twitter/sdk/android/core/internal/oauth/h;
.source "OAuth1aService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService$OAuthApi;
    }
.end annotation


# instance fields
.field e:Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService$OAuthApi;


# direct methods
.method public constructor <init>(Lcom/twitter/sdk/android/core/x;Lc9/j;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/twitter/sdk/android/core/internal/oauth/h;-><init>(Lcom/twitter/sdk/android/core/x;Lc9/j;)V

    .line 2
    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/internal/oauth/h;->c()Lwa/m;

    move-result-object p1

    const-class p2, Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService$OAuthApi;

    invoke-virtual {p1, p2}, Lwa/m;->d(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService$OAuthApi;

    iput-object p1, p0, Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService;->e:Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService$OAuthApi;

    return-void
.end method

.method public static l(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/oauth/f;
    .registers 7

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Ld9/f;->a(Ljava/lang/String;Z)Ljava/util/TreeMap;

    move-result-object p0

    const-string v0, "oauth_token"

    .line 2
    invoke-virtual {p0, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "oauth_token_secret"

    .line 3
    invoke-virtual {p0, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "screen_name"

    .line 4
    invoke-virtual {p0, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "user_id"

    .line 5
    invoke-virtual {p0, v3}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 6
    invoke-virtual {p0, v3}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    goto :goto_32

    :cond_30
    const-wide/16 v3, 0x0

    :goto_32
    if-eqz v0, :cond_42

    if-nez v1, :cond_37

    goto :goto_42

    .line 7
    :cond_37
    new-instance p0, Lcom/twitter/sdk/android/core/internal/oauth/f;

    new-instance v5, Lcom/twitter/sdk/android/core/t;

    invoke-direct {v5, v0, v1}, Lcom/twitter/sdk/android/core/t;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v5, v2, v3, v4}, Lcom/twitter/sdk/android/core/internal/oauth/f;-><init>(Lcom/twitter/sdk/android/core/t;Ljava/lang/String;J)V

    return-object p0

    :cond_42
    :goto_42
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public g(Lcom/twitter/sdk/android/core/r;)Ljava/lang/String;
    .registers 5

    const-string v0, "twittersdk://callback"

    .line 1
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/internal/oauth/h;->d()Lcom/twitter/sdk/android/core/x;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/sdk/android/core/x;->j()Ljava/lang/String;

    move-result-object v1

    const-string v2, "version"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Lcom/twitter/sdk/android/core/r;->h()Ljava/lang/String;

    move-result-object p1

    const-string v1, "app"

    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method h()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/internal/oauth/h;->b()Lc9/j;

    move-result-object v1

    invoke-virtual {v1}, Lc9/j;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/oauth/access_token"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i(Lcom/twitter/sdk/android/core/t;)Ljava/lang/String;
    .registers 5

    .line 1
    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/internal/oauth/h;->b()Lc9/j;

    move-result-object v0

    const-string v1, "oauth"

    const-string v2, "authorize"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc9/j;->a([Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object p1, p1, Lcom/twitter/sdk/android/core/t;->p:Ljava/lang/String;

    const-string v1, "oauth_token"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method j(Lcom/twitter/sdk/android/core/c;)Lcom/twitter/sdk/android/core/c;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/c<",
            "Lcom/twitter/sdk/android/core/internal/oauth/f;",
            ">;)",
            "Lcom/twitter/sdk/android/core/c<",
            "Lja/d0;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService$a;

    invoke-direct {v0, p0, p1}, Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService$a;-><init>(Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService;Lcom/twitter/sdk/android/core/c;)V

    return-object v0
.end method

.method k()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/internal/oauth/h;->b()Lc9/j;

    move-result-object v1

    invoke-virtual {v1}, Lc9/j;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/oauth/request_token"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public m(Lcom/twitter/sdk/android/core/c;Lcom/twitter/sdk/android/core/t;Ljava/lang/String;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/c<",
            "Lcom/twitter/sdk/android/core/internal/oauth/f;",
            ">;",
            "Lcom/twitter/sdk/android/core/t;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService;->h()Ljava/lang/String;

    move-result-object v5

    .line 2
    new-instance v0, Lcom/twitter/sdk/android/core/internal/oauth/c;

    invoke-direct {v0}, Lcom/twitter/sdk/android/core/internal/oauth/c;-><init>()V

    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/internal/oauth/h;->d()Lcom/twitter/sdk/android/core/x;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Lcom/twitter/sdk/android/core/x;->e()Lcom/twitter/sdk/android/core/r;

    move-result-object v1

    const/4 v3, 0x0

    const-string v4, "POST"

    const/4 v6, 0x0

    move-object v2, p2

    .line 4
    invoke-virtual/range {v0 .. v6}, Lcom/twitter/sdk/android/core/internal/oauth/c;->a(Lcom/twitter/sdk/android/core/r;Lcom/twitter/sdk/android/core/t;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    .line 5
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService;->e:Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService$OAuthApi;

    invoke-interface {v0, p2, p3}, Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService$OAuthApi;->getAccessToken(Ljava/lang/String;Ljava/lang/String;)Lwa/b;

    move-result-object p2

    invoke-virtual {p0, p1}, Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService;->j(Lcom/twitter/sdk/android/core/c;)Lcom/twitter/sdk/android/core/c;

    move-result-object p1

    invoke-interface {p2, p1}, Lwa/b;->v3(Lwa/d;)V

    return-void
.end method

.method public n(Lcom/twitter/sdk/android/core/c;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/c<",
            "Lcom/twitter/sdk/android/core/internal/oauth/f;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/internal/oauth/h;->d()Lcom/twitter/sdk/android/core/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/x;->e()Lcom/twitter/sdk/android/core/r;

    move-result-object v2

    .line 2
    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService;->k()Ljava/lang/String;

    move-result-object v6

    .line 3
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService;->e:Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService$OAuthApi;

    new-instance v1, Lcom/twitter/sdk/android/core/internal/oauth/c;

    invoke-direct {v1}, Lcom/twitter/sdk/android/core/internal/oauth/c;-><init>()V

    .line 4
    invoke-virtual {p0, v2}, Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService;->g(Lcom/twitter/sdk/android/core/r;)Ljava/lang/String;

    move-result-object v4

    const/4 v3, 0x0

    const-string v5, "POST"

    const/4 v7, 0x0

    .line 5
    invoke-virtual/range {v1 .. v7}, Lcom/twitter/sdk/android/core/internal/oauth/c;->a(Lcom/twitter/sdk/android/core/r;Lcom/twitter/sdk/android/core/t;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService$OAuthApi;->getTempToken(Ljava/lang/String;)Lwa/b;

    move-result-object v0

    .line 6
    invoke-virtual {p0, p1}, Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService;->j(Lcom/twitter/sdk/android/core/c;)Lcom/twitter/sdk/android/core/c;

    move-result-object p1

    invoke-interface {v0, p1}, Lwa/b;->v3(Lwa/d;)V

    return-void
.end method

###### Class com.twitter.sdk.android.core.internal.oauth.OAuth1aService.OAuthApi (com.twitter.sdk.android.core.internal.oauth.OAuth1aService$OAuthApi)
.class interface abstract Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService$OAuthApi;
.super Ljava/lang/Object;
.source "OAuth1aService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "OAuthApi"
.end annotation


# virtual methods
.method public abstract getAccessToken(Ljava/lang/String;Ljava/lang/String;)Lwa/b;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lya/i;
            value = "Authorization"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lya/t;
            value = "oauth_verifier"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lwa/b<",
            "Lja/d0;",
            ">;"
        }
    .end annotation

    .annotation runtime Lya/o;
        value = "/oauth/access_token"
    .end annotation
.end method

.method public abstract getTempToken(Ljava/lang/String;)Lwa/b;
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
            "Lja/d0;",
            ">;"
        }
    .end annotation

    .annotation runtime Lya/o;
        value = "/oauth/request_token"
    .end annotation
.end method

###### Class com.twitter.sdk.android.core.internal.oauth.OAuth1aService.a (com.twitter.sdk.android.core.internal.oauth.OAuth1aService$a)
.class Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService$a;
.super Lcom/twitter/sdk/android/core/c;
.source "OAuth1aService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService;->j(Lcom/twitter/sdk/android/core/c;)Lcom/twitter/sdk/android/core/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/sdk/android/core/c<",
        "Lja/d0;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/sdk/android/core/c;

.field final synthetic b:Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService;


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService;Lcom/twitter/sdk/android/core/c;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService$a;->b:Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService;

    iput-object p2, p0, Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService$a;->a:Lcom/twitter/sdk/android/core/c;

    invoke-direct {p0}, Lcom/twitter/sdk/android/core/c;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lcom/twitter/sdk/android/core/y;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService$a;->a:Lcom/twitter/sdk/android/core/c;

    invoke-virtual {v0, p1}, Lcom/twitter/sdk/android/core/c;->c(Lcom/twitter/sdk/android/core/y;)V

    return-void
.end method

.method public d(Lcom/twitter/sdk/android/core/l;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/l<",
            "Lja/d0;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 2
    :try_start_6
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    iget-object p1, p1, Lcom/twitter/sdk/android/core/l;->a:Ljava/lang/Object;

    check-cast p1, Lja/d0;

    .line 3
    invoke-virtual {p1}, Lja/d0;->byteStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_18
    .catchall {:try_start_6 .. :try_end_18} :catchall_59

    .line 4
    :goto_18
    :try_start_18
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_22

    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_21
    .catchall {:try_start_18 .. :try_end_21} :catchall_56

    goto :goto_18

    .line 6
    :cond_22
    :try_start_22
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-static {p1}, Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService;->l(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/oauth/f;

    move-result-object v0

    if-nez v0, :cond_4b

    .line 9
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService$a;->a:Lcom/twitter/sdk/android/core/c;

    new-instance v1, Lcom/twitter/sdk/android/core/s;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to parse auth response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/twitter/sdk/android/core/s;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/core/c;->c(Lcom/twitter/sdk/android/core/y;)V

    goto :goto_6f

    .line 10
    :cond_4b
    iget-object p1, p0, Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService$a;->a:Lcom/twitter/sdk/android/core/c;

    new-instance v2, Lcom/twitter/sdk/android/core/l;

    invoke-direct {v2, v0, v1}, Lcom/twitter/sdk/android/core/l;-><init>(Ljava/lang/Object;Lwa/l;)V

    invoke-virtual {p1, v2}, Lcom/twitter/sdk/android/core/c;->d(Lcom/twitter/sdk/android/core/l;)V

    goto :goto_6f

    :catchall_56
    move-exception p1

    move-object v1, v2

    goto :goto_5a

    :catchall_59
    move-exception p1

    :goto_5a
    if-eqz v1, :cond_5f

    .line 11
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 12
    :cond_5f
    throw p1
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_60} :catch_60

    :catch_60
    move-exception p1

    .line 13
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService$a;->a:Lcom/twitter/sdk/android/core/c;

    new-instance v1, Lcom/twitter/sdk/android/core/s;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/twitter/sdk/android/core/s;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/core/c;->c(Lcom/twitter/sdk/android/core/y;)V

    :goto_6f
    return-void
.end method
