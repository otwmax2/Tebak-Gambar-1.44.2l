###### Class d9.d (d9.d)
.class public Ld9/d;
.super Ljava/lang/Object;
.source "OAuth1aInterceptor.java"

# interfaces
.implements Lja/u;


# instance fields
.field final a:Lcom/twitter/sdk/android/core/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/sdk/android/core/m<",
            "+",
            "Lcom/twitter/sdk/android/core/t;",
            ">;"
        }
    .end annotation
.end field

.field final b:Lcom/twitter/sdk/android/core/r;


# direct methods
.method public constructor <init>(Lcom/twitter/sdk/android/core/m;Lcom/twitter/sdk/android/core/r;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/m<",
            "+",
            "Lcom/twitter/sdk/android/core/t;",
            ">;",
            "Lcom/twitter/sdk/android/core/r;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ld9/d;->a:Lcom/twitter/sdk/android/core/m;

    .line 3
    iput-object p2, p0, Ld9/d;->b:Lcom/twitter/sdk/android/core/r;

    return-void
.end method


# virtual methods
.method a(Lja/a0;)Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/twitter/sdk/android/core/internal/oauth/c;

    invoke-direct {v0}, Lcom/twitter/sdk/android/core/internal/oauth/c;-><init>()V

    iget-object v1, p0, Ld9/d;->b:Lcom/twitter/sdk/android/core/r;

    iget-object v2, p0, Ld9/d;->a:Lcom/twitter/sdk/android/core/m;

    .line 2
    invoke-virtual {v2}, Lcom/twitter/sdk/android/core/m;->a()Lcom/twitter/sdk/android/core/a;

    move-result-object v2

    check-cast v2, Lcom/twitter/sdk/android/core/t;

    invoke-virtual {p1}, Lja/a0;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lja/a0;->h()Lja/t;

    move-result-object v3

    invoke-virtual {v3}, Lja/t;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3
    invoke-virtual {p0, p1}, Ld9/d;->b(Lja/a0;)Ljava/util/Map;

    move-result-object v6

    const/4 v3, 0x0

    .line 4
    invoke-virtual/range {v0 .. v6}, Lcom/twitter/sdk/android/core/internal/oauth/c;->a(Lcom/twitter/sdk/android/core/r;Lcom/twitter/sdk/android/core/t;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method b(Lja/a0;)Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lja/a0;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-virtual {p1}, Lja/a0;->f()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "POST"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 3
    invoke-virtual {p1}, Lja/a0;->a()Lja/b0;

    move-result-object p1

    .line 4
    instance-of v1, p1, Lja/q;

    if-eqz v1, :cond_36

    .line 5
    check-cast p1, Lja/q;

    const/4 v1, 0x0

    .line 6
    :goto_22
    invoke-virtual {p1}, Lja/q;->c()I

    move-result v2

    if-ge v1, v2, :cond_36

    .line 7
    invoke-virtual {p1, v1}, Lja/q;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1}, Lja/q;->d(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    :cond_36
    return-object v0
.end method

.method c(Lja/t;)Lja/t;
    .registers 7

    .line 1
    invoke-virtual {p1}, Lja/t;->p()Lja/t$a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lja/t$a;->q(Ljava/lang/String;)Lja/t$a;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lja/t;->D()I

    move-result v1

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v1, :cond_26

    .line 3
    invoke-virtual {p1, v2}, Lja/t;->B(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ld9/f;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-virtual {p1, v2}, Lja/t;->C(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ld9/f;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 5
    invoke-virtual {v0, v3, v4}, Lja/t$a;->a(Ljava/lang/String;Ljava/lang/String;)Lja/t$a;

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 6
    :cond_26
    invoke-virtual {v0}, Lja/t$a;->c()Lja/t;

    move-result-object p1

    return-object p1
.end method

.method public intercept(Lja/u$a;)Lja/c0;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lja/u$a;->f()Lja/a0;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lja/a0;->g()Lja/a0$a;

    move-result-object v1

    .line 3
    invoke-virtual {v0}, Lja/a0;->h()Lja/t;

    move-result-object v0

    invoke-virtual {p0, v0}, Ld9/d;->c(Lja/t;)Lja/t;

    move-result-object v0

    invoke-virtual {v1, v0}, Lja/a0$a;->i(Lja/t;)Lja/a0$a;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lja/a0$a;->b()Lja/a0;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lja/a0;->g()Lja/a0$a;

    move-result-object v1

    .line 6
    invoke-virtual {p0, v0}, Ld9/d;->a(Lja/a0;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Authorization"

    invoke-virtual {v1, v2, v0}, Lja/a0$a;->d(Ljava/lang/String;Ljava/lang/String;)Lja/a0$a;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lja/a0$a;->b()Lja/a0;

    move-result-object v0

    .line 8
    invoke-interface {p1, v0}, Lja/u$a;->e(Lja/a0;)Lja/c0;

    move-result-object p1

    return-object p1
.end method
