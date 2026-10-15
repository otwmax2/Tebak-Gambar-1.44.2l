###### Class com.google.android.gms.internal.ads.zzarq (com.google.android.gms.internal.ads.zzarq)
.class public final Lcom/google/android/gms/internal/ads/zzarq;
.super Lcom/google/android/gms/internal/ads/zzasm;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzaqx;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzamv;II)V
    .registers 14

    const-string v2, "uz1YArq5cHS8AYJUDc1zzIdIMbHyJKwb7tfYne2XDSTiUe1d6tP4aZb4XhmiO5Pa"

    const-string v3, "D14sOPs9bJ6lVOYt2Sp9xUGRfFtxk1j4Rj4Ydr//Mak="

    const/16 v6, 0x18

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move v5, p5

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzasm;-><init>(Lcom/google/android/gms/internal/ads/zzaqx;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzamv;II)V

    return-void
.end method

.method private final c()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzasm;->b:Lcom/google/android/gms/internal/ads/zzaqx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaqx;->h()Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 2
    :cond_9
    :try_start_9
    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->b()Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzarb;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_33

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzasm;->e:Lcom/google/android/gms/internal/ads/zzamv;

    .line 4
    monitor-enter v2
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_1a} :catch_33

    :try_start_1a
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzasm;->e:Lcom/google/android/gms/internal/ads/zzamv;

    .line 5
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzamv;->s0(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzamv;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzasm;->e:Lcom/google/android/gms/internal/ads/zzamv;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->b()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzamv;->r0(Z)Lcom/google/android/gms/internal/ads/zzamv;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzasm;->e:Lcom/google/android/gms/internal/ads/zzamv;

    const/4 v1, 0x6

    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzamv;->S(I)Lcom/google/android/gms/internal/ads/zzamv;

    .line 8
    monitor-exit v2

    return-void

    :catchall_30
    move-exception v0

    monitor-exit v2
    :try_end_32
    .catchall {:try_start_1a .. :try_end_32} :catchall_30

    :try_start_32
    throw v0
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_33} :catch_33

    :catch_33
    :cond_33
    return-void
.end method


# virtual methods
.method protected final a()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzasm;->b:Lcom/google/android/gms/internal/ads/zzaqx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaqx;->q()Z

    move-result v0

    if-nez v0, :cond_2a

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzasm;->e:Lcom/google/android/gms/internal/ads/zzamv;

    .line 2
    monitor-enter v0

    :try_start_b
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzasm;->e:Lcom/google/android/gms/internal/ads/zzamv;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzasm;->f:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzasm;->b:Lcom/google/android/gms/internal/ads/zzaqx;

    .line 3
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzaqx;->b()Landroid/content/Context;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzamv;->s0(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzamv;

    .line 5
    monitor-exit v0

    return-void

    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_b .. :try_end_29} :catchall_27

    throw v1

    .line 6
    :cond_2a
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzarq;->c()V

    return-void
.end method

.method public final b()Ljava/lang/Void;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzasm;->b:Lcom/google/android/gms/internal/ads/zzaqx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaqx;->r()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    .line 2
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzasm;->b()Ljava/lang/Void;

    return-object v1

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzasm;->b:Lcom/google/android/gms/internal/ads/zzaqx;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaqx;->q()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzarq;->c()V

    :cond_18
    return-object v1
.end method

.method public final bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzasm;->b()Ljava/lang/Void;

    const/4 v0, 0x0

    return-object v0
.end method
