###### Class com.google.android.gms.internal.ads.zzgpr (com.google.android.gms.internal.ads.zzgpr)
.class final Lcom/google/android/gms/internal/ads/zzgpr;
.super Lcom/google/android/gms/internal/ads/zzgpo;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final i:Ljava/io/OutputStream;


# direct methods
.method constructor <init>(Ljava/io/OutputStream;I)V
    .registers 3

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzgpo;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgpr;->i:Ljava/io/OutputStream;

    return-void
.end method

.method private final N()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgpr;->i:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgpo;->e:[B

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzgpo;->g:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    iput v3, p0, Lcom/google/android/gms/internal/ads/zzgpo;->g:I

    return-void
.end method

.method private final O(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgpo;->f:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzgpo;->g:I

    sub-int/2addr v0, v1

    if-ge v0, p1, :cond_a

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgpr;->N()V

    :cond_a
    return-void
.end method


# virtual methods
.method public final A(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x14

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgpr;->O(I)V

    shl-int/lit8 p1, p1, 0x3

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzgpo;->L(I)V

    .line 3
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzgpo;->L(I)V

    return-void
.end method

.method public final B(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgpr;->O(I)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzgpo;->L(I)V

    return-void
.end method

.method public final C(IJ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x14

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgpr;->O(I)V

    shl-int/lit8 p1, p1, 0x3

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzgpo;->L(I)V

    .line 3
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzgpo;->M(J)V

    return-void
.end method

.method public final D(J)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xa

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgpr;->O(I)V

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgpo;->M(J)V

    return-void
.end method

.method public final P([BII)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgpo;->f:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzgpo;->g:I

    sub-int/2addr v0, v1

    if-lt v0, p3, :cond_17

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgpo;->e:[B

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzgpo;->g:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgpo;->g:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzgpo;->h:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgpo;->h:I

    return-void

    :cond_17
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgpo;->e:[B

    .line 2
    invoke-static {p1, p2, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzgpo;->f:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzgpo;->g:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzgpo;->h:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzgpo;->h:I

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgpr;->N()V

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzgpo;->f:I

    sub-int/2addr p3, v0

    if-gt p3, v1, :cond_37

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgpo;->e:[B

    const/4 v1, 0x0

    .line 4
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzgpo;->g:I

    goto :goto_3c

    :cond_37
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgpr;->i:Ljava/io/OutputStream;

    .line 5
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 6
    :goto_3c
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzgpo;->h:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgpo;->h:I

    return-void
.end method

.method public final Q(Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgpt;->f(I)I

    move-result v1

    add-int v2, v1, v0

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzgpo;->f:I

    if-le v2, v3, :cond_1e

    .line 2
    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 3
    invoke-static {p1, v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzgtv;->d(Ljava/lang/CharSequence;[BII)I

    move-result v0

    .line 4
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzgpr;->B(I)V

    .line 5
    invoke-virtual {p0, v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzgpr;->P([BII)V

    return-void

    :cond_1e
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgpo;->g:I

    sub-int/2addr v3, v0

    if-le v2, v3, :cond_26

    .line 6
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgpr;->N()V

    .line 7
    :cond_26
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgpt;->f(I)I

    move-result v0

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzgpo;->g:I
    :try_end_30
    .catch Lcom/google/android/gms/internal/ads/zzgtu; {:try_start_0 .. :try_end_30} :catch_74

    if-ne v0, v1, :cond_4a

    add-int v1, v2, v0

    :try_start_34
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzgpo;->g:I

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzgpo;->e:[B

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzgpo;->f:I

    sub-int/2addr v4, v1

    .line 8
    invoke-static {p1, v3, v1, v4}, Lcom/google/android/gms/internal/ads/zzgtv;->d(Ljava/lang/CharSequence;[BII)I

    move-result v1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzgpo;->g:I

    sub-int v3, v1, v2

    sub-int/2addr v3, v0

    .line 9
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/ads/zzgpo;->L(I)V

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzgpo;->g:I

    goto :goto_5b

    .line 10
    :cond_4a
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgtv;->e(Ljava/lang/CharSequence;)I

    move-result v3

    .line 11
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/ads/zzgpo;->L(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgpo;->e:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzgpo;->g:I

    .line 12
    invoke-static {p1, v0, v1, v3}, Lcom/google/android/gms/internal/ads/zzgtv;->d(Ljava/lang/CharSequence;[BII)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzgpo;->g:I

    .line 13
    :goto_5b
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgpo;->h:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzgpo;->h:I
    :try_end_60
    .catch Lcom/google/android/gms/internal/ads/zzgtu; {:try_start_34 .. :try_end_60} :catch_68
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_34 .. :try_end_60} :catch_61

    return-void

    :catch_61
    move-exception v0

    .line 14
    :try_start_62
    new-instance v1, Lcom/google/android/gms/internal/ads/zzgpq;

    .line 15
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzgpq;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_68
    move-exception v0

    .line 16
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzgpo;->h:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzgpo;->g:I

    sub-int/2addr v3, v2

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzgpo;->h:I

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzgpo;->g:I

    .line 17
    throw v0
    :try_end_74
    .catch Lcom/google/android/gms/internal/ads/zzgtu; {:try_start_62 .. :try_end_74} :catch_74

    :catch_74
    move-exception v0

    .line 18
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzgpt;->k(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzgtu;)V

    return-void
.end method

.method public final a([BII)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzgpr;->P([BII)V

    return-void
.end method

.method public final m()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgpo;->g:I

    if-lez v0, :cond_7

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgpr;->N()V

    :cond_7
    return-void
.end method

.method public final n(B)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgpo;->g:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzgpo;->f:I

    if-ne v0, v1, :cond_9

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgpr;->N()V

    .line 2
    :cond_9
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzgpo;->I(B)V

    return-void
.end method

.method public final o(IZ)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xb

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgpr;->O(I)V

    shl-int/lit8 p1, p1, 0x3

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzgpo;->L(I)V

    .line 3
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzgpo;->I(B)V

    return-void
.end method

.method public final p(ILcom/google/android/gms/internal/ads/zzgpe;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x2

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzgpr;->B(I)V

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzgpe;->o()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzgpr;->B(I)V

    .line 3
    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/ads/zzgpe;->A(Lcom/google/android/gms/internal/ads/zzgot;)V

    return-void
.end method

.method public final r(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xe

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgpr;->O(I)V

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x5

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzgpo;->L(I)V

    .line 3
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzgpo;->J(I)V

    return-void
.end method

.method public final s(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgpr;->O(I)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzgpo;->J(I)V

    return-void
.end method

.method public final t(IJ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x12

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgpr;->O(I)V

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzgpo;->L(I)V

    .line 3
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzgpo;->K(J)V

    return-void
.end method

.method public final u(J)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x8

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgpr;->O(I)V

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgpo;->K(J)V

    return-void
.end method

.method public final v(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x14

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgpr;->O(I)V

    shl-int/lit8 p1, p1, 0x3

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzgpo;->L(I)V

    if-ltz p2, :cond_10

    .line 3
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzgpo;->L(I)V

    return-void

    :cond_10
    int-to-long p1, p2

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgpo;->M(J)V

    return-void
.end method

.method public final w(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_6

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzgpr;->B(I)V

    return-void

    :cond_6
    int-to-long v0, p1

    .line 2
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzgpr;->D(J)V

    return-void
.end method

.method final x(ILcom/google/android/gms/internal/ads/zzgrw;Lcom/google/android/gms/internal/ads/zzgsp;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x2

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzgpr;->B(I)V

    .line 2
    move-object p1, p2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgon;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/zzgon;->c(Lcom/google/android/gms/internal/ads/zzgsp;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzgpr;->B(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgpt;->a:Lcom/google/android/gms/internal/ads/zzgpu;

    .line 3
    invoke-interface {p3, p2, p1}, Lcom/google/android/gms/internal/ads/zzgsp;->j(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzgpu;)V

    return-void
.end method

.method public final y(ILjava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x2

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzgpr;->B(I)V

    .line 2
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzgpr;->Q(Ljava/lang/String;)V

    return-void
.end method

.method public final z(II)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    shl-int/lit8 p1, p1, 0x3

    or-int/2addr p1, p2

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzgpr;->B(I)V

    return-void
.end method
