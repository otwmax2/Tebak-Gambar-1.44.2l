###### Class com.google.android.gms.internal.ads.zzbhq (com.google.android.gms.internal.ads.zzbhq)
.class public final Lcom/google/android/gms/internal/ads/zzbhq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbhp;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzbhr;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbhr;[B)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbhq;->a:Lcom/google/android/gms/internal/ads/zzbhr;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/util/Map;)V
    .registers 8

    const-string v0, "blurRadius"

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzcei;

    const-string v1, "transparentBackground"

    .line 2
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "blur"

    .line 3
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    .line 4
    :try_start_1b
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_32

    .line 5
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3
    :try_end_2b
    .catch Ljava/lang/NumberFormatException; {:try_start_1b .. :try_end_2b} :catch_2c

    goto :goto_32

    :catch_2c
    move-exception p2

    const-string v0, "Fail to parse float"

    .line 6
    invoke-static {v0, p2}, Lcom/google/android/gms/internal/ads/zzbza;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7
    :cond_32
    :goto_32
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbhq;->a:Lcom/google/android/gms/internal/ads/zzbhr;

    .line 8
    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/ads/zzbhr;->c(Z)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbhq;->a:Lcom/google/android/gms/internal/ads/zzbhr;

    .line 9
    invoke-virtual {p2, v2, v3}, Lcom/google/android/gms/internal/ads/zzbhr;->b(ZF)V

    .line 10
    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/ads/zzcei;->R(Z)V

    return-void
.end method
