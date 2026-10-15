###### Class com.google.android.gms.ads.MediationUtils (com.google.android.gms.ads.MediationUtils)
.class public Lcom/google/android/gms/ads/MediationUtils;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@22.0.0"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/gms/ads/AdSize;Ljava/util/List;)Lcom/google/android/gms/ads/AdSize;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/ads/AdSize;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/ads/AdSize;",
            ">;)",
            "Lcom/google/android/gms/ads/AdSize;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_d4

    if-nez p1, :cond_7

    goto/16 :goto_d4

    .line 1
    :cond_7
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdSize;->n()Z

    move-result v1

    if-nez v1, :cond_36

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdSize;->o()Z

    move-result v1

    if-nez v1, :cond_36

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 2
    invoke-virtual {p1, p0}, Lcom/google/android/gms/ads/AdSize;->e(Landroid/content/Context;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 3
    invoke-virtual {p1, p0}, Lcom/google/android/gms/ads/AdSize;->c(Landroid/content/Context;)I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, v1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    new-instance p1, Lcom/google/android/gms/ads/AdSize;

    .line 4
    invoke-direct {p1, v2, p0}, Lcom/google/android/gms/ads/AdSize;-><init>(II)V

    .line 5
    :cond_36
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3a
    :goto_3a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_d4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/ads/AdSize;

    if-eqz p2, :cond_3a

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdSize;->d()I

    move-result v1

    invoke-virtual {p2}, Lcom/google/android/gms/ads/AdSize;->d()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdSize;->b()I

    move-result v3

    int-to-double v4, v1

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v6

    int-to-double v6, v2

    invoke-virtual {p2}, Lcom/google/android/gms/ads/AdSize;->b()I

    move-result v8

    cmpl-double v9, v4, v6

    if-gtz v9, :cond_3a

    if-lt v1, v2, :cond_3a

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdSize;->o()Z

    move-result v1

    if-eqz v1, :cond_98

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdSize;->g()I

    move-result v1

    .line 6
    sget-object v3, Lcom/google/android/gms/internal/ads/zzbar;->j7:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 7
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v3

    .line 8
    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-gt v3, v2, :cond_3a

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbar;->k7:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 9
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v2

    .line 10
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gt v2, v8, :cond_3a

    if-lt v1, v8, :cond_3a

    goto :goto_b8

    :cond_98
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdSize;->n()Z

    move-result v1

    if-eqz v1, :cond_a5

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdSize;->h()I

    move-result v1

    if-lt v1, v8, :cond_3a

    goto :goto_b8

    :cond_a5
    int-to-double v1, v3

    const-wide v4, 0x3fe6666666666666L    # 0.7

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v4

    int-to-double v4, v8

    cmpl-double v6, v1, v4

    if-gtz v6, :cond_3a

    if-ge v3, v8, :cond_b8

    goto :goto_3a

    :cond_b8
    :goto_b8
    if-nez v0, :cond_bb

    goto :goto_d1

    :cond_bb
    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdSize;->d()I

    move-result v1

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdSize;->b()I

    move-result v2

    mul-int v1, v1, v2

    invoke-virtual {p2}, Lcom/google/android/gms/ads/AdSize;->d()I

    move-result v2

    invoke-virtual {p2}, Lcom/google/android/gms/ads/AdSize;->b()I

    move-result v3

    mul-int v2, v2, v3

    if-gt v1, v2, :cond_3a

    :goto_d1
    move-object v0, p2

    goto/16 :goto_3a

    :cond_d4
    :goto_d4
    return-object v0
.end method
