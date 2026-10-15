###### Class com.google.android.gms.internal.ads.zzbgy (com.google.android.gms.internal.ads.zzbgy)
.class final Lcom/google/android/gms/internal/ads/zzbgy;
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
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->l()Lcom/google/android/gms/ads/internal/overlay/zzw;

    move-result-object p2

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcei;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/ads/internal/overlay/zzw;->a(Lcom/google/android/gms/internal/ads/zzcei;Landroid/content/Context;)V

    return-void
.end method
