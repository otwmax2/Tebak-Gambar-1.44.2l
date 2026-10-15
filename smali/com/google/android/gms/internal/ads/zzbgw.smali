###### Class com.google.android.gms.internal.ads.zzbgw (com.google.android.gms.internal.ads.zzbgw)
.class final Lcom/google/android/gms/internal/ads/zzbgw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbhp;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/util/Map;)V
    .registers 4

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzcei;

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcei;->s()Lcom/google/android/gms/internal/ads/zzbdk;

    move-result-object p2

    const-string v0, "nativeAdViewSignalsReady"

    if-eqz p2, :cond_14

    .line 3
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzbdk;->zza()Lorg/json/JSONObject;

    move-result-object p2

    if-eqz p2, :cond_14

    .line 4
    invoke-interface {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzbki;->w(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    .line 5
    :cond_14
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    invoke-interface {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzbki;->w(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method
