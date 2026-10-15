###### Class com.google.android.gms.internal.ads.zzbpl (com.google.android.gms.internal.ads.zzbpl)
.class final Lcom/google/android/gms/internal/ads/zzbpl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/zzbon;

.field final synthetic b:Lcom/google/android/gms/internal/ads/zzbnl;

.field final synthetic c:Lcom/google/android/gms/internal/ads/zzbpo;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbpo;Lcom/google/android/gms/internal/ads/zzbon;Lcom/google/android/gms/internal/ads/zzbnl;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbpl;->c:Lcom/google/android/gms/internal/ads/zzbpo;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbpl;->a:Lcom/google/android/gms/internal/ads/zzbon;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbpl;->b:Lcom/google/android/gms/internal/ads/zzbnl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/ads/AdError;)V
    .registers 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbpl;->a:Lcom/google/android/gms/internal/ads/zzbon;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->d()Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzbon;->A(Lcom/google/android/gms/ads/internal/client/zze;)V
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
    check-cast p1, Lcom/google/android/gms/ads/mediation/MediationAppOpenAd;

    const/4 v0, 0x0

    const-string v1, ""

    if-nez p1, :cond_19

    const-string p1, "Adapter incorrectly returned a null ad. The onFailure() callback should be called if an adapter fails to load an ad."

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbza;->g(Ljava/lang/String;)V

    :try_start_c
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbpl;->a:Lcom/google/android/gms/internal/ads/zzbon;

    const-string v2, "Adapter returned null."

    .line 3
    invoke-interface {p1, v2}, Lcom/google/android/gms/internal/ads/zzbon;->s(Ljava/lang/String;)V
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
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbpl;->c:Lcom/google/android/gms/internal/ads/zzbpo;

    .line 6
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbpo;->Ta(Lcom/google/android/gms/internal/ads/zzbpo;Lcom/google/android/gms/ads/mediation/MediationAppOpenAd;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbpl;->a:Lcom/google/android/gms/internal/ads/zzbon;

    .line 7
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbon;->e()V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_23} :catch_24

    goto :goto_28

    :catch_24
    move-exception p1

    .line 8
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzbza;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 9
    :goto_28
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbpp;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbpl;->b:Lcom/google/android/gms/internal/ads/zzbnl;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzbpp;-><init>(Lcom/google/android/gms/internal/ads/zzbnl;)V

    :goto_2f
    return-object v0
.end method
