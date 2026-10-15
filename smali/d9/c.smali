###### Class d9.c (d9.c)
.class public Ld9/c;
.super Ljava/lang/Object;
.source "GuestAuthenticator.java"

# interfaces
.implements Lja/b;


# instance fields
.field final b:Lcom/twitter/sdk/android/core/f;


# direct methods
.method public constructor <init>(Lcom/twitter/sdk/android/core/f;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ld9/c;->b:Lcom/twitter/sdk/android/core/f;

    return-void
.end method


# virtual methods
.method public a(Lja/e0;Lja/c0;)Lja/a0;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p2}, Ld9/c;->d(Lja/c0;)Lja/a0;

    move-result-object p1

    return-object p1
.end method

.method b(Lja/c0;)Z
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x1

    .line 1
    :goto_2
    invoke-virtual {p1}, Lja/c0;->l()Lja/c0;

    move-result-object p1

    if-eqz p1, :cond_b

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_b
    const/4 p1, 0x2

    if-ge v1, p1, :cond_f

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method c(Lja/c0;)Lcom/twitter/sdk/android/core/e;
    .registers 6

    .line 1
    invoke-virtual {p1}, Lja/c0;->n()Lja/a0;

    move-result-object p1

    invoke-virtual {p1}, Lja/a0;->d()Lja/s;

    move-result-object p1

    const-string v0, "Authorization"

    .line 2
    invoke-virtual {p1, v0}, Lja/s;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "x-guest-token"

    .line 3
    invoke-virtual {p1, v1}, Lja/s;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_2d

    if-eqz p1, :cond_2d

    .line 4
    new-instance v1, Lcom/twitter/sdk/android/core/internal/oauth/a;

    const-string v2, "bearer "

    const-string v3, ""

    .line 5
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "bearer"

    invoke-direct {v1, v2, v0, p1}, Lcom/twitter/sdk/android/core/internal/oauth/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    new-instance p1, Lcom/twitter/sdk/android/core/e;

    invoke-direct {p1, v1}, Lcom/twitter/sdk/android/core/e;-><init>(Lcom/twitter/sdk/android/core/internal/oauth/a;)V

    return-object p1

    :cond_2d
    const/4 p1, 0x0

    return-object p1
.end method

.method d(Lja/c0;)Lja/a0;
    .registers 5

    .line 1
    invoke-virtual {p0, p1}, Ld9/c;->b(Lja/c0;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_26

    .line 2
    iget-object v0, p0, Ld9/c;->b:Lcom/twitter/sdk/android/core/f;

    .line 3
    invoke-virtual {p0, p1}, Ld9/c;->c(Lja/c0;)Lcom/twitter/sdk/android/core/e;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/twitter/sdk/android/core/f;->d(Lcom/twitter/sdk/android/core/e;)Lcom/twitter/sdk/android/core/e;

    move-result-object v0

    if-nez v0, :cond_15

    move-object v0, v1

    goto :goto_1b

    .line 4
    :cond_15
    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/m;->a()Lcom/twitter/sdk/android/core/a;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/internal/oauth/a;

    :goto_1b
    if-eqz v0, :cond_26

    .line 5
    invoke-virtual {p1}, Lja/c0;->n()Lja/a0;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Ld9/c;->e(Lja/a0;Lcom/twitter/sdk/android/core/internal/oauth/a;)Lja/a0;

    move-result-object p1

    return-object p1

    :cond_26
    return-object v1
.end method

.method e(Lja/a0;Lcom/twitter/sdk/android/core/internal/oauth/a;)Lja/a0;
    .registers 3

    .line 1
    invoke-virtual {p1}, Lja/a0;->g()Lja/a0$a;

    move-result-object p1

    .line 2
    invoke-static {p1, p2}, Ld9/a;->a(Lja/a0$a;Lcom/twitter/sdk/android/core/internal/oauth/a;)V

    .line 3
    invoke-virtual {p1}, Lja/a0$a;->b()Lja/a0;

    move-result-object p1

    return-object p1
.end method
