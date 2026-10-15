###### Class com.google.android.gms.internal.ads.zzhf (com.google.android.gms.internal.ads.zzhf)
.class public final Lcom/google/android/gms/internal/ads/zzhf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzjp;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzwt;

.field private final b:J

.field private final c:J

.field private final d:J

.field private final e:J

.field private final f:J

.field private g:I

.field private h:Z


# direct methods
.method public constructor <init>()V
    .registers 10

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzwt;

    const/4 v1, 0x1

    const/high16 v2, 0x10000

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzwt;-><init>(ZI)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v1, 0x9c4

    const/4 v2, 0x0

    const-string v3, "bufferForPlaybackMs"

    const-string v4, "0"

    invoke-static {v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzhf;->h(IILjava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x1388

    const-string v6, "bufferForPlaybackAfterRebufferMs"

    .line 2
    invoke-static {v5, v2, v6, v4}, Lcom/google/android/gms/internal/ads/zzhf;->h(IILjava/lang/String;Ljava/lang/String;)V

    const v7, 0xc350

    const-string v8, "minBufferMs"

    .line 3
    invoke-static {v7, v1, v8, v3}, Lcom/google/android/gms/internal/ads/zzhf;->h(IILjava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {v7, v5, v8, v6}, Lcom/google/android/gms/internal/ads/zzhf;->h(IILjava/lang/String;Ljava/lang/String;)V

    const-string v1, "maxBufferMs"

    .line 5
    invoke-static {v7, v7, v1, v8}, Lcom/google/android/gms/internal/ads/zzhf;->h(IILjava/lang/String;Ljava/lang/String;)V

    const-string v1, "backBufferDurationMs"

    .line 6
    invoke-static {v2, v2, v1, v4}, Lcom/google/android/gms/internal/ads/zzhf;->h(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhf;->a:Lcom/google/android/gms/internal/ads/zzwt;

    const-wide/32 v0, 0xc350

    .line 7
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzew;->g0(J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzhf;->b:J

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzew;->g0(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzhf;->c:J

    const-wide/16 v0, 0x9c4

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzew;->g0(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzhf;->d:J

    const-wide/16 v0, 0x1388

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzew;->g0(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzhf;->e:J

    const/high16 v0, 0xc80000

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzhf;->g:I

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzew;->g0(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzhf;->f:J

    return-void
.end method

.method private static h(IILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " cannot be less than "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    if-lt p0, p1, :cond_18

    const/4 p0, 0x1

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    :goto_19
    invoke-static {p0, p2}, Lcom/google/android/gms/internal/ads/zzdl;->e(ZLjava/lang/Object;)V

    return-void
.end method

.method private final i(Z)V
    .registers 3

    const/high16 v0, 0xc80000

    .line 1
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzhf;->g:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzhf;->h:Z

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzhf;->a:Lcom/google/android/gms/internal/ads/zzwt;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzwt;->e()V

    :cond_e
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzhf;->i(Z)V

    return-void
.end method

.method public final b(JFZJ)Z
    .registers 10

    .line 1
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzew;->f0(JF)J

    move-result-wide p1

    if-eqz p4, :cond_9

    iget-wide p3, p0, Lcom/google/android/gms/internal/ads/zzhf;->e:J

    goto :goto_b

    .line 2
    :cond_9
    iget-wide p3, p0, Lcom/google/android/gms/internal/ads/zzhf;->d:J

    :goto_b
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p5, v0

    if-eqz v2, :cond_1b

    const-wide/16 v0, 0x2

    .line 3
    div-long/2addr p5, v0

    .line 4
    invoke-static {p5, p6, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p3

    :cond_1b
    const-wide/16 p5, 0x0

    cmp-long v0, p3, p5

    if-lez v0, :cond_32

    cmp-long p5, p1, p3

    if-gez p5, :cond_32

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzhf;->a:Lcom/google/android/gms/internal/ads/zzwt;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzwt;->a()I

    move-result p1

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzhf;->g:I

    if-lt p1, p2, :cond_30

    goto :goto_32

    :cond_30
    const/4 p1, 0x0

    return p1

    :cond_32
    :goto_32
    const/4 p1, 0x1

    return p1
.end method

.method public final c()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final d()V
    .registers 2

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzhf;->i(Z)V

    return-void
.end method

.method public final e([Lcom/google/android/gms/internal/ads/zzkn;Lcom/google/android/gms/internal/ads/zzur;[Lcom/google/android/gms/internal/ads/zzwe;)V
    .registers 8

    const/4 p2, 0x0

    const/4 v0, 0x0

    .line 1
    :goto_2
    array-length v1, p1

    const/4 v1, 0x2

    const/high16 v2, 0xc80000

    if-ge p2, v1, :cond_1b

    .line 2
    aget-object v1, p3, p2

    if-eqz v1, :cond_18

    .line 3
    aget-object v1, p1, p2

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzkn;->zzb()I

    move-result v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_17

    const/high16 v2, 0x7d00000

    :cond_17
    add-int/2addr v0, v2

    :cond_18
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .line 4
    :cond_1b
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzhf;->g:I

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzhf;->a:Lcom/google/android/gms/internal/ads/zzwt;

    .line 5
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzwt;->f(I)V

    return-void
.end method

.method public final f(JJF)Z
    .registers 11

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzhf;->a:Lcom/google/android/gms/internal/ads/zzwt;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzwt;->a()I

    move-result p1

    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float p2, p5, p2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhf;->g:I

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzhf;->b:J

    if-lez p2, :cond_1a

    invoke-static {v1, v2, p5}, Lcom/google/android/gms/internal/ads/zzew;->d0(JF)J

    move-result-wide v1

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzhf;->c:J

    .line 2
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    :cond_1a
    const-wide/32 v3, 0x7a120

    .line 3
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    const/4 p2, 0x0

    cmp-long p5, p3, v1

    if-gez p5, :cond_39

    if-ge p1, v0, :cond_29

    const/4 p2, 0x1

    :cond_29
    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzhf;->h:Z

    if-nez p2, :cond_43

    cmp-long p1, p3, v3

    if-gez p1, :cond_43

    const-string p1, "DefaultLoadControl"

    const-string p2, "Target buffer size reached with less than 500ms of buffered media data."

    .line 4
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzee;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_43

    :cond_39
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzhf;->c:J

    cmp-long p5, p3, v1

    if-gez p5, :cond_41

    if-lt p1, v0, :cond_43

    :cond_41
    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzhf;->h:Z

    :cond_43
    :goto_43
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzhf;->h:Z

    return p1
.end method

.method public final g()Lcom/google/android/gms/internal/ads/zzwt;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhf;->a:Lcom/google/android/gms/internal/ads/zzwt;

    return-object v0
.end method

.method public final zza()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzhf;->f:J

    return-wide v0
.end method

.method public final zzb()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzhf;->i(Z)V

    return-void
.end method
