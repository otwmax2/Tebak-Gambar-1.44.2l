###### Class com.google.android.gms.ads.nativead.MediaView (com.google.android.gms.ads.nativead.MediaView)
.class public Lcom/google/android/gms/ads/nativead/MediaView;
.super Landroid/widget/FrameLayout;
.source "com.google.android.gms:play-services-ads-lite@@22.0.0"


# instance fields
.field private o:Lcom/google/android/gms/ads/MediaContent;

.field private p:Z

.field private q:Landroid/widget/ImageView$ScaleType;

.field private r:Z

.field private s:Lcom/google/android/gms/ads/nativead/zzb;

.field private t:Lcom/google/android/gms/ads/nativead/zzc;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected final declared-synchronized a(Lcom/google/android/gms/ads/nativead/zzb;)V
    .registers 3

    monitor-enter p0

    .line 1
    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/ads/nativead/MediaView;->s:Lcom/google/android/gms/ads/nativead/zzb;

    iget-boolean v0, p0, Lcom/google/android/gms/ads/nativead/MediaView;->p:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/android/gms/ads/nativead/MediaView;->o:Lcom/google/android/gms/ads/MediaContent;

    iget-object p1, p1, Lcom/google/android/gms/ads/nativead/zzb;->a:Lcom/google/android/gms/ads/nativead/NativeAdView;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/nativead/NativeAdView;->c(Lcom/google/android/gms/ads/MediaContent;)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_12

    monitor-exit p0

    return-void

    :cond_10
    monitor-exit p0

    return-void

    :catchall_12
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected final declared-synchronized b(Lcom/google/android/gms/ads/nativead/zzc;)V
    .registers 3

    monitor-enter p0

    .line 1
    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/ads/nativead/MediaView;->t:Lcom/google/android/gms/ads/nativead/zzc;

    iget-boolean v0, p0, Lcom/google/android/gms/ads/nativead/MediaView;->r:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/android/gms/ads/nativead/MediaView;->q:Landroid/widget/ImageView$ScaleType;

    iget-object p1, p1, Lcom/google/android/gms/ads/nativead/zzc;->a:Lcom/google/android/gms/ads/nativead/NativeAdView;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/nativead/NativeAdView;->d(Landroid/widget/ImageView$ScaleType;)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_12

    monitor-exit p0

    return-void

    :cond_10
    monitor-exit p0

    return-void

    :catchall_12
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getMediaContent()Lcom/google/android/gms/ads/MediaContent;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/nativead/MediaView;->o:Lcom/google/android/gms/ads/MediaContent;

    return-object v0
.end method

.method public setImageScaleType(Landroid/widget/ImageView$ScaleType;)V
    .registers 3

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/ads/nativead/MediaView;->r:Z

    iput-object p1, p0, Lcom/google/android/gms/ads/nativead/MediaView;->q:Landroid/widget/ImageView$ScaleType;

    iget-object v0, p0, Lcom/google/android/gms/ads/nativead/MediaView;->t:Lcom/google/android/gms/ads/nativead/zzc;

    if-eqz v0, :cond_e

    iget-object v0, v0, Lcom/google/android/gms/ads/nativead/zzc;->a:Lcom/google/android/gms/ads/nativead/NativeAdView;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/nativead/NativeAdView;->d(Landroid/widget/ImageView$ScaleType;)V

    :cond_e
    return-void
.end method

.method public setMediaContent(Lcom/google/android/gms/ads/MediaContent;)V
    .registers 3

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/ads/nativead/MediaView;->p:Z

    iput-object p1, p0, Lcom/google/android/gms/ads/nativead/MediaView;->o:Lcom/google/android/gms/ads/MediaContent;

    iget-object v0, p0, Lcom/google/android/gms/ads/nativead/MediaView;->s:Lcom/google/android/gms/ads/nativead/zzb;

    if-eqz v0, :cond_e

    iget-object v0, v0, Lcom/google/android/gms/ads/nativead/zzb;->a:Lcom/google/android/gms/ads/nativead/NativeAdView;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/nativead/NativeAdView;->c(Lcom/google/android/gms/ads/MediaContent;)V

    :cond_e
    if-nez p1, :cond_11

    return-void

    :cond_11
    :try_start_11
    invoke-interface {p1}, Lcom/google/android/gms/ads/MediaContent;->zza()Lcom/google/android/gms/internal/ads/zzber;

    move-result-object p1

    if-eqz p1, :cond_24

    .line 2
    invoke-static {p0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->Q4(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzber;->c0(Lcom/google/android/gms/dynamic/IObjectWrapper;)Z

    move-result p1

    if-nez p1, :cond_24

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->removeAllViews()V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_24} :catch_25

    :cond_24
    return-void

    :catch_25
    move-exception p1

    .line 4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->removeAllViews()V

    const-string v0, ""

    .line 5
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbza;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
