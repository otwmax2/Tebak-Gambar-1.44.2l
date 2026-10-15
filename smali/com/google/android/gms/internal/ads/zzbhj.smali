###### Class com.google.android.gms.internal.ads.zzbhj (com.google.android.gms.internal.ads.zzbhj)
.class final Lcom/google/android/gms/internal/ads/zzbhj;
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
    .registers 3

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzcei;

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcei;->s()Lcom/google/android/gms/internal/ads/zzbdk;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbdk;->a()V

    :cond_b
    return-void
.end method
