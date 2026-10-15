###### Class com.google.android.gms.internal.ads.zzdlp (com.google.android.gms.internal.ads.zzdlp)
.class public final Lcom/google/android/gms/internal/ads/zzdlp;
.super Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzdgi;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdgi;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdlp;->a:Lcom/google/android/gms/internal/ads/zzdgi;

    return-void
.end method

.method private static f(Lcom/google/android/gms/internal/ads/zzdgi;)Lcom/google/android/gms/ads/internal/client/zzdt;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdgi;->T()Lcom/google/android/gms/ads/internal/client/zzdq;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_8

    return-object v0

    :cond_8
    :try_start_8
    invoke-interface {p0}, Lcom/google/android/gms/ads/internal/client/zzdq;->g()Lcom/google/android/gms/ads/internal/client/zzdt;

    move-result-object p0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_c} :catch_d

    return-object p0

    :catch_d
    return-object v0
.end method


# virtual methods
.method public final a()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdlp;->a:Lcom/google/android/gms/internal/ads/zzdgi;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdlp;->f(Lcom/google/android/gms/internal/ads/zzdgi;)Lcom/google/android/gms/ads/internal/client/zzdt;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 2
    :cond_9
    :try_start_9
    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/client/zzdt;->b()V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_c} :catch_d

    return-void

    :catch_d
    move-exception v0

    const-string v1, "Unable to call onVideoEnd()"

    .line 3
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbza;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final c()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdlp;->a:Lcom/google/android/gms/internal/ads/zzdgi;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdlp;->f(Lcom/google/android/gms/internal/ads/zzdgi;)Lcom/google/android/gms/ads/internal/client/zzdt;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 2
    :cond_9
    :try_start_9
    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/client/zzdt;->e()V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_c} :catch_d

    return-void

    :catch_d
    move-exception v0

    const-string v1, "Unable to call onVideoEnd()"

    .line 3
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbza;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final e()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdlp;->a:Lcom/google/android/gms/internal/ads/zzdgi;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdlp;->f(Lcom/google/android/gms/internal/ads/zzdgi;)Lcom/google/android/gms/ads/internal/client/zzdt;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 2
    :cond_9
    :try_start_9
    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/client/zzdt;->g()V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_c} :catch_d

    return-void

    :catch_d
    move-exception v0

    const-string v1, "Unable to call onVideoEnd()"

    .line 3
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbza;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
