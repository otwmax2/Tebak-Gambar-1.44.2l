###### Class com.google.android.gms.internal.ads.zzbqp (com.google.android.gms.internal.ads.zzbqp)
.class public final Lcom/google/android/gms/internal/ads/zzbqp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@22.0.0"


# instance fields
.field private final a:Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd$OnCustomFormatAdLoadedListener;

.field private final b:Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd$OnCustomClickListener;

.field private c:Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;


# direct methods
.method static bridge synthetic a(Lcom/google/android/gms/internal/ads/zzbqp;)Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd$OnCustomClickListener;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbqp;->b:Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd$OnCustomClickListener;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/google/android/gms/internal/ads/zzbqp;)Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd$OnCustomFormatAdLoadedListener;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbqp;->a:Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd$OnCustomFormatAdLoadedListener;

    return-object p0
.end method

.method static bridge synthetic c(Lcom/google/android/gms/internal/ads/zzbqp;Lcom/google/android/gms/internal/ads/zzber;)Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbqp;->d(Lcom/google/android/gms/internal/ads/zzber;)Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;

    move-result-object p0

    return-object p0
.end method

.method private final declared-synchronized d(Lcom/google/android/gms/internal/ads/zzber;)Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbqp;->c:Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_10

    if-eqz v0, :cond_7

    monitor-exit p0

    return-object v0

    :cond_7
    :try_start_7
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbqq;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzbqq;-><init>(Lcom/google/android/gms/internal/ads/zzber;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbqp;->c:Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_10

    monitor-exit p0

    return-object v0

    :catchall_10
    move-exception p1

    monitor-exit p0

    throw p1
.end method
