###### Class n1.d (n1.d)
.class public Ln1/d;
.super Ln1/c;
.source "NetworkConnectedController.java"


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
    .registers 3

    .line 1
    iget-object p1, p1, Lq1/p;->j:Li1/b;

    invoke-virtual {p1}, Li1/b;->b()Li1/k;

    move-result-object p1

    sget-object v0, Li1/k;->p:Li1/k;

    if-ne p1, v0, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return p1
.end method

.method bridge synthetic c(Ljava/lang/Object;)Z
    .registers 2

    .line 1
    check-cast p1, Lm1/b;

    invoke-virtual {p0, p1}, Ln1/d;->i(Lm1/b;)Z

    move-result p1

    return p1
.end method

.method i(Lm1/b;)Z
    .registers 5

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_16

    .line 2
    invoke-virtual {p1}, Lm1/b;->a()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p1}, Lm1/b;->d()Z

    move-result p1

    if-nez p1, :cond_14

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :cond_15
    :goto_15
    return v1

    .line 3
    :cond_16
    invoke-virtual {p1}, Lm1/b;->a()Z

    move-result p1

    xor-int/2addr p1, v1

    return p1
.end method
