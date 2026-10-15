###### Class n1.g (n1.g)
.class public Ln1/g;
.super Ln1/c;
.source "NetworkUnmeteredController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln1/c<",
        "Lm1/b;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ls1/a;)V
    .registers 3

    .line 1
    invoke-static {p1, p2}, Lo1/g;->c(Landroid/content/Context;Ls1/a;)Lo1/g;

    move-result-object p1

    invoke-virtual {p1}, Lo1/g;->d()Lo1/e;

    move-result-object p1

    invoke-direct {p0, p1}, Ln1/c;-><init>(Lo1/d;)V

    return-void
.end method


# virtual methods
.method b(Lq1/p;)Z
    .registers 4

    .line 1
    iget-object v0, p1, Lq1/p;->j:Li1/b;

    invoke-virtual {v0}, Li1/b;->b()Li1/k;

    move-result-object v0

    sget-object v1, Li1/k;->q:Li1/k;

    if-eq v0, v1, :cond_1d

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_1b

    iget-object p1, p1, Lq1/p;->j:Li1/b;

    .line 2
    invoke-virtual {p1}, Li1/b;->b()Li1/k;

    move-result-object p1

    sget-object v0, Li1/k;->t:Li1/k;

    if-ne p1, v0, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 p1, 0x0

    goto :goto_1e

    :cond_1d
    :goto_1d
    const/4 p1, 0x1

    :goto_1e
    return p1
.end method

.method bridge synthetic c(Ljava/lang/Object;)Z
    .registers 2

    .line 1
    check-cast p1, Lm1/b;

    invoke-virtual {p0, p1}, Ln1/g;->i(Lm1/b;)Z

    move-result p1

    return p1
.end method

.method i(Lm1/b;)Z
    .registers 3

    .line 1
    invoke-virtual {p1}, Lm1/b;->a()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p1}, Lm1/b;->b()Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_f

    :cond_d
    const/4 p1, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p1, 0x1

    :goto_10
    return p1
.end method
