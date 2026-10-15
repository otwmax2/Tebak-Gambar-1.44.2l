###### Class com.google.android.gms.ads.rewarded.RewardedAd (com.google.android.gms.ads.rewarded.RewardedAd)
.class public abstract Lcom/google/android/gms/ads/rewarded/RewardedAd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@22.0.0"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/AdRequest;Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;)V
    .registers 6

    const-string v0, "Context cannot be null."

    .line 1
    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/Preconditions;->l(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "AdUnitId cannot be null."

    .line 2
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->l(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "AdRequest cannot be null."

    .line 3
    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/Preconditions;->l(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "LoadCallback cannot be null."

    .line 4
    invoke-static {p3, v0}, Lcom/google/android/gms/common/internal/Preconditions;->l(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "#008 Must be called on the main UI thread."

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->f(Ljava/lang/String;)V

    .line 6
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbar;->c(Landroid/content/Context;)V

    .line 7
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbci;->l:Lcom/google/android/gms/internal/ads/zzbbw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbbw;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_47

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbar;->w9:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 8
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v0

    .line 9
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_47

    .line 10
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbyp;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/android/gms/ads/rewarded/zzc;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/ads/rewarded/zzc;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/AdRequest;Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_47
    const-string v0, "Loading on UI thread"

    .line 11
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbza;->b(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbvf;

    .line 12
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzbvf;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 13
    invoke-virtual {p2}, Lcom/google/android/gms/ads/AdRequest;->a()Lcom/google/android/gms/ads/internal/client/zzdx;

    move-result-object p0

    invoke-virtual {v0, p0, p3}, Lcom/google/android/gms/internal/ads/zzbvf;->f(Lcom/google/android/gms/ads/internal/client/zzdx;Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;)V

    return-void
.end method


# virtual methods
.method public abstract a()Lcom/google/android/gms/ads/FullScreenContentCallback;
.end method

.method public abstract b()Lcom/google/android/gms/ads/ResponseInfo;
.end method

.method public abstract d(Lcom/google/android/gms/ads/FullScreenContentCallback;)V
.end method

.method public abstract e(Landroid/app/Activity;Lcom/google/android/gms/ads/OnUserEarnedRewardListener;)V
.end method

###### Class com.google.android.gms.ads.rewarded.zzc (com.google.android.gms.ads.rewarded.zzc)
.class public final synthetic Lcom/google/android/gms/ads/rewarded/zzc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@22.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Landroid/content/Context;

.field public final synthetic p:Ljava/lang/String;

.field public final synthetic q:Lcom/google/android/gms/ads/AdRequest;

.field public final synthetic r:Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/AdRequest;Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/rewarded/zzc;->o:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/ads/rewarded/zzc;->p:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/ads/rewarded/zzc;->q:Lcom/google/android/gms/ads/AdRequest;

    iput-object p4, p0, Lcom/google/android/gms/ads/rewarded/zzc;->r:Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/rewarded/zzc;->o:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/ads/rewarded/zzc;->p:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/ads/rewarded/zzc;->q:Lcom/google/android/gms/ads/AdRequest;

    iget-object v3, p0, Lcom/google/android/gms/ads/rewarded/zzc;->r:Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;

    :try_start_8
    new-instance v4, Lcom/google/android/gms/internal/ads/zzbvf;

    invoke-direct {v4, v0, v1}, Lcom/google/android/gms/internal/ads/zzbvf;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v2}, Lcom/google/android/gms/ads/AdRequest;->a()Lcom/google/android/gms/ads/internal/client/zzdx;

    move-result-object v1

    invoke-virtual {v4, v1, v3}, Lcom/google/android/gms/internal/ads/zzbvf;->f(Lcom/google/android/gms/ads/internal/client/zzdx;Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;)V
    :try_end_14
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_14} :catch_15

    return-void

    :catch_15
    move-exception v1

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbsf;->c(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzbsh;

    move-result-object v0

    const-string v2, "RewardedAd.load"

    .line 4
    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbsh;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method
