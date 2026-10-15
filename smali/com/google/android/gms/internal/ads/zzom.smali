###### Class com.google.android.gms.internal.ads.zzom (com.google.android.gms.internal.ads.zzom)
.class final Lcom/google/android/gms/internal/ads/zzom;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private A:J

.field private B:J

.field private C:J

.field private D:Z

.field private E:J

.field private F:J

.field private final a:Lcom/google/android/gms/internal/ads/zzol;

.field private final b:[J

.field private c:Landroid/media/AudioTrack;

.field private d:I

.field private e:I

.field private f:Lcom/google/android/gms/internal/ads/zzok;

.field private g:I

.field private h:Z

.field private i:J

.field private j:F

.field private k:Z

.field private l:J

.field private m:J

.field private n:Ljava/lang/reflect/Method;

.field private o:J

.field private p:Z

.field private q:Z

.field private r:J

.field private s:J

.field private t:J

.field private u:J

.field private v:I

.field private w:I

.field private x:J

.field private y:J

.field private z:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzol;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzom;->a:Lcom/google/android/gms/internal/ads/zzol;

    sget p1, Lcom/google/android/gms/internal/ads/zzew;->a:I

    :try_start_7
    const-class p1, Landroid/media/AudioTrack;

    const-string v0, "getLatency"

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p1, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzom;->n:Ljava/lang/reflect/Method;
    :try_end_12
    .catch Ljava/lang/NoSuchMethodException; {:try_start_7 .. :try_end_12} :catch_12

    :catch_12
    const/16 p1, 0xa

    new-array p1, p1, [J

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzom;->b:[J

    return-void
.end method

.method private final l(J)J
    .registers 7

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzom;->g:I

    int-to-long v0, v0

    const-wide/32 v2, 0xf4240

    mul-long p1, p1, v2

    div-long/2addr p1, v0

    return-wide p1
.end method

.method private final m()J
    .registers 12

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzom;->c:Landroid/media/AudioTrack;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzom;->x:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-eqz v5, :cond_2e

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzom;->x:J

    sub-long/2addr v0, v2

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzom;->g:I

    int-to-long v2, v2

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzom;->A:J

    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/zzom;->z:J

    mul-long v0, v0, v2

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    add-long/2addr v6, v0

    .line 4
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0

    .line 5
    :cond_2e
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v1

    const/4 v2, 0x1

    const-wide/16 v5, 0x0

    if-ne v1, v2, :cond_38

    return-wide v5

    .line 6
    :cond_38
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v0

    int-to-long v7, v0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzom;->h:Z

    const-wide v9, 0xffffffffL

    and-long/2addr v7, v9

    if-eqz v0, :cond_56

    const/4 v0, 0x2

    if-ne v1, v0, :cond_53

    cmp-long v1, v7, v5

    if-nez v1, :cond_52

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzom;->s:J

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzom;->u:J

    :cond_52
    const/4 v1, 0x2

    :cond_53
    iget-wide v9, p0, Lcom/google/android/gms/internal/ads/zzom;->u:J

    add-long/2addr v7, v9

    .line 7
    :cond_56
    sget v0, Lcom/google/android/gms/internal/ads/zzew;->a:I

    const/16 v2, 0x1d

    if-gt v0, v2, :cond_7c

    cmp-long v0, v7, v5

    if-nez v0, :cond_78

    iget-wide v7, p0, Lcom/google/android/gms/internal/ads/zzom;->s:J

    cmp-long v0, v7, v5

    if-lez v0, :cond_79

    const/4 v0, 0x3

    if-ne v1, v0, :cond_79

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzom;->y:J

    cmp-long v2, v0, v3

    if-nez v2, :cond_75

    .line 8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzom;->y:J

    :cond_75
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzom;->s:J

    return-wide v0

    :cond_78
    move-wide v5, v7

    :cond_79
    iput-wide v3, p0, Lcom/google/android/gms/internal/ads/zzom;->y:J

    move-wide v7, v5

    :cond_7c
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzom;->s:J

    cmp-long v2, v0, v7

    if-lez v2, :cond_89

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzom;->t:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzom;->t:J

    :cond_89
    iput-wide v7, p0, Lcom/google/android/gms/internal/ads/zzom;->s:J

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzom;->t:J

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    add-long/2addr v7, v0

    return-wide v7
.end method

.method private final n()V
    .registers 4

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzom;->l:J

    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzom;->w:I

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzom;->v:I

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzom;->m:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzom;->C:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzom;->F:J

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzom;->k:Z

    return-void
.end method


# virtual methods
.method public final a(J)I
    .registers 7

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzom;->m()J

    move-result-wide v0

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzom;->d:I

    int-to-long v2, v2

    mul-long v0, v0, v2

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzom;->e:I

    sub-long/2addr p1, v0

    long-to-int p2, p1

    sub-int/2addr v2, p2

    return v2
.end method

.method public final b(Z)J
    .registers 24

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzom;->c:Landroid/media/AudioTrack;

    .line 2
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {v1}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x3e8

    if-ne v1, v2, :cond_192

    .line 4
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzom;->m()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzom;->l(J)J

    move-result-wide v1

    cmp-long v8, v1, v4

    if-nez v8, :cond_21

    goto/16 :goto_192

    .line 5
    :cond_21
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    div-long/2addr v8, v6

    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/zzom;->m:J

    sub-long v10, v8, v10

    const-wide/16 v12, 0x7530

    cmp-long v15, v10, v12

    if-ltz v15, :cond_61

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzom;->b:[J

    iget v11, v0, Lcom/google/android/gms/internal/ads/zzom;->v:I

    sub-long v12, v1, v8

    .line 6
    aput-wide v12, v10, v11

    add-int/2addr v11, v3

    const/16 v10, 0xa

    rem-int/2addr v11, v10

    iput v11, v0, Lcom/google/android/gms/internal/ads/zzom;->v:I

    iget v11, v0, Lcom/google/android/gms/internal/ads/zzom;->w:I

    if-ge v11, v10, :cond_45

    add-int/2addr v11, v3

    iput v11, v0, Lcom/google/android/gms/internal/ads/zzom;->w:I

    :cond_45
    iput-wide v8, v0, Lcom/google/android/gms/internal/ads/zzom;->m:J

    iput-wide v4, v0, Lcom/google/android/gms/internal/ads/zzom;->l:J

    const/4 v10, 0x0

    :goto_4a
    iget v11, v0, Lcom/google/android/gms/internal/ads/zzom;->w:I

    if-ge v10, v11, :cond_61

    iget-wide v12, v0, Lcom/google/android/gms/internal/ads/zzom;->l:J

    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zzom;->b:[J

    .line 7
    aget-wide v16, v15, v10

    int-to-long v3, v11

    div-long v16, v16, v3

    add-long v12, v12, v16

    iput-wide v12, v0, Lcom/google/android/gms/internal/ads/zzom;->l:J

    add-int/lit8 v10, v10, 0x1

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    goto :goto_4a

    :cond_61
    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzom;->h:Z

    if-nez v3, :cond_192

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzom;->f:Lcom/google/android/gms/internal/ads/zzok;

    .line 8
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-virtual {v3, v8, v9}, Lcom/google/android/gms/internal/ads/zzok;->g(J)Z

    move-result v4

    const-string v5, "DefaultAudioSink"

    const-wide/32 v10, 0x4c4b40

    if-nez v4, :cond_77

    goto/16 :goto_131

    .line 10
    :cond_77
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzok;->b()J

    move-result-wide v12

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzok;->a()J

    move-result-wide v6

    sub-long v18, v12, v8

    .line 11
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->abs(J)J

    move-result-wide v18

    const-string v4, ", "

    cmp-long v20, v18, v10

    if-lez v20, :cond_d5

    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zzom;->a:Lcom/google/android/gms/internal/ads/zzol;

    check-cast v15, Lcom/google/android/gms/internal/ads/zzpa;

    iget-object v14, v15, Lcom/google/android/gms/internal/ads/zzpa;->a:Lcom/google/android/gms/internal/ads/zzpf;

    .line 12
    invoke-static {v14}, Lcom/google/android/gms/internal/ads/zzpf;->E(Lcom/google/android/gms/internal/ads/zzpf;)J

    move-result-wide v10

    iget-object v14, v15, Lcom/google/android/gms/internal/ads/zzpa;->a:Lcom/google/android/gms/internal/ads/zzpf;

    .line 13
    invoke-static {v14}, Lcom/google/android/gms/internal/ads/zzpf;->F(Lcom/google/android/gms/internal/ads/zzpf;)J

    move-result-wide v14

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v3

    const-string v3, "Spurious audio timestamp (system clock mismatch): "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 14
    invoke-static {v5, v0}, Lcom/google/android/gms/internal/ads/zzee;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-virtual/range {v21 .. v21}, Lcom/google/android/gms/internal/ads/zzok;->d()V

    :goto_d2
    move-object/from16 v0, p0

    goto :goto_131

    :cond_d5
    move-object/from16 v21, v3

    .line 16
    invoke-direct {v0, v6, v7}, Lcom/google/android/gms/internal/ads/zzom;->l(J)J

    move-result-wide v10

    sub-long/2addr v10, v1

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    const-wide/32 v14, 0x4c4b40

    cmp-long v3, v10, v14

    if-lez v3, :cond_12d

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzom;->a:Lcom/google/android/gms/internal/ads/zzol;

    check-cast v3, Lcom/google/android/gms/internal/ads/zzpa;

    iget-object v10, v3, Lcom/google/android/gms/internal/ads/zzpa;->a:Lcom/google/android/gms/internal/ads/zzpf;

    .line 17
    invoke-static {v10}, Lcom/google/android/gms/internal/ads/zzpf;->E(Lcom/google/android/gms/internal/ads/zzpf;)J

    move-result-wide v10

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzpa;->a:Lcom/google/android/gms/internal/ads/zzpf;

    .line 18
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzpf;->F(Lcom/google/android/gms/internal/ads/zzpf;)J

    move-result-wide v14

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Spurious audio timestamp (frame position mismatch): "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 19
    invoke-static {v5, v0}, Lcom/google/android/gms/internal/ads/zzee;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-virtual/range {v21 .. v21}, Lcom/google/android/gms/internal/ads/zzok;->d()V

    goto :goto_d2

    .line 21
    :cond_12d
    invoke-virtual/range {v21 .. v21}, Lcom/google/android/gms/internal/ads/zzok;->c()V

    goto :goto_d2

    .line 22
    :goto_131
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzom;->q:Z

    if-eqz v1, :cond_192

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzom;->n:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_192

    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzom;->r:J

    sub-long v2, v8, v2

    const-wide/32 v6, 0x7a120

    cmp-long v4, v2, v6

    if-ltz v4, :cond_192

    :try_start_144
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzom;->c:Landroid/media/AudioTrack;
    :try_end_146
    .catch Ljava/lang/Exception; {:try_start_144 .. :try_end_146} :catch_18d

    .line 23
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x0

    :try_start_14a
    new-array v3, v3, [Ljava/lang/Object;

    .line 24
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    sget v2, Lcom/google/android/gms/internal/ads/zzew;->a:I

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzom;->i:J
    :try_end_15b
    .catch Ljava/lang/Exception; {:try_start_14a .. :try_end_15b} :catch_18d

    invoke-static {v1, v2}, Ljava/lang/Long;->signum(J)I

    const-wide/16 v6, 0x3e8

    mul-long v1, v1, v6

    sub-long/2addr v1, v3

    :try_start_163
    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzom;->o:J

    const-wide/16 v3, 0x0

    .line 25
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzom;->o:J

    const-wide/32 v3, 0x4c4b40

    cmp-long v6, v1, v3

    if-lez v6, :cond_190

    new-instance v3, Ljava/lang/StringBuilder;

    .line 26
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring impossibly large audio latency: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/google/android/gms/internal/ads/zzee;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzom;->o:J
    :try_end_18c
    .catch Ljava/lang/Exception; {:try_start_163 .. :try_end_18c} :catch_18d

    goto :goto_190

    :catch_18d
    const/4 v1, 0x0

    .line 27
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzom;->n:Ljava/lang/reflect/Method;

    .line 28
    :cond_190
    :goto_190
    iput-wide v8, v0, Lcom/google/android/gms/internal/ads/zzom;->r:J

    .line 29
    :cond_192
    :goto_192
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzom;->f:Lcom/google/android/gms/internal/ads/zzok;

    .line 30
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzok;->f()Z

    move-result v4

    if-eqz v4, :cond_1ba

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzok;->a()J

    move-result-wide v5

    .line 32
    invoke-direct {v0, v5, v6}, Lcom/google/android/gms/internal/ads/zzom;->l(J)J

    move-result-wide v5

    .line 33
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzok;->b()J

    move-result-wide v7

    sub-long v7, v1, v7

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzom;->j:F

    .line 34
    invoke-static {v7, v8, v3}, Lcom/google/android/gms/internal/ads/zzew;->d0(JF)J

    move-result-wide v7

    add-long/2addr v5, v7

    goto :goto_1d5

    .line 35
    :cond_1ba
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzom;->w:I

    if-nez v3, :cond_1c7

    .line 36
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzom;->m()J

    move-result-wide v5

    invoke-direct {v0, v5, v6}, Lcom/google/android/gms/internal/ads/zzom;->l(J)J

    move-result-wide v5

    goto :goto_1ca

    .line 37
    :cond_1c7
    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzom;->l:J

    add-long/2addr v5, v1

    :goto_1ca
    if-nez p1, :cond_1d5

    .line 38
    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/zzom;->o:J

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x0

    .line 39
    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    .line 40
    :cond_1d5
    :goto_1d5
    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzom;->D:Z

    if-eq v3, v4, :cond_1e1

    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/zzom;->C:J

    iput-wide v7, v0, Lcom/google/android/gms/internal/ads/zzom;->F:J

    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/zzom;->B:J

    iput-wide v7, v0, Lcom/google/android/gms/internal/ads/zzom;->E:J

    :cond_1e1
    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/zzom;->F:J

    sub-long v7, v1, v7

    const-wide/32 v9, 0xf4240

    cmp-long v3, v7, v9

    if-gez v3, :cond_202

    iget-wide v11, v0, Lcom/google/android/gms/internal/ads/zzom;->E:J

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzom;->j:F

    .line 41
    invoke-static {v7, v8, v3}, Lcom/google/android/gms/internal/ads/zzew;->d0(JF)J

    move-result-wide v13

    add-long/2addr v11, v13

    const-wide/16 v13, 0x3e8

    mul-long v7, v7, v13

    div-long/2addr v7, v9

    mul-long v5, v5, v7

    sub-long v7, v13, v7

    mul-long v7, v7, v11

    add-long/2addr v5, v7

    div-long/2addr v5, v13

    :cond_202
    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzom;->k:Z

    if-nez v3, :cond_241

    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/zzom;->B:J

    cmp-long v3, v5, v7

    if-lez v3, :cond_241

    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzom;->k:Z

    .line 42
    sget v3, Lcom/google/android/gms/internal/ads/zzew;->a:I

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzom;->j:F

    sub-long v7, v5, v7

    invoke-static {v7, v8}, Lcom/google/android/gms/internal/ads/zzew;->k0(J)J

    move-result-wide v7

    .line 43
    invoke-static {v7, v8, v3}, Lcom/google/android/gms/internal/ads/zzew;->f0(JF)J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/google/android/gms/internal/ads/zzew;->k0(J)J

    move-result-wide v7

    .line 44
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v7

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzom;->a:Lcom/google/android/gms/internal/ads/zzol;

    check-cast v3, Lcom/google/android/gms/internal/ads/zzpa;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzpa;->a:Lcom/google/android/gms/internal/ads/zzpf;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzpf;->j(Lcom/google/android/gms/internal/ads/zzpf;)Lcom/google/android/gms/internal/ads/zzof;

    move-result-object v7

    if-eqz v7, :cond_241

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzpf;->j(Lcom/google/android/gms/internal/ads/zzpf;)Lcom/google/android/gms/internal/ads/zzof;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzpk;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzpk;->a:Lcom/google/android/gms/internal/ads/zzpl;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzpl;->L0(Lcom/google/android/gms/internal/ads/zzpl;)Lcom/google/android/gms/internal/ads/zzob;

    move-result-object v3

    .line 45
    invoke-virtual {v3, v9, v10}, Lcom/google/android/gms/internal/ads/zzob;->r(J)V

    :cond_241
    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzom;->C:J

    iput-wide v5, v0, Lcom/google/android/gms/internal/ads/zzom;->B:J

    iput-boolean v4, v0, Lcom/google/android/gms/internal/ads/zzom;->D:Z

    return-wide v5
.end method

.method public final c(J)V
    .registers 7

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzom;->m()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzom;->z:J

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzom;->x:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzom;->A:J

    return-void
.end method

.method public final d()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzom;->n()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzom;->c:Landroid/media/AudioTrack;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzom;->f:Lcom/google/android/gms/internal/ads/zzok;

    return-void
.end method

.method public final e(Landroid/media/AudioTrack;ZIII)V
    .registers 9

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzom;->c:Landroid/media/AudioTrack;

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzom;->d:I

    iput p5, p0, Lcom/google/android/gms/internal/ads/zzom;->e:I

    new-instance v0, Lcom/google/android/gms/internal/ads/zzok;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzok;-><init>(Landroid/media/AudioTrack;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzom;->f:Lcom/google/android/gms/internal/ads/zzok;

    .line 2
    invoke-virtual {p1}, Landroid/media/AudioTrack;->getSampleRate()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzom;->g:I

    const/4 p1, 0x6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_25

    .line 3
    sget p2, Lcom/google/android/gms/internal/ads/zzew;->a:I

    const/16 v2, 0x17

    if-ge p2, v2, :cond_25

    const/4 p2, 0x5

    if-eq p3, p2, :cond_26

    if-ne p3, p1, :cond_25

    const/4 p3, 0x6

    goto :goto_26

    :cond_25
    const/4 v0, 0x0

    :cond_26
    :goto_26
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzom;->h:Z

    .line 4
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzew;->w(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzom;->q:Z

    const-wide p2, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz p1, :cond_3c

    .line 5
    div-int/2addr p5, p4

    int-to-long p4, p5

    invoke-direct {p0, p4, p5}, Lcom/google/android/gms/internal/ads/zzom;->l(J)J

    move-result-wide p4

    goto :goto_3d

    :cond_3c
    move-wide p4, p2

    :goto_3d
    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/zzom;->i:J

    const-wide/16 p4, 0x0

    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/zzom;->s:J

    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/zzom;->t:J

    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/zzom;->u:J

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzom;->p:Z

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzom;->x:J

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzom;->y:J

    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/zzom;->r:J

    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/zzom;->o:J

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzom;->j:F

    return-void
.end method

.method public final f()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzom;->f:Lcom/google/android/gms/internal/ads/zzok;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzok;->e()V

    return-void
.end method

.method public final g(J)Z
    .registers 6

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzom;->m()J

    move-result-wide v0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_25

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzom;->h:Z

    if-eqz p1, :cond_23

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzom;->c:Landroid/media/AudioTrack;

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p1}, Landroid/media/AudioTrack;->getPlayState()I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_23

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzom;->m()J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_23

    goto :goto_25

    :cond_23
    const/4 p1, 0x0

    return p1

    :cond_25
    :goto_25
    const/4 p1, 0x1

    return p1
.end method

.method public final h()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzom;->c:Landroid/media/AudioTrack;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    return v0

    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method public final i(J)Z
    .registers 8

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzom;->y:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_20

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_20

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzom;->y:J

    sub-long/2addr p1, v0

    const-wide/16 v0, 0xc8

    cmp-long v2, p1, v0

    if-ltz v2, :cond_20

    const/4 p1, 0x1

    return p1

    :cond_20
    const/4 p1, 0x0

    return p1
.end method

.method public final j(J)Z
    .registers 12

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzom;->c:Landroid/media/AudioTrack;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzom;->h:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_24

    const/4 v1, 0x2

    const/4 v3, 0x0

    if-ne v0, v1, :cond_15

    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzom;->p:Z

    return v3

    :cond_15
    if-ne v0, v2, :cond_24

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzom;->m()J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-eqz v6, :cond_23

    const/4 v0, 0x1

    goto :goto_24

    :cond_23
    return v3

    :cond_24
    :goto_24
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzom;->p:Z

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzom;->g(J)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzom;->p:Z

    if-eqz v1, :cond_61

    if-nez p1, :cond_61

    if-eq v0, v2, :cond_61

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzom;->a:Lcom/google/android/gms/internal/ads/zzol;

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzom;->e:I

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzom;->i:J

    .line 6
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzew;->k0(J)J

    move-result-wide v5

    check-cast p1, Lcom/google/android/gms/internal/ads/zzpa;

    iget-object p2, p1, Lcom/google/android/gms/internal/ads/zzpa;->a:Lcom/google/android/gms/internal/ads/zzpf;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzpf;->j(Lcom/google/android/gms/internal/ads/zzpf;)Lcom/google/android/gms/internal/ads/zzof;

    move-result-object p2

    if-eqz p2, :cond_61

    .line 7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzpa;->a:Lcom/google/android/gms/internal/ads/zzpf;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzpf;->D(Lcom/google/android/gms/internal/ads/zzpf;)J

    move-result-wide v7

    sub-long v7, v0, v7

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzpf;->j(Lcom/google/android/gms/internal/ads/zzpf;)Lcom/google/android/gms/internal/ads/zzof;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzpk;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzpk;->a:Lcom/google/android/gms/internal/ads/zzpl;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzpl;->L0(Lcom/google/android/gms/internal/ads/zzpl;)Lcom/google/android/gms/internal/ads/zzob;

    move-result-object v3

    .line 8
    invoke-virtual/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/zzob;->t(IJJ)V

    :cond_61
    return v2
.end method

.method public final k()Z
    .registers 6

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzom;->n()V

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzom;->x:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_18

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzom;->f:Lcom/google/android/gms/internal/ads/zzok;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzok;->e()V

    const/4 v0, 0x1

    return v0

    :cond_18
    const/4 v0, 0x0

    return v0
.end method
