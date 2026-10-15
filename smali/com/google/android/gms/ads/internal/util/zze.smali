###### Class com.google.android.gms.ads.internal.util.zze (com.google.android.gms.ads.internal.util.zze)
.class public final Lcom/google/android/gms/ads/internal/util/zze;
.super Lcom/google/android/gms/internal/ads/zzbza;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# direct methods
.method public static k(Ljava/lang/String;)V
    .registers 5

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/util/zze;->m()Z

    move-result v0

    if-eqz v0, :cond_3b

    const-string v0, "Ads"

    if-eqz p0, :cond_38

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xfa0

    if-gt v1, v2, :cond_13

    goto :goto_38

    .line 2
    :cond_13
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbza;->a:Lcom/google/android/gms/internal/ads/zzfoh;

    .line 3
    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/ads/zzfoh;->d(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :goto_1f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v1, :cond_31

    .line 4
    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36

    :cond_31
    const-string v1, "Ads-cont"

    .line 5
    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_36
    const/4 v1, 0x0

    goto :goto_1f

    .line 6
    :cond_38
    :goto_38
    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3b
    return-void
.end method

.method public static l(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/util/zze;->m()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "Ads"

    .line 2
    invoke-static {v0, p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_b
    return-void
.end method

.method public static m()Z
    .registers 1

    const/4 v0, 0x2

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbza;->j(I)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbco;->a:Lcom/google/android/gms/internal/ads/zzbbw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbbw;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_17

    const/4 v0, 0x1

    return v0

    :cond_17
    const/4 v0, 0x0

    return v0
.end method
