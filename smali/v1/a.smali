###### Class v1.a (v1.a)
.class public Lv1/a;
.super Lv1/e;
.source "BitmapRequestBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ModelType:",
        "Ljava/lang/Object;",
        "TranscodeType:",
        "Ljava/lang/Object;",
        ">",
        "Lv1/e<",
        "TModelType;",
        "Lg2/g;",
        "Landroid/graphics/Bitmap;",
        "TTranscodeType;>;"
    }
.end annotation


# instance fields
.field private final R:Lc2/c;

.field private S:Lk2/f;

.field private T:Lz1/a;

.field private U:Lz1/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz1/e<",
            "Ljava/io/InputStream;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private V:Lz1/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz1/e<",
            "Landroid/os/ParcelFileDescriptor;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ls2/f;Ljava/lang/Class;Lv1/e;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls2/f<",
            "TModelType;",
            "Lg2/g;",
            "Landroid/graphics/Bitmap;",
            "TTranscodeType;>;",
            "Ljava/lang/Class<",
            "TTranscodeType;>;",
            "Lv1/e<",
            "TModelType;***>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lv1/e;-><init>(Ls2/f;Ljava/lang/Class;Lv1/e;)V

    .line 2
    sget-object p1, Lk2/f;->c:Lk2/f;

    iput-object p1, p0, Lv1/a;->S:Lk2/f;

    .line 3
    iget-object p1, p3, Lv1/e;->q:Lv1/g;

    invoke-virtual {p1}, Lv1/g;->l()Lc2/c;

    move-result-object p1

    iput-object p1, p0, Lv1/a;->R:Lc2/c;

    .line 4
    iget-object p2, p3, Lv1/e;->q:Lv1/g;

    invoke-virtual {p2}, Lv1/g;->m()Lz1/a;

    move-result-object p2

    iput-object p2, p0, Lv1/a;->T:Lz1/a;

    .line 5
    new-instance p3, Lk2/q;

    invoke-direct {p3, p1, p2}, Lk2/q;-><init>(Lc2/c;Lz1/a;)V

    iput-object p3, p0, Lv1/a;->U:Lz1/e;

    .line 6
    new-instance p2, Lk2/h;

    iget-object p3, p0, Lv1/a;->T:Lz1/a;

    invoke-direct {p2, p1, p3}, Lk2/h;-><init>(Lc2/c;Lz1/a;)V

    iput-object p2, p0, Lv1/a;->V:Lz1/e;

    return-void
.end method


# virtual methods
.method public bridge synthetic B([Lz1/g;)Lv1/e;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lv1/a;->R([Lz1/g;)Lv1/a;

    move-result-object p1

    return-object p1
.end method

.method public C(Lu2/d;)Lv1/a;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu2/d<",
            "TTranscodeType;>;)",
            "Lv1/a<",
            "TModelType;TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lv1/e;->a(Lu2/d;)Lv1/e;

    return-object p0
.end method

.method public D()Lv1/a;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lv1/a<",
            "TModelType;TTranscodeType;>;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Lk2/d;

    .line 1
    iget-object v1, p0, Lv1/e;->q:Lv1/g;

    invoke-virtual {v1}, Lv1/g;->j()Lk2/e;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lv1/a;->Q([Lk2/d;)Lv1/a;

    move-result-object v0

    return-object v0
.end method

.method public E()Lv1/a;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lv1/a<",
            "TModelType;TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lv1/e;->h()Lv1/e;

    move-result-object v0

    check-cast v0, Lv1/a;

    return-object v0
.end method

.method public F(Lz1/e;)Lv1/a;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz1/e<",
            "Lg2/g;",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lv1/a<",
            "TModelType;TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lv1/e;->i(Lz1/e;)Lv1/e;

    return-object p0
.end method

.method public G(Lb2/b;)Lv1/a;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb2/b;",
            ")",
            "Lv1/a<",
            "TModelType;TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lv1/e;->j(Lb2/b;)Lv1/e;

    return-object p0
.end method

.method public H(I)Lv1/a;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lv1/a<",
            "TModelType;TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lv1/e;->l(I)Lv1/e;

    return-object p0
.end method

.method public I()Lv1/a;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lv1/a<",
            "TModelType;TTranscodeType;>;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Lk2/d;

    .line 1
    iget-object v1, p0, Lv1/e;->q:Lv1/g;

    invoke-virtual {v1}, Lv1/g;->k()Lk2/i;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lv1/a;->Q([Lk2/d;)Lv1/a;

    move-result-object v0

    return-object v0
.end method

.method public J(Lt2/f;)Lv1/a;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt2/f<",
            "-TModelType;TTranscodeType;>;)",
            "Lv1/a<",
            "TModelType;TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lv1/e;->r(Lt2/f;)Lv1/e;

    return-object p0
.end method

.method public K(II)Lv1/a;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lv1/a<",
            "TModelType;TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lv1/e;->u(II)Lv1/e;

    return-object p0
.end method

.method public M(I)Lv1/a;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lv1/a<",
            "TModelType;TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lv1/e;->v(I)Lv1/e;

    return-object p0
.end method

.method public N(Lv1/i;)Lv1/a;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv1/i;",
            ")",
            "Lv1/a<",
            "TModelType;TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lv1/e;->x(Lv1/i;)Lv1/e;

    return-object p0
.end method

.method public O(Lz1/c;)Lv1/a;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz1/c;",
            ")",
            "Lv1/a<",
            "TModelType;TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lv1/e;->y(Lz1/c;)Lv1/e;

    return-object p0
.end method

.method public P(Z)Lv1/a;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lv1/a<",
            "TModelType;TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lv1/e;->z(Z)Lv1/e;

    return-object p0
.end method

.method public varargs Q([Lk2/d;)Lv1/a;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lk2/d;",
            ")",
            "Lv1/a<",
            "TModelType;TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lv1/e;->B([Lz1/g;)Lv1/e;

    return-object p0
.end method

.method public varargs R([Lz1/g;)Lv1/a;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lz1/g<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lv1/a<",
            "TModelType;TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lv1/e;->B([Lz1/g;)Lv1/e;

    return-object p0
.end method

.method public bridge synthetic a(Lu2/d;)Lv1/e;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lv1/a;->C(Lu2/d;)Lv1/a;

    move-result-object p1

    return-object p1
.end method

.method b()V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lv1/a;->D()Lv1/a;

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
    invoke-virtual {p0}, Lv1/a;->E()Lv1/a;

    move-result-object v0

    return-object v0
.end method

.method d()V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lv1/a;->I()Lv1/a;

    return-void
.end method

.method public bridge synthetic h()Lv1/e;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lv1/a;->E()Lv1/a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic i(Lz1/e;)Lv1/e;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lv1/a;->F(Lz1/e;)Lv1/a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic j(Lb2/b;)Lv1/e;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lv1/a;->G(Lb2/b;)Lv1/a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic u(II)Lv1/e;
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lv1/a;->K(II)Lv1/a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic x(Lv1/i;)Lv1/e;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lv1/a;->N(Lv1/i;)Lv1/a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic y(Lz1/c;)Lv1/e;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lv1/a;->O(Lz1/c;)Lv1/a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic z(Z)Lv1/e;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lv1/a;->P(Z)Lv1/a;

    move-result-object p1

    return-object p1
.end method
