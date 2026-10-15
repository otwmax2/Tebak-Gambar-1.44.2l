###### Class d9.a (d9.a)
.class public Ld9/a;
.super Ljava/lang/Object;
.source "GuestAuthInterceptor.java"

# interfaces
.implements Lja/u;


# instance fields
.field final a:Lcom/twitter/sdk/android/core/f;


# direct methods
.method public constructor <init>(Lcom/twitter/sdk/android/core/f;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ld9/a;->a:Lcom/twitter/sdk/android/core/f;

    return-void
.end method

.method static a(Lja/a0$a;Lcom/twitter/sdk/android/core/internal/oauth/a;)V
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/twitter/sdk/android/core/internal/oauth/e;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/twitter/sdk/android/core/internal/oauth/e;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Authorization"

    .line 2
    invoke-virtual {p0, v1, v0}, Lja/a0$a;->d(Ljava/lang/String;Ljava/lang/String;)Lja/a0$a;

    .line 3
    invoke-virtual {p1}, Lcom/twitter/sdk/android/core/internal/oauth/a;->v()Ljava/lang/String;

    move-result-object p1

    const-string v0, "x-guest-token"

    invoke-virtual {p0, v0, p1}, Lja/a0$a;->d(Ljava/lang/String;Ljava/lang/String;)Lja/a0$a;

    return-void
.end method


# virtual methods
.method public intercept(Lja/u$a;)Lja/c0;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lja/u$a;->f()Lja/a0;

    move-result-object v0

    .line 2
    iget-object v1, p0, Ld9/a;->a:Lcom/twitter/sdk/android/core/f;

    invoke-virtual {v1}, Lcom/twitter/sdk/android/core/f;->b()Lcom/twitter/sdk/android/core/e;

    move-result-object v1

    if-nez v1, :cond_e

    const/4 v1, 0x0

    goto :goto_14

    .line 3
    :cond_e
    invoke-virtual {v1}, Lcom/twitter/sdk/android/core/m;->a()Lcom/twitter/sdk/android/core/a;

    move-result-object v1

    check-cast v1, Lcom/twitter/sdk/android/core/internal/oauth/a;

    :goto_14
    if-eqz v1, :cond_26

    .line 4
    invoke-virtual {v0}, Lja/a0;->g()Lja/a0$a;

    move-result-object v0

    .line 5
    invoke-static {v0, v1}, Ld9/a;->a(Lja/a0$a;Lcom/twitter/sdk/android/core/internal/oauth/a;)V

    .line 6
    invoke-virtual {v0}, Lja/a0$a;->b()Lja/a0;

    move-result-object v0

    invoke-interface {p1, v0}, Lja/u$a;->e(Lja/a0;)Lja/c0;

    move-result-object p1

    return-object p1

    .line 7
    :cond_26
    invoke-interface {p1, v0}, Lja/u$a;->e(Lja/a0;)Lja/c0;

    move-result-object p1

    return-object p1
.end method
