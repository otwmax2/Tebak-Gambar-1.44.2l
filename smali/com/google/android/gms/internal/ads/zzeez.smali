###### Class com.google.android.gms.internal.ads.zzeez (com.google.android.gms.internal.ads.zzeez)
.class public final Lcom/google/android/gms/internal/ads/zzeez;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeav;


# instance fields
.field private final a:Ljava/util/Map;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final b:Lcom/google/android/gms/internal/ads/zzdnd;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdnd;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzeez;->a:Ljava/util/Map;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeez;->b:Lcom/google/android/gms/internal/ads/zzdnd;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/zzeaw;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzezc;
        }
    .end annotation

    .line 1
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeez;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzeaw;

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeez;->b:Lcom/google/android/gms/internal/ads/zzdnd;

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdnd;->c(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/zzezs;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzeaw;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzecr;

    .line 3
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzecr;-><init>()V

    invoke-direct {v0, p2, v1, p1}, Lcom/google/android/gms/internal/ads/zzeaw;-><init>(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzcvy;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzeez;->a:Ljava/util/Map;

    .line 4
    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_20
    monitor-exit p0

    return-object v0

    :catchall_22
    move-exception p1

    monitor-exit p0
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_22

    throw p1
.end method
