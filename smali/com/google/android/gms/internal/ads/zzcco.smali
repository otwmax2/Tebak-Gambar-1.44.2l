###### Class com.google.android.gms.internal.ads.zzcco (com.google.android.gms.internal.ads.zzcco)
.class final Lcom/google/android/gms/internal/ads/zzcco;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic o:Ljava/lang/String;

.field final synthetic p:Ljava/lang/String;

.field final synthetic q:I

.field final synthetic r:I

.field final synthetic s:Lcom/google/android/gms/internal/ads/zzccu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzccu;Ljava/lang/String;Ljava/lang/String;IIZ)V
    .registers 7

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcco;->s:Lcom/google/android/gms/internal/ads/zzccu;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcco;->o:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcco;->p:Ljava/lang/String;

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzcco;->q:I

    iput p5, p0, Lcom/google/android/gms/internal/ads/zzcco;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "event"

    const-string v2, "precacheProgress"

    .line 2
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcco;->o:Ljava/lang/String;

    const-string v2, "src"

    .line 3
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcco;->p:Ljava/lang/String;

    const-string v2, "cachedSrc"

    .line 4
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzcco;->q:I

    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "bytesLoaded"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzcco;->r:I

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "totalBytes"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "cacheReady"

    const-string v2, "0"

    .line 7
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcco;->s:Lcom/google/android/gms/internal/ads/zzccu;

    const-string v2, "onPrecacheEvent"

    .line 8
    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzccu;->f(Lcom/google/android/gms/internal/ads/zzccu;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
