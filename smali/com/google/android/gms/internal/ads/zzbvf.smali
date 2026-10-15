###### Class com.google.android.gms.internal.ads.zzbvf (com.google.android.gms.internal.ads.zzbvf)
.class public final Lcom/google/android/gms/internal/ads/zzbvf;
.super Lcom/google/android/gms/ads/rewarded/RewardedAd;
.source "com.google.android.gms:play-services-ads-lite@@22.0.0"


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/google/android/gms/internal/ads/zzbuw;

.field private final c:Landroid/content/Context;

.field private final d:Lcom/google/android/gms/internal/ads/zzbvo;

.field private e:Lcom/google/android/gms/ads/FullScreenContentCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/rewarded/RewardedAd;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbvf;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbvf;->a:Ljava/lang/String;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzay;->a()Lcom/google/android/gms/ads/internal/client/zzaw;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbnc;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzbnc;-><init>()V

    .line 3
    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/gms/ads/internal/client/zzaw;->o(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbnf;)Lcom/google/android/gms/internal/ads/zzbuw;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbvf;->b:Lcom/google/android/gms/internal/ads/zzbuw;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzbvo;

    .line 4
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzbvo;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbvf;->d:Lcom/google/android/gms/internal/ads/zzbvo;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/ads/FullScreenContentCallback;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbvf;->e:Lcom/google/android/gms/ads/FullScreenContentCallback;

    return-object v0
.end method

.method public final b()Lcom/google/android/gms/ads/ResponseInfo;
    .registers 4

    const/4 v0, 0x0

    .line 1
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbvf;->b:Lcom/google/android/gms/internal/ads/zzbuw;

    if-eqz v1, :cond_10

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzbuw;->a()Lcom/google/android/gms/ads/internal/client/zzdn;

    move-result-object v0
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_9} :catch_a

    goto :goto_10

    :catch_a
    move-exception v1

    const-string v2, "#007 Could not call remote method."

    .line 2
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzbza;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3
    :cond_10
    :goto_10
    invoke-static {v0}, Lcom/google/android/gms/ads/ResponseInfo;->e(Lcom/google/android/gms/ads/internal/client/zzdn;)Lcom/google/android/gms/ads/ResponseInfo;

    move-result-object v0

    return-object v0
.end method

.method public final d(Lcom/google/android/gms/ads/FullScreenContentCallback;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbvf;->e:Lcom/google/android/gms/ads/FullScreenContentCallback;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbvf;->d:Lcom/google/android/gms/internal/ads/zzbvo;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbvo;->Sa(Lcom/google/android/gms/ads/FullScreenContentCallback;)V

    return-void
.end method

.method public final e(Landroid/app/Activity;Lcom/google/android/gms/ads/OnUserEarnedRewardListener;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbvf;->d:Lcom/google/android/gms/internal/ads/zzbvo;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzbvo;->Ta(Lcom/google/android/gms/ads/OnUserEarnedRewardListener;)V

    if-nez p1, :cond_c

    const-string p2, "The activity for show is null, will proceed with show using the context provided when loading the ad."

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzbza;->g(Ljava/lang/String;)V

    :cond_c
    :try_start_c
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbvf;->b:Lcom/google/android/gms/internal/ads/zzbuw;

    if-eqz p2, :cond_1e

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbvf;->d:Lcom/google/android/gms/internal/ads/zzbvo;

    .line 3
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/zzbuw;->Fa(Lcom/google/android/gms/internal/ads/zzbuz;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbvf;->b:Lcom/google/android/gms/internal/ads/zzbuw;

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->Q4(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzbuw;->l1(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_1e} :catch_1f

    :cond_1e
    return-void

    :catch_1f
    move-exception p1

    const-string p2, "#007 Could not call remote method."

    .line 5
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzbza;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final f(Lcom/google/android/gms/ads/internal/client/zzdx;Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;)V
    .registers 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbvf;->b:Lcom/google/android/gms/internal/ads/zzbuw;

    if-eqz v0, :cond_14

    sget-object v1, Lcom/google/android/gms/ads/internal/client/zzp;->a:Lcom/google/android/gms/ads/internal/client/zzp;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbvf;->c:Landroid/content/Context;

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/ads/internal/client/zzp;->a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/zzdx;)Lcom/google/android/gms/ads/internal/client/zzl;

    move-result-object p1

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbvj;

    invoke-direct {v1, p2, p0}, Lcom/google/android/gms/internal/ads/zzbvj;-><init>(Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;Lcom/google/android/gms/ads/rewarded/RewardedAd;)V

    .line 2
    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzbuw;->B6(Lcom/google/android/gms/ads/internal/client/zzl;Lcom/google/android/gms/internal/ads/zzbvd;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_14} :catch_15

    :cond_14
    return-void

    :catch_15
    move-exception p1

    const-string p2, "#007 Could not call remote method."

    .line 3
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzbza;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
