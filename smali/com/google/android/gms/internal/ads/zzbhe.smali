###### Class com.google.android.gms.internal.ads.zzbhe (com.google.android.gms.internal.ads.zzbhe)
.class final Lcom/google/android/gms/internal/ads/zzbhe;
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

    :try_start_2
    const-string v0, "enabled"

    .line 2
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-string v0, "true"

    .line 3
    invoke-static {v0, p2}, Lcom/google/android/gms/internal/ads/zzfnb;->c(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    const-string v0, "false"

    invoke-static {v0, p2}, Lcom/google/android/gms/internal/ads/zzfnb;->c(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_1c

    :cond_1b
    return-void

    .line 4
    :cond_1c
    :goto_1c
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcei;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfkw;->j(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzfkw;

    move-result-object p1

    .line 5
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzfkw;->n(Z)V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2b} :catch_2c

    return-void

    :catch_2c
    move-exception p1

    .line 6
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->q()Lcom/google/android/gms/internal/ads/zzbyj;

    move-result-object p2

    const-string v0, "DefaultGmsgHandlers.SetPaidv2PersonalizationEnabled"

    .line 7
    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/internal/ads/zzbyj;->u(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method
