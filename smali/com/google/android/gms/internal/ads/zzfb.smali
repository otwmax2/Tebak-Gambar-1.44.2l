###### Class com.google.android.gms.internal.ads.zzfb (com.google.android.gms.internal.ads.zzfb)
.class public final Lcom/google/android/gms/internal/ads/zzfb;
.super Lcom/google/android/gms/internal/ads/zzfa;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final e:[B

.field private f:Landroid/net/Uri;

.field private g:I

.field private h:I

.field private i:Z


# direct methods
.method public constructor <init>([B)V
    .registers 4

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzfa;-><init>(Z)V

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    array-length v1, p1

    if-lez v1, :cond_b

    const/4 v0, 0x1

    .line 4
    :cond_b
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdl;->d(Z)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfb;->e:[B

    return-void
.end method


# virtual methods
.method public final a()Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfb;->f:Landroid/net/Uri;

    return-object v0
.end method

.method public final d()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfb;->i:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfb;->i:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfa;->n()V

    :cond_a
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfb;->f:Landroid/net/Uri;

    return-void
.end method

.method public final e([BII)I
    .registers 6

    if-nez p3, :cond_4

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfb;->h:I

    if-nez v0, :cond_a

    const/4 p1, -0x1

    return p1

    :cond_a
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfb;->e:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzfb;->g:I

    .line 2
    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzfb;->g:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzfb;->g:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzfb;->h:I

    sub-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzfb;->h:I

    .line 3
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/ads/zzfa;->w(I)V

    return p3
.end method

.method public final j(Lcom/google/android/gms/internal/ads/zzfl;)J
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfl;->a:Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfb;->f:Landroid/net/Uri;

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzfa;->o(Lcom/google/android/gms/internal/ads/zzfl;)V

    .line 3
    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/zzfl;->f:J

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfb;->e:[B

    array-length v2, v2

    int-to-long v3, v2

    cmp-long v5, v0, v3

    if-gtz v5, :cond_38

    long-to-int v1, v0

    .line 4
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzfb;->g:I

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzfb;->h:I

    .line 5
    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/zzfl;->g:J

    const-wide/16 v3, -0x1

    cmp-long v5, v0, v3

    if-eqz v5, :cond_27

    int-to-long v5, v2

    .line 6
    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzfb;->h:I

    :cond_27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfb;->i:Z

    .line 7
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzfa;->p(Lcom/google/android/gms/internal/ads/zzfl;)V

    .line 8
    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/zzfl;->g:J

    cmp-long p1, v0, v3

    if-eqz p1, :cond_34

    return-wide v0

    :cond_34
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzfb;->h:I

    int-to-long v0, p1

    return-wide v0

    .line 9
    :cond_38
    new-instance p1, Lcom/google/android/gms/internal/ads/zzfh;

    const/16 v0, 0x7d8

    .line 10
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzfh;-><init>(I)V

    throw p1
.end method
