###### Class com.google.android.gms.internal.ads.zzdsu (com.google.android.gms.internal.ads.zzdsu)
.class final Lcom/google/android/gms/internal/ads/zzdsu;
.super Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/google/android/gms/internal/ads/zzdsz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdsz;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdsu;->c:Lcom/google/android/gms/internal/ads/zzdsz;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdsu;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdsu;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/ads/LoadAdError;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsu;->c:Lcom/google/android/gms/internal/ads/zzdsz;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdsz;->Ta(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdsu;->b:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzdsz;->Ua(Lcom/google/android/gms/internal/ads/zzdsz;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final bridge synthetic b(Ljava/lang/Object;)V
    .registers 5

    .line 1
    check-cast p1, Lcom/google/android/gms/ads/rewarded/RewardedAd;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsu;->c:Lcom/google/android/gms/internal/ads/zzdsz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdsu;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdsu;->b:Ljava/lang/String;

    .line 2
    invoke-virtual {v0, v1, p1, v2}, Lcom/google/android/gms/internal/ads/zzdsz;->Wa(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
