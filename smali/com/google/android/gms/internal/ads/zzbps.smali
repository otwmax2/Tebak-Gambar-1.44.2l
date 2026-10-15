###### Class com.google.android.gms.internal.ads.zzbps (com.google.android.gms.internal.ads.zzbps)
.class final Lcom/google/android/gms/internal/ads/zzbps;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/zzo;


# instance fields
.field final synthetic o:Lcom/google/android/gms/internal/ads/zzbpu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbpu;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbps;->o:Lcom/google/android/gms/internal/ads/zzbpu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final G(I)V
    .registers 3

    const-string p1, "AdMobCustomTabsAdapter overlay is closed."

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbza;->b(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbps;->o:Lcom/google/android/gms/internal/ads/zzbpu;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbpu;->b(Lcom/google/android/gms/internal/ads/zzbpu;)Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    move-result-object v0

    .line 2
    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->r(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V

    return-void
.end method

.method public final P0()V
    .registers 2

    const-string v0, "Delay close AdMobCustomTabsAdapter overlay."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbza;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final Q4()V
    .registers 2

    const-string v0, "AdMobCustomTabsAdapter overlay is resumed."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbza;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final X0()V
    .registers 2

    const-string v0, "AdMobCustomTabsAdapter overlay is paused."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbza;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final b()V
    .registers 1

    return-void
.end method

.method public final zzb()V
    .registers 3

    const-string v0, "Opening AdMobCustomTabsAdapter overlay."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbza;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbps;->o:Lcom/google/android/gms/internal/ads/zzbpu;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbpu;->b(Lcom/google/android/gms/internal/ads/zzbpu;)Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    move-result-object v1

    .line 2
    invoke-interface {v1, v0}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->v(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V

    return-void
.end method
