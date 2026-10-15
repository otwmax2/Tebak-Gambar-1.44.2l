###### Class com.google.android.gms.internal.ads.zzbpi (com.google.android.gms.internal.ads.zzbpi)
.class final Lcom/google/android/gms/internal/ads/zzbpi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/zzboq;

.field final synthetic b:Lcom/google/android/gms/internal/ads/zzbnl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbpo;Lcom/google/android/gms/internal/ads/zzboq;Lcom/google/android/gms/internal/ads/zzbnl;)V
    .registers 4

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbpi;->a:Lcom/google/android/gms/internal/ads/zzboq;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbpi;->b:Lcom/google/android/gms/internal/ads/zzbnl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/ads/AdError;)V
    .registers 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbpi;->a:Lcom/google/android/gms/internal/ads/zzboq;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->d()Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzboq;->A(Lcom/google/android/gms/ads/internal/client/zze;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    return-void

    :catch_a
    move-exception p1

    const-string v0, ""

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbza;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final bridge synthetic onSuccess(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 1
    check-cast p1, Lcom/google/android/gms/ads/mediation/MediationInterscrollerAd;

    const/4 v0, 0x0

    const-string v1, ""

    if-nez p1, :cond_19

    const-string p1, "Adapter incorrectly returned a null ad. The onFailure() callback should be called if an adapter fails to load an ad."

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbza;->g(Ljava/lang/String;)V

    :try_start_c
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbpi;->a:Lcom/google/android/gms/internal/ads/zzboq;

    const-string v2, "Adapter returned null."

    .line 3
    invoke-interface {p1, v2}, Lcom/google/android/gms/internal/ads/zzboq;->s(Ljava/lang/String;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_13} :catch_14

    goto :goto_2f

    :catch_14
    move-exception p1

    .line 4
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzbza;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2f

    .line 5
    :cond_19
    :try_start_19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbpi;->a:Lcom/google/android/gms/internal/ads/zzboq;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzbog;

    .line 6
    invoke-direct {v2, p1}, Lcom/google/android/gms/internal/ads/zzbog;-><init>(Lcom/google/android/gms/ads/mediation/MediationInterscrollerAd;)V

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/zzboq;->c2(Lcom/google/android/gms/internal/ads/zzbno;)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_23} :catch_24

    goto :goto_28

    :catch_24
    move-exception p1

    .line 7
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzbza;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8
    :goto_28
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbpp;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbpi;->b:Lcom/google/android/gms/internal/ads/zzbnl;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzbpp;-><init>(Lcom/google/android/gms/internal/ads/zzbnl;)V

    :goto_2f
    return-object v0
.end method
