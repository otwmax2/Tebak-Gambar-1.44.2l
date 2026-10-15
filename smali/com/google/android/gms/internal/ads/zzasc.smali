###### Class com.google.android.gms.internal.ads.zzasc (com.google.android.gms.internal.ads.zzasc)
.class public final Lcom/google/android/gms/internal/ads/zzasc;
.super Lcom/google/android/gms/internal/ads/zzasm;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private i:Ljava/util/List;

.field private final j:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzaqx;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzamv;IILandroid/content/Context;)V
    .registers 15

    const-string v2, "CRusF084WLXlYQUHrYrs2r/R+2VKdiClv0NdEd7QrkclQLbsoBgPD6jF9jLeUeO0"

    const-string v3, "2PenHGVoRtCO3QQhfYSZVJz6AfJrwJ5fA2DWAmwbKY4="

    const/16 v6, 0x1f

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move v5, p5

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzasm;-><init>(Lcom/google/android/gms/internal/ads/zzaqx;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzamv;II)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzasc;->i:Ljava/util/List;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzasc;->j:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected final a()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzasm;->e:Lcom/google/android/gms/internal/ads/zzamv;

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzamv;->M(J)Lcom/google/android/gms/internal/ads/zzamv;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzasm;->e:Lcom/google/android/gms/internal/ads/zzamv;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzamv;->H(J)Lcom/google/android/gms/internal/ads/zzamv;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzasc;->j:Landroid/content/Context;

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzasm;->b:Lcom/google/android/gms/internal/ads/zzaqx;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaqx;->b()Landroid/content/Context;

    move-result-object v0

    :cond_16
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzasc;->i:Ljava/util/List;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_2b

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzasm;->f:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    new-array v5, v3, [Ljava/lang/Object;

    aput-object v0, v5, v2

    .line 4
    invoke-virtual {v1, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzasc;->i:Ljava/util/List;

    :cond_2b
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzasc;->i:Ljava/util/List;

    if-eqz v0, :cond_60

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_60

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzasm;->e:Lcom/google/android/gms/internal/ads/zzamv;

    .line 6
    monitor-enter v0

    :try_start_39
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzasm;->e:Lcom/google/android/gms/internal/ads/zzamv;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzasc;->i:Ljava/util/List;

    .line 7
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/google/android/gms/internal/ads/zzamv;->M(J)Lcom/google/android/gms/internal/ads/zzamv;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzasm;->e:Lcom/google/android/gms/internal/ads/zzamv;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzasc;->i:Ljava/util/List;

    .line 8
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzamv;->H(J)Lcom/google/android/gms/internal/ads/zzamv;

    .line 9
    monitor-exit v0

    return-void

    :catchall_5d
    move-exception v1

    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_39 .. :try_end_5f} :catchall_5d

    throw v1

    :cond_60
    return-void
.end method
