###### Class com.google.android.gms.internal.ads.zzgpa (com.google.android.gms.internal.ads.zzgpa)
.class Lcom/google/android/gms/internal/ads/zzgpa;
.super Lcom/google/android/gms/internal/ads/zzgoz;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field protected final s:[B


# direct methods
.method constructor <init>([B)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgoz;-><init>()V

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgpa;->s:[B

    return-void
.end method


# virtual methods
.method final A(Lcom/google/android/gms/internal/ads/zzgot;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgpa;->s:[B

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgpa;->Q()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgpa;->o()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgot;->a([BII)V

    return-void
.end method

.method public final B()Z
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgpa;->Q()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgpa;->s:[B

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgpa;->o()I

    move-result v2

    add-int/2addr v2, v0

    invoke-static {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzgtv;->j([BII)Z

    move-result v0

    return v0
.end method

.method final P(Lcom/google/android/gms/internal/ads/zzgpe;II)Z
    .registers 9

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgpe;->o()I

    move-result v0

    if-gt p3, v0, :cond_6d

    add-int v0, p2, p3

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgpe;->o()I

    move-result v1

    if-gt v0, v1, :cond_44

    .line 3
    instance-of v1, p1, Lcom/google/android/gms/internal/ads/zzgpa;

    const/4 v2, 0x0

    if-eqz v1, :cond_37

    .line 4
    check-cast p1, Lcom/google/android/gms/internal/ads/zzgpa;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgpa;->s:[B

    .line 5
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzgpa;->s:[B

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgpa;->Q()I

    move-result v3

    add-int/2addr v3, p3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgpa;->Q()I

    move-result p3

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgpa;->Q()I

    move-result p1

    add-int/2addr p1, p2

    :goto_27
    if-ge p3, v3, :cond_35

    .line 7
    aget-byte p2, v0, p3

    aget-byte v4, v1, p1

    if-eq p2, v4, :cond_30

    return v2

    :cond_30
    add-int/lit8 p3, p3, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_27

    :cond_35
    const/4 p1, 0x1

    return p1

    .line 8
    :cond_37
    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzgpe;->u(II)Lcom/google/android/gms/internal/ads/zzgpe;

    move-result-object p1

    invoke-virtual {p0, v2, p3}, Lcom/google/android/gms/internal/ads/zzgpa;->u(II)Lcom/google/android/gms/internal/ads/zzgpe;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzgpe;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 9
    :cond_44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgpe;->o()I

    move-result p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ran off end of other: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11
    :cond_6d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgpa;->o()I

    move-result p2

    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Length too large: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_8c

    :goto_8b
    throw p1

    :goto_8c
    goto :goto_8b
.end method

.method protected Q()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 1
    :cond_4
    instance-of v1, p1, Lcom/google/android/gms/internal/ads/zzgpe;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgpa;->o()I

    move-result v1

    .line 2
    move-object v3, p1

    check-cast v3, Lcom/google/android/gms/internal/ads/zzgpe;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzgpe;->o()I

    move-result v3

    if-eq v1, v3, :cond_18

    return v2

    :cond_18
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgpa;->o()I

    move-result v1

    if-nez v1, :cond_1f

    return v0

    .line 3
    :cond_1f
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzgpa;

    if-eqz v0, :cond_3d

    .line 4
    check-cast p1, Lcom/google/android/gms/internal/ads/zzgpa;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgpe;->D()I

    move-result v0

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgpe;->D()I

    move-result v1

    if-eqz v0, :cond_34

    if-eqz v1, :cond_34

    if-eq v0, v1, :cond_34

    return v2

    :cond_34
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgpa;->o()I

    move-result v0

    .line 6
    invoke-virtual {p0, p1, v2, v0}, Lcom/google/android/gms/internal/ads/zzgpa;->P(Lcom/google/android/gms/internal/ads/zzgpe;II)Z

    move-result p1

    return p1

    .line 7
    :cond_3d
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public l(I)B
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgpa;->s:[B

    aget-byte p1, v0, p1

    return p1
.end method

.method m(I)B
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgpa;->s:[B

    aget-byte p1, v0, p1

    return p1
.end method

.method public o()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgpa;->s:[B

    array-length v0, v0

    return v0
.end method

.method protected p([BIII)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgpa;->s:[B

    invoke-static {v0, p2, p1, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method protected final s(III)I
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgpa;->s:[B

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgpa;->Q()I

    move-result v1

    add-int/2addr v1, p2

    invoke-static {p1, v0, v1, p3}, Lcom/google/android/gms/internal/ads/zzgqw;->d(I[BII)I

    move-result p1

    return p1
.end method

.method protected final t(III)I
    .registers 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgpa;->Q()I

    move-result v0

    add-int/2addr v0, p2

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzgpa;->s:[B

    add-int/2addr p3, v0

    invoke-static {p1, p2, v0, p3}, Lcom/google/android/gms/internal/ads/zzgtv;->f(I[BII)I

    move-result p1

    return p1
.end method

.method public final u(II)Lcom/google/android/gms/internal/ads/zzgpe;
    .registers 6

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgpa;->o()I

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzgpe;->C(III)I

    move-result p2

    if-nez p2, :cond_d

    sget-object p1, Lcom/google/android/gms/internal/ads/zzgpe;->p:Lcom/google/android/gms/internal/ads/zzgpe;

    return-object p1

    :cond_d
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgox;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgpa;->s:[B

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgpa;->Q()I

    move-result v2

    add-int/2addr v2, p1

    .line 2
    invoke-direct {v0, v1, v2, p2}, Lcom/google/android/gms/internal/ads/zzgox;-><init>([BII)V

    return-object v0
.end method

.method public final v()Lcom/google/android/gms/internal/ads/zzgpm;
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgpa;->s:[B

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgpa;->Q()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgpa;->o()I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzgpm;->h([BIIZ)Lcom/google/android/gms/internal/ads/zzgpm;

    move-result-object v0

    return-object v0
.end method

.method protected final x(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgpa;->s:[B

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgpa;->Q()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgpa;->o()I

    move-result v3

    invoke-direct {v0, v1, v2, v3, p1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public final y()Ljava/nio/ByteBuffer;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgpa;->s:[B

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgpa;->Q()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgpa;->o()I

    move-result v2

    invoke-static {v0, v1, v2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method
