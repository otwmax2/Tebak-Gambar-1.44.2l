###### Class com.google.android.gms.internal.ads.zzui (com.google.android.gms.internal.ads.zzui)
.class public final Lcom/google/android/gms/internal/ads/zzui;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzabb;


# instance fields
.field private A:Z

.field private B:Z

.field private C:Lcom/google/android/gms/internal/ads/zzqa;

.field private final a:Lcom/google/android/gms/internal/ads/zzuc;

.field private final b:Lcom/google/android/gms/internal/ads/zzue;

.field private final c:Lcom/google/android/gms/internal/ads/zzup;

.field private final d:Lcom/google/android/gms/internal/ads/zzpz;

.field private final e:Lcom/google/android/gms/internal/ads/zzpt;

.field private f:Lcom/google/android/gms/internal/ads/zzuh;

.field private g:Lcom/google/android/gms/internal/ads/zzaf;

.field private h:I

.field private i:[I

.field private j:[J

.field private k:[I

.field private l:[I

.field private m:[J

.field private n:[Lcom/google/android/gms/internal/ads/zzaba;

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:J

.field private t:J

.field private u:J

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:Lcom/google/android/gms/internal/ads/zzaf;

.field private z:Lcom/google/android/gms/internal/ads/zzaf;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/ads/zzwt;Lcom/google/android/gms/internal/ads/zzpz;Lcom/google/android/gms/internal/ads/zzpt;[B)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzui;->d:Lcom/google/android/gms/internal/ads/zzpz;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzui;->e:Lcom/google/android/gms/internal/ads/zzpt;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzuc;

    const/4 p3, 0x0

    invoke-direct {p2, p1, p3}, Lcom/google/android/gms/internal/ads/zzuc;-><init>(Lcom/google/android/gms/internal/ads/zzwt;[B)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzui;->a:Lcom/google/android/gms/internal/ads/zzuc;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzue;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzue;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzui;->b:Lcom/google/android/gms/internal/ads/zzue;

    const/16 p1, 0x3e8

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzui;->h:I

    new-array p2, p1, [I

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzui;->i:[I

    new-array p2, p1, [J

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzui;->j:[J

    new-array p2, p1, [J

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzui;->m:[J

    new-array p2, p1, [I

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzui;->l:[I

    new-array p2, p1, [I

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzui;->k:[I

    new-array p1, p1, [Lcom/google/android/gms/internal/ads/zzaba;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzui;->n:[Lcom/google/android/gms/internal/ads/zzaba;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzup;

    sget-object p2, Lcom/google/android/gms/internal/ads/zzud;->a:Lcom/google/android/gms/internal/ads/zzud;

    .line 2
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzup;-><init>(Lcom/google/android/gms/internal/ads/zzdp;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzui;->c:Lcom/google/android/gms/internal/ads/zzup;

    const-wide/high16 p1, -0x8000000000000000L

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzui;->s:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzui;->t:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzui;->u:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzui;->x:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzui;->w:Z

    return-void
.end method

.method static synthetic A(Lcom/google/android/gms/internal/ads/zzug;)V
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzug;->b:Lcom/google/android/gms/internal/ads/zzpy;

    .line 2
    sget p0, Lcom/google/android/gms/internal/ads/zzpx;->a:I

    return-void
.end method

.method private final L(IIJZ)I
    .registers 12

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    :goto_3
    if-ge v2, p2, :cond_28

    .line 1
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzui;->m:[J

    aget-wide v4, v3, p1

    cmp-long v3, v4, p3

    if-gtz v3, :cond_28

    if-eqz p5, :cond_17

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzui;->l:[I

    .line 2
    aget v3, v3, p1

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1e

    :cond_17
    cmp-long v1, v4, p3

    if-nez v1, :cond_1d

    move v1, v2

    goto :goto_28

    :cond_1d
    move v1, v2

    :cond_1e
    add-int/lit8 p1, p1, 0x1

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzui;->h:I

    if-ne p1, v3, :cond_25

    const/4 p1, 0x0

    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_28
    :goto_28
    return v1
.end method

.method private final g(I)I
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzui;->q:I

    add-int/2addr v0, p1

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzui;->h:I

    if-ge v0, p1, :cond_8

    return v0

    :cond_8
    sub-int/2addr v0, p1

    return v0
.end method

.method private final declared-synchronized h(Lcom/google/android/gms/internal/ads/zzjo;Lcom/google/android/gms/internal/ads/zzgr;ZZLcom/google/android/gms/internal/ads/zzue;)I
    .registers 11

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_2
    iput-boolean v0, p2, Lcom/google/android/gms/internal/ads/zzgr;->d:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzui;->p()Z

    move-result v0

    const/4 v1, -0x5

    const/4 v2, -0x3

    const/4 v3, -0x4

    if-nez v0, :cond_2b

    if-nez p4, :cond_25

    iget-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzui;->v:Z

    if-eqz p4, :cond_14

    goto :goto_25

    :cond_14
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzui;->z:Lcom/google/android/gms/internal/ads/zzaf;

    if-eqz p2, :cond_23

    if-nez p3, :cond_1e

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzui;->g:Lcom/google/android/gms/internal/ads/zzaf;

    if-eq p2, p3, :cond_23

    .line 2
    :cond_1e
    invoke-direct {p0, p2, p1}, Lcom/google/android/gms/internal/ads/zzui;->m(Lcom/google/android/gms/internal/ads/zzaf;Lcom/google/android/gms/internal/ads/zzjo;)V
    :try_end_21
    .catchall {:try_start_2 .. :try_end_21} :catchall_83

    monitor-exit p0

    return v1

    :cond_23
    monitor-exit p0

    return v2

    :cond_25
    :goto_25
    const/4 p1, 0x4

    .line 3
    :try_start_26
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzgl;->c(I)V
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_83

    monitor-exit p0

    return v3

    .line 4
    :cond_2b
    :try_start_2b
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzui;->c:Lcom/google/android/gms/internal/ads/zzup;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzui;->p:I

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzui;->r:I

    add-int/2addr v0, v4

    .line 5
    invoke-virtual {p4, v0}, Lcom/google/android/gms/internal/ads/zzup;->a(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/google/android/gms/internal/ads/zzug;

    iget-object p4, p4, Lcom/google/android/gms/internal/ads/zzug;->a:Lcom/google/android/gms/internal/ads/zzaf;

    if-nez p3, :cond_7e

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzui;->g:Lcom/google/android/gms/internal/ads/zzaf;

    if-eq p4, p3, :cond_41

    goto :goto_7e

    .line 6
    :cond_41
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzui;->r:I

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzui;->g(I)I

    move-result p1

    .line 7
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzui;->q(I)Z

    move-result p3

    if-nez p3, :cond_52

    const/4 p1, 0x1

    iput-boolean p1, p2, Lcom/google/android/gms/internal/ads/zzgr;->d:Z
    :try_end_50
    .catchall {:try_start_2b .. :try_end_50} :catchall_83

    monitor-exit p0

    return v2

    :cond_52
    :try_start_52
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzui;->l:[I

    .line 8
    aget p3, p3, p1

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/zzgl;->c(I)V

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzui;->m:[J

    .line 9
    aget-wide v0, p3, p1

    iput-wide v0, p2, Lcom/google/android/gms/internal/ads/zzgr;->e:J

    iget-wide p3, p0, Lcom/google/android/gms/internal/ads/zzui;->s:J

    cmp-long v2, v0, p3

    if-gez v2, :cond_6a

    const/high16 p3, -0x80000000

    .line 10
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/zzgl;->a(I)V

    :cond_6a
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzui;->k:[I

    .line 11
    aget p2, p2, p1

    iput p2, p5, Lcom/google/android/gms/internal/ads/zzue;->a:I

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzui;->j:[J

    .line 12
    aget-wide p3, p2, p1

    iput-wide p3, p5, Lcom/google/android/gms/internal/ads/zzue;->b:J

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzui;->n:[Lcom/google/android/gms/internal/ads/zzaba;

    .line 13
    aget-object p1, p2, p1

    iput-object p1, p5, Lcom/google/android/gms/internal/ads/zzue;->c:Lcom/google/android/gms/internal/ads/zzaba;
    :try_end_7c
    .catchall {:try_start_52 .. :try_end_7c} :catchall_83

    monitor-exit p0

    return v3

    .line 14
    :cond_7e
    :goto_7e
    :try_start_7e
    invoke-direct {p0, p4, p1}, Lcom/google/android/gms/internal/ads/zzui;->m(Lcom/google/android/gms/internal/ads/zzaf;Lcom/google/android/gms/internal/ads/zzjo;)V
    :try_end_81
    .catchall {:try_start_7e .. :try_end_81} :catchall_83

    monitor-exit p0

    return v1

    :catchall_83
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final declared-synchronized i(JZZ)J
    .registers 14

    monitor-enter p0

    .line 1
    :try_start_1
    iget p3, p0, Lcom/google/android/gms/internal/ads/zzui;->o:I

    const-wide/16 v0, -0x1

    if-eqz p3, :cond_2d

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzui;->m:[J

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzui;->q:I

    aget-wide v5, v2, v4

    cmp-long v2, p1, v5

    if-gez v2, :cond_12

    goto :goto_2d

    :cond_12
    if-eqz p4, :cond_1a

    iget p4, p0, Lcom/google/android/gms/internal/ads/zzui;->r:I

    if-eq p4, p3, :cond_1a

    add-int/lit8 p3, p4, 0x1

    :cond_1a
    move v5, p3

    const/4 v8, 0x0

    move-object v3, p0

    move-wide v6, p1

    .line 2
    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/zzui;->L(IIJZ)I

    move-result p1
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_2f

    const/4 p2, -0x1

    if-ne p1, p2, :cond_27

    monitor-exit p0

    return-wide v0

    .line 3
    :cond_27
    :try_start_27
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzui;->k(I)J

    move-result-wide p1
    :try_end_2b
    .catchall {:try_start_27 .. :try_end_2b} :catchall_2f

    monitor-exit p0

    return-wide p1

    .line 4
    :cond_2d
    :goto_2d
    monitor-exit p0

    return-wide v0

    :catchall_2f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final declared-synchronized j()J
    .registers 3

    monitor-enter p0

    .line 1
    :try_start_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzui;->o:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_f

    if-nez v0, :cond_9

    const-wide/16 v0, -0x1

    monitor-exit p0

    return-wide v0

    :cond_9
    :try_start_9
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzui;->k(I)J

    move-result-wide v0
    :try_end_d
    .catchall {:try_start_9 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-wide v0

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final k(I)J
    .registers 13

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzui;->t:J

    const-wide/high16 v2, -0x8000000000000000L

    const/4 v4, 0x0

    const/4 v5, -0x1

    if-nez p1, :cond_9

    goto :goto_2d

    :cond_9
    add-int/lit8 v6, p1, -0x1

    .line 2
    invoke-direct {p0, v6}, Lcom/google/android/gms/internal/ads/zzui;->g(I)I

    move-result v6

    const/4 v7, 0x0

    :goto_10
    if-ge v7, p1, :cond_2d

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzui;->m:[J

    .line 3
    aget-wide v9, v8, v6

    invoke-static {v2, v3, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzui;->l:[I

    .line 4
    aget v8, v8, v6

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_23

    goto :goto_2d

    :cond_23
    add-int/lit8 v6, v6, -0x1

    if-ne v6, v5, :cond_2a

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzui;->h:I

    add-int/2addr v6, v5

    :cond_2a
    add-int/lit8 v7, v7, 0x1

    goto :goto_10

    .line 5
    :cond_2d
    :goto_2d
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzui;->t:J

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzui;->o:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzui;->o:I

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzui;->p:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzui;->p:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzui;->q:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzui;->q:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzui;->h:I

    if-lt v1, v2, :cond_49

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzui;->q:I

    :cond_49
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzui;->r:I

    sub-int/2addr v1, p1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzui;->r:I

    if-gez v1, :cond_52

    iput v4, p0, Lcom/google/android/gms/internal/ads/zzui;->r:I

    :cond_52
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzui;->c:Lcom/google/android/gms/internal/ads/zzup;

    .line 6
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzup;->e(I)V

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzui;->o:I

    if-nez p1, :cond_6d

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzui;->q:I

    if-nez p1, :cond_61

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzui;->h:I

    :cond_61
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzui;->j:[J

    add-int/2addr p1, v5

    .line 7
    aget-wide v1, v0, p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzui;->k:[I

    aget p1, v0, p1

    int-to-long v3, p1

    add-long/2addr v1, v3

    return-wide v1

    :cond_6d
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzui;->j:[J

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzui;->q:I

    .line 8
    aget-wide v0, p1, v0

    return-wide v0
.end method

.method private final declared-synchronized l(JIJILcom/google/android/gms/internal/ads/zzaba;)V
    .registers 16

    monitor-enter p0

    .line 1
    :try_start_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzui;->o:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_21

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzui;->g(I)I

    move-result v0

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzui;->j:[J

    aget-wide v4, v3, v0

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzui;->k:[I

    aget v0, v3, v0

    int-to-long v6, v0

    add-long/2addr v4, v6

    cmp-long v0, v4, p4

    if-gtz v0, :cond_1d

    const/4 v0, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x0

    :goto_1e
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdl;->d(Z)V

    :cond_21
    const/high16 v0, 0x20000000

    and-int/2addr v0, p3

    if-eqz v0, :cond_28

    const/4 v0, 0x1

    goto :goto_29

    :cond_28
    const/4 v0, 0x0

    :goto_29
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzui;->v:Z

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzui;->u:J

    .line 2
    invoke-static {v3, v4, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/gms/internal/ads/zzui;->u:J

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzui;->o:I

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzui;->g(I)I

    move-result v0

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzui;->m:[J

    .line 3
    aput-wide p1, v3, v0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzui;->j:[J

    .line 4
    aput-wide p4, p1, v0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzui;->k:[I

    .line 5
    aput p6, p1, v0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzui;->l:[I

    .line 6
    aput p3, p1, v0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzui;->n:[Lcom/google/android/gms/internal/ads/zzaba;

    .line 7
    aput-object p7, p1, v0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzui;->i:[I

    .line 8
    aput v2, p1, v0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzui;->c:Lcom/google/android/gms/internal/ads/zzup;

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzup;->f()Z

    move-result p1

    if-nez p1, :cond_6b

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzui;->c:Lcom/google/android/gms/internal/ads/zzup;

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzup;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzug;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzug;->a:Lcom/google/android/gms/internal/ads/zzaf;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzui;->z:Lcom/google/android/gms/internal/ads/zzaf;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzaf;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_82

    .line 11
    :cond_6b
    sget-object p1, Lcom/google/android/gms/internal/ads/zzpy;->a:Lcom/google/android/gms/internal/ads/zzpy;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzui;->c:Lcom/google/android/gms/internal/ads/zzup;

    iget p3, p0, Lcom/google/android/gms/internal/ads/zzui;->p:I

    iget p4, p0, Lcom/google/android/gms/internal/ads/zzui;->o:I

    add-int/2addr p3, p4

    new-instance p4, Lcom/google/android/gms/internal/ads/zzug;

    iget-object p5, p0, Lcom/google/android/gms/internal/ads/zzui;->z:Lcom/google/android/gms/internal/ads/zzaf;
    :try_end_78
    .catchall {:try_start_1 .. :try_end_78} :catchall_f8

    .line 12
    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p6, 0x0

    .line 13
    :try_start_7c
    invoke-direct {p4, p5, p1, p6}, Lcom/google/android/gms/internal/ads/zzug;-><init>(Lcom/google/android/gms/internal/ads/zzaf;Lcom/google/android/gms/internal/ads/zzpy;Lcom/google/android/gms/internal/ads/zzuf;)V

    .line 14
    invoke-virtual {p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzup;->c(ILjava/lang/Object;)V

    :cond_82
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzui;->o:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzui;->o:I

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzui;->h:I

    if-ne p1, p2, :cond_f6

    add-int/lit16 p1, p2, 0x3e8

    .line 15
    new-array p3, p1, [I

    .line 16
    new-array p4, p1, [J

    .line 17
    new-array p5, p1, [J

    .line 18
    new-array p6, p1, [I

    .line 19
    new-array p7, p1, [I

    .line 20
    new-array v0, p1, [Lcom/google/android/gms/internal/ads/zzaba;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzui;->q:I

    sub-int/2addr p2, v1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzui;->j:[J

    .line 21
    invoke-static {v3, v1, p4, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzui;->m:[J

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzui;->q:I

    .line 22
    invoke-static {v1, v3, p5, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzui;->l:[I

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzui;->q:I

    .line 23
    invoke-static {v1, v3, p6, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzui;->k:[I

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzui;->q:I

    .line 24
    invoke-static {v1, v3, p7, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzui;->n:[Lcom/google/android/gms/internal/ads/zzaba;

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzui;->q:I

    .line 25
    invoke-static {v1, v3, v0, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzui;->i:[I

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzui;->q:I

    .line 26
    invoke-static {v1, v3, p3, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzui;->q:I

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzui;->j:[J

    .line 27
    invoke-static {v3, v2, p4, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzui;->m:[J

    .line 28
    invoke-static {v3, v2, p5, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzui;->l:[I

    .line 29
    invoke-static {v3, v2, p6, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzui;->k:[I

    .line 30
    invoke-static {v3, v2, p7, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzui;->n:[Lcom/google/android/gms/internal/ads/zzaba;

    .line 31
    invoke-static {v3, v2, v0, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzui;->i:[I

    .line 32
    invoke-static {v3, v2, p3, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzui;->j:[J

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzui;->m:[J

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzui;->l:[I

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzui;->k:[I

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzui;->n:[Lcom/google/android/gms/internal/ads/zzaba;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzui;->i:[I

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzui;->q:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzui;->h:I
    :try_end_f4
    .catchall {:try_start_7c .. :try_end_f4} :catchall_f8

    monitor-exit p0

    return-void

    :cond_f6
    monitor-exit p0

    return-void

    :catchall_f8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final m(Lcom/google/android/gms/internal/ads/zzaf;Lcom/google/android/gms/internal/ads/zzjo;)V
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzui;->g:Lcom/google/android/gms/internal/ads/zzaf;

    const/4 v1, 0x1

    if-nez v0, :cond_7

    const/4 v2, 0x1

    goto :goto_8

    :cond_7
    const/4 v2, 0x0

    :goto_8
    const/4 v3, 0x0

    if-eqz v2, :cond_d

    move-object v0, v3

    goto :goto_f

    .line 2
    :cond_d
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzaf;->o:Lcom/google/android/gms/internal/ads/zzx;

    .line 3
    :goto_f
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzui;->g:Lcom/google/android/gms/internal/ads/zzaf;

    iget-object v4, p1, Lcom/google/android/gms/internal/ads/zzaf;->o:Lcom/google/android/gms/internal/ads/zzx;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzui;->d:Lcom/google/android/gms/internal/ads/zzpz;

    invoke-interface {v5, p1}, Lcom/google/android/gms/internal/ads/zzpz;->N0(Lcom/google/android/gms/internal/ads/zzaf;)I

    move-result v5

    invoke-virtual {p1, v5}, Lcom/google/android/gms/internal/ads/zzaf;->c(I)Lcom/google/android/gms/internal/ads/zzaf;

    move-result-object v5

    iput-object v5, p2, Lcom/google/android/gms/internal/ads/zzjo;->a:Lcom/google/android/gms/internal/ads/zzaf;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzui;->C:Lcom/google/android/gms/internal/ads/zzqa;

    iput-object v5, p2, Lcom/google/android/gms/internal/ads/zzjo;->b:Lcom/google/android/gms/internal/ads/zzqa;

    if-nez v2, :cond_2d

    .line 4
    invoke-static {v0, v4}, Lcom/google/android/gms/internal/ads/zzew;->u(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    goto :goto_2d

    :cond_2c
    return-void

    :cond_2d
    :goto_2d
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzaf;->o:Lcom/google/android/gms/internal/ads/zzx;

    if-nez p1, :cond_32

    goto :goto_43

    :cond_32
    new-instance v3, Lcom/google/android/gms/internal/ads/zzqa;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzpr;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzqc;

    .line 5
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzqc;-><init>(I)V

    const/16 v1, 0x1771

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzpr;-><init>(Ljava/lang/Throwable;I)V

    invoke-direct {v3, p1}, Lcom/google/android/gms/internal/ads/zzqa;-><init>(Lcom/google/android/gms/internal/ads/zzpr;)V

    .line 6
    :goto_43
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzui;->C:Lcom/google/android/gms/internal/ads/zzqa;

    iput-object v3, p2, Lcom/google/android/gms/internal/ads/zzjo;->b:Lcom/google/android/gms/internal/ads/zzqa;

    return-void
.end method

.method private final n()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzui;->C:Lcom/google/android/gms/internal/ads/zzqa;

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzui;->C:Lcom/google/android/gms/internal/ads/zzqa;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzui;->g:Lcom/google/android/gms/internal/ads/zzaf;

    :cond_9
    return-void
.end method

.method private final declared-synchronized o()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_2
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzui;->r:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzui;->a:Lcom/google/android/gms/internal/ads/zzuc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzuc;->g()V
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-void

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final p()Z
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzui;->r:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzui;->o:I

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method private final q(I)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzui;->C:Lcom/google/android/gms/internal/ads/zzqa;

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzui;->l:[I

    aget p1, v0, p1

    const/high16 v0, 0x40000000    # 2.0f

    and-int/2addr p1, v0

    if-eqz p1, :cond_f

    goto :goto_11

    :cond_f
    return v1

    :cond_10
    const/4 v1, 0x1

    :goto_11
    return v1
.end method

.method private final declared-synchronized r(Lcom/google/android/gms/internal/ads/zzaf;)Z
    .registers 4

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzui;->x:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzui;->z:Lcom/google/android/gms/internal/ads/zzaf;

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/zzew;->u(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_46

    if-eqz v1, :cond_e

    monitor-exit p0

    return v0

    :cond_e
    :try_start_e
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzui;->c:Lcom/google/android/gms/internal/ads/zzup;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzup;->f()Z

    move-result v1

    if-nez v1, :cond_33

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzui;->c:Lcom/google/android/gms/internal/ads/zzup;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzup;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzug;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzug;->a:Lcom/google/android/gms/internal/ads/zzaf;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzaf;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzui;->c:Lcom/google/android/gms/internal/ads/zzup;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzup;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzug;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzug;->a:Lcom/google/android/gms/internal/ads/zzaf;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzui;->z:Lcom/google/android/gms/internal/ads/zzaf;

    goto :goto_35

    .line 5
    :cond_33
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzui;->z:Lcom/google/android/gms/internal/ads/zzaf;

    .line 6
    :goto_35
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzui;->z:Lcom/google/android/gms/internal/ads/zzaf;

    .line 7
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzaf;->l:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzaf;->i:Ljava/lang/String;

    .line 8
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzbt;->f(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzui;->A:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzui;->B:Z
    :try_end_43
    .catchall {:try_start_e .. :try_end_43} :catchall_46

    const/4 p1, 0x1

    monitor-exit p0

    return p1

    :catchall_46
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final B()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzui;->C:Lcom/google/android/gms/internal/ads/zzqa;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzqa;->a()Lcom/google/android/gms/internal/ads/zzpr;

    move-result-object v0

    throw v0
.end method

.method public final C()V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzui;->z()V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzui;->n()V

    return-void
.end method

.method public final D()V
    .registers 2

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzui;->E(Z)V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzui;->n()V

    return-void
.end method

.method public final E(Z)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzui;->a:Lcom/google/android/gms/internal/ads/zzuc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzuc;->f()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzui;->o:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzui;->p:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzui;->q:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzui;->r:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzui;->w:Z

    const-wide/high16 v2, -0x8000000000000000L

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzui;->s:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzui;->t:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzui;->u:J

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzui;->v:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzui;->c:Lcom/google/android/gms/internal/ads/zzup;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzup;->d()V

    if-eqz p1, :cond_29

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzui;->y:Lcom/google/android/gms/internal/ads/zzaf;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzui;->z:Lcom/google/android/gms/internal/ads/zzaf;

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzui;->x:Z

    :cond_29
    return-void
.end method

.method public final F(J)V
    .registers 3

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzui;->s:J

    return-void
.end method

.method public final G(Lcom/google/android/gms/internal/ads/zzuh;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzui;->f:Lcom/google/android/gms/internal/ads/zzuh;

    return-void
.end method

.method public final declared-synchronized H(I)V
    .registers 5

    monitor-enter p0

    const/4 v0, 0x0

    if-ltz p1, :cond_f

    .line 1
    :try_start_4
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzui;->r:I

    add-int/2addr v1, p1

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzui;->o:I

    if-gt v1, v2, :cond_f

    const/4 v0, 0x1

    goto :goto_f

    :catchall_d
    move-exception p1

    goto :goto_19

    :cond_f
    :goto_f
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdl;->d(Z)V

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzui;->r:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzui;->r:I
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_d

    monitor-exit p0

    return-void

    :goto_19
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized I()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzui;->v:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized J(Z)Z
    .registers 5

    monitor-enter p0

    .line 1
    :try_start_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzui;->p()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1d

    const/4 v0, 0x0

    if-nez p1, :cond_1b

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzui;->v:Z

    if-nez p1, :cond_1b

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzui;->z:Lcom/google/android/gms/internal/ads/zzaf;

    if-eqz p1, :cond_1a

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzui;->g:Lcom/google/android/gms/internal/ads/zzaf;
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_3e

    if-eq p1, v2, :cond_18

    goto :goto_1b

    :cond_18
    monitor-exit p0

    return v0

    :cond_1a
    const/4 v1, 0x0

    :cond_1b
    :goto_1b
    monitor-exit p0

    return v1

    :cond_1d
    :try_start_1d
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzui;->c:Lcom/google/android/gms/internal/ads/zzup;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzui;->p:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzui;->r:I

    add-int/2addr v0, v2

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzup;->a(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzug;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzug;->a:Lcom/google/android/gms/internal/ads/zzaf;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzui;->g:Lcom/google/android/gms/internal/ads/zzaf;
    :try_end_2e
    .catchall {:try_start_1d .. :try_end_2e} :catchall_3e

    if-eq p1, v0, :cond_32

    monitor-exit p0

    return v1

    :cond_32
    :try_start_32
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzui;->r:I

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzui;->g(I)I

    move-result p1

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzui;->q(I)Z

    move-result p1
    :try_end_3c
    .catchall {:try_start_32 .. :try_end_3c} :catchall_3e

    monitor-exit p0

    return p1

    :catchall_3e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized K(JZ)Z
    .registers 12

    monitor-enter p0

    .line 1
    :try_start_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzui;->o()V

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzui;->r:I

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzui;->g(I)I

    move-result v2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzui;->p()Z

    move-result v1

    const/4 v7, 0x0

    if-eqz v1, :cond_3b

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzui;->m:[J

    .line 2
    aget-wide v3, v1, v2

    cmp-long v1, p1, v3

    if-ltz v1, :cond_3b

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzui;->u:J

    cmp-long v1, p1, v3

    if-lez v1, :cond_21

    if-eqz p3, :cond_3b

    :cond_21
    iget p3, p0, Lcom/google/android/gms/internal/ads/zzui;->o:I

    sub-int v3, p3, v0

    const/4 v6, 0x1

    move-object v1, p0

    move-wide v4, p1

    .line 3
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzui;->L(IIJZ)I

    move-result p3
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_3d

    const/4 v0, -0x1

    if-ne p3, v0, :cond_31

    monitor-exit p0

    return v7

    :cond_31
    :try_start_31
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzui;->s:J

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzui;->r:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzui;->r:I
    :try_end_38
    .catchall {:try_start_31 .. :try_end_38} :catchall_3d

    const/4 p1, 0x1

    monitor-exit p0

    return p1

    :cond_3b
    monitor-exit p0

    return v7

    :catchall_3d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a(Lcom/google/android/gms/internal/ads/zzen;II)V
    .registers 4

    .line 1
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzui;->a:Lcom/google/android/gms/internal/ads/zzuc;

    invoke-virtual {p3, p1, p2}, Lcom/google/android/gms/internal/ads/zzuc;->h(Lcom/google/android/gms/internal/ads/zzen;I)V

    return-void
.end method

.method public final synthetic b(Lcom/google/android/gms/internal/ads/zzr;IZ)I
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzaaz;->a(Lcom/google/android/gms/internal/ads/zzabb;Lcom/google/android/gms/internal/ads/zzr;IZ)I

    move-result p1

    return p1
.end method

.method public final c(Lcom/google/android/gms/internal/ads/zzr;IZI)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzui;->a:Lcom/google/android/gms/internal/ads/zzuc;

    invoke-virtual {p4, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzuc;->a(Lcom/google/android/gms/internal/ads/zzr;IZ)I

    move-result p1

    return p1
.end method

.method public final synthetic d(Lcom/google/android/gms/internal/ads/zzen;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzaaz;->b(Lcom/google/android/gms/internal/ads/zzabb;Lcom/google/android/gms/internal/ads/zzen;I)V

    return-void
.end method

.method public final e(Lcom/google/android/gms/internal/ads/zzaf;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzui;->y:Lcom/google/android/gms/internal/ads/zzaf;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzui;->r(Lcom/google/android/gms/internal/ads/zzaf;)Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzui;->f:Lcom/google/android/gms/internal/ads/zzuh;

    if-eqz v1, :cond_f

    if-eqz v0, :cond_f

    .line 2
    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzuh;->p(Lcom/google/android/gms/internal/ads/zzaf;)V

    :cond_f
    return-void
.end method

.method public final f(JIIILcom/google/android/gms/internal/ads/zzaba;)V
    .registers 15

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzui;->w:Z

    if-eqz v0, :cond_c

    and-int/lit8 v0, p3, 0x1

    if-nez v0, :cond_9

    return-void

    :cond_9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzui;->w:Z

    :cond_c
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzui;->A:Z

    if-eqz v0, :cond_35

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzui;->s:J

    cmp-long v2, p1, v0

    if-gez v2, :cond_17

    return-void

    :cond_17
    and-int/lit8 v0, p3, 0x1

    if-nez v0, :cond_35

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzui;->B:Z

    if-nez v0, :cond_33

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzui;->z:Lcom/google/android/gms/internal/ads/zzaf;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Overriding unexpected non-sync sample for format: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SampleQueue"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzee;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzui;->B:Z

    :cond_33
    or-int/lit8 p3, p3, 0x1

    :cond_35
    move v3, p3

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzui;->a:Lcom/google/android/gms/internal/ads/zzuc;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzuc;->b()J

    move-result-wide v0

    int-to-long v4, p4

    sub-long/2addr v0, v4

    int-to-long v4, p5

    sub-long v4, v0, v4

    move-object v0, p0

    move-wide v1, p1

    move v6, p4

    move-object v7, p6

    .line 2
    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzui;->l(JIJILcom/google/android/gms/internal/ads/zzaba;)V

    return-void
.end method

.method public final s()I
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzui;->p:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzui;->r:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final declared-synchronized t(JZ)I
    .registers 12

    monitor-enter p0

    .line 1
    :try_start_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzui;->r:I

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzui;->g(I)I

    move-result v2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzui;->p()Z

    move-result v1

    const/4 v7, 0x0

    if-eqz v1, :cond_36

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzui;->m:[J

    aget-wide v3, v1, v2

    cmp-long v1, p1, v3

    if-gez v1, :cond_17

    goto :goto_36

    :cond_17
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzui;->u:J

    cmp-long v1, p1, v3

    if-lez v1, :cond_25

    if-nez p3, :cond_20

    goto :goto_25

    .line 2
    :cond_20
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzui;->o:I
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_38

    sub-int/2addr p1, v0

    monitor-exit p0

    return p1

    .line 3
    :cond_25
    :goto_25
    :try_start_25
    iget p3, p0, Lcom/google/android/gms/internal/ads/zzui;->o:I

    sub-int v3, p3, v0

    const/4 v6, 0x1

    move-object v1, p0

    move-wide v4, p1

    .line 4
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzui;->L(IIJZ)I

    move-result p1
    :try_end_30
    .catchall {:try_start_25 .. :try_end_30} :catchall_38

    const/4 p2, -0x1

    monitor-exit p0

    if-ne p1, p2, :cond_35

    return v7

    :cond_35
    return p1

    .line 5
    :cond_36
    :goto_36
    monitor-exit p0

    return v7

    :catchall_38
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final u()I
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzui;->p:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzui;->o:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final v(Lcom/google/android/gms/internal/ads/zzjo;Lcom/google/android/gms/internal/ads/zzgr;IZ)I
    .registers 13

    and-int/lit8 v0, p3, 0x2

    const/4 v1, 0x1

    if-eqz v0, :cond_7

    const/4 v5, 0x1

    goto :goto_9

    :cond_7
    const/4 v0, 0x0

    const/4 v5, 0x0

    .line 1
    :goto_9
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzui;->b:Lcom/google/android/gms/internal/ads/zzue;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v6, p4

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzui;->h(Lcom/google/android/gms/internal/ads/zzjo;Lcom/google/android/gms/internal/ads/zzgr;ZZLcom/google/android/gms/internal/ads/zzue;)I

    move-result p1

    const/4 p4, -0x4

    if-ne p1, p4, :cond_3e

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzgl;->g()Z

    move-result p1

    if-nez p1, :cond_3d

    and-int/lit8 p1, p3, 0x1

    and-int/lit8 p3, p3, 0x4

    if-nez p3, :cond_34

    if-eqz p1, :cond_2c

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzui;->a:Lcom/google/android/gms/internal/ads/zzuc;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzui;->b:Lcom/google/android/gms/internal/ads/zzue;

    .line 2
    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzuc;->d(Lcom/google/android/gms/internal/ads/zzgr;Lcom/google/android/gms/internal/ads/zzue;)V

    goto :goto_3d

    :cond_2c
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzui;->a:Lcom/google/android/gms/internal/ads/zzuc;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzui;->b:Lcom/google/android/gms/internal/ads/zzue;

    .line 3
    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzuc;->e(Lcom/google/android/gms/internal/ads/zzgr;Lcom/google/android/gms/internal/ads/zzue;)V

    goto :goto_37

    :cond_34
    if-eqz p1, :cond_37

    goto :goto_3d

    :cond_37
    :goto_37
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzui;->r:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzui;->r:I

    return p4

    :cond_3d
    :goto_3d
    const/4 p1, -0x4

    :cond_3e
    return p1
.end method

.method public final declared-synchronized w()J
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzui;->u:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-wide v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized x()Lcom/google/android/gms/internal/ads/zzaf;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzui;->x:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_c

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzui;->z:Lcom/google/android/gms/internal/ads/zzaf;
    :try_end_a
    .catchall {:try_start_8 .. :try_end_a} :catchall_c

    monitor-exit p0

    return-object v0

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final y(JZZ)V
    .registers 6

    .line 1
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzui;->a:Lcom/google/android/gms/internal/ads/zzuc;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p4}, Lcom/google/android/gms/internal/ads/zzui;->i(JZZ)J

    move-result-wide p1

    .line 2
    invoke-virtual {p3, p1, p2}, Lcom/google/android/gms/internal/ads/zzuc;->c(J)V

    return-void
.end method

.method public final z()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzui;->a:Lcom/google/android/gms/internal/ads/zzuc;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzui;->j()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzuc;->c(J)V

    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzud (com.google.android.gms.internal.ads.zzud)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzud;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdp;


# static fields
.field public static final synthetic a:Lcom/google/android/gms/internal/ads/zzud;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzud;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzud;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzud;->a:Lcom/google/android/gms/internal/ads/zzud;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
