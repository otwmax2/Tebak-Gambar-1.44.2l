###### Class v1.c (v1.c)
.class public Lv1/c;
.super Lv1/e;
.source "DrawableRequestBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ModelType:",
        "Ljava/lang/Object;",
        ">",
        "Lv1/e<",
        "TModelType;",
        "Lg2/g;",
        "Lo2/a;",
        "Ll2/b;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/Class;Ls2/f;Lv1/g;Lq2/m;Lq2/g;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "TModelType;>;",
            "Ls2/f<",
            "TModelType;",
            "Lg2/g;",
            "Lo2/a;",
            "Ll2/b;",
            ">;",
            "Lv1/g;",
            "Lq2/m;",
            "Lq2/g;",
            ")V"
        }
    .end annotation

    .line 1
    const-class v4, Ll2/b;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lv1/e;-><init>(Landroid/content/Context;Ljava/lang/Class;Ls2/f;Ljava/lang/Class;Lv1/g;Lq2/m;Lq2/g;)V

    .line 2
    invoke-virtual {p0}, Lv1/c;->F()Lv1/c;

    return-void
.end method


# virtual methods
.method public bridge synthetic B([Lz1/g;)Lv1/e;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lv1/c;->V([Lz1/g;)Lv1/c;

    move-result-object p1

    return-object p1
.end method

.method public C(Lu2/d;)Lv1/c;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu2/d<",
            "Ll2/b;",
            ">;)",
            "Lv1/c<",
            "TModelType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lv1/e;->a(Lu2/d;)Lv1/e;

    return-object p0
.end method

.method public D()Lv1/c;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lv1/c<",
            "TModelType;>;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Lz1/g;

    .line 1
    iget-object v1, p0, Lv1/e;->q:Lv1/g;

    invoke-virtual {v1}, Lv1/g;->n()Lo2/f;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lv1/c;->V([Lz1/g;)Lv1/c;

    move-result-object v0

    return-object v0
.end method

.method public E()Lv1/c;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lv1/c<",
            "TModelType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lv1/e;->h()Lv1/e;

    move-result-object v0

    check-cast v0, Lv1/c;

    return-object v0
.end method

.method public final F()Lv1/c;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lv1/c<",
            "TModelType;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lu2/a;

    invoke-direct {v0}, Lu2/a;-><init>()V

    invoke-super {p0, v0}, Lv1/e;->a(Lu2/d;)Lv1/e;

    return-object p0
.end method

.method public G(Lz1/e;)Lv1/c;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz1/e<",
            "Lg2/g;",
            "Lo2/a;",
            ">;)",
            "Lv1/c<",
            "TModelType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lv1/e;->i(Lz1/e;)Lv1/e;

    return-object p0
.end method

.method public H(Lb2/b;)Lv1/c;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb2/b;",
            ")",
            "Lv1/c<",
            "TModelType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lv1/e;->j(Lb2/b;)Lv1/e;

    return-object p0
.end method

.method public I()Lv1/c;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lv1/c<",
            "TModelType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lv1/e;->k()Lv1/e;

    return-object p0
.end method

.method public J(I)Lv1/c;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lv1/c<",
            "TModelType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lv1/e;->l(I)Lv1/e;

    return-object p0
.end method

.method public K(Landroid/graphics/drawable/Drawable;)Lv1/c;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")",
            "Lv1/c<",
            "TModelType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lv1/e;->m(Landroid/graphics/drawable/Drawable;)Lv1/e;

    return-object p0
.end method

.method public M()Lv1/c;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lv1/c<",
            "TModelType;>;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Lz1/g;

    .line 1
    iget-object v1, p0, Lv1/e;->q:Lv1/g;

    invoke-virtual {v1}, Lv1/g;->o()Lo2/f;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lv1/c;->V([Lz1/g;)Lv1/c;

    move-result-object v0

    return-object v0
.end method

.method public N(Lt2/f;)Lv1/c;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt2/f<",
            "-TModelType;",
            "Ll2/b;",
            ">;)",
            "Lv1/c<",
            "TModelType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lv1/e;->r(Lt2/f;)Lv1/e;

    return-object p0
.end method

.method public O(Ljava/lang/Object;)Lv1/c;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModelType;)",
            "Lv1/c<",
            "TModelType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lv1/e;->s(Ljava/lang/Object;)Lv1/e;

    return-object p0
.end method

.method public P(II)Lv1/c;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lv1/c<",
            "TModelType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lv1/e;->u(II)Lv1/e;

    return-object p0
.end method

.method public Q(I)Lv1/c;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lv1/c<",
            "TModelType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lv1/e;->v(I)Lv1/e;

    return-object p0
.end method

.method public R(Landroid/graphics/drawable/Drawable;)Lv1/c;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")",
            "Lv1/c<",
            "TModelType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lv1/e;->w(Landroid/graphics/drawable/Drawable;)Lv1/e;

    return-object p0
.end method

.method public S(Lv1/i;)Lv1/c;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv1/i;",
            ")",
            "Lv1/c<",
            "TModelType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lv1/e;->x(Lv1/i;)Lv1/e;

    return-object p0
.end method

.method public T(Lz1/c;)Lv1/c;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz1/c;",
            ")",
            "Lv1/c<",
            "TModelType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lv1/e;->y(Lz1/c;)Lv1/e;

    return-object p0
.end method

.method public U(Z)Lv1/c;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lv1/c<",
            "TModelType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lv1/e;->z(Z)Lv1/e;

    return-object p0
.end method

.method public varargs V([Lz1/g;)Lv1/c;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lz1/g<",
            "Lo2/a;",
            ">;)",
            "Lv1/c<",
            "TModelType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lv1/e;->B([Lz1/g;)Lv1/e;

    return-object p0
.end method

.method public bridge synthetic a(Lu2/d;)Lv1/e;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lv1/c;->C(Lu2/d;)Lv1/c;

    move-result-object p1

    return-object p1
.end method

.method b()V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lv1/c;->D()Lv1/c;

    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lv1/c;->E()Lv1/c;

    move-result-object v0

    return-object v0
.end method

.method d()V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lv1/c;->M()Lv1/c;

    return-void
.end method

.method public bridge synthetic h()Lv1/e;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lv1/c;->E()Lv1/c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic i(Lz1/e;)Lv1/e;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lv1/c;->G(Lz1/e;)Lv1/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic j(Lb2/b;)Lv1/e;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lv1/c;->H(Lb2/b;)Lv1/c;

    move-result-object p1

    return-object p1
.end method

.method public p(Landroid/widget/ImageView;)Lv2/j;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            ")",
            "Lv2/j<",
            "Ll2/b;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lv1/e;->p(Landroid/widget/ImageView;)Lv2/j;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic u(II)Lv1/e;
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lv1/c;->P(II)Lv1/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic x(Lv1/i;)Lv1/e;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lv1/c;->S(Lv1/i;)Lv1/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic y(Lz1/c;)Lv1/e;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lv1/c;->T(Lz1/c;)Lv1/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic z(Z)Lv1/e;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lv1/c;->U(Z)Lv1/c;

    move-result-object p1

    return-object p1
.end method
