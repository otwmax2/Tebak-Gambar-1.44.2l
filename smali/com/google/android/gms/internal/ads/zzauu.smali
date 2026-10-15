###### Class com.google.android.gms.internal.ads.zzauu (com.google.android.gms.internal.ads.zzauu)
.class public final Lcom/google/android/gms/internal/ads/zzauu;
.super Lcom/google/android/gms/ads/appopen/AppOpenAd;
.source "com.google.android.gms:play-services-ads-lite@@22.0.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzauy;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/google/android/gms/internal/ads/zzauv;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzauy;Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/appopen/AppOpenAd;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzauv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzauv;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzauu;->c:Lcom/google/android/gms/internal/ads/zzauv;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzauu;->a:Lcom/google/android/gms/internal/ads/zzauy;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzauu;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/ads/ResponseInfo;
    .registers 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzauu;->a:Lcom/google/android/gms/internal/ads/zzauy;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzauy;->c()Lcom/google/android/gms/ads/internal/client/zzdn;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    goto :goto_e

    :catch_7
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbza;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    .line 3
    :goto_e
    invoke-static {v0}, Lcom/google/android/gms/ads/ResponseInfo;->e(Lcom/google/android/gms/ads/internal/client/zzdn;)Lcom/google/android/gms/ads/ResponseInfo;

    move-result-object v0

    return-object v0
.end method

.method public final c(Landroid/app/Activity;)V
    .registers 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzauu;->a:Lcom/google/android/gms/internal/ads/zzauy;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->Q4(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzauu;->c:Lcom/google/android/gms/internal/ads/zzauv;

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzauy;->ca(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzavf;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    return-void

    :catch_c
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbza;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
