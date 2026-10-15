###### Class com.google.android.gms.internal.ads.zzgtg (com.google.android.gms.internal.ads.zzgtg)
.class abstract Lcom/google/android/gms/internal/ads/zzgtg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract a(Ljava/lang/Object;)I
.end method

.method abstract b(Ljava/lang/Object;)I
.end method

.method abstract c(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method abstract d(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method abstract e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method abstract f()Ljava/lang/Object;
.end method

.method abstract g(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method abstract h(Ljava/lang/Object;II)V
.end method

.method abstract i(Ljava/lang/Object;IJ)V
.end method

.method abstract j(Ljava/lang/Object;ILjava/lang/Object;)V
.end method

.method abstract k(Ljava/lang/Object;ILcom/google/android/gms/internal/ads/zzgpe;)V
.end method

.method abstract l(Ljava/lang/Object;IJ)V
.end method

.method abstract m(Ljava/lang/Object;)V
.end method

.method abstract n(Ljava/lang/Object;Ljava/lang/Object;)V
.end method

.method abstract o(Ljava/lang/Object;Ljava/lang/Object;)V
.end method

.method final p(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzgsh;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzgsh;->d()I

    move-result v0

    ushr-int/lit8 v1, v0, 0x3

    and-int/lit8 v0, v0, 0x7

    const/4 v2, 0x1

    if-eqz v0, :cond_60

    if-eq v0, v2, :cond_58

    const/4 v3, 0x2

    if-eq v0, v3, :cond_50

    const/4 v3, 0x4

    const/4 v4, 0x3

    if-eq v0, v4, :cond_28

    if-eq v0, v3, :cond_26

    const/4 v3, 0x5

    if-ne v0, v3, :cond_21

    .line 2
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzgsh;->c()I

    move-result p2

    invoke-virtual {p0, p1, v1, p2}, Lcom/google/android/gms/internal/ads/zzgtg;->h(Ljava/lang/Object;II)V

    return v2

    .line 3
    :cond_21
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgqy;->a()Lcom/google/android/gms/internal/ads/zzgqx;

    move-result-object p1

    throw p1

    :cond_26
    const/4 p1, 0x0

    return p1

    .line 4
    :cond_28
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgtg;->f()Ljava/lang/Object;

    move-result-object v0

    shl-int/lit8 v4, v1, 0x3

    :cond_2e
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzgsh;->a()I

    move-result v5

    const v6, 0x7fffffff

    if-eq v5, v6, :cond_3d

    .line 5
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/ads/zzgtg;->p(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzgsh;)Z

    move-result v5

    if-nez v5, :cond_2e

    :cond_3d
    or-int/2addr v3, v4

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzgsh;->d()I

    move-result p2

    if-ne v3, p2, :cond_4b

    .line 6
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzgtg;->g(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzgtg;->j(Ljava/lang/Object;ILjava/lang/Object;)V

    return v2

    .line 7
    :cond_4b
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgqy;->b()Lcom/google/android/gms/internal/ads/zzgqy;

    move-result-object p1

    throw p1

    .line 8
    :cond_50
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzgsh;->n()Lcom/google/android/gms/internal/ads/zzgpe;

    move-result-object p2

    invoke-virtual {p0, p1, v1, p2}, Lcom/google/android/gms/internal/ads/zzgtg;->k(Ljava/lang/Object;ILcom/google/android/gms/internal/ads/zzgpe;)V

    return v2

    .line 9
    :cond_58
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzgsh;->i()J

    move-result-wide v3

    invoke-virtual {p0, p1, v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzgtg;->i(Ljava/lang/Object;IJ)V

    return v2

    .line 10
    :cond_60
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzgsh;->j()J

    move-result-wide v3

    invoke-virtual {p0, p1, v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzgtg;->l(Ljava/lang/Object;IJ)V

    return v2
.end method

.method abstract q(Lcom/google/android/gms/internal/ads/zzgsh;)Z
.end method

.method abstract r(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzgpu;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
