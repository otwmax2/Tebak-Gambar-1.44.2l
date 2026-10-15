###### Class com.google.android.gms.internal.ads.zzavg (com.google.android.gms.internal.ads.zzavg)
.class public final Lcom/google/android/gms/internal/ads/zzavg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@22.0.0"


# instance fields
.field private a:Lcom/google/android/gms/ads/internal/client/zzbu;

.field private final b:Landroid/content/Context;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/google/android/gms/ads/internal/client/zzdx;

.field private final e:I
    .annotation build Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdOrientation;
    .end annotation
.end field

.field private final f:Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;

.field private final g:Lcom/google/android/gms/internal/ads/zzbnc;

.field private final h:Lcom/google/android/gms/ads/internal/client/zzp;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/internal/client/zzdx;ILcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;)V
    .registers 7
    .param p4    # I
        .annotation build Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdOrientation;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbnc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbnc;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzavg;->g:Lcom/google/android/gms/internal/ads/zzbnc;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzavg;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzavg;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzavg;->d:Lcom/google/android/gms/ads/internal/client/zzdx;

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzavg;->e:I

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzavg;->f:Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;

    sget-object p1, Lcom/google/android/gms/ads/internal/client/zzp;->a:Lcom/google/android/gms/ads/internal/client/zzp;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzavg;->h:Lcom/google/android/gms/ads/internal/client/zzp;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 6

    .line 1
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzq;->W3()Lcom/google/android/gms/ads/internal/client/zzq;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzay;->a()Lcom/google/android/gms/ads/internal/client/zzaw;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzavg;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzavg;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzavg;->g:Lcom/google/android/gms/internal/ads/zzbnc;

    .line 3
    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/google/android/gms/ads/internal/client/zzaw;->d(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/zzq;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbnf;)Lcom/google/android/gms/ads/internal/client/zzbu;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzavg;->a:Lcom/google/android/gms/ads/internal/client/zzbu;

    if-eqz v0, :cond_44

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzavg;->e:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_27

    .line 4
    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzw;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzavg;->e:I

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/internal/client/zzw;-><init>(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzavg;->a:Lcom/google/android/gms/ads/internal/client/zzbu;

    .line 5
    invoke-interface {v1, v0}, Lcom/google/android/gms/ads/internal/client/zzbu;->E7(Lcom/google/android/gms/ads/internal/client/zzw;)V

    :cond_27
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavg;->a:Lcom/google/android/gms/ads/internal/client/zzbu;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzaut;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzavg;->f:Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzavg;->c:Ljava/lang/String;

    .line 6
    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzaut;-><init>(Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/client/zzbu;->aa(Lcom/google/android/gms/internal/ads/zzavb;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavg;->a:Lcom/google/android/gms/ads/internal/client/zzbu;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzavg;->h:Lcom/google/android/gms/ads/internal/client/zzp;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzavg;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzavg;->d:Lcom/google/android/gms/ads/internal/client/zzdx;

    .line 7
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/ads/internal/client/zzp;->a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/zzdx;)Lcom/google/android/gms/ads/internal/client/zzl;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/client/zzbu;->P9(Lcom/google/android/gms/ads/internal/client/zzl;)Z
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_44} :catch_45

    :cond_44
    return-void

    :catch_45
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 8
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbza;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
