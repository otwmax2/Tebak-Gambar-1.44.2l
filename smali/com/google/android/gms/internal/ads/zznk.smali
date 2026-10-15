###### Class com.google.android.gms.internal.ads.zznk (com.google.android.gms.internal.ads.zznk)
.class public final Lcom/google/android/gms/internal/ads/zznk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzle;
.implements Lcom/google/android/gms/internal/ads/zznl;


# instance fields
.field private A:I

.field private B:Lcom/google/android/gms/internal/ads/zzbw;

.field private C:Lcom/google/android/gms/internal/ads/zznj;

.field private D:Lcom/google/android/gms/internal/ads/zznj;

.field private E:Lcom/google/android/gms/internal/ads/zznj;

.field private F:Lcom/google/android/gms/internal/ads/zzaf;

.field private G:Lcom/google/android/gms/internal/ads/zzaf;

.field private H:Lcom/google/android/gms/internal/ads/zzaf;

.field private I:Z

.field private J:Z

.field private K:I

.field private L:I

.field private M:I

.field private N:Z

.field private final o:Landroid/content/Context;

.field private final p:Lcom/google/android/gms/internal/ads/zznm;

.field private final q:Landroid/media/metrics/PlaybackSession;

.field private final r:J

.field private final s:Lcom/google/android/gms/internal/ads/zzcm;

.field private final t:Lcom/google/android/gms/internal/ads/zzck;

.field private final u:Ljava/util/HashMap;

.field private final v:Ljava/util/HashMap;

.field private w:Ljava/lang/String;

.field private x:Landroid/media/metrics/PlaybackMetrics$Builder;

.field private y:I

.field private z:I


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/media/metrics/PlaybackSession;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zznk;->o:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zznk;->q:Landroid/media/metrics/PlaybackSession;

    .line 2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzcm;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzcm;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zznk;->s:Lcom/google/android/gms/internal/ads/zzcm;

    .line 3
    new-instance p1, Lcom/google/android/gms/internal/ads/zzck;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzck;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zznk;->t:Lcom/google/android/gms/internal/ads/zzck;

    new-instance p1, Ljava/util/HashMap;

    .line 4
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zznk;->v:Ljava/util/HashMap;

    new-instance p1, Ljava/util/HashMap;

    .line 5
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zznk;->u:Ljava/util/HashMap;

    .line 6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zznk;->r:J

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zznk;->z:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zznk;->A:I

    .line 7
    new-instance p1, Lcom/google/android/gms/internal/ads/zzni;

    sget-object p2, Lcom/google/android/gms/internal/ads/zzni;->h:Lcom/google/android/gms/internal/ads/zzfok;

    .line 8
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzni;-><init>(Lcom/google/android/gms/internal/ads/zzfok;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zznk;->p:Lcom/google/android/gms/internal/ads/zznm;

    .line 9
    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/ads/zznm;->b(Lcom/google/android/gms/internal/ads/zznl;)V

    return-void
.end method

.method public static q(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zznk;
    .registers 3

    const-string v0, "media_metrics"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/metrics/MediaMetricsManager;

    if-nez v0, :cond_c

    const/4 p0, 0x0

    return-object p0

    :cond_c
    new-instance v1, Lcom/google/android/gms/internal/ads/zznk;

    .line 2
    invoke-virtual {v0}, Landroid/media/metrics/MediaMetricsManager;->createPlaybackSession()Landroid/media/metrics/PlaybackSession;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/zznk;-><init>(Landroid/content/Context;Landroid/media/metrics/PlaybackSession;)V

    return-object v1
.end method

.method private static r(I)I
    .registers 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SwitchIntDef"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzew;->W(I)I

    move-result p0

    packed-switch p0, :pswitch_data_16

    const/16 p0, 0x1b

    return p0

    :pswitch_a
    const/16 p0, 0x1a

    return p0

    :pswitch_d
    const/16 p0, 0x19

    return p0

    :pswitch_10
    const/16 p0, 0x1c

    return p0

    :pswitch_13
    const/16 p0, 0x18

    return p0

    :pswitch_data_16
    .packed-switch 0x1772
        :pswitch_13
        :pswitch_10
        :pswitch_d
        :pswitch_a
    .end packed-switch
.end method

.method private final s()V
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zznk;->x:Landroid/media/metrics/PlaybackMetrics$Builder;

    const/4 v1, 0x0

    if-eqz v0, :cond_69

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zznk;->N:Z

    if-eqz v2, :cond_69

    iget v2, p0, Lcom/google/android/gms/internal/ads/zznk;->M:I

    invoke-virtual {v0, v2}, Landroid/media/metrics/PlaybackMetrics$Builder;->setAudioUnderrunCount(I)Landroid/media/metrics/PlaybackMetrics$Builder;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zznk;->x:Landroid/media/metrics/PlaybackMetrics$Builder;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zznk;->K:I

    .line 2
    invoke-virtual {v0, v2}, Landroid/media/metrics/PlaybackMetrics$Builder;->setVideoFramesDropped(I)Landroid/media/metrics/PlaybackMetrics$Builder;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zznk;->x:Landroid/media/metrics/PlaybackMetrics$Builder;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zznk;->L:I

    .line 3
    invoke-virtual {v0, v2}, Landroid/media/metrics/PlaybackMetrics$Builder;->setVideoFramesPlayed(I)Landroid/media/metrics/PlaybackMetrics$Builder;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zznk;->u:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zznk;->w:Ljava/lang/String;

    .line 4
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zznk;->x:Landroid/media/metrics/PlaybackMetrics$Builder;

    const-wide/16 v3, 0x0

    if-nez v0, :cond_2e

    move-wide v5, v3

    goto :goto_32

    .line 5
    :cond_2e
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    :goto_32
    invoke-virtual {v2, v5, v6}, Landroid/media/metrics/PlaybackMetrics$Builder;->setNetworkTransferDurationMillis(J)Landroid/media/metrics/PlaybackMetrics$Builder;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zznk;->v:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zznk;->w:Ljava/lang/String;

    .line 6
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zznk;->x:Landroid/media/metrics/PlaybackMetrics$Builder;

    if-nez v0, :cond_45

    move-wide v5, v3

    goto :goto_49

    .line 7
    :cond_45
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    :goto_49
    invoke-virtual {v2, v5, v6}, Landroid/media/metrics/PlaybackMetrics$Builder;->setNetworkBytesRead(J)Landroid/media/metrics/PlaybackMetrics$Builder;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zznk;->x:Landroid/media/metrics/PlaybackMetrics$Builder;

    if-eqz v0, :cond_5a

    .line 8
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v0, v5, v3

    if-lez v0, :cond_5a

    const/4 v0, 0x1

    goto :goto_5b

    :cond_5a
    const/4 v0, 0x0

    .line 9
    :goto_5b
    invoke-virtual {v2, v0}, Landroid/media/metrics/PlaybackMetrics$Builder;->setStreamSource(I)Landroid/media/metrics/PlaybackMetrics$Builder;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zznk;->q:Landroid/media/metrics/PlaybackSession;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zznk;->x:Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 10
    invoke-virtual {v2}, Landroid/media/metrics/PlaybackMetrics$Builder;->build()Landroid/media/metrics/PlaybackMetrics;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/media/metrics/PlaybackSession;->reportPlaybackMetrics(Landroid/media/metrics/PlaybackMetrics;)V

    :cond_69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zznk;->x:Landroid/media/metrics/PlaybackMetrics$Builder;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zznk;->w:Ljava/lang/String;

    iput v1, p0, Lcom/google/android/gms/internal/ads/zznk;->M:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/zznk;->K:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/zznk;->L:I

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zznk;->F:Lcom/google/android/gms/internal/ads/zzaf;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zznk;->G:Lcom/google/android/gms/internal/ads/zzaf;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zznk;->H:Lcom/google/android/gms/internal/ads/zzaf;

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zznk;->N:Z

    return-void
.end method

.method private final t(JLcom/google/android/gms/internal/ads/zzaf;I)V
    .registers 11

    .line 1
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zznk;->G:Lcom/google/android/gms/internal/ads/zzaf;

    invoke-static {p4, p3}, Lcom/google/android/gms/internal/ads/zzew;->u(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_9

    return-void

    :cond_9
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zznk;->G:Lcom/google/android/gms/internal/ads/zzaf;

    if-nez p4, :cond_10

    const/4 p4, 0x1

    const/4 v5, 0x1

    goto :goto_12

    :cond_10
    const/4 p4, 0x0

    const/4 v5, 0x0

    :goto_12
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zznk;->G:Lcom/google/android/gms/internal/ads/zzaf;

    const/4 v1, 0x0

    move-object v0, p0

    move-wide v2, p1

    move-object v4, p3

    .line 2
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zznk;->x(IJLcom/google/android/gms/internal/ads/zzaf;I)V

    return-void
.end method

.method private final u(JLcom/google/android/gms/internal/ads/zzaf;I)V
    .registers 11

    .line 1
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zznk;->H:Lcom/google/android/gms/internal/ads/zzaf;

    invoke-static {p4, p3}, Lcom/google/android/gms/internal/ads/zzew;->u(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_9

    return-void

    :cond_9
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zznk;->H:Lcom/google/android/gms/internal/ads/zzaf;

    if-nez p4, :cond_10

    const/4 p4, 0x1

    const/4 v5, 0x1

    goto :goto_12

    :cond_10
    const/4 p4, 0x0

    const/4 v5, 0x0

    :goto_12
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zznk;->H:Lcom/google/android/gms/internal/ads/zzaf;

    const/4 v1, 0x2

    move-object v0, p0

    move-wide v2, p1

    move-object v4, p3

    .line 2
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zznk;->x(IJLcom/google/android/gms/internal/ads/zzaf;I)V

    return-void
.end method

.method private final v(Lcom/google/android/gms/internal/ads/zzcn;Lcom/google/android/gms/internal/ads/zzss;)V
    .registers 10
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "metricsBuilder"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zznk;->x:Landroid/media/metrics/PlaybackMetrics$Builder;

    if-nez p2, :cond_5

    return-void

    :cond_5
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzbn;->a:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzcn;->a(Ljava/lang/Object;)I

    move-result p2

    const/4 v1, -0x1

    if-ne p2, v1, :cond_f

    return-void

    :cond_f
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zznk;->t:Lcom/google/android/gms/internal/ads/zzck;

    const/4 v2, 0x0

    .line 2
    invoke-virtual {p1, p2, v1, v2}, Lcom/google/android/gms/internal/ads/zzcn;->d(ILcom/google/android/gms/internal/ads/zzck;Z)Lcom/google/android/gms/internal/ads/zzck;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zznk;->t:Lcom/google/android/gms/internal/ads/zzck;

    iget p2, p2, Lcom/google/android/gms/internal/ads/zzck;->c:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zznk;->s:Lcom/google/android/gms/internal/ads/zzcm;

    const-wide/16 v3, 0x0

    .line 3
    invoke-virtual {p1, p2, v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzcn;->e(ILcom/google/android/gms/internal/ads/zzcm;J)Lcom/google/android/gms/internal/ads/zzcm;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zznk;->s:Lcom/google/android/gms/internal/ads/zzcm;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzcm;->b:Lcom/google/android/gms/internal/ads/zzbg;

    .line 4
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzbg;->b:Lcom/google/android/gms/internal/ads/zzay;

    const/4 p2, 0x2

    const/4 v1, 0x1

    if-nez p1, :cond_2b

    goto :goto_3e

    .line 5
    :cond_2b
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzay;->a:Landroid/net/Uri;

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzew;->a0(Landroid/net/Uri;)I

    move-result p1

    if-eqz p1, :cond_3d

    if-eq p1, v1, :cond_3b

    if-eq p1, p2, :cond_39

    const/4 v2, 0x1

    goto :goto_3e

    :cond_39
    const/4 v2, 0x4

    goto :goto_3e

    :cond_3b
    const/4 v2, 0x5

    goto :goto_3e

    :cond_3d
    const/4 v2, 0x3

    .line 7
    :goto_3e
    invoke-virtual {v0, v2}, Landroid/media/metrics/PlaybackMetrics$Builder;->setStreamType(I)Landroid/media/metrics/PlaybackMetrics$Builder;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zznk;->s:Lcom/google/android/gms/internal/ads/zzcm;

    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/zzcm;->l:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v2, v4

    if-eqz v6, :cond_67

    iget-boolean v2, p1, Lcom/google/android/gms/internal/ads/zzcm;->j:Z

    if-nez v2, :cond_67

    iget-boolean v2, p1, Lcom/google/android/gms/internal/ads/zzcm;->g:Z

    if-nez v2, :cond_67

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcm;->b()Z

    move-result p1

    if-nez p1, :cond_67

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zznk;->s:Lcom/google/android/gms/internal/ads/zzcm;

    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/zzcm;->l:J

    .line 9
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzew;->k0(J)J

    move-result-wide v2

    .line 10
    invoke-virtual {v0, v2, v3}, Landroid/media/metrics/PlaybackMetrics$Builder;->setMediaDurationMillis(J)Landroid/media/metrics/PlaybackMetrics$Builder;

    :cond_67
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zznk;->s:Lcom/google/android/gms/internal/ads/zzcm;

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcm;->b()Z

    move-result p1

    if-eq v1, p1, :cond_70

    const/4 p2, 0x1

    .line 12
    :cond_70
    invoke-virtual {v0, p2}, Landroid/media/metrics/PlaybackMetrics$Builder;->setPlaybackType(I)Landroid/media/metrics/PlaybackMetrics$Builder;

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zznk;->N:Z

    return-void
.end method

.method private final w(JLcom/google/android/gms/internal/ads/zzaf;I)V
    .registers 11

    .line 1
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zznk;->F:Lcom/google/android/gms/internal/ads/zzaf;

    invoke-static {p4, p3}, Lcom/google/android/gms/internal/ads/zzew;->u(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_9

    return-void

    :cond_9
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zznk;->F:Lcom/google/android/gms/internal/ads/zzaf;

    if-nez p4, :cond_10

    const/4 p4, 0x1

    const/4 v5, 0x1

    goto :goto_12

    :cond_10
    const/4 p4, 0x0

    const/4 v5, 0x0

    :goto_12
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zznk;->F:Lcom/google/android/gms/internal/ads/zzaf;

    const/4 v1, 0x1

    move-object v0, p0

    move-wide v2, p1

    move-object v4, p3

    .line 2
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zznk;->x(IJLcom/google/android/gms/internal/ads/zzaf;I)V

    return-void
.end method

.method private final x(IJLcom/google/android/gms/internal/ads/zzaf;I)V
    .registers 9

    .line 1
    new-instance v0, Landroid/media/metrics/TrackChangeEvent$Builder;

    invoke-direct {v0, p1}, Landroid/media/metrics/TrackChangeEvent$Builder;-><init>(I)V

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zznk;->r:J

    sub-long/2addr p2, v1

    .line 2
    invoke-virtual {v0, p2, p3}, Landroid/media/metrics/TrackChangeEvent$Builder;->setTimeSinceCreatedMillis(J)Landroid/media/metrics/TrackChangeEvent$Builder;

    move-result-object p1

    const/4 p2, 0x0

    const/4 p3, 0x1

    if-eqz p4, :cond_88

    .line 3
    invoke-virtual {p1, p3}, Landroid/media/metrics/TrackChangeEvent$Builder;->setTrackState(I)Landroid/media/metrics/TrackChangeEvent$Builder;

    const/4 v0, 0x2

    if-eq p5, p3, :cond_18

    const/4 p5, 0x1

    goto :goto_19

    :cond_18
    const/4 p5, 0x2

    .line 4
    :goto_19
    invoke-virtual {p1, p5}, Landroid/media/metrics/TrackChangeEvent$Builder;->setTrackChangeReason(I)Landroid/media/metrics/TrackChangeEvent$Builder;

    iget-object p5, p4, Lcom/google/android/gms/internal/ads/zzaf;->k:Ljava/lang/String;

    if-eqz p5, :cond_23

    .line 5
    invoke-virtual {p1, p5}, Landroid/media/metrics/TrackChangeEvent$Builder;->setContainerMimeType(Ljava/lang/String;)Landroid/media/metrics/TrackChangeEvent$Builder;

    :cond_23
    iget-object p5, p4, Lcom/google/android/gms/internal/ads/zzaf;->l:Ljava/lang/String;

    if-eqz p5, :cond_2a

    .line 6
    invoke-virtual {p1, p5}, Landroid/media/metrics/TrackChangeEvent$Builder;->setSampleMimeType(Ljava/lang/String;)Landroid/media/metrics/TrackChangeEvent$Builder;

    :cond_2a
    iget-object p5, p4, Lcom/google/android/gms/internal/ads/zzaf;->i:Ljava/lang/String;

    if-eqz p5, :cond_31

    .line 7
    invoke-virtual {p1, p5}, Landroid/media/metrics/TrackChangeEvent$Builder;->setCodecName(Ljava/lang/String;)Landroid/media/metrics/TrackChangeEvent$Builder;

    :cond_31
    iget p5, p4, Lcom/google/android/gms/internal/ads/zzaf;->h:I

    const/4 v1, -0x1

    if-eq p5, v1, :cond_39

    .line 8
    invoke-virtual {p1, p5}, Landroid/media/metrics/TrackChangeEvent$Builder;->setBitrate(I)Landroid/media/metrics/TrackChangeEvent$Builder;

    :cond_39
    iget p5, p4, Lcom/google/android/gms/internal/ads/zzaf;->q:I

    if-eq p5, v1, :cond_40

    .line 9
    invoke-virtual {p1, p5}, Landroid/media/metrics/TrackChangeEvent$Builder;->setWidth(I)Landroid/media/metrics/TrackChangeEvent$Builder;

    :cond_40
    iget p5, p4, Lcom/google/android/gms/internal/ads/zzaf;->r:I

    if-eq p5, v1, :cond_47

    .line 10
    invoke-virtual {p1, p5}, Landroid/media/metrics/TrackChangeEvent$Builder;->setHeight(I)Landroid/media/metrics/TrackChangeEvent$Builder;

    :cond_47
    iget p5, p4, Lcom/google/android/gms/internal/ads/zzaf;->y:I

    if-eq p5, v1, :cond_4e

    .line 11
    invoke-virtual {p1, p5}, Landroid/media/metrics/TrackChangeEvent$Builder;->setChannelCount(I)Landroid/media/metrics/TrackChangeEvent$Builder;

    :cond_4e
    iget p5, p4, Lcom/google/android/gms/internal/ads/zzaf;->z:I

    if-eq p5, v1, :cond_55

    .line 12
    invoke-virtual {p1, p5}, Landroid/media/metrics/TrackChangeEvent$Builder;->setAudioSampleRate(I)Landroid/media/metrics/TrackChangeEvent$Builder;

    :cond_55
    iget-object p5, p4, Lcom/google/android/gms/internal/ads/zzaf;->c:Ljava/lang/String;

    if-eqz p5, :cond_7c

    const-string v1, "-"

    .line 13
    invoke-static {p5, v1}, Lcom/google/android/gms/internal/ads/zzew;->I(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p5

    .line 14
    aget-object p2, p5, p2

    array-length v1, p5

    if-lt v1, v0, :cond_67

    aget-object p5, p5, p3

    goto :goto_68

    :cond_67
    const/4 p5, 0x0

    :goto_68
    invoke-static {p2, p5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p2

    .line 15
    iget-object p5, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p5, Ljava/lang/String;

    invoke-virtual {p1, p5}, Landroid/media/metrics/TrackChangeEvent$Builder;->setLanguage(Ljava/lang/String;)Landroid/media/metrics/TrackChangeEvent$Builder;

    .line 16
    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz p2, :cond_7c

    .line 17
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/media/metrics/TrackChangeEvent$Builder;->setLanguageRegion(Ljava/lang/String;)Landroid/media/metrics/TrackChangeEvent$Builder;

    :cond_7c
    iget p2, p4, Lcom/google/android/gms/internal/ads/zzaf;->s:F

    const/high16 p4, -0x40800000    # -1.0f

    cmpl-float p4, p2, p4

    if-eqz p4, :cond_8b

    .line 18
    invoke-virtual {p1, p2}, Landroid/media/metrics/TrackChangeEvent$Builder;->setVideoFrameRate(F)Landroid/media/metrics/TrackChangeEvent$Builder;

    goto :goto_8b

    .line 19
    :cond_88
    invoke-virtual {p1, p2}, Landroid/media/metrics/TrackChangeEvent$Builder;->setTrackState(I)Landroid/media/metrics/TrackChangeEvent$Builder;

    .line 20
    :cond_8b
    :goto_8b
    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zznk;->N:Z

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zznk;->q:Landroid/media/metrics/PlaybackSession;

    .line 21
    invoke-virtual {p1}, Landroid/media/metrics/TrackChangeEvent$Builder;->build()Landroid/media/metrics/TrackChangeEvent;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/media/metrics/PlaybackSession;->reportTrackChangeEvent(Landroid/media/metrics/TrackChangeEvent;)V

    return-void
.end method

.method private final y(Lcom/google/android/gms/internal/ads/zznj;)Z
    .registers 3
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNullIf;
        expression = {
            "#1"
        }
        result = true
    .end annotation

    if-eqz p1, :cond_12

    .line 1
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zznj;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zznk;->p:Lcom/google/android/gms/internal/ads/zznm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zznm;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    const/4 p1, 0x1

    return p1

    :cond_12
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public final synthetic a(Lcom/google/android/gms/internal/ads/zzlc;I)V
    .registers 3

    return-void
.end method

.method public final synthetic b(Lcom/google/android/gms/internal/ads/zzlc;IJ)V
    .registers 5

    return-void
.end method

.method public final c(Lcom/google/android/gms/internal/ads/zzlc;Lcom/google/android/gms/internal/ads/zzcf;Lcom/google/android/gms/internal/ads/zzcf;I)V
    .registers 5

    const/4 p1, 0x1

    if-ne p4, p1, :cond_6

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zznk;->I:Z

    const/4 p4, 0x1

    :cond_6
    iput p4, p0, Lcom/google/android/gms/internal/ads/zznk;->y:I

    return-void
.end method

.method public final d(Lcom/google/android/gms/internal/ads/zzlc;Lcom/google/android/gms/internal/ads/zzsj;Lcom/google/android/gms/internal/ads/zzso;Ljava/io/IOException;Z)V
    .registers 6

    return-void
.end method

.method public final e(Lcom/google/android/gms/internal/ads/zzcg;Lcom/google/android/gms/internal/ads/zzld;)V
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 1
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzld;->b()I

    move-result v2

    if-eqz v2, :cond_3ef

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 2
    :goto_c
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzld;->b()I

    move-result v4

    const/16 v5, 0xb

    if-ge v3, v4, :cond_36

    .line 3
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzld;->a(I)I

    move-result v4

    .line 4
    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zzld;->c(I)Lcom/google/android/gms/internal/ads/zzlc;

    move-result-object v6

    if-nez v4, :cond_24

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zznk;->p:Lcom/google/android/gms/internal/ads/zznm;

    .line 5
    invoke-interface {v4, v6}, Lcom/google/android/gms/internal/ads/zznm;->a(Lcom/google/android/gms/internal/ads/zzlc;)V

    goto :goto_33

    :cond_24
    if-ne v4, v5, :cond_2e

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zznk;->p:Lcom/google/android/gms/internal/ads/zznm;

    iget v5, v0, Lcom/google/android/gms/internal/ads/zznk;->y:I

    .line 6
    invoke-interface {v4, v6, v5}, Lcom/google/android/gms/internal/ads/zznm;->c(Lcom/google/android/gms/internal/ads/zzlc;I)V

    goto :goto_33

    :cond_2e
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zznk;->p:Lcom/google/android/gms/internal/ads/zznm;

    .line 7
    invoke-interface {v4, v6}, Lcom/google/android/gms/internal/ads/zznm;->f(Lcom/google/android/gms/internal/ads/zzlc;)V

    :goto_33
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 8
    :cond_36
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 9
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzld;->d(I)Z

    move-result v6

    if-eqz v6, :cond_4f

    .line 10
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzld;->c(I)Lcom/google/android/gms/internal/ads/zzlc;

    move-result-object v6

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zznk;->x:Landroid/media/metrics/PlaybackMetrics$Builder;

    if-eqz v7, :cond_4f

    iget-object v7, v6, Lcom/google/android/gms/internal/ads/zzlc;->b:Lcom/google/android/gms/internal/ads/zzcn;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzlc;->d:Lcom/google/android/gms/internal/ads/zzss;

    .line 11
    invoke-direct {v0, v7, v6}, Lcom/google/android/gms/internal/ads/zznk;->v(Lcom/google/android/gms/internal/ads/zzcn;Lcom/google/android/gms/internal/ads/zzss;)V

    :cond_4f
    const/4 v6, 0x2

    .line 12
    invoke-virtual {v1, v6}, Lcom/google/android/gms/internal/ads/zzld;->d(I)Z

    move-result v7

    const/4 v9, 0x3

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eqz v7, :cond_c6

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zznk;->x:Landroid/media/metrics/PlaybackMetrics$Builder;

    if-eqz v7, :cond_c6

    .line 13
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzcg;->p()Lcom/google/android/gms/internal/ads/zzcy;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzcy;->a()Lcom/google/android/gms/internal/ads/zzfqk;

    move-result-object v7

    .line 14
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v12

    const/4 v13, 0x0

    :goto_6a
    if-ge v13, v12, :cond_8f

    invoke-interface {v7, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    .line 15
    check-cast v14, Lcom/google/android/gms/internal/ads/zzcx;

    const/4 v15, 0x0

    .line 16
    :goto_73
    iget v5, v14, Lcom/google/android/gms/internal/ads/zzcx;->a:I

    add-int/lit8 v5, v13, 0x1

    if-gtz v15, :cond_8b

    .line 17
    invoke-virtual {v14, v15}, Lcom/google/android/gms/internal/ads/zzcx;->d(I)Z

    move-result v5

    if-eqz v5, :cond_88

    .line 18
    invoke-virtual {v14, v15}, Lcom/google/android/gms/internal/ads/zzcx;->b(I)Lcom/google/android/gms/internal/ads/zzaf;

    move-result-object v5

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzaf;->o:Lcom/google/android/gms/internal/ads/zzx;

    if-eqz v5, :cond_88

    goto :goto_90

    :cond_88
    add-int/lit8 v15, v15, 0x1

    goto :goto_73

    :cond_8b
    move v13, v5

    const/16 v5, 0xb

    goto :goto_6a

    :cond_8f
    move-object v5, v10

    :goto_90
    if-eqz v5, :cond_c6

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zznk;->x:Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 19
    sget v12, Lcom/google/android/gms/internal/ads/zzew;->a:I

    const/4 v12, 0x0

    :goto_97
    iget v13, v5, Lcom/google/android/gms/internal/ads/zzx;->r:I

    if-ge v12, v13, :cond_c2

    .line 20
    invoke-virtual {v5, v12}, Lcom/google/android/gms/internal/ads/zzx;->h(I)Lcom/google/android/gms/internal/ads/zzw;

    move-result-object v13

    iget-object v13, v13, Lcom/google/android/gms/internal/ads/zzw;->p:Ljava/util/UUID;

    .line 21
    sget-object v14, Lcom/google/android/gms/internal/ads/zzo;->d:Ljava/util/UUID;

    invoke-virtual {v13, v14}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_ab

    const/4 v5, 0x3

    goto :goto_c3

    .line 22
    :cond_ab
    sget-object v14, Lcom/google/android/gms/internal/ads/zzo;->e:Ljava/util/UUID;

    .line 23
    invoke-virtual {v13, v14}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b5

    const/4 v5, 0x2

    goto :goto_c3

    :cond_b5
    sget-object v14, Lcom/google/android/gms/internal/ads/zzo;->c:Ljava/util/UUID;

    .line 24
    invoke-virtual {v13, v14}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_bf

    const/4 v5, 0x6

    goto :goto_c3

    :cond_bf
    add-int/lit8 v12, v12, 0x1

    goto :goto_97

    :cond_c2
    const/4 v5, 0x1

    .line 25
    :goto_c3
    invoke-virtual {v7, v5}, Landroid/media/metrics/PlaybackMetrics$Builder;->setDrmType(I)Landroid/media/metrics/PlaybackMetrics$Builder;

    :cond_c6
    const/16 v5, 0x3f3

    .line 26
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzld;->d(I)Z

    move-result v5

    if-eqz v5, :cond_d3

    iget v5, v0, Lcom/google/android/gms/internal/ads/zznk;->M:I

    add-int/2addr v5, v11

    iput v5, v0, Lcom/google/android/gms/internal/ads/zznk;->M:I

    :cond_d3
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zznk;->B:Lcom/google/android/gms/internal/ads/zzbw;

    const/16 v16, 0x9

    if-nez v5, :cond_db

    goto/16 :goto_299

    .line 27
    :cond_db
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zznk;->o:Landroid/content/Context;

    iget v8, v5, Lcom/google/android/gms/internal/ads/zzbw;->o:I

    const/16 v12, 0x3e9

    const/16 v17, 0xe

    const/16 v18, 0x23

    const/16 v19, 0x1f

    const/16 v13, 0x15

    const/16 v14, 0x17

    if-ne v8, v12, :cond_f3

    const/16 v17, 0x14

    const/16 v14, 0x14

    goto/16 :goto_273

    .line 28
    :cond_f3
    move-object v8, v5

    check-cast v8, Lcom/google/android/gms/internal/ads/zzhj;

    iget v12, v8, Lcom/google/android/gms/internal/ads/zzhj;->w:I

    if-ne v12, v11, :cond_fc

    const/4 v12, 0x1

    goto :goto_fd

    :cond_fc
    const/4 v12, 0x0

    :goto_fd
    iget v8, v8, Lcom/google/android/gms/internal/ads/zzhj;->A:I

    .line 29
    invoke-virtual {v5}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v15

    .line 30
    invoke-static {v15}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    instance-of v2, v15, Ljava/io/IOException;

    if-eqz v2, :cond_202

    .line 32
    instance-of v2, v15, Lcom/google/android/gms/internal/ads/zzgb;

    if-eqz v2, :cond_115

    .line 33
    check-cast v15, Lcom/google/android/gms/internal/ads/zzgb;

    iget v2, v15, Lcom/google/android/gms/internal/ads/zzgb;->r:I

    const/4 v14, 0x5

    goto/16 :goto_273

    .line 34
    :cond_115
    instance-of v2, v15, Lcom/google/android/gms/internal/ads/zzga;

    if-nez v2, :cond_1fd

    instance-of v2, v15, Lcom/google/android/gms/internal/ads/zzbu;

    if-eqz v2, :cond_11f

    goto/16 :goto_1fd

    .line 35
    :cond_11f
    instance-of v2, v15, Lcom/google/android/gms/internal/ads/zzfz;

    if-nez v2, :cond_1ca

    instance-of v8, v15, Lcom/google/android/gms/internal/ads/zzgj;

    if-eqz v8, :cond_129

    goto/16 :goto_1ca

    .line 36
    :cond_129
    iget v2, v5, Lcom/google/android/gms/internal/ads/zzbw;->o:I

    const/16 v7, 0x3ea

    if-ne v2, v7, :cond_134

    const/4 v2, 0x0

    const/16 v14, 0x15

    goto/16 :goto_273

    .line 37
    :cond_134
    instance-of v2, v15, Lcom/google/android/gms/internal/ads/zzpr;

    if-eqz v2, :cond_192

    .line 38
    invoke-virtual {v15}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    .line 39
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget v7, Lcom/google/android/gms/internal/ads/zzew;->a:I

    if-lt v7, v13, :cond_157

    instance-of v8, v2, Landroid/media/MediaDrm$MediaDrmStateException;

    if-eqz v8, :cond_157

    .line 41
    check-cast v2, Landroid/media/MediaDrm$MediaDrmStateException;

    invoke-virtual {v2}, Landroid/media/MediaDrm$MediaDrmStateException;->getDiagnosticInfo()Ljava/lang/String;

    move-result-object v2

    .line 42
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzew;->X(Ljava/lang/String;)I

    move-result v2

    .line 43
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zznk;->r(I)I

    move-result v17

    goto/16 :goto_26b

    :cond_157
    if-lt v7, v14, :cond_164

    .line 44
    instance-of v7, v2, Landroid/media/MediaDrmResetException;

    if-eqz v7, :cond_164

    const/16 v17, 0x1b

    const/4 v2, 0x0

    const/16 v14, 0x1b

    goto/16 :goto_273

    .line 45
    :cond_164
    instance-of v7, v2, Landroid/media/NotProvisionedException;

    if-eqz v7, :cond_16f

    const/16 v17, 0x18

    const/4 v2, 0x0

    const/16 v14, 0x18

    goto/16 :goto_273

    .line 46
    :cond_16f
    instance-of v7, v2, Landroid/media/DeniedByServerException;

    if-eqz v7, :cond_17a

    const/16 v17, 0x1d

    const/4 v2, 0x0

    const/16 v14, 0x1d

    goto/16 :goto_273

    .line 47
    :cond_17a
    instance-of v7, v2, Lcom/google/android/gms/internal/ads/zzqc;

    if-eqz v7, :cond_180

    goto/16 :goto_21b

    .line 48
    :cond_180
    instance-of v2, v2, Lcom/google/android/gms/internal/ads/zzpp;

    if-eqz v2, :cond_18b

    const/16 v17, 0x1c

    const/4 v2, 0x0

    const/16 v14, 0x1c

    goto/16 :goto_273

    :cond_18b
    const/16 v17, 0x1e

    const/4 v2, 0x0

    const/16 v14, 0x1e

    goto/16 :goto_273

    .line 49
    :cond_192
    instance-of v2, v15, Lcom/google/android/gms/internal/ads/zzfv;

    if-eqz v2, :cond_1c5

    .line 50
    invoke-virtual {v15}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Ljava/io/FileNotFoundException;

    if-eqz v2, :cond_1c5

    .line 51
    invoke-virtual {v15}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    .line 52
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    .line 54
    sget v7, Lcom/google/android/gms/internal/ads/zzew;->a:I

    if-lt v7, v13, :cond_1c0

    instance-of v7, v2, Landroid/system/ErrnoException;

    if-eqz v7, :cond_1c0

    check-cast v2, Landroid/system/ErrnoException;

    iget v2, v2, Landroid/system/ErrnoException;->errno:I

    sget v7, Landroid/system/OsConstants;->EACCES:I

    if-ne v2, v7, :cond_1c0

    const/16 v17, 0x20

    const/4 v2, 0x0

    const/16 v14, 0x20

    goto/16 :goto_273

    :cond_1c0
    const/4 v2, 0x0

    const/16 v14, 0x1f

    goto/16 :goto_273

    :cond_1c5
    const/4 v2, 0x0

    const/16 v14, 0x9

    goto/16 :goto_273

    .line 55
    :cond_1ca
    :goto_1ca
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzel;->b(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzel;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzel;->a()I

    move-result v7

    if-ne v7, v11, :cond_1d8

    const/4 v2, 0x0

    const/4 v14, 0x3

    goto/16 :goto_273

    .line 56
    :cond_1d8
    invoke-virtual {v15}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v7

    .line 57
    instance-of v8, v7, Ljava/net/UnknownHostException;

    if-eqz v8, :cond_1e4

    const/4 v2, 0x0

    const/4 v14, 0x6

    goto/16 :goto_273

    .line 58
    :cond_1e4
    instance-of v7, v7, Ljava/net/SocketTimeoutException;

    if-eqz v7, :cond_1ec

    const/4 v2, 0x0

    const/4 v14, 0x7

    goto/16 :goto_273

    :cond_1ec
    if-eqz v2, :cond_1f8

    .line 59
    check-cast v15, Lcom/google/android/gms/internal/ads/zzfz;

    iget v2, v15, Lcom/google/android/gms/internal/ads/zzfz;->q:I

    if-ne v2, v11, :cond_1f8

    const/4 v2, 0x0

    const/4 v14, 0x4

    goto/16 :goto_273

    :cond_1f8
    const/4 v2, 0x0

    const/16 v14, 0x8

    goto/16 :goto_273

    :cond_1fd
    :goto_1fd
    const/4 v2, 0x0

    const/16 v14, 0xb

    goto/16 :goto_273

    :cond_202
    if-eqz v12, :cond_20d

    if-eqz v8, :cond_208

    if-ne v8, v11, :cond_20d

    :cond_208
    const/4 v2, 0x0

    const/16 v14, 0x23

    goto/16 :goto_273

    :cond_20d
    if-eqz v12, :cond_217

    if-ne v8, v9, :cond_217

    const/16 v17, 0xf

    const/4 v2, 0x0

    const/16 v14, 0xf

    goto :goto_273

    :cond_217
    if-eqz v12, :cond_21d

    if-ne v8, v6, :cond_21d

    :goto_21b
    const/4 v2, 0x0

    goto :goto_273

    .line 60
    :cond_21d
    instance-of v2, v15, Lcom/google/android/gms/internal/ads/zzqz;

    if-eqz v2, :cond_22c

    .line 61
    check-cast v15, Lcom/google/android/gms/internal/ads/zzqz;

    iget-object v2, v15, Lcom/google/android/gms/internal/ads/zzqz;->r:Ljava/lang/String;

    .line 62
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzew;->X(Ljava/lang/String;)I

    move-result v2

    const/16 v14, 0xd

    goto :goto_273

    .line 63
    :cond_22c
    instance-of v2, v15, Lcom/google/android/gms/internal/ads/zzqv;

    if-eqz v2, :cond_23b

    .line 64
    check-cast v15, Lcom/google/android/gms/internal/ads/zzqv;

    iget-object v2, v15, Lcom/google/android/gms/internal/ads/zzqv;->p:Ljava/lang/String;

    .line 65
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzew;->X(Ljava/lang/String;)I

    move-result v2

    :goto_238
    const/16 v14, 0xe

    goto :goto_273

    .line 66
    :cond_23b
    instance-of v2, v15, Ljava/lang/OutOfMemoryError;

    if-eqz v2, :cond_241

    const/4 v2, 0x0

    goto :goto_238

    .line 67
    :cond_241
    instance-of v2, v15, Lcom/google/android/gms/internal/ads/zzoe;

    if-eqz v2, :cond_24e

    .line 68
    check-cast v15, Lcom/google/android/gms/internal/ads/zzoe;

    iget v2, v15, Lcom/google/android/gms/internal/ads/zzoe;->o:I

    const/16 v17, 0x11

    const/16 v14, 0x11

    goto :goto_273

    .line 69
    :cond_24e
    instance-of v2, v15, Lcom/google/android/gms/internal/ads/zzoh;

    if-eqz v2, :cond_25b

    .line 70
    check-cast v15, Lcom/google/android/gms/internal/ads/zzoh;

    iget v2, v15, Lcom/google/android/gms/internal/ads/zzoh;->o:I

    const/16 v17, 0x12

    const/16 v14, 0x12

    goto :goto_273

    .line 71
    :cond_25b
    sget v2, Lcom/google/android/gms/internal/ads/zzew;->a:I

    instance-of v2, v15, Landroid/media/MediaCodec$CryptoException;

    if-eqz v2, :cond_26e

    .line 72
    check-cast v15, Landroid/media/MediaCodec$CryptoException;

    invoke-virtual {v15}, Landroid/media/MediaCodec$CryptoException;->getErrorCode()I

    move-result v2

    .line 73
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zznk;->r(I)I

    move-result v17

    :goto_26b
    move/from16 v14, v17

    goto :goto_273

    :cond_26e
    const/16 v17, 0x16

    const/4 v2, 0x0

    const/16 v14, 0x16

    .line 74
    :goto_273
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zznk;->q:Landroid/media/metrics/PlaybackSession;

    .line 75
    new-instance v8, Landroid/media/metrics/PlaybackErrorEvent$Builder;

    invoke-direct {v8}, Landroid/media/metrics/PlaybackErrorEvent$Builder;-><init>()V

    iget-wide v12, v0, Lcom/google/android/gms/internal/ads/zznk;->r:J

    sub-long v12, v3, v12

    .line 76
    invoke-virtual {v8, v12, v13}, Landroid/media/metrics/PlaybackErrorEvent$Builder;->setTimeSinceCreatedMillis(J)Landroid/media/metrics/PlaybackErrorEvent$Builder;

    move-result-object v8

    .line 77
    invoke-virtual {v8, v14}, Landroid/media/metrics/PlaybackErrorEvent$Builder;->setErrorCode(I)Landroid/media/metrics/PlaybackErrorEvent$Builder;

    move-result-object v8

    .line 78
    invoke-virtual {v8, v2}, Landroid/media/metrics/PlaybackErrorEvent$Builder;->setSubErrorCode(I)Landroid/media/metrics/PlaybackErrorEvent$Builder;

    move-result-object v2

    .line 79
    invoke-virtual {v2, v5}, Landroid/media/metrics/PlaybackErrorEvent$Builder;->setException(Ljava/lang/Exception;)Landroid/media/metrics/PlaybackErrorEvent$Builder;

    move-result-object v2

    .line 80
    invoke-virtual {v2}, Landroid/media/metrics/PlaybackErrorEvent$Builder;->build()Landroid/media/metrics/PlaybackErrorEvent;

    move-result-object v2

    .line 81
    invoke-virtual {v7, v2}, Landroid/media/metrics/PlaybackSession;->reportPlaybackErrorEvent(Landroid/media/metrics/PlaybackErrorEvent;)V

    iput-boolean v11, v0, Lcom/google/android/gms/internal/ads/zznk;->N:Z

    iput-object v10, v0, Lcom/google/android/gms/internal/ads/zznk;->B:Lcom/google/android/gms/internal/ads/zzbw;

    .line 82
    :goto_299
    invoke-virtual {v1, v6}, Lcom/google/android/gms/internal/ads/zzld;->d(I)Z

    move-result v2

    if-eqz v2, :cond_2c8

    .line 83
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzcg;->p()Lcom/google/android/gms/internal/ads/zzcy;

    move-result-object v2

    .line 84
    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzcy;->b(I)Z

    move-result v5

    .line 85
    invoke-virtual {v2, v11}, Lcom/google/android/gms/internal/ads/zzcy;->b(I)Z

    move-result v7

    .line 86
    invoke-virtual {v2, v9}, Lcom/google/android/gms/internal/ads/zzcy;->b(I)Z

    move-result v2

    if-nez v5, :cond_2b6

    if-nez v7, :cond_2b6

    if-eqz v2, :cond_2c8

    const/4 v2, 0x1

    :cond_2b6
    if-nez v5, :cond_2bd

    const/4 v5, 0x0

    .line 87
    invoke-direct {v0, v3, v4, v10, v5}, Lcom/google/android/gms/internal/ads/zznk;->w(JLcom/google/android/gms/internal/ads/zzaf;I)V

    goto :goto_2be

    :cond_2bd
    const/4 v5, 0x0

    :goto_2be
    if-nez v7, :cond_2c3

    .line 88
    invoke-direct {v0, v3, v4, v10, v5}, Lcom/google/android/gms/internal/ads/zznk;->t(JLcom/google/android/gms/internal/ads/zzaf;I)V

    :cond_2c3
    if-nez v2, :cond_2c8

    .line 89
    invoke-direct {v0, v3, v4, v10, v5}, Lcom/google/android/gms/internal/ads/zznk;->u(JLcom/google/android/gms/internal/ads/zzaf;I)V

    :cond_2c8
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zznk;->C:Lcom/google/android/gms/internal/ads/zznj;

    .line 90
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zznk;->y(Lcom/google/android/gms/internal/ads/zznj;)Z

    move-result v2

    if-eqz v2, :cond_2e0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zznk;->C:Lcom/google/android/gms/internal/ads/zznj;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zznj;->a:Lcom/google/android/gms/internal/ads/zzaf;

    iget v5, v2, Lcom/google/android/gms/internal/ads/zzaf;->r:I

    const/4 v7, -0x1

    if-eq v5, v7, :cond_2e0

    const/4 v5, 0x0

    .line 91
    invoke-direct {v0, v3, v4, v2, v5}, Lcom/google/android/gms/internal/ads/zznk;->w(JLcom/google/android/gms/internal/ads/zzaf;I)V

    iput-object v10, v0, Lcom/google/android/gms/internal/ads/zznk;->C:Lcom/google/android/gms/internal/ads/zznj;

    goto :goto_2e1

    :cond_2e0
    const/4 v5, 0x0

    :goto_2e1
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zznk;->D:Lcom/google/android/gms/internal/ads/zznj;

    .line 92
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zznk;->y(Lcom/google/android/gms/internal/ads/zznj;)Z

    move-result v2

    if-eqz v2, :cond_2f2

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zznk;->D:Lcom/google/android/gms/internal/ads/zznj;

    .line 93
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zznj;->a:Lcom/google/android/gms/internal/ads/zzaf;

    invoke-direct {v0, v3, v4, v2, v5}, Lcom/google/android/gms/internal/ads/zznk;->t(JLcom/google/android/gms/internal/ads/zzaf;I)V

    iput-object v10, v0, Lcom/google/android/gms/internal/ads/zznk;->D:Lcom/google/android/gms/internal/ads/zznj;

    :cond_2f2
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zznk;->E:Lcom/google/android/gms/internal/ads/zznj;

    .line 94
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zznk;->y(Lcom/google/android/gms/internal/ads/zznj;)Z

    move-result v2

    if-eqz v2, :cond_303

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zznk;->E:Lcom/google/android/gms/internal/ads/zznj;

    .line 95
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zznj;->a:Lcom/google/android/gms/internal/ads/zzaf;

    invoke-direct {v0, v3, v4, v2, v5}, Lcom/google/android/gms/internal/ads/zznk;->u(JLcom/google/android/gms/internal/ads/zzaf;I)V

    iput-object v10, v0, Lcom/google/android/gms/internal/ads/zznk;->E:Lcom/google/android/gms/internal/ads/zznj;

    :cond_303
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zznk;->o:Landroid/content/Context;

    .line 96
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzel;->b(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzel;->a()I

    move-result v2

    packed-switch v2, :pswitch_data_3f0

    :pswitch_310
    const/4 v13, 0x1

    goto :goto_325

    :pswitch_312
    const/4 v13, 0x7

    goto :goto_325

    :pswitch_314
    const/16 v13, 0x8

    goto :goto_325

    :pswitch_317
    const/4 v13, 0x3

    goto :goto_325

    :pswitch_319
    const/4 v13, 0x6

    goto :goto_325

    :pswitch_31b
    const/4 v13, 0x5

    goto :goto_325

    :pswitch_31d
    const/4 v13, 0x4

    goto :goto_325

    :pswitch_31f
    const/4 v13, 0x2

    goto :goto_325

    :pswitch_321
    const/16 v13, 0x9

    goto :goto_325

    :pswitch_324
    const/4 v13, 0x0

    :goto_325
    iget v2, v0, Lcom/google/android/gms/internal/ads/zznk;->A:I

    if-eq v13, v2, :cond_345

    iput v13, v0, Lcom/google/android/gms/internal/ads/zznk;->A:I

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zznk;->q:Landroid/media/metrics/PlaybackSession;

    .line 97
    new-instance v5, Landroid/media/metrics/NetworkEvent$Builder;

    invoke-direct {v5}, Landroid/media/metrics/NetworkEvent$Builder;-><init>()V

    .line 98
    invoke-virtual {v5, v13}, Landroid/media/metrics/NetworkEvent$Builder;->setNetworkType(I)Landroid/media/metrics/NetworkEvent$Builder;

    move-result-object v5

    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/zznk;->r:J

    sub-long v7, v3, v7

    .line 99
    invoke-virtual {v5, v7, v8}, Landroid/media/metrics/NetworkEvent$Builder;->setTimeSinceCreatedMillis(J)Landroid/media/metrics/NetworkEvent$Builder;

    move-result-object v5

    .line 100
    invoke-virtual {v5}, Landroid/media/metrics/NetworkEvent$Builder;->build()Landroid/media/metrics/NetworkEvent;

    move-result-object v5

    .line 101
    invoke-virtual {v2, v5}, Landroid/media/metrics/PlaybackSession;->reportNetworkEvent(Landroid/media/metrics/NetworkEvent;)V

    .line 102
    :cond_345
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzcg;->g()I

    move-result v2

    if-eq v2, v6, :cond_34f

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/google/android/gms/internal/ads/zznk;->I:Z

    goto :goto_350

    :cond_34f
    const/4 v2, 0x0

    :goto_350
    move-object/from16 v5, p1

    check-cast v5, Lcom/google/android/gms/internal/ads/zzks;

    .line 103
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzks;->A()Lcom/google/android/gms/internal/ads/zzhj;

    move-result-object v5

    const/16 v7, 0xa

    if-nez v5, :cond_35f

    iput-boolean v2, v0, Lcom/google/android/gms/internal/ads/zznk;->J:Z

    goto :goto_367

    .line 104
    :cond_35f
    invoke-virtual {v1, v7}, Lcom/google/android/gms/internal/ads/zzld;->d(I)Z

    move-result v2

    if-eqz v2, :cond_367

    iput-boolean v11, v0, Lcom/google/android/gms/internal/ads/zznk;->J:Z

    .line 105
    :cond_367
    :goto_367
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzcg;->g()I

    move-result v2

    iget-boolean v5, v0, Lcom/google/android/gms/internal/ads/zznk;->I:Z

    if-eqz v5, :cond_371

    const/4 v5, 0x5

    goto :goto_3bb

    .line 106
    :cond_371
    iget-boolean v5, v0, Lcom/google/android/gms/internal/ads/zznk;->J:Z

    if-eqz v5, :cond_378

    const/16 v5, 0xd

    goto :goto_3bb

    :cond_378
    const/4 v5, 0x4

    if-ne v2, v5, :cond_37e

    const/16 v5, 0xb

    goto :goto_3bb

    :cond_37e
    if-ne v2, v6, :cond_39c

    iget v2, v0, Lcom/google/android/gms/internal/ads/zznk;->z:I

    if-eqz v2, :cond_39a

    if-ne v2, v6, :cond_387

    goto :goto_39a

    .line 107
    :cond_387
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzcg;->E()Z

    move-result v2

    if-nez v2, :cond_38f

    const/4 v5, 0x7

    goto :goto_3bb

    .line 108
    :cond_38f
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzcg;->h()I

    move-result v2

    if-eqz v2, :cond_398

    const/16 v5, 0xa

    goto :goto_3bb

    :cond_398
    const/4 v5, 0x6

    goto :goto_3bb

    :cond_39a
    :goto_39a
    const/4 v5, 0x2

    goto :goto_3bb

    :cond_39c
    if-ne v2, v9, :cond_3b0

    .line 109
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzcg;->E()Z

    move-result v2

    if-nez v2, :cond_3a5

    goto :goto_3bb

    .line 110
    :cond_3a5
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzcg;->h()I

    move-result v2

    if-eqz v2, :cond_3ae

    const/16 v5, 0x9

    goto :goto_3bb

    :cond_3ae
    const/4 v5, 0x3

    goto :goto_3bb

    :cond_3b0
    if-ne v2, v11, :cond_3b9

    iget v2, v0, Lcom/google/android/gms/internal/ads/zznk;->z:I

    if-eqz v2, :cond_3b9

    const/16 v5, 0xc

    goto :goto_3bb

    :cond_3b9
    iget v5, v0, Lcom/google/android/gms/internal/ads/zznk;->z:I

    .line 111
    :goto_3bb
    iget v2, v0, Lcom/google/android/gms/internal/ads/zznk;->z:I

    if-eq v2, v5, :cond_3de

    iput v5, v0, Lcom/google/android/gms/internal/ads/zznk;->z:I

    iput-boolean v11, v0, Lcom/google/android/gms/internal/ads/zznk;->N:Z

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zznk;->q:Landroid/media/metrics/PlaybackSession;

    .line 112
    new-instance v5, Landroid/media/metrics/PlaybackStateEvent$Builder;

    invoke-direct {v5}, Landroid/media/metrics/PlaybackStateEvent$Builder;-><init>()V

    iget v6, v0, Lcom/google/android/gms/internal/ads/zznk;->z:I

    .line 113
    invoke-virtual {v5, v6}, Landroid/media/metrics/PlaybackStateEvent$Builder;->setState(I)Landroid/media/metrics/PlaybackStateEvent$Builder;

    move-result-object v5

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zznk;->r:J

    sub-long/2addr v3, v6

    .line 114
    invoke-virtual {v5, v3, v4}, Landroid/media/metrics/PlaybackStateEvent$Builder;->setTimeSinceCreatedMillis(J)Landroid/media/metrics/PlaybackStateEvent$Builder;

    move-result-object v3

    .line 115
    invoke-virtual {v3}, Landroid/media/metrics/PlaybackStateEvent$Builder;->build()Landroid/media/metrics/PlaybackStateEvent;

    move-result-object v3

    .line 116
    invoke-virtual {v2, v3}, Landroid/media/metrics/PlaybackSession;->reportPlaybackStateEvent(Landroid/media/metrics/PlaybackStateEvent;)V

    :cond_3de
    const/16 v2, 0x404

    .line 117
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzld;->d(I)Z

    move-result v3

    if-eqz v3, :cond_3ef

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zznk;->p:Lcom/google/android/gms/internal/ads/zznm;

    .line 118
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzld;->c(I)Lcom/google/android/gms/internal/ads/zzlc;

    move-result-object v1

    invoke-interface {v3, v1}, Lcom/google/android/gms/internal/ads/zznm;->e(Lcom/google/android/gms/internal/ads/zzlc;)V

    :cond_3ef
    return-void

    :pswitch_data_3f0
    .packed-switch 0x0
        :pswitch_324
        :pswitch_321
        :pswitch_31f
        :pswitch_31d
        :pswitch_31b
        :pswitch_319
        :pswitch_310
        :pswitch_317
        :pswitch_310
        :pswitch_314
        :pswitch_312
    .end packed-switch
.end method

.method public final synthetic f(Lcom/google/android/gms/internal/ads/zzlc;Lcom/google/android/gms/internal/ads/zzaf;Lcom/google/android/gms/internal/ads/zzhc;)V
    .registers 4

    return-void
.end method

.method public final g(Lcom/google/android/gms/internal/ads/zzlc;Lcom/google/android/gms/internal/ads/zzhb;)V
    .registers 4

    .line 1
    iget p1, p0, Lcom/google/android/gms/internal/ads/zznk;->K:I

    iget v0, p2, Lcom/google/android/gms/internal/ads/zzhb;->g:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zznk;->K:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/zznk;->L:I

    .line 2
    iget p2, p2, Lcom/google/android/gms/internal/ads/zzhb;->e:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zznk;->L:I

    return-void
.end method

.method public final h(Lcom/google/android/gms/internal/ads/zzlc;Ljava/lang/String;)V
    .registers 4

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzlc;->d:Lcom/google/android/gms/internal/ads/zzss;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbn;->b()Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    :cond_b
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zznk;->s()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zznk;->w:Ljava/lang/String;

    .line 2
    new-instance p2, Landroid/media/metrics/PlaybackMetrics$Builder;

    invoke-direct {p2}, Landroid/media/metrics/PlaybackMetrics$Builder;-><init>()V

    const-string v0, "AndroidXMedia3"

    .line 3
    invoke-virtual {p2, v0}, Landroid/media/metrics/PlaybackMetrics$Builder;->setPlayerName(Ljava/lang/String;)Landroid/media/metrics/PlaybackMetrics$Builder;

    move-result-object p2

    const-string v0, "1.0.0-beta03"

    .line 4
    invoke-virtual {p2, v0}, Landroid/media/metrics/PlaybackMetrics$Builder;->setPlayerVersion(Ljava/lang/String;)Landroid/media/metrics/PlaybackMetrics$Builder;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zznk;->x:Landroid/media/metrics/PlaybackMetrics$Builder;

    iget-object p2, p1, Lcom/google/android/gms/internal/ads/zzlc;->b:Lcom/google/android/gms/internal/ads/zzcn;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzlc;->d:Lcom/google/android/gms/internal/ads/zzss;

    .line 5
    invoke-direct {p0, p2, p1}, Lcom/google/android/gms/internal/ads/zznk;->v(Lcom/google/android/gms/internal/ads/zzcn;Lcom/google/android/gms/internal/ads/zzss;)V

    return-void
.end method

.method public final i(Lcom/google/android/gms/internal/ads/zzlc;Lcom/google/android/gms/internal/ads/zzso;)V
    .registers 8

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzlc;->d:Lcom/google/android/gms/internal/ads/zzss;

    if-nez v0, :cond_5

    return-void

    :cond_5
    new-instance v1, Lcom/google/android/gms/internal/ads/zznj;

    iget-object v2, p2, Lcom/google/android/gms/internal/ads/zzso;->b:Lcom/google/android/gms/internal/ads/zzaf;

    .line 2
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x0

    .line 3
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zznk;->p:Lcom/google/android/gms/internal/ads/zznm;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzlc;->b:Lcom/google/android/gms/internal/ads/zzcn;

    invoke-interface {v4, p1, v0}, Lcom/google/android/gms/internal/ads/zznm;->g(Lcom/google/android/gms/internal/ads/zzcn;Lcom/google/android/gms/internal/ads/zzss;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, v3, p1}, Lcom/google/android/gms/internal/ads/zznj;-><init>(Lcom/google/android/gms/internal/ads/zzaf;ILjava/lang/String;)V

    iget p1, p2, Lcom/google/android/gms/internal/ads/zzso;->a:I

    if-eqz p1, :cond_2c

    const/4 p2, 0x1

    if-eq p1, p2, :cond_29

    const/4 p2, 0x2

    if-eq p1, p2, :cond_2c

    const/4 p2, 0x3

    if-eq p1, p2, :cond_26

    return-void

    :cond_26
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zznk;->E:Lcom/google/android/gms/internal/ads/zznj;

    return-void

    :cond_29
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zznk;->D:Lcom/google/android/gms/internal/ads/zznj;

    return-void

    .line 4
    :cond_2c
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zznk;->C:Lcom/google/android/gms/internal/ads/zznj;

    return-void
.end method

.method public final synthetic j(Lcom/google/android/gms/internal/ads/zzlc;Lcom/google/android/gms/internal/ads/zzaf;Lcom/google/android/gms/internal/ads/zzhc;)V
    .registers 4

    return-void
.end method

.method public final k(Lcom/google/android/gms/internal/ads/zzlc;Ljava/lang/String;Z)V
    .registers 4

    .line 1
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzlc;->d:Lcom/google/android/gms/internal/ads/zzss;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbn;->b()Z

    move-result p1

    if-nez p1, :cond_15

    :cond_a
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zznk;->w:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zznk;->s()V

    :cond_15
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zznk;->u:Ljava/util/HashMap;

    .line 3
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zznk;->v:Ljava/util/HashMap;

    .line 4
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final l(Lcom/google/android/gms/internal/ads/zzlc;Lcom/google/android/gms/internal/ads/zzda;)V
    .registers 6

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zznk;->C:Lcom/google/android/gms/internal/ads/zznj;

    if-eqz p1, :cond_27

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zznj;->a:Lcom/google/android/gms/internal/ads/zzaf;

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzaf;->r:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_27

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaf;->b()Lcom/google/android/gms/internal/ads/zzad;

    move-result-object v0

    iget v1, p2, Lcom/google/android/gms/internal/ads/zzda;->a:I

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzad;->x(I)Lcom/google/android/gms/internal/ads/zzad;

    iget p2, p2, Lcom/google/android/gms/internal/ads/zzda;->b:I

    .line 3
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzad;->f(I)Lcom/google/android/gms/internal/ads/zzad;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzad;->y()Lcom/google/android/gms/internal/ads/zzaf;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/internal/ads/zznj;

    const/4 v1, 0x0

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zznj;->c:Ljava/lang/String;

    invoke-direct {v0, p2, v1, p1}, Lcom/google/android/gms/internal/ads/zznj;-><init>(Lcom/google/android/gms/internal/ads/zzaf;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zznk;->C:Lcom/google/android/gms/internal/ads/zznj;

    :cond_27
    return-void
.end method

.method public final m(Lcom/google/android/gms/internal/ads/zzlc;IJJ)V
    .registers 12

    .line 1
    iget-object p5, p1, Lcom/google/android/gms/internal/ads/zzlc;->d:Lcom/google/android/gms/internal/ads/zzss;

    if-eqz p5, :cond_42

    iget-object p6, p0, Lcom/google/android/gms/internal/ads/zznk;->p:Lcom/google/android/gms/internal/ads/zznm;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzlc;->b:Lcom/google/android/gms/internal/ads/zzcn;

    invoke-interface {p6, p1, p5}, Lcom/google/android/gms/internal/ads/zznm;->g(Lcom/google/android/gms/internal/ads/zzcn;Lcom/google/android/gms/internal/ads/zzss;)Ljava/lang/String;

    move-result-object p1

    iget-object p5, p0, Lcom/google/android/gms/internal/ads/zznk;->v:Ljava/util/HashMap;

    .line 2
    invoke-virtual {p5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/Long;

    iget-object p6, p0, Lcom/google/android/gms/internal/ads/zznk;->u:Ljava/util/HashMap;

    .line 3
    invoke-virtual {p6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/lang/Long;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zznk;->v:Ljava/util/HashMap;

    const-wide/16 v1, 0x0

    if-nez p5, :cond_24

    move-wide v3, v1

    goto :goto_28

    .line 4
    :cond_24
    invoke-virtual {p5}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    :goto_28
    add-long/2addr v3, p3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    .line 5
    invoke-virtual {v0, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zznk;->u:Ljava/util/HashMap;

    if-nez p6, :cond_35

    goto :goto_39

    .line 6
    :cond_35
    invoke-virtual {p6}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    :goto_39
    int-to-long p4, p2

    add-long/2addr v1, p4

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    .line 7
    invoke-virtual {p3, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_42
    return-void
.end method

.method public final synthetic n(Lcom/google/android/gms/internal/ads/zzlc;Ljava/lang/Object;J)V
    .registers 5

    return-void
.end method

.method public final o()Landroid/media/metrics/LogSessionId;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zznk;->q:Landroid/media/metrics/PlaybackSession;

    invoke-virtual {v0}, Landroid/media/metrics/PlaybackSession;->getSessionId()Landroid/media/metrics/LogSessionId;

    move-result-object v0

    return-object v0
.end method

.method public final p(Lcom/google/android/gms/internal/ads/zzlc;Lcom/google/android/gms/internal/ads/zzbw;)V
    .registers 3

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zznk;->B:Lcom/google/android/gms/internal/ads/zzbw;

    return-void
.end method
