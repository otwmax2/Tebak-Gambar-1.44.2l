###### Class com.google.android.gms.internal.ads.zzars (com.google.android.gms.internal.ads.zzars)
.class public final Lcom/google/android/gms/internal/ads/zzars;
.super Lcom/google/android/gms/internal/ads/zzasm;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final i:Lcom/google/android/gms/internal/ads/zzaqy;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzaqx;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzamv;IILcom/google/android/gms/internal/ads/zzaqy;)V
    .registers 15

    const-string v2, "WiBvNElQIWLcD1MAWzkQBcjrDQoEuYCN1R/XT/Sg3LhVQ2iulZRZfofRQLig8S+e"

    const-string v3, "bmivrcLZaHzijOhh62Orf3BoYYHHdZV06MDdRRTWkIM="

    const/16 v6, 0x55

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move v5, p5

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzasm;-><init>(Lcom/google/android/gms/internal/ads/zzaqx;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzamv;II)V

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzars;->i:Lcom/google/android/gms/internal/ads/zzaqy;

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
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzasm;->f:Ljava/lang/reflect/Method;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzars;->i:Lcom/google/android/gms/internal/ads/zzaqy;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzaqy;->d()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzars;->i:Lcom/google/android/gms/internal/ads/zzaqy;

    .line 2
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzaqy;->h()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzars;->i:Lcom/google/android/gms/internal/ads/zzaqy;

    .line 3
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzaqy;->b()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzars;->i:Lcom/google/android/gms/internal/ads/zzaqy;

    .line 4
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzaqy;->f()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v5, 0x3

    aput-object v2, v1, v5

    const/4 v2, 0x0

    .line 5
    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzasm;->e:Lcom/google/android/gms/internal/ads/zzamv;

    .line 6
    monitor-enter v1

    :try_start_43
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzasm;->e:Lcom/google/android/gms/internal/ads/zzamv;

    .line 7
    aget-wide v5, v0, v3

    invoke-virtual {v2, v5, v6}, Lcom/google/android/gms/internal/ads/zzamv;->v0(J)Lcom/google/android/gms/internal/ads/zzamv;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzasm;->e:Lcom/google/android/gms/internal/ads/zzamv;

    .line 8
    aget-wide v3, v0, v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzamv;->u0(J)Lcom/google/android/gms/internal/ads/zzamv;

    .line 9
    monitor-exit v1

    return-void

    :catchall_53
    move-exception v0

    monitor-exit v1
    :try_end_55
    .catchall {:try_start_43 .. :try_end_55} :catchall_53

    throw v0
.end method
