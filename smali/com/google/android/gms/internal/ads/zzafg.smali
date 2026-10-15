###### Class com.google.android.gms.internal.ads.zzafg (com.google.android.gms.internal.ads.zzafg)
.class final Lcom/google/android/gms/internal/ads/zzafg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzafe;


# instance fields
.field private final a:J

.field private final b:I

.field private final c:J

.field private final d:J

.field private final e:J

.field private final f:[J


# direct methods
.method private constructor <init>(JIJJ[J)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzafg;->a:J

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzafg;->b:I

    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/zzafg;->c:J

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzafg;->f:[J

    iput-wide p6, p0, Lcom/google/android/gms/internal/ads/zzafg;->d:J

    const-wide/16 p3, -0x1

    cmp-long p5, p6, p3

    if-nez p5, :cond_14

    goto :goto_16

    :cond_14
    add-long p3, p1, p6

    :goto_16
    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzafg;->e:J

    return-void
.end method

.method public static a(JJLcom/google/android/gms/internal/ads/zzaan;Lcom/google/android/gms/internal/ads/zzen;)Lcom/google/android/gms/internal/ads/zzafg;
    .registers 30

    move-wide/from16 v0, p0

    move-object/from16 v2, p4

    .line 1
    iget v3, v2, Lcom/google/android/gms/internal/ads/zzaan;->g:I

    iget v4, v2, Lcom/google/android/gms/internal/ads/zzaan;->d:I

    invoke-virtual/range {p5 .. p5}, Lcom/google/android/gms/internal/ads/zzen;->m()I

    move-result v5

    and-int/lit8 v6, v5, 0x1

    const/4 v7, 0x1

    if-ne v6, v7, :cond_89

    .line 2
    invoke-virtual/range {p5 .. p5}, Lcom/google/android/gms/internal/ads/zzen;->v()I

    move-result v6

    if-nez v6, :cond_19

    goto/16 :goto_89

    :cond_19
    int-to-long v7, v3

    const-wide/32 v9, 0xf4240

    mul-long v13, v7, v9

    int-to-long v3, v4

    const/4 v7, 0x6

    and-int/2addr v5, v7

    int-to-long v11, v6

    move-wide v15, v3

    .line 3
    invoke-static/range {v11 .. v16}, Lcom/google/android/gms/internal/ads/zzew;->h0(JJJ)J

    move-result-wide v19

    if-eq v5, v7, :cond_3b

    new-instance v0, Lcom/google/android/gms/internal/ads/zzafg;

    iget v1, v2, Lcom/google/android/gms/internal/ads/zzaan;->c:I

    const-wide/16 v21, -0x1

    const/16 v23, 0x0

    move-object v15, v0

    move-wide/from16 v16, p2

    move/from16 v18, v1

    invoke-direct/range {v15 .. v23}, Lcom/google/android/gms/internal/ads/zzafg;-><init>(JIJJ[J)V

    return-object v0

    .line 4
    :cond_3b
    invoke-virtual/range {p5 .. p5}, Lcom/google/android/gms/internal/ads/zzen;->A()J

    move-result-wide v21

    const/16 v3, 0x64

    new-array v4, v3, [J

    const/4 v5, 0x0

    :goto_44
    if-ge v5, v3, :cond_50

    .line 5
    invoke-virtual/range {p5 .. p5}, Lcom/google/android/gms/internal/ads/zzen;->s()I

    move-result v6

    int-to-long v6, v6

    aput-wide v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_44

    :cond_50
    const-wide/16 v5, -0x1

    cmp-long v3, v0, v5

    if-eqz v3, :cond_7a

    add-long v5, p2, v21

    cmp-long v3, v0, v5

    if-eqz v3, :cond_7a

    new-instance v3, Ljava/lang/StringBuilder;

    .line 6
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "XING data size mismatch: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XingSeeker"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzee;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7a
    new-instance v0, Lcom/google/android/gms/internal/ads/zzafg;

    iget v1, v2, Lcom/google/android/gms/internal/ads/zzaan;->c:I

    move-object v15, v0

    move-wide/from16 v16, p2

    move/from16 v18, v1

    move-object/from16 v23, v4

    invoke-direct/range {v15 .. v23}, Lcom/google/android/gms/internal/ads/zzafg;-><init>(JIJJ[J)V

    return-object v0

    :cond_89
    :goto_89
    const/4 v0, 0x0

    return-object v0
.end method

.method private final e(I)J
    .registers 6

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzafg;->c:J

    int-to-long v2, p1

    mul-long v0, v0, v2

    const-wide/16 v2, 0x64

    div-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public final b()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzafg;->c:J

    return-wide v0
.end method

.method public final c(J)Lcom/google/android/gms/internal/ads/zzaav;
    .registers 13

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzafg;->f()Z

    move-result v0

    if-nez v0, :cond_19

    new-instance p1, Lcom/google/android/gms/internal/ads/zzaav;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzaay;

    const-wide/16 v0, 0x0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzafg;->a:J

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzafg;->b:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-direct {p2, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzaay;-><init>(JJ)V

    invoke-direct {p1, p2, p2}, Lcom/google/android/gms/internal/ads/zzaav;-><init>(Lcom/google/android/gms/internal/ads/zzaay;Lcom/google/android/gms/internal/ads/zzaay;)V

    return-object p1

    :cond_19
    const-wide/16 v6, 0x0

    iget-wide v8, p0, Lcom/google/android/gms/internal/ads/zzafg;->c:J

    move-wide v4, p1

    .line 2
    invoke-static/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/zzew;->c0(JJJ)J

    move-result-wide p1

    long-to-double v0, p1

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzafg;->c:J

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v4

    long-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    const-wide/16 v2, 0x0

    const-wide/high16 v6, 0x4070000000000000L    # 256.0

    cmpg-double v8, v0, v2

    if-gtz v8, :cond_3a

    goto :goto_67

    :cond_3a
    cmpl-double v2, v0, v4

    if-ltz v2, :cond_40

    move-wide v2, v6

    goto :goto_67

    :cond_40
    double-to-int v2, v0

    .line 3
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzafg;->f:[J

    .line 4
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzdl;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [J

    .line 5
    aget-wide v4, v3, v2

    long-to-double v4, v4

    const/16 v8, 0x63

    if-ne v2, v8, :cond_52

    move-wide v8, v6

    goto :goto_57

    :cond_52
    add-int/lit8 v8, v2, 0x1

    .line 6
    aget-wide v8, v3, v8

    long-to-double v8, v8

    :goto_57
    int-to-double v2, v2

    .line 7
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v0, v2

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v8, v4

    mul-double v0, v0, v8

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    add-double v2, v4, v0

    :goto_67
    div-double/2addr v2, v6

    .line 8
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzafg;->d:J

    long-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v0

    .line 9
    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzafg;->b:I

    int-to-long v6, v0

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzafg;->d:J

    const-wide/16 v2, -0x1

    add-long v8, v0, v2

    .line 10
    invoke-static/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/zzew;->c0(JJJ)J

    move-result-wide v0

    new-instance v2, Lcom/google/android/gms/internal/ads/zzaav;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzaay;

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzafg;->a:J

    add-long/2addr v4, v0

    .line 11
    invoke-direct {v3, p1, p2, v4, v5}, Lcom/google/android/gms/internal/ads/zzaay;-><init>(JJ)V

    invoke-direct {v2, v3, v3}, Lcom/google/android/gms/internal/ads/zzaav;-><init>(Lcom/google/android/gms/internal/ads/zzaay;Lcom/google/android/gms/internal/ads/zzaay;)V

    return-object v2
.end method

.method public final d(J)J
    .registers 14

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzafg;->a:J

    sub-long/2addr p1, v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzafg;->f()Z

    move-result v0

    if-eqz v0, :cond_63

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzafg;->b:I

    int-to-long v0, v0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_11

    goto :goto_63

    :cond_11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafg;->f:[J

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdl;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    long-to-double p1, p1

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzafg;->d:J

    const-wide/high16 v3, 0x4070000000000000L    # 256.0

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p1, p1, v3

    long-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p1, v1

    double-to-long v1, p1

    const/4 v3, 0x1

    .line 2
    invoke-static {v0, v1, v2, v3, v3}, Lcom/google/android/gms/internal/ads/zzew;->O([JJZZ)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzafg;->e(I)J

    move-result-wide v2

    .line 3
    aget-wide v4, v0, v1

    add-int/lit8 v6, v1, 0x1

    invoke-direct {p0, v6}, Lcom/google/android/gms/internal/ads/zzafg;->e(I)J

    move-result-wide v7

    const/16 v9, 0x63

    if-ne v1, v9, :cond_41

    const-wide/16 v0, 0x100

    goto :goto_44

    .line 4
    :cond_41
    aget-wide v9, v0, v6

    move-wide v0, v9

    :goto_44
    cmp-long v6, v4, v0

    if-nez v6, :cond_4b

    const-wide/16 p1, 0x0

    goto :goto_56

    :cond_4b
    long-to-double v9, v4

    .line 5
    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr p1, v9

    sub-long/2addr v0, v4

    long-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p1, v0

    :goto_56
    sub-long/2addr v7, v2

    long-to-double v0, v7

    .line 6
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p1, p1, v0

    .line 7
    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    add-long/2addr v2, p1

    return-wide v2

    :cond_63
    :goto_63
    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public final f()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafg;->f:[J

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public final zzb()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzafg;->e:J

    return-wide v0
.end method
