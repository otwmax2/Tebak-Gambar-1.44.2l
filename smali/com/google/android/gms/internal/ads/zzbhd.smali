###### Class com.google.android.gms.internal.ads.zzbhd (com.google.android.gms.internal.ads.zzbhd)
.class final Lcom/google/android/gms/internal/ads/zzbhd;
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
    :try_start_2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcei;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzfkv;->k(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzfkv;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzfkv;->l()V

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcei;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfkw;->j(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzfkw;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfkw;->k()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_18} :catch_19

    return-void

    :catch_19
    move-exception p1

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->q()Lcom/google/android/gms/internal/ads/zzbyj;

    move-result-object p2

    const-string v0, "DefaultGmsgHandlers.ResetPaid"

    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/internal/ads/zzbyj;->u(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method
