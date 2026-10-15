###### Class com.google.android.gms.internal.ads.zzasg (com.google.android.gms.internal.ads.zzasg)
.class public final Lcom/google/android/gms/internal/ads/zzasg;
.super Lcom/google/android/gms/internal/ads/zzasm;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final i:Lcom/google/android/gms/internal/ads/zzarf;

.field private j:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzaqx;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzamv;IILcom/google/android/gms/internal/ads/zzarf;)V
    .registers 15

    const-string v2, "5go+5dJzPwtL428hPcvMvoz2IsnUZf/hKfz19p3YdYFOxVa6hNCHvBHHDAKylvFa"

    const-string v3, "8BESx6lpu/rT8vpssHW7TVG8DbeYQulEHs4g7WxmlH0="

    const/16 v6, 0x35

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move v5, p5

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzasm;-><init>(Lcom/google/android/gms/internal/ads/zzaqx;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzamv;II)V

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzasg;->i:Lcom/google/android/gms/internal/ads/zzarf;

    if-eqz p7, :cond_17

    .line 2
    invoke-virtual {p7}, Lcom/google/android/gms/internal/ads/zzarf;->a()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzasg;->j:J

    :cond_17
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
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzasg;->i:Lcom/google/android/gms/internal/ads/zzarf;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzasm;->e:Lcom/google/android/gms/internal/ads/zzamv;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzasm;->f:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/zzasg;->j:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzamv;->E(J)Lcom/google/android/gms/internal/ads/zzamv;

    :cond_22
    return-void
.end method
