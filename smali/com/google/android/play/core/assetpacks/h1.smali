###### Class com.google.android.play.core.assetpacks.h1 (com.google.android.play.core.assetpacks.h1)
.class final Lcom/google/android/play/core/assetpacks/h1;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.2"


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/play/core/assetpacks/h1;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method final declared-synchronized a(Ljava/lang/String;)D
    .registers 4

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/h1;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_15

    if-nez p1, :cond_f

    const-wide/16 v0, 0x0

    monitor-exit p0

    return-wide v0

    .line 2
    :cond_f
    :try_start_f
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0
    :try_end_13
    .catchall {:try_start_f .. :try_end_13} :catchall_15

    monitor-exit p0

    return-wide v0

    :catchall_15
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized b(Ljava/lang/String;Lcom/google/android/play/core/assetpacks/y1;)D
    .registers 7

    monitor-enter p0

    .line 1
    :try_start_1
    move-object v0, p2

    check-cast v0, Lcom/google/android/play/core/assetpacks/x0;

    iget v0, v0, Lcom/google/android/play/core/assetpacks/x0;->h:I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_21

    int-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v0, v2

    :try_start_d
    check-cast p2, Lcom/google/android/play/core/assetpacks/x0;

    iget p2, p2, Lcom/google/android/play/core/assetpacks/x0;->i:I
    :try_end_11
    .catchall {:try_start_d .. :try_end_11} :catchall_21

    int-to-double v2, p2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    :try_start_16
    iget-object p2, p0, Lcom/google/android/play/core/assetpacks/h1;->a:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {p2, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1f
    .catchall {:try_start_16 .. :try_end_1f} :catchall_21

    monitor-exit p0

    return-wide v0

    :catchall_21
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized c(Ljava/lang/String;)V
    .registers 5

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/h1;->a:Ljava/util/Map;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    monitor-exit p0

    return-void

    :catchall_e
    move-exception p1

    monitor-exit p0

    throw p1
.end method
