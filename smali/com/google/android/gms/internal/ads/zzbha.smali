###### Class com.google.android.gms.internal.ads.zzbha (com.google.android.gms.internal.ads.zzbha)
.class final Lcom/google/android/gms/internal/ads/zzbha;
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
.method public final synthetic a(Ljava/lang/Object;Ljava/util/Map;)V
    .registers 3

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzcei;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->l()Lcom/google/android/gms/ads/internal/overlay/zzw;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/overlay/zzw;->g()V

    return-void
.end method
