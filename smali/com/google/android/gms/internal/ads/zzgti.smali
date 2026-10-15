###### Class com.google.android.gms.internal.ads.zzgti (com.google.android.gms.internal.ads.zzgti)
.class final Lcom/google/android/gms/internal/ads/zzgti;
.super Lcom/google/android/gms/internal/ads/zzgtg;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgtg;-><init>()V

    return-void
.end method


# virtual methods
.method final synthetic a(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgth;

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgth;->a()I

    move-result p1

    return p1
.end method

.method final synthetic b(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgth;

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgth;->b()I

    move-result p1

    return p1
.end method

.method final bridge synthetic c(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzgqm;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzgqm;->zzc:Lcom/google/android/gms/internal/ads/zzgth;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgth;->c()Lcom/google/android/gms/internal/ads/zzgth;

    move-result-object v1

    if-ne v0, v1, :cond_10

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgth;->f()Lcom/google/android/gms/internal/ads/zzgth;

    move-result-object v0

    .line 2
    iput-object v0, p1, Lcom/google/android/gms/internal/ads/zzgqm;->zzc:Lcom/google/android/gms/internal/ads/zzgth;

    :cond_10
    return-object v0
.end method

.method final synthetic d(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzgqm;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzgqm;->zzc:Lcom/google/android/gms/internal/ads/zzgth;

    return-object p1
.end method

.method final bridge synthetic e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgth;->c()Lcom/google/android/gms/internal/ads/zzgth;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzgth;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgth;->c()Lcom/google/android/gms/internal/ads/zzgth;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgth;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    check-cast p2, Lcom/google/android/gms/internal/ads/zzgth;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgth;

    .line 3
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzgth;->e(Lcom/google/android/gms/internal/ads/zzgth;Lcom/google/android/gms/internal/ads/zzgth;)Lcom/google/android/gms/internal/ads/zzgth;

    move-result-object p1

    goto :goto_25

    :cond_1d
    check-cast p2, Lcom/google/android/gms/internal/ads/zzgth;

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgth;

    .line 4
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzgth;->d(Lcom/google/android/gms/internal/ads/zzgth;)Lcom/google/android/gms/internal/ads/zzgth;

    :cond_25
    :goto_25
    return-object p1
.end method

.method final synthetic f()Ljava/lang/Object;
    .registers 2

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgth;->f()Lcom/google/android/gms/internal/ads/zzgth;

    move-result-object v0

    return-object v0
.end method

.method final synthetic g(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgth;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgth;->h()V

    return-object p1
.end method

.method final bridge synthetic h(Ljava/lang/Object;II)V
    .registers 4

    shl-int/lit8 p2, p2, 0x3

    or-int/lit8 p2, p2, 0x5

    .line 1
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgth;

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzgth;->j(ILjava/lang/Object;)V

    return-void
.end method

.method final bridge synthetic i(Ljava/lang/Object;IJ)V
    .registers 5

    shl-int/lit8 p2, p2, 0x3

    or-int/lit8 p2, p2, 0x1

    .line 1
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgth;

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzgth;->j(ILjava/lang/Object;)V

    return-void
.end method

.method final bridge synthetic j(Ljava/lang/Object;ILjava/lang/Object;)V
    .registers 4

    shl-int/lit8 p2, p2, 0x3

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgth;

    or-int/lit8 p2, p2, 0x3

    .line 1
    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzgth;->j(ILjava/lang/Object;)V

    return-void
.end method

.method final bridge synthetic k(Ljava/lang/Object;ILcom/google/android/gms/internal/ads/zzgpe;)V
    .registers 4

    shl-int/lit8 p2, p2, 0x3

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgth;

    or-int/lit8 p2, p2, 0x2

    .line 1
    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzgth;->j(ILjava/lang/Object;)V

    return-void
.end method

.method final bridge synthetic l(Ljava/lang/Object;IJ)V
    .registers 5

    shl-int/lit8 p2, p2, 0x3

    .line 1
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgth;

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzgth;->j(ILjava/lang/Object;)V

    return-void
.end method

.method final m(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzgqm;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzgqm;->zzc:Lcom/google/android/gms/internal/ads/zzgth;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgth;->h()V

    return-void
.end method

.method final synthetic n(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzgqm;

    check-cast p2, Lcom/google/android/gms/internal/ads/zzgth;

    iput-object p2, p1, Lcom/google/android/gms/internal/ads/zzgqm;->zzc:Lcom/google/android/gms/internal/ads/zzgth;

    return-void
.end method

.method final synthetic o(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzgqm;

    check-cast p2, Lcom/google/android/gms/internal/ads/zzgth;

    iput-object p2, p1, Lcom/google/android/gms/internal/ads/zzgqm;->zzc:Lcom/google/android/gms/internal/ads/zzgth;

    return-void
.end method

.method final q(Lcom/google/android/gms/internal/ads/zzgsh;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method final synthetic r(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzgpu;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgth;

    .line 1
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzgth;->k(Lcom/google/android/gms/internal/ads/zzgpu;)V

    return-void
.end method
