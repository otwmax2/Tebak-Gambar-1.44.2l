###### Class d2.g (d2.g)
.class public Ld2/g;
.super Lx2/e;
.source "LruResourceCache.java"

# interfaces
.implements Ld2/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lx2/e<",
        "Lz1/c;",
        "Lb2/l<",
        "*>;>;",
        "Ld2/h;"
    }
.end annotation


# instance fields
.field private e:Ld2/h$a;


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lx2/e;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a(Ld2/h$a;)V
    .registers 2

    .line 1
    iput-object p1, p0, Ld2/g;->e:Ld2/h$a;

    return-void
.end method

.method public bridge synthetic b(Lz1/c;Lb2/l;)Lb2/l;
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Lx2/e;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb2/l;

    return-object p1
.end method

.method public c(I)V
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    const/16 v0, 0x3c

    if-lt p1, v0, :cond_8

    .line 1
    invoke-virtual {p0}, Lx2/e;->d()V

    goto :goto_15

    :cond_8
    const/16 v0, 0x28

    if-lt p1, v0, :cond_15

    .line 2
    invoke-virtual {p0}, Lx2/e;->h()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Lx2/e;->m(I)V

    :cond_15
    :goto_15
    return-void
.end method

.method public bridge synthetic e(Lz1/c;)Lb2/l;
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lx2/e;->l(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb2/l;

    return-object p1
.end method

.method protected bridge synthetic i(Ljava/lang/Object;)I
    .registers 2

    .line 1
    check-cast p1, Lb2/l;

    invoke-virtual {p0, p1}, Ld2/g;->n(Lb2/l;)I

    move-result p1

    return p1
.end method

.method protected bridge synthetic j(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 1
    check-cast p1, Lz1/c;

    check-cast p2, Lb2/l;

    invoke-virtual {p0, p1, p2}, Ld2/g;->o(Lz1/c;Lb2/l;)V

    return-void
.end method

.method protected n(Lb2/l;)I
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb2/l<",
            "*>;)I"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lb2/l;->c()I

    move-result p1

    return p1
.end method

.method protected o(Lz1/c;Lb2/l;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz1/c;",
            "Lb2/l<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Ld2/g;->e:Ld2/h$a;

    if-eqz p1, :cond_7

    .line 2
    invoke-interface {p1, p2}, Ld2/h$a;->c(Lb2/l;)V

    :cond_7
    return-void
.end method
