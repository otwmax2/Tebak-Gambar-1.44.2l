###### Class com.google.android.gms.internal.ads.zzbmq (com.google.android.gms.internal.ads.zzbmq)
.class final Lcom/google/android/gms/internal/ads/zzbmq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbic;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzbzs;

.field final synthetic b:Lcom/google/android/gms/internal/ads/zzbmr;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbmr;Lcom/google/android/gms/internal/ads/zzbzs;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbmq;->b:Lcom/google/android/gms/internal/ads/zzbmr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbmq;->a:Lcom/google/android/gms/internal/ads/zzbzs;

    return-void
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;)V
    .registers 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbmq;->a:Lcom/google/android/gms/internal/ads/zzbzs;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbzs;->c(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_5} :catch_c
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbmq;->a:Lcom/google/android/gms/internal/ads/zzbzs;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbzs;->d(Ljava/lang/Throwable;)Z

    :catch_c
    return-void
.end method

.method public final o(Ljava/lang/String;)V
    .registers 4

    if-nez p1, :cond_d

    .line 1
    :try_start_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbmq;->a:Lcom/google/android/gms/internal/ads/zzbzs;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzblu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzblu;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzbzs;->d(Ljava/lang/Throwable;)Z

    return-void

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbmq;->a:Lcom/google/android/gms/internal/ads/zzbzs;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzblu;

    .line 2
    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzblu;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbzs;->d(Ljava/lang/Throwable;)Z
    :try_end_17
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_17} :catch_17

    :catch_17
    return-void
.end method
