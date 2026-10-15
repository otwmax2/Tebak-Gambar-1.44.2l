###### Class com.google.android.gms.internal.ads.zzari (com.google.android.gms.internal.ads.zzari)
.class public final Lcom/google/android/gms/internal/ads/zzari;
.super Lcom/google/android/gms/internal/ads/zzasm;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final i:Landroid/app/Activity;

.field private final j:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzaqx;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzamv;IILandroid/view/View;Landroid/app/Activity;)V
    .registers 16

    const-string v2, "igtIy1RPdtSwwFM0MzyB8nIIZ5v2CDGgVI3q8yVZqtR6IDXyW0WRS0Qe3gwz+vAY"

    const-string v3, "frdByYsbmru5qm4CvqXIK0tqT/G3yjsT+PIiwI69Mdg="

    const/16 v6, 0x3e

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move v5, p5

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzasm;-><init>(Lcom/google/android/gms/internal/ads/zzaqx;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzamv;II)V

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzari;->j:Landroid/view/View;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzari;->i:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method protected final a()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzari;->j:Landroid/view/View;

    if-nez v0, :cond_5

    return-void

    :cond_5
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbar;->i2:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzasm;->f:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzari;->j:Landroid/view/View;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzari;->i:Landroid/app/Activity;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    .line 4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v7, 0x2

    aput-object v4, v3, v7

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzasm;->e:Lcom/google/android/gms/internal/ads/zzamv;

    .line 5
    monitor-enter v2

    :try_start_35
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzasm;->e:Lcom/google/android/gms/internal/ads/zzamv;

    .line 6
    aget-object v4, v1, v5

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzamv;->b0(J)Lcom/google/android/gms/internal/ads/zzamv;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzasm;->e:Lcom/google/android/gms/internal/ads/zzamv;

    .line 7
    aget-object v4, v1, v6

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzamv;->d0(J)Lcom/google/android/gms/internal/ads/zzamv;

    if-eqz v0, :cond_5a

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzasm;->e:Lcom/google/android/gms/internal/ads/zzamv;

    .line 8
    aget-object v1, v1, v7

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzamv;->c0(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzamv;

    .line 9
    :cond_5a
    monitor-exit v2

    return-void

    :catchall_5c
    move-exception v0

    monitor-exit v2
    :try_end_5e
    .catchall {:try_start_35 .. :try_end_5e} :catchall_5c

    throw v0
.end method
