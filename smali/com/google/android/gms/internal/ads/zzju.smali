###### Class com.google.android.gms.internal.ads.zzju (com.google.android.gms.internal.ads.zzju)
.class final Lcom/google/android/gms/internal/ads/zzju;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzck;

.field private final b:Lcom/google/android/gms/internal/ads/zzcm;

.field private final c:Lcom/google/android/gms/internal/ads/zzlb;

.field private final d:Lcom/google/android/gms/internal/ads/zzdv;

.field private e:J

.field private f:I

.field private g:Z

.field private h:Lcom/google/android/gms/internal/ads/zzjr;

.field private i:Lcom/google/android/gms/internal/ads/zzjr;

.field private j:Lcom/google/android/gms/internal/ads/zzjr;

.field private k:I

.field private l:Ljava/lang/Object;

.field private m:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzlb;Lcom/google/android/gms/internal/ads/zzdv;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzju;->c:Lcom/google/android/gms/internal/ads/zzlb;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzju;->d:Lcom/google/android/gms/internal/ads/zzdv;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzck;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzck;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzju;->a:Lcom/google/android/gms/internal/ads/zzck;

    .line 2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzcm;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzcm;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzju;->b:Lcom/google/android/gms/internal/ads/zzcm;

    return-void
.end method

.method private static A(Lcom/google/android/gms/internal/ads/zzcn;Ljava/lang/Object;JJLcom/google/android/gms/internal/ads/zzcm;Lcom/google/android/gms/internal/ads/zzck;)Lcom/google/android/gms/internal/ads/zzss;
    .registers 14

    .line 1
    invoke-virtual {p0, p1, p7}, Lcom/google/android/gms/internal/ads/zzcn;->n(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzck;)Lcom/google/android/gms/internal/ads/zzck;

    iget v0, p7, Lcom/google/android/gms/internal/ads/zzck;->c:I

    const-wide/16 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, p6, v1, v2}, Lcom/google/android/gms/internal/ads/zzcn;->e(ILcom/google/android/gms/internal/ads/zzcm;J)Lcom/google/android/gms/internal/ads/zzcm;

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzcn;->a(Ljava/lang/Object;)I

    iget-wide v3, p7, Lcom/google/android/gms/internal/ads/zzck;->d:J

    cmp-long p6, v3, v1

    if-nez p6, :cond_16

    .line 4
    invoke-virtual {p7}, Lcom/google/android/gms/internal/ads/zzck;->b()I

    .line 5
    :cond_16
    invoke-virtual {p0, p1, p7}, Lcom/google/android/gms/internal/ads/zzcn;->n(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzck;)Lcom/google/android/gms/internal/ads/zzck;

    .line 6
    invoke-virtual {p7, p2, p3}, Lcom/google/android/gms/internal/ads/zzck;->d(J)I

    move-result v2

    const/4 p0, -0x1

    if-ne v2, p0, :cond_2a

    .line 7
    invoke-virtual {p7, p2, p3}, Lcom/google/android/gms/internal/ads/zzck;->c(J)I

    move-result p0

    new-instance p2, Lcom/google/android/gms/internal/ads/zzss;

    invoke-direct {p2, p1, p4, p5, p0}, Lcom/google/android/gms/internal/ads/zzss;-><init>(Ljava/lang/Object;JI)V

    return-object p2

    .line 8
    :cond_2a
    invoke-virtual {p7, v2}, Lcom/google/android/gms/internal/ads/zzck;->e(I)I

    move-result v3

    new-instance p0, Lcom/google/android/gms/internal/ads/zzss;

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzss;-><init>(Ljava/lang/Object;IIJ)V

    return-object p0
.end method

.method private final B()V
    .registers 5

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfqk;->o()Lcom/google/android/gms/internal/ads/zzfqh;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzju;->h:Lcom/google/android/gms/internal/ads/zzjr;

    :goto_6
    if-eqz v1, :cond_14

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzjr;->f:Lcom/google/android/gms/internal/ads/zzjs;

    .line 2
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzjs;->a:Lcom/google/android/gms/internal/ads/zzss;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzfqh;->g(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfqh;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzjr;->g()Lcom/google/android/gms/internal/ads/zzjr;

    move-result-object v1

    goto :goto_6

    :cond_14
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzju;->i:Lcom/google/android/gms/internal/ads/zzjr;

    if-nez v1, :cond_1a

    const/4 v1, 0x0

    goto :goto_1e

    .line 3
    :cond_1a
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzjr;->f:Lcom/google/android/gms/internal/ads/zzjs;

    .line 4
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzjs;->a:Lcom/google/android/gms/internal/ads/zzss;

    .line 5
    :goto_1e
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzju;->d:Lcom/google/android/gms/internal/ads/zzdv;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzjt;

    invoke-direct {v3, p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzjt;-><init>(Lcom/google/android/gms/internal/ads/zzju;Lcom/google/android/gms/internal/ads/zzfqh;Lcom/google/android/gms/internal/ads/zzss;)V

    .line 6
    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/zzdv;->i(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private final C(Lcom/google/android/gms/internal/ads/zzcn;Lcom/google/android/gms/internal/ads/zzss;Z)Z
    .registers 11

    .line 1
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzbn;->a:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzcn;->a(Ljava/lang/Object;)I

    move-result v1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzju;->a:Lcom/google/android/gms/internal/ads/zzck;

    const/4 v6, 0x0

    .line 2
    invoke-virtual {p1, v1, p2, v6}, Lcom/google/android/gms/internal/ads/zzcn;->d(ILcom/google/android/gms/internal/ads/zzck;Z)Lcom/google/android/gms/internal/ads/zzck;

    move-result-object p2

    .line 3
    iget p2, p2, Lcom/google/android/gms/internal/ads/zzck;->c:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzju;->b:Lcom/google/android/gms/internal/ads/zzcm;

    const-wide/16 v2, 0x0

    .line 4
    invoke-virtual {p1, p2, v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzcn;->e(ILcom/google/android/gms/internal/ads/zzcm;J)Lcom/google/android/gms/internal/ads/zzcm;

    move-result-object p2

    .line 5
    iget-boolean p2, p2, Lcom/google/android/gms/internal/ads/zzcm;->g:Z

    if-nez p2, :cond_2f

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzju;->a:Lcom/google/android/gms/internal/ads/zzck;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzju;->b:Lcom/google/android/gms/internal/ads/zzcm;

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzju;->f:I

    iget-boolean v5, p0, Lcom/google/android/gms/internal/ads/zzju;->g:Z

    move-object v0, p1

    .line 6
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzcn;->i(ILcom/google/android/gms/internal/ads/zzck;Lcom/google/android/gms/internal/ads/zzcm;IZ)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_2f

    if-eqz p3, :cond_2f

    const/4 p1, 0x1

    return p1

    :cond_2f
    return v6
.end method

.method private final a(Lcom/google/android/gms/internal/ads/zzcn;Lcom/google/android/gms/internal/ads/zzss;)Z
    .registers 8

    .line 1
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzju;->c(Lcom/google/android/gms/internal/ads/zzss;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzbn;->a:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzju;->a:Lcom/google/android/gms/internal/ads/zzck;

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/ads/zzcn;->n(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzck;)Lcom/google/android/gms/internal/ads/zzck;

    move-result-object v0

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzck;->c:I

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzbn;->a:Ljava/lang/Object;

    .line 2
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzcn;->a(Ljava/lang/Object;)I

    move-result p2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzju;->b:Lcom/google/android/gms/internal/ads/zzcm;

    const-wide/16 v3, 0x0

    .line 3
    invoke-virtual {p1, v0, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzcn;->e(ILcom/google/android/gms/internal/ads/zzcm;J)Lcom/google/android/gms/internal/ads/zzcm;

    move-result-object p1

    .line 4
    iget p1, p1, Lcom/google/android/gms/internal/ads/zzcm;->n:I

    if-ne p1, p2, :cond_26

    const/4 p1, 0x1

    return p1

    :cond_26
    return v1
.end method

.method private final b(Lcom/google/android/gms/internal/ads/zzcn;)Z
    .registers 10

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzju;->h:Lcom/google/android/gms/internal/ads/zzjr;

    const/4 v1, 0x1

    if-nez v0, :cond_6

    return v1

    :cond_6
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzjr;->b:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/zzcn;->a(Ljava/lang/Object;)I

    move-result v2

    move v3, v2

    :goto_d
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzju;->a:Lcom/google/android/gms/internal/ads/zzck;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzju;->b:Lcom/google/android/gms/internal/ads/zzcm;

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzju;->f:I

    iget-boolean v7, p0, Lcom/google/android/gms/internal/ads/zzju;->g:Z

    move-object v2, p1

    .line 2
    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzcn;->i(ILcom/google/android/gms/internal/ads/zzck;Lcom/google/android/gms/internal/ads/zzcm;IZ)I

    move-result v3

    .line 3
    :goto_1a
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzjr;->g()Lcom/google/android/gms/internal/ads/zzjr;

    move-result-object v2

    if-eqz v2, :cond_2b

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzjr;->f:Lcom/google/android/gms/internal/ads/zzjs;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/zzjs;->g:Z

    if-nez v2, :cond_2b

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzjr;->g()Lcom/google/android/gms/internal/ads/zzjr;

    move-result-object v0

    goto :goto_1a

    .line 5
    :cond_2b
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzjr;->g()Lcom/google/android/gms/internal/ads/zzjr;

    move-result-object v2

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3f

    if-nez v2, :cond_35

    goto :goto_3f

    .line 6
    :cond_35
    iget-object v4, v2, Lcom/google/android/gms/internal/ads/zzjr;->b:Ljava/lang/Object;

    .line 7
    invoke-virtual {p1, v4}, Lcom/google/android/gms/internal/ads/zzcn;->a(Ljava/lang/Object;)I

    move-result v4

    if-ne v4, v3, :cond_3f

    move-object v0, v2

    goto :goto_d

    .line 8
    :cond_3f
    :goto_3f
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzju;->p(Lcom/google/android/gms/internal/ads/zzjr;)Z

    move-result v2

    .line 9
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzjr;->f:Lcom/google/android/gms/internal/ads/zzjs;

    invoke-virtual {p0, p1, v3}, Lcom/google/android/gms/internal/ads/zzju;->j(Lcom/google/android/gms/internal/ads/zzcn;Lcom/google/android/gms/internal/ads/zzjs;)Lcom/google/android/gms/internal/ads/zzjs;

    move-result-object p1

    iput-object p1, v0, Lcom/google/android/gms/internal/ads/zzjr;->f:Lcom/google/android/gms/internal/ads/zzjs;

    if-nez v2, :cond_4e

    return v1

    :cond_4e
    const/4 p1, 0x0

    return p1
.end method

.method private static final c(Lcom/google/android/gms/internal/ads/zzss;)Z
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbn;->b()Z

    move-result v0

    if-nez v0, :cond_d

    iget p0, p0, Lcom/google/android/gms/internal/ads/zzbn;->e:I

    const/4 v0, -0x1

    if-ne p0, v0, :cond_d

    const/4 p0, 0x1

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method private final v(Lcom/google/android/gms/internal/ads/zzcn;Ljava/lang/Object;I)J
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzju;->a:Lcom/google/android/gms/internal/ads/zzck;

    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzcn;->n(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzck;)Lcom/google/android/gms/internal/ads/zzck;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzju;->a:Lcom/google/android/gms/internal/ads/zzck;

    .line 2
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/zzck;->h(I)J

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzju;->a:Lcom/google/android/gms/internal/ads/zzck;

    .line 3
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/zzck;->j(I)J

    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method private final w(Lcom/google/android/gms/internal/ads/zzcn;Lcom/google/android/gms/internal/ads/zzjr;J)Lcom/google/android/gms/internal/ads/zzjs;
    .registers 21

    move-object/from16 v9, p0

    move-object/from16 v8, p1

    move-object/from16 v10, p2

    .line 1
    iget-object v11, v10, Lcom/google/android/gms/internal/ads/zzjr;->f:Lcom/google/android/gms/internal/ads/zzjs;

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzjr;->e()J

    move-result-wide v0

    iget-wide v2, v11, Lcom/google/android/gms/internal/ads/zzjs;->e:J

    add-long/2addr v0, v2

    .line 2
    iget-boolean v2, v11, Lcom/google/android/gms/internal/ads/zzjs;->g:Z

    sub-long v6, v0, p3

    const/4 v12, -0x1

    const/4 v13, 0x0

    if-eqz v2, :cond_c7

    .line 3
    iget-object v0, v11, Lcom/google/android/gms/internal/ads/zzjs;->a:Lcom/google/android/gms/internal/ads/zzss;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzbn;->a:Ljava/lang/Object;

    invoke-virtual {v8, v0}, Lcom/google/android/gms/internal/ads/zzcn;->a(Ljava/lang/Object;)I

    move-result v1

    iget-object v2, v9, Lcom/google/android/gms/internal/ads/zzju;->a:Lcom/google/android/gms/internal/ads/zzck;

    iget-object v3, v9, Lcom/google/android/gms/internal/ads/zzju;->b:Lcom/google/android/gms/internal/ads/zzcm;

    iget v0, v9, Lcom/google/android/gms/internal/ads/zzju;->f:I

    iget-boolean v5, v9, Lcom/google/android/gms/internal/ads/zzju;->g:Z

    move v4, v0

    move-object/from16 v0, p1

    const-wide/16 v14, 0x0

    .line 4
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzcn;->i(ILcom/google/android/gms/internal/ads/zzck;Lcom/google/android/gms/internal/ads/zzcm;IZ)I

    move-result v0

    if-ne v0, v12, :cond_33

    return-object v13

    :cond_33
    iget-object v1, v9, Lcom/google/android/gms/internal/ads/zzju;->a:Lcom/google/android/gms/internal/ads/zzck;

    const/4 v2, 0x1

    .line 5
    invoke-virtual {v8, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzcn;->d(ILcom/google/android/gms/internal/ads/zzck;Z)Lcom/google/android/gms/internal/ads/zzck;

    move-result-object v1

    iget v3, v1, Lcom/google/android/gms/internal/ads/zzck;->c:I

    iget-object v1, v9, Lcom/google/android/gms/internal/ads/zzju;->a:Lcom/google/android/gms/internal/ads/zzck;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzck;->b:Ljava/lang/Object;

    .line 6
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzjs;->a:Lcom/google/android/gms/internal/ads/zzss;

    iget-wide v4, v2, Lcom/google/android/gms/internal/ads/zzbn;->d:J

    iget-object v2, v9, Lcom/google/android/gms/internal/ads/zzju;->b:Lcom/google/android/gms/internal/ads/zzcm;

    .line 8
    invoke-virtual {v8, v3, v2, v14, v15}, Lcom/google/android/gms/internal/ads/zzcn;->e(ILcom/google/android/gms/internal/ads/zzcm;J)Lcom/google/android/gms/internal/ads/zzcm;

    move-result-object v2

    .line 9
    iget v2, v2, Lcom/google/android/gms/internal/ads/zzcm;->m:I

    if-ne v2, v0, :cond_94

    iget-object v1, v9, Lcom/google/android/gms/internal/ads/zzju;->b:Lcom/google/android/gms/internal/ads/zzcm;

    iget-object v2, v9, Lcom/google/android/gms/internal/ads/zzju;->a:Lcom/google/android/gms/internal/ads/zzck;

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 10
    invoke-static {v14, v15, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    move-object/from16 v0, p1

    .line 11
    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzcn;->m(Lcom/google/android/gms/internal/ads/zzcm;Lcom/google/android/gms/internal/ads/zzck;IJJ)Landroid/util/Pair;

    move-result-object v0

    if-nez v0, :cond_67

    return-object v13

    .line 12
    :cond_67
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 13
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzjr;->g()Lcom/google/android/gms/internal/ads/zzjr;

    move-result-object v0

    if-eqz v0, :cond_86

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzjr;->b:Ljava/lang/Object;

    .line 14
    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_86

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzjr;->f:Lcom/google/android/gms/internal/ads/zzjs;

    .line 15
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzjs;->a:Lcom/google/android/gms/internal/ads/zzss;

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzbn;->d:J

    goto :goto_8d

    .line 16
    :cond_86
    iget-wide v4, v9, Lcom/google/android/gms/internal/ads/zzju;->e:J

    const-wide/16 v6, 0x1

    add-long/2addr v6, v4

    iput-wide v6, v9, Lcom/google/android/gms/internal/ads/zzju;->e:J

    :goto_8d
    move-wide v12, v2

    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_95

    :cond_94
    move-wide v12, v14

    .line 17
    :goto_95
    iget-object v6, v9, Lcom/google/android/gms/internal/ads/zzju;->b:Lcom/google/android/gms/internal/ads/zzcm;

    iget-object v7, v9, Lcom/google/android/gms/internal/ads/zzju;->a:Lcom/google/android/gms/internal/ads/zzck;

    move-object/from16 v0, p1

    move-wide v2, v12

    .line 18
    invoke-static/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzju;->A(Lcom/google/android/gms/internal/ads/zzcn;Ljava/lang/Object;JJLcom/google/android/gms/internal/ads/zzcm;Lcom/google/android/gms/internal/ads/zzck;)Lcom/google/android/gms/internal/ads/zzss;

    move-result-object v2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v14, v0

    if-eqz v3, :cond_bc

    .line 19
    iget-wide v3, v11, Lcom/google/android/gms/internal/ads/zzjs;->c:J

    cmp-long v5, v3, v0

    if-eqz v5, :cond_bc

    .line 20
    iget-object v0, v11, Lcom/google/android/gms/internal/ads/zzjs;->a:Lcom/google/android/gms/internal/ads/zzss;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzbn;->a:Ljava/lang/Object;

    iget-object v1, v9, Lcom/google/android/gms/internal/ads/zzju;->a:Lcom/google/android/gms/internal/ads/zzck;

    .line 21
    invoke-virtual {v8, v0, v1}, Lcom/google/android/gms/internal/ads/zzcn;->n(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzck;)Lcom/google/android/gms/internal/ads/zzck;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzck;->b()I

    :cond_bc
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v3, v14

    move-wide v5, v12

    .line 22
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzju;->x(Lcom/google/android/gms/internal/ads/zzcn;Lcom/google/android/gms/internal/ads/zzss;JJ)Lcom/google/android/gms/internal/ads/zzjs;

    move-result-object v0

    return-object v0

    :cond_c7
    const-wide/16 v14, 0x0

    .line 23
    iget-object v10, v11, Lcom/google/android/gms/internal/ads/zzjs;->a:Lcom/google/android/gms/internal/ads/zzss;

    iget-object v0, v10, Lcom/google/android/gms/internal/ads/zzbn;->a:Ljava/lang/Object;

    iget-object v1, v9, Lcom/google/android/gms/internal/ads/zzju;->a:Lcom/google/android/gms/internal/ads/zzck;

    .line 24
    invoke-virtual {v8, v0, v1}, Lcom/google/android/gms/internal/ads/zzcn;->n(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzck;)Lcom/google/android/gms/internal/ads/zzck;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzbn;->b()Z

    move-result v0

    if-eqz v0, :cond_143

    iget v3, v10, Lcom/google/android/gms/internal/ads/zzbn;->b:I

    iget-object v0, v9, Lcom/google/android/gms/internal/ads/zzju;->a:Lcom/google/android/gms/internal/ads/zzck;

    .line 25
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzck;->a(I)I

    move-result v0

    if-ne v0, v12, :cond_e3

    return-object v13

    :cond_e3
    iget-object v0, v9, Lcom/google/android/gms/internal/ads/zzju;->a:Lcom/google/android/gms/internal/ads/zzck;

    iget v1, v10, Lcom/google/android/gms/internal/ads/zzbn;->c:I

    .line 26
    invoke-virtual {v0, v3, v1}, Lcom/google/android/gms/internal/ads/zzck;->f(II)I

    move-result v4

    if-gez v4, :cond_fd

    iget-object v2, v10, Lcom/google/android/gms/internal/ads/zzbn;->a:Ljava/lang/Object;

    .line 27
    iget-wide v5, v11, Lcom/google/android/gms/internal/ads/zzjs;->c:J

    iget-wide v10, v10, Lcom/google/android/gms/internal/ads/zzbn;->d:J

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v7, v10

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/zzju;->y(Lcom/google/android/gms/internal/ads/zzcn;Ljava/lang/Object;IIJJ)Lcom/google/android/gms/internal/ads/zzjs;

    move-result-object v0

    return-object v0

    .line 28
    :cond_fd
    iget-wide v0, v11, Lcom/google/android/gms/internal/ads/zzjs;->c:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_128

    iget-object v1, v9, Lcom/google/android/gms/internal/ads/zzju;->b:Lcom/google/android/gms/internal/ads/zzcm;

    iget-object v2, v9, Lcom/google/android/gms/internal/ads/zzju;->a:Lcom/google/android/gms/internal/ads/zzck;

    iget v3, v2, Lcom/google/android/gms/internal/ads/zzck;->c:I

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 29
    invoke-static {v14, v15, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    move-object/from16 v0, p1

    .line 30
    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzcn;->m(Lcom/google/android/gms/internal/ads/zzcm;Lcom/google/android/gms/internal/ads/zzck;IJJ)Landroid/util/Pair;

    move-result-object v0

    if-nez v0, :cond_120

    return-object v13

    .line 31
    :cond_120
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :cond_128
    iget-object v2, v10, Lcom/google/android/gms/internal/ads/zzbn;->a:Ljava/lang/Object;

    iget v3, v10, Lcom/google/android/gms/internal/ads/zzbn;->b:I

    .line 32
    invoke-direct {v9, v8, v2, v3}, Lcom/google/android/gms/internal/ads/zzju;->v(Lcom/google/android/gms/internal/ads/zzcn;Ljava/lang/Object;I)J

    iget-object v2, v10, Lcom/google/android/gms/internal/ads/zzbn;->a:Ljava/lang/Object;

    .line 33
    invoke-static {v14, v15, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iget-wide v5, v11, Lcom/google/android/gms/internal/ads/zzjs;->c:J

    iget-wide v10, v10, Lcom/google/android/gms/internal/ads/zzbn;->d:J

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v7, v10

    .line 34
    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/zzju;->z(Lcom/google/android/gms/internal/ads/zzcn;Ljava/lang/Object;JJJ)Lcom/google/android/gms/internal/ads/zzjs;

    move-result-object v0

    return-object v0

    :cond_143
    iget-object v0, v9, Lcom/google/android/gms/internal/ads/zzju;->a:Lcom/google/android/gms/internal/ads/zzck;

    iget v1, v10, Lcom/google/android/gms/internal/ads/zzbn;->e:I

    .line 35
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzck;->e(I)I

    move-result v4

    iget-object v0, v9, Lcom/google/android/gms/internal/ads/zzju;->a:Lcom/google/android/gms/internal/ads/zzck;

    iget v1, v10, Lcom/google/android/gms/internal/ads/zzbn;->e:I

    .line 36
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzck;->l(I)Z

    iget-object v0, v9, Lcom/google/android/gms/internal/ads/zzju;->a:Lcom/google/android/gms/internal/ads/zzck;

    iget v1, v10, Lcom/google/android/gms/internal/ads/zzbn;->e:I

    .line 37
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzck;->a(I)I

    move-result v0

    if-eq v4, v0, :cond_16e

    iget-object v2, v10, Lcom/google/android/gms/internal/ads/zzbn;->a:Ljava/lang/Object;

    iget v3, v10, Lcom/google/android/gms/internal/ads/zzbn;->e:I

    .line 38
    iget-wide v5, v11, Lcom/google/android/gms/internal/ads/zzjs;->e:J

    iget-wide v10, v10, Lcom/google/android/gms/internal/ads/zzbn;->d:J

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v7, v10

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/zzju;->y(Lcom/google/android/gms/internal/ads/zzcn;Ljava/lang/Object;IIJJ)Lcom/google/android/gms/internal/ads/zzjs;

    move-result-object v0

    return-object v0

    .line 39
    :cond_16e
    iget-object v0, v10, Lcom/google/android/gms/internal/ads/zzbn;->a:Ljava/lang/Object;

    iget v1, v10, Lcom/google/android/gms/internal/ads/zzbn;->e:I

    .line 40
    invoke-direct {v9, v8, v0, v1}, Lcom/google/android/gms/internal/ads/zzju;->v(Lcom/google/android/gms/internal/ads/zzcn;Ljava/lang/Object;I)J

    iget-object v2, v10, Lcom/google/android/gms/internal/ads/zzbn;->a:Ljava/lang/Object;

    const-wide/16 v3, 0x0

    .line 41
    iget-wide v5, v11, Lcom/google/android/gms/internal/ads/zzjs;->e:J

    iget-wide v10, v10, Lcom/google/android/gms/internal/ads/zzbn;->d:J

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v7, v10

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/zzju;->z(Lcom/google/android/gms/internal/ads/zzcn;Ljava/lang/Object;JJJ)Lcom/google/android/gms/internal/ads/zzjs;

    move-result-object v0

    return-object v0
.end method

.method private final x(Lcom/google/android/gms/internal/ads/zzcn;Lcom/google/android/gms/internal/ads/zzss;JJ)Lcom/google/android/gms/internal/ads/zzjs;
    .registers 19

    move-object v0, p2

    .line 1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzbn;->a:Ljava/lang/Object;

    move-object v11, p0

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzju;->a:Lcom/google/android/gms/internal/ads/zzck;

    move-object v3, p1

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzcn;->n(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzck;)Lcom/google/android/gms/internal/ads/zzck;

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzbn;->b()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 3
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzbn;->a:Ljava/lang/Object;

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzbn;->b:I

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzbn;->c:I

    iget-wide v9, v0, Lcom/google/android/gms/internal/ads/zzbn;->d:J

    move-object v2, p0

    move-object v3, p1

    move-wide v7, p3

    invoke-direct/range {v2 .. v10}, Lcom/google/android/gms/internal/ads/zzju;->y(Lcom/google/android/gms/internal/ads/zzcn;Ljava/lang/Object;IIJJ)Lcom/google/android/gms/internal/ads/zzjs;

    move-result-object v0

    return-object v0

    .line 4
    :cond_20
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzbn;->a:Ljava/lang/Object;

    iget-wide v9, v0, Lcom/google/android/gms/internal/ads/zzbn;->d:J

    move-object v2, p0

    move-object v3, p1

    move-wide/from16 v5, p5

    move-wide v7, p3

    invoke-direct/range {v2 .. v10}, Lcom/google/android/gms/internal/ads/zzju;->z(Lcom/google/android/gms/internal/ads/zzcn;Ljava/lang/Object;JJJ)Lcom/google/android/gms/internal/ads/zzjs;

    move-result-object v0

    return-object v0
.end method

.method private final y(Lcom/google/android/gms/internal/ads/zzcn;Ljava/lang/Object;IIJJ)Lcom/google/android/gms/internal/ads/zzjs;
    .registers 27

    move-object/from16 v0, p0

    .line 1
    new-instance v7, Lcom/google/android/gms/internal/ads/zzss;

    move-object v1, v7

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-wide/from16 v5, p7

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzss;-><init>(Ljava/lang/Object;IIJ)V

    iget-object v1, v7, Lcom/google/android/gms/internal/ads/zzbn;->a:Ljava/lang/Object;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzju;->a:Lcom/google/android/gms/internal/ads/zzck;

    move-object/from16 v3, p1

    .line 2
    invoke-virtual {v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzcn;->n(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzck;)Lcom/google/android/gms/internal/ads/zzck;

    move-result-object v1

    iget v2, v7, Lcom/google/android/gms/internal/ads/zzbn;->b:I

    iget v3, v7, Lcom/google/android/gms/internal/ads/zzbn;->c:I

    .line 3
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzck;->g(II)J

    move-result-wide v9

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzju;->a:Lcom/google/android/gms/internal/ads/zzck;

    move/from16 v2, p3

    .line 4
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzck;->e(I)I

    move-result v1

    move/from16 v2, p4

    if-ne v2, v1, :cond_33

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzju;->a:Lcom/google/android/gms/internal/ads/zzck;

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzck;->i()J

    :cond_33
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzju;->a:Lcom/google/android/gms/internal/ads/zzck;

    iget v2, v7, Lcom/google/android/gms/internal/ads/zzbn;->b:I

    .line 6
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzck;->l(I)Z

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v3, 0x0

    cmp-long v5, v9, v1

    if-eqz v5, :cond_51

    cmp-long v1, v9, v3

    if-gtz v1, :cond_51

    const-wide/16 v1, -0x1

    add-long/2addr v1, v9

    .line 7
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    move-wide v3, v1

    :cond_51
    new-instance v15, Lcom/google/android/gms/internal/ads/zzjs;

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v1, v15

    move-object v2, v7

    move-wide/from16 v5, p5

    move-wide v7, v11

    move v11, v13

    move v12, v14

    move/from16 v13, v16

    move/from16 v14, v17

    .line 8
    invoke-direct/range {v1 .. v14}, Lcom/google/android/gms/internal/ads/zzjs;-><init>(Lcom/google/android/gms/internal/ads/zzss;JJJJZZZZ)V

    return-object v15
.end method

.method private final z(Lcom/google/android/gms/internal/ads/zzcn;Ljava/lang/Object;JJJ)Lcom/google/android/gms/internal/ads/zzjs;
    .registers 31

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    .line 1
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzju;->a:Lcom/google/android/gms/internal/ads/zzck;

    invoke-virtual {v1, v2, v5}, Lcom/google/android/gms/internal/ads/zzcn;->n(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzck;)Lcom/google/android/gms/internal/ads/zzck;

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzju;->a:Lcom/google/android/gms/internal/ads/zzck;

    .line 2
    invoke-virtual {v5, v3, v4}, Lcom/google/android/gms/internal/ads/zzck;->c(J)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_1c

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzju;->a:Lcom/google/android/gms/internal/ads/zzck;

    .line 3
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzck;->b()I

    goto :goto_21

    .line 4
    :cond_1c
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzju;->a:Lcom/google/android/gms/internal/ads/zzck;

    .line 5
    invoke-virtual {v7, v5}, Lcom/google/android/gms/internal/ads/zzck;->l(I)Z

    .line 6
    :goto_21
    new-instance v9, Lcom/google/android/gms/internal/ads/zzss;

    move-wide/from16 v7, p7

    .line 7
    invoke-direct {v9, v2, v7, v8, v5}, Lcom/google/android/gms/internal/ads/zzss;-><init>(Ljava/lang/Object;JI)V

    invoke-static {v9}, Lcom/google/android/gms/internal/ads/zzju;->c(Lcom/google/android/gms/internal/ads/zzss;)Z

    move-result v2

    .line 8
    invoke-direct {v0, v1, v9}, Lcom/google/android/gms/internal/ads/zzju;->a(Lcom/google/android/gms/internal/ads/zzcn;Lcom/google/android/gms/internal/ads/zzss;)Z

    move-result v20

    .line 9
    invoke-direct {v0, v1, v9, v2}, Lcom/google/android/gms/internal/ads/zzju;->C(Lcom/google/android/gms/internal/ads/zzcn;Lcom/google/android/gms/internal/ads/zzss;Z)Z

    move-result v21

    if-eq v5, v6, :cond_3b

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzju;->a:Lcom/google/android/gms/internal/ads/zzck;

    .line 10
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzck;->l(I)Z

    :cond_3b
    const-wide/16 v7, 0x0

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    if-eq v5, v6, :cond_4b

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzju;->a:Lcom/google/android/gms/internal/ads/zzck;

    .line 11
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzck;->h(I)J

    move-wide v5, v7

    goto :goto_4c

    :cond_4b
    move-wide v5, v10

    :goto_4c
    cmp-long v1, v5, v10

    if-eqz v1, :cond_54

    move-wide v14, v5

    move-wide/from16 v16, v14

    goto :goto_5b

    .line 12
    :cond_54
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzju;->a:Lcom/google/android/gms/internal/ads/zzck;

    iget-wide v5, v1, Lcom/google/android/gms/internal/ads/zzck;->d:J

    move-wide/from16 v16, v5

    move-wide v14, v10

    :goto_5b
    cmp-long v1, v16, v10

    if-eqz v1, :cond_6b

    cmp-long v1, v3, v16

    if-ltz v1, :cond_6b

    const-wide/16 v3, -0x1

    add-long v3, v16, v3

    .line 13
    invoke-static {v7, v8, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    :cond_6b
    move-wide v10, v3

    new-instance v1, Lcom/google/android/gms/internal/ads/zzjs;

    const/16 v18, 0x0

    move-object v8, v1

    move-wide/from16 v12, p5

    move/from16 v19, v2

    .line 14
    invoke-direct/range {v8 .. v21}, Lcom/google/android/gms/internal/ads/zzjs;-><init>(Lcom/google/android/gms/internal/ads/zzss;JJJJZZZZ)V

    return-object v1
.end method


# virtual methods
.method public final d()Lcom/google/android/gms/internal/ads/zzjr;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzju;->h:Lcom/google/android/gms/internal/ads/zzjr;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzju;->i:Lcom/google/android/gms/internal/ads/zzjr;

    if-ne v0, v2, :cond_10

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzjr;->g()Lcom/google/android/gms/internal/ads/zzjr;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzju;->i:Lcom/google/android/gms/internal/ads/zzjr;

    :cond_10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzjr;->n()V

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzju;->k:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzju;->k:I

    if-nez v0, :cond_2b

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzju;->j:Lcom/google/android/gms/internal/ads/zzjr;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzju;->h:Lcom/google/android/gms/internal/ads/zzjr;

    .line 2
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzjr;->b:Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzju;->l:Ljava/lang/Object;

    .line 3
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzjr;->f:Lcom/google/android/gms/internal/ads/zzjs;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzjs;->a:Lcom/google/android/gms/internal/ads/zzss;

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/zzbn;->d:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzju;->m:J

    :cond_2b
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzju;->h:Lcom/google/android/gms/internal/ads/zzjr;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzjr;->g()Lcom/google/android/gms/internal/ads/zzjr;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzju;->h:Lcom/google/android/gms/internal/ads/zzjr;

    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzju;->B()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzju;->h:Lcom/google/android/gms/internal/ads/zzjr;

    return-object v0
.end method

.method public final e()Lcom/google/android/gms/internal/ads/zzjr;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzju;->i:Lcom/google/android/gms/internal/ads/zzjr;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzjr;->g()Lcom/google/android/gms/internal/ads/zzjr;

    move-result-object v0

    if-eqz v0, :cond_c

    const/4 v1, 0x1

    :cond_c
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdl;->f(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzju;->i:Lcom/google/android/gms/internal/ads/zzjr;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzjr;->g()Lcom/google/android/gms/internal/ads/zzjr;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzju;->i:Lcom/google/android/gms/internal/ads/zzjr;

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzju;->B()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzju;->i:Lcom/google/android/gms/internal/ads/zzjr;

    return-object v0
.end method

.method public final f()Lcom/google/android/gms/internal/ads/zzjr;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzju;->j:Lcom/google/android/gms/internal/ads/zzjr;

    return-object v0
.end method

.method public final g()Lcom/google/android/gms/internal/ads/zzjr;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzju;->h:Lcom/google/android/gms/internal/ads/zzjr;

    return-object v0
.end method

.method public final h()Lcom/google/android/gms/internal/ads/zzjr;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzju;->i:Lcom/google/android/gms/internal/ads/zzjr;

    return-object v0
.end method

.method public final i(JLcom/google/android/gms/internal/ads/zzkh;)Lcom/google/android/gms/internal/ads/zzjs;
    .registers 12

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzju;->j:Lcom/google/android/gms/internal/ads/zzjr;

    if-nez v0, :cond_12

    iget-object v2, p3, Lcom/google/android/gms/internal/ads/zzkh;->a:Lcom/google/android/gms/internal/ads/zzcn;

    iget-object v3, p3, Lcom/google/android/gms/internal/ads/zzkh;->b:Lcom/google/android/gms/internal/ads/zzss;

    iget-wide v4, p3, Lcom/google/android/gms/internal/ads/zzkh;->c:J

    iget-wide v6, p3, Lcom/google/android/gms/internal/ads/zzkh;->r:J

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzju;->x(Lcom/google/android/gms/internal/ads/zzcn;Lcom/google/android/gms/internal/ads/zzss;JJ)Lcom/google/android/gms/internal/ads/zzjs;

    move-result-object p1

    goto :goto_18

    .line 2
    :cond_12
    iget-object p3, p3, Lcom/google/android/gms/internal/ads/zzkh;->a:Lcom/google/android/gms/internal/ads/zzcn;

    invoke-direct {p0, p3, v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzju;->w(Lcom/google/android/gms/internal/ads/zzcn;Lcom/google/android/gms/internal/ads/zzjr;J)Lcom/google/android/gms/internal/ads/zzjs;

    move-result-object p1

    :goto_18
    return-object p1
.end method

.method public final j(Lcom/google/android/gms/internal/ads/zzcn;Lcom/google/android/gms/internal/ads/zzjs;)Lcom/google/android/gms/internal/ads/zzjs;
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzjs;->a:Lcom/google/android/gms/internal/ads/zzss;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzju;->c(Lcom/google/android/gms/internal/ads/zzss;)Z

    move-result v12

    .line 2
    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/ads/zzju;->a(Lcom/google/android/gms/internal/ads/zzcn;Lcom/google/android/gms/internal/ads/zzss;)Z

    move-result v13

    .line 3
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/ads/zzju;->C(Lcom/google/android/gms/internal/ads/zzcn;Lcom/google/android/gms/internal/ads/zzss;Z)Z

    move-result v14

    .line 4
    iget-object v4, v2, Lcom/google/android/gms/internal/ads/zzjs;->a:Lcom/google/android/gms/internal/ads/zzss;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzbn;->a:Ljava/lang/Object;

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzju;->a:Lcom/google/android/gms/internal/ads/zzck;

    invoke-virtual {v1, v4, v5}, Lcom/google/android/gms/internal/ads/zzcn;->n(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzck;)Lcom/google/android/gms/internal/ads/zzck;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzbn;->b()Z

    move-result v1

    const/4 v4, -0x1

    const-wide/16 v5, 0x0

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v1, :cond_37

    iget v1, v3, Lcom/google/android/gms/internal/ads/zzbn;->e:I

    if-ne v1, v4, :cond_30

    goto :goto_37

    .line 5
    :cond_30
    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzju;->a:Lcom/google/android/gms/internal/ads/zzck;

    .line 6
    invoke-virtual {v9, v1}, Lcom/google/android/gms/internal/ads/zzck;->h(I)J

    move-wide v9, v5

    goto :goto_38

    :cond_37
    :goto_37
    move-wide v9, v7

    .line 7
    :goto_38
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzbn;->b()Z

    move-result v1

    if-eqz v1, :cond_4b

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzju;->a:Lcom/google/android/gms/internal/ads/zzck;

    iget v5, v3, Lcom/google/android/gms/internal/ads/zzbn;->b:I

    iget v6, v3, Lcom/google/android/gms/internal/ads/zzbn;->c:I

    .line 8
    invoke-virtual {v1, v5, v6}, Lcom/google/android/gms/internal/ads/zzck;->g(II)J

    move-result-wide v5

    :goto_48
    move-wide v7, v9

    move-wide v9, v5

    goto :goto_57

    :cond_4b
    cmp-long v1, v9, v7

    if-eqz v1, :cond_52

    move-wide v7, v5

    move-wide v9, v7

    goto :goto_57

    .line 9
    :cond_52
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzju;->a:Lcom/google/android/gms/internal/ads/zzck;

    iget-wide v5, v1, Lcom/google/android/gms/internal/ads/zzck;->d:J

    goto :goto_48

    .line 10
    :goto_57
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzbn;->b()Z

    move-result v1

    if-eqz v1, :cond_65

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzju;->a:Lcom/google/android/gms/internal/ads/zzck;

    iget v4, v3, Lcom/google/android/gms/internal/ads/zzbn;->b:I

    .line 11
    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zzck;->l(I)Z

    goto :goto_6e

    .line 12
    :cond_65
    iget v1, v3, Lcom/google/android/gms/internal/ads/zzbn;->e:I

    if-eq v1, v4, :cond_6e

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzju;->a:Lcom/google/android/gms/internal/ads/zzck;

    .line 13
    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/zzck;->l(I)Z

    .line 14
    :cond_6e
    :goto_6e
    new-instance v15, Lcom/google/android/gms/internal/ads/zzjs;

    .line 15
    iget-wide v4, v2, Lcom/google/android/gms/internal/ads/zzjs;->b:J

    iget-wide v1, v2, Lcom/google/android/gms/internal/ads/zzjs;->c:J

    const/4 v11, 0x0

    move-wide/from16 v16, v1

    move-object v1, v15

    move-object v2, v3

    move-wide v3, v4

    move-wide/from16 v5, v16

    invoke-direct/range {v1 .. v14}, Lcom/google/android/gms/internal/ads/zzjs;-><init>(Lcom/google/android/gms/internal/ads/zzss;JJJJZZZZ)V

    return-object v15
.end method

.method public final k(Lcom/google/android/gms/internal/ads/zzcn;Ljava/lang/Object;J)Lcom/google/android/gms/internal/ads/zzss;
    .registers 15

    .line 1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzju;->a:Lcom/google/android/gms/internal/ads/zzck;

    invoke-virtual {p1, p2, v2}, Lcom/google/android/gms/internal/ads/zzcn;->n(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzck;)Lcom/google/android/gms/internal/ads/zzck;

    move-result-object v2

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzck;->c:I

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzju;->l:Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, -0x1

    if-eqz v3, :cond_22

    .line 2
    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/ads/zzcn;->a(Ljava/lang/Object;)I

    move-result v3

    if-eq v3, v5, :cond_22

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzju;->a:Lcom/google/android/gms/internal/ads/zzck;

    .line 3
    invoke-virtual {p1, v3, v6, v4}, Lcom/google/android/gms/internal/ads/zzcn;->d(ILcom/google/android/gms/internal/ads/zzck;Z)Lcom/google/android/gms/internal/ads/zzck;

    move-result-object v3

    .line 4
    iget v3, v3, Lcom/google/android/gms/internal/ads/zzck;->c:I

    if-ne v3, v2, :cond_22

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzju;->m:J

    :cond_20
    :goto_20
    move-wide v6, v2

    goto :goto_6c

    .line 5
    :cond_22
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzju;->h:Lcom/google/android/gms/internal/ads/zzjr;

    :goto_24
    if-eqz v3, :cond_3a

    iget-object v6, v3, Lcom/google/android/gms/internal/ads/zzjr;->b:Ljava/lang/Object;

    .line 6
    invoke-virtual {v6, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_35

    iget-object v2, v3, Lcom/google/android/gms/internal/ads/zzjr;->f:Lcom/google/android/gms/internal/ads/zzjs;

    .line 7
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzjs;->a:Lcom/google/android/gms/internal/ads/zzss;

    iget-wide v2, v2, Lcom/google/android/gms/internal/ads/zzbn;->d:J

    goto :goto_20

    :cond_35
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzjr;->g()Lcom/google/android/gms/internal/ads/zzjr;

    move-result-object v3

    goto :goto_24

    :cond_3a
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzju;->h:Lcom/google/android/gms/internal/ads/zzjr;

    :goto_3c
    if-eqz v3, :cond_5c

    iget-object v6, v3, Lcom/google/android/gms/internal/ads/zzjr;->b:Ljava/lang/Object;

    .line 8
    invoke-virtual {p1, v6}, Lcom/google/android/gms/internal/ads/zzcn;->a(Ljava/lang/Object;)I

    move-result v6

    if-eq v6, v5, :cond_57

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzju;->a:Lcom/google/android/gms/internal/ads/zzck;

    .line 9
    invoke-virtual {p1, v6, v7, v4}, Lcom/google/android/gms/internal/ads/zzcn;->d(ILcom/google/android/gms/internal/ads/zzck;Z)Lcom/google/android/gms/internal/ads/zzck;

    move-result-object v6

    .line 10
    iget v6, v6, Lcom/google/android/gms/internal/ads/zzck;->c:I

    if-ne v6, v2, :cond_57

    iget-object v2, v3, Lcom/google/android/gms/internal/ads/zzjr;->f:Lcom/google/android/gms/internal/ads/zzjs;

    .line 11
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzjs;->a:Lcom/google/android/gms/internal/ads/zzss;

    iget-wide v2, v2, Lcom/google/android/gms/internal/ads/zzbn;->d:J

    goto :goto_20

    :cond_57
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzjr;->g()Lcom/google/android/gms/internal/ads/zzjr;

    move-result-object v3

    goto :goto_3c

    :cond_5c
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzju;->e:J

    const-wide/16 v6, 0x1

    add-long/2addr v6, v2

    iput-wide v6, p0, Lcom/google/android/gms/internal/ads/zzju;->e:J

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzju;->h:Lcom/google/android/gms/internal/ads/zzjr;

    if-nez v4, :cond_20

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzju;->l:Ljava/lang/Object;

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzju;->m:J

    goto :goto_20

    .line 12
    :goto_6c
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzju;->a:Lcom/google/android/gms/internal/ads/zzck;

    .line 13
    invoke-virtual {p1, p2, v2}, Lcom/google/android/gms/internal/ads/zzcn;->n(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzck;)Lcom/google/android/gms/internal/ads/zzck;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzju;->a:Lcom/google/android/gms/internal/ads/zzck;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzck;->c:I

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzju;->b:Lcom/google/android/gms/internal/ads/zzcm;

    const-wide/16 v8, 0x0

    .line 14
    invoke-virtual {p1, v2, v3, v8, v9}, Lcom/google/android/gms/internal/ads/zzcn;->e(ILcom/google/android/gms/internal/ads/zzcm;J)Lcom/google/android/gms/internal/ads/zzcm;

    .line 15
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzcn;->a(Ljava/lang/Object;)I

    move-result v2

    move-object v1, p2

    :goto_81
    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzju;->b:Lcom/google/android/gms/internal/ads/zzcm;

    iget v3, v8, Lcom/google/android/gms/internal/ads/zzcm;->m:I

    if-lt v2, v3, :cond_a6

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzju;->a:Lcom/google/android/gms/internal/ads/zzck;

    const/4 v4, 0x1

    .line 16
    invoke-virtual {p1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzcn;->d(ILcom/google/android/gms/internal/ads/zzck;Z)Lcom/google/android/gms/internal/ads/zzck;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzju;->a:Lcom/google/android/gms/internal/ads/zzck;

    .line 17
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzck;->b()I

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzju;->a:Lcom/google/android/gms/internal/ads/zzck;

    iget-wide v8, v3, Lcom/google/android/gms/internal/ads/zzck;->d:J

    .line 18
    invoke-virtual {v3, v8, v9}, Lcom/google/android/gms/internal/ads/zzck;->d(J)I

    move-result v3

    if-eq v3, v5, :cond_a3

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzju;->a:Lcom/google/android/gms/internal/ads/zzck;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzck;->b:Ljava/lang/Object;

    .line 19
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a3
    add-int/lit8 v2, v2, -0x1

    goto :goto_81

    .line 20
    :cond_a6
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzju;->a:Lcom/google/android/gms/internal/ads/zzck;

    move-object v0, p1

    move-wide v2, p3

    move-wide v4, v6

    move-object v6, v8

    move-object v7, v9

    .line 21
    invoke-static/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzju;->A(Lcom/google/android/gms/internal/ads/zzcn;Ljava/lang/Object;JJLcom/google/android/gms/internal/ads/zzcm;Lcom/google/android/gms/internal/ads/zzck;)Lcom/google/android/gms/internal/ads/zzss;

    move-result-object v0

    return-object v0
.end method

.method public final l()V
    .registers 4

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzju;->k:I

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzju;->h:Lcom/google/android/gms/internal/ads/zzjr;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdl;->b(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzjr;->b:Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzju;->l:Ljava/lang/Object;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzjr;->f:Lcom/google/android/gms/internal/ads/zzjs;

    .line 2
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzjs;->a:Lcom/google/android/gms/internal/ads/zzss;

    iget-wide v1, v1, Lcom/google/android/gms/internal/ads/zzbn;->d:J

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzju;->m:J

    :goto_16
    if-eqz v0, :cond_20

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzjr;->n()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzjr;->g()Lcom/google/android/gms/internal/ads/zzjr;

    move-result-object v0

    goto :goto_16

    :cond_20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzju;->h:Lcom/google/android/gms/internal/ads/zzjr;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzju;->j:Lcom/google/android/gms/internal/ads/zzjr;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzju;->i:Lcom/google/android/gms/internal/ads/zzjr;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzju;->k:I

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzju;->B()V

    return-void
.end method

.method final synthetic m(Lcom/google/android/gms/internal/ads/zzfqh;Lcom/google/android/gms/internal/ads/zzss;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzju;->c:Lcom/google/android/gms/internal/ads/zzlb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfqh;->j()Lcom/google/android/gms/internal/ads/zzfqk;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzlb;->k(Ljava/util/List;Lcom/google/android/gms/internal/ads/zzss;)V

    return-void
.end method

.method public final n(J)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzju;->j:Lcom/google/android/gms/internal/ads/zzjr;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzjr;->m(J)V

    :cond_7
    return-void
.end method

.method public final o(Lcom/google/android/gms/internal/ads/zzsq;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzju;->j:Lcom/google/android/gms/internal/ads/zzjr;

    if-eqz v0, :cond_a

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzjr;->a:Lcom/google/android/gms/internal/ads/zzsq;

    if-ne v0, p1, :cond_a

    const/4 p1, 0x1

    return p1

    :cond_a
    const/4 p1, 0x0

    return p1
.end method

.method public final p(Lcom/google/android/gms/internal/ads/zzjr;)Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_6

    const/4 v2, 0x1

    goto :goto_7

    :cond_6
    const/4 v2, 0x0

    .line 1
    :goto_7
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzdl;->f(Z)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzju;->j:Lcom/google/android/gms/internal/ads/zzjr;

    .line 2
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    return v1

    :cond_13
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzju;->j:Lcom/google/android/gms/internal/ads/zzjr;

    .line 3
    :goto_15
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzjr;->g()Lcom/google/android/gms/internal/ads/zzjr;

    move-result-object v2

    if-eqz v2, :cond_32

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzjr;->g()Lcom/google/android/gms/internal/ads/zzjr;

    move-result-object p1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzju;->i:Lcom/google/android/gms/internal/ads/zzjr;

    if-ne p1, v2, :cond_28

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzju;->h:Lcom/google/android/gms/internal/ads/zzjr;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzju;->i:Lcom/google/android/gms/internal/ads/zzjr;

    const/4 v1, 0x1

    .line 5
    :cond_28
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzjr;->n()V

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzju;->k:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzju;->k:I

    goto :goto_15

    :cond_32
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzju;->j:Lcom/google/android/gms/internal/ads/zzjr;

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzjr;->o(Lcom/google/android/gms/internal/ads/zzjr;)V

    .line 7
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzju;->B()V

    return v1
.end method

.method public final q()Z
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzju;->j:Lcom/google/android/gms/internal/ads/zzjr;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2a

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzjr;->f:Lcom/google/android/gms/internal/ads/zzjs;

    iget-boolean v3, v3, Lcom/google/android/gms/internal/ads/zzjs;->i:Z

    if-nez v3, :cond_29

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzjr;->r()Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzju;->j:Lcom/google/android/gms/internal/ads/zzjr;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzjr;->f:Lcom/google/android/gms/internal/ads/zzjs;

    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzjs;->e:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v5

    if-eqz v0, :cond_29

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzju;->k:I

    const/16 v3, 0x64

    if-ge v0, v3, :cond_28

    goto :goto_2a

    :cond_28
    return v2

    :cond_29
    const/4 v1, 0x0

    :cond_2a
    :goto_2a
    return v1
.end method

.method public final r(Lcom/google/android/gms/internal/ads/zzcn;JJ)Z
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzju;->h:Lcom/google/android/gms/internal/ads/zzjr;

    const/4 v3, 0x0

    :goto_7
    const/4 v4, 0x1

    if-eqz v2, :cond_97

    iget-object v5, v2, Lcom/google/android/gms/internal/ads/zzjr;->f:Lcom/google/android/gms/internal/ads/zzjs;

    const/4 v6, 0x0

    if-nez v3, :cond_16

    invoke-virtual {v0, v1, v5}, Lcom/google/android/gms/internal/ads/zzju;->j(Lcom/google/android/gms/internal/ads/zzcn;Lcom/google/android/gms/internal/ads/zzjs;)Lcom/google/android/gms/internal/ads/zzjs;

    move-result-object v3

    move-wide/from16 v7, p2

    goto :goto_39

    :cond_16
    move-wide/from16 v7, p2

    .line 2
    invoke-direct {v0, v1, v3, v7, v8}, Lcom/google/android/gms/internal/ads/zzju;->w(Lcom/google/android/gms/internal/ads/zzcn;Lcom/google/android/gms/internal/ads/zzjr;J)Lcom/google/android/gms/internal/ads/zzjs;

    move-result-object v9

    if-nez v9, :cond_26

    .line 3
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzju;->p(Lcom/google/android/gms/internal/ads/zzjr;)Z

    move-result v1

    if-nez v1, :cond_25

    return v4

    :cond_25
    return v6

    .line 4
    :cond_26
    iget-wide v10, v5, Lcom/google/android/gms/internal/ads/zzjs;->b:J

    iget-wide v12, v9, Lcom/google/android/gms/internal/ads/zzjs;->b:J

    cmp-long v14, v10, v12

    if-nez v14, :cond_8f

    iget-object v10, v5, Lcom/google/android/gms/internal/ads/zzjs;->a:Lcom/google/android/gms/internal/ads/zzss;

    iget-object v11, v9, Lcom/google/android/gms/internal/ads/zzjs;->a:Lcom/google/android/gms/internal/ads/zzss;

    invoke-virtual {v10, v11}, Lcom/google/android/gms/internal/ads/zzbn;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8f

    move-object v3, v9

    .line 5
    :goto_39
    iget-wide v9, v5, Lcom/google/android/gms/internal/ads/zzjs;->c:J

    .line 6
    invoke-virtual {v3, v9, v10}, Lcom/google/android/gms/internal/ads/zzjs;->a(J)Lcom/google/android/gms/internal/ads/zzjs;

    move-result-object v9

    iput-object v9, v2, Lcom/google/android/gms/internal/ads/zzjr;->f:Lcom/google/android/gms/internal/ads/zzjs;

    .line 7
    iget-wide v9, v5, Lcom/google/android/gms/internal/ads/zzjs;->e:J

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v9, v11

    iget-wide v13, v3, Lcom/google/android/gms/internal/ads/zzjs;->e:J

    if-eqz v5, :cond_86

    cmp-long v5, v9, v13

    if-nez v5, :cond_53

    goto :goto_86

    .line 8
    :cond_53
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzjr;->q()V

    .line 9
    iget-wide v7, v3, Lcom/google/android/gms/internal/ads/zzjs;->e:J

    cmp-long v1, v7, v11

    if-nez v1, :cond_62

    const-wide v7, 0x7fffffffffffffffL

    goto :goto_67

    .line 10
    :cond_62
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzjr;->e()J

    move-result-wide v9

    add-long/2addr v7, v9

    .line 11
    :goto_67
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzju;->i:Lcom/google/android/gms/internal/ads/zzjr;

    if-ne v2, v1, :cond_7b

    iget-object v1, v2, Lcom/google/android/gms/internal/ads/zzjr;->f:Lcom/google/android/gms/internal/ads/zzjs;

    .line 12
    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/zzjs;->f:Z

    const-wide/high16 v9, -0x8000000000000000L

    cmp-long v1, p4, v9

    if-eqz v1, :cond_79

    cmp-long v1, p4, v7

    if-ltz v1, :cond_7b

    :cond_79
    const/4 v1, 0x1

    goto :goto_7c

    :cond_7b
    const/4 v1, 0x0

    .line 13
    :goto_7c
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzju;->p(Lcom/google/android/gms/internal/ads/zzjr;)Z

    move-result v2

    if-nez v2, :cond_85

    if-nez v1, :cond_85

    return v4

    :cond_85
    return v6

    .line 14
    :cond_86
    :goto_86
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzjr;->g()Lcom/google/android/gms/internal/ads/zzjr;

    move-result-object v3

    move-object v15, v3

    move-object v3, v2

    move-object v2, v15

    goto/16 :goto_7

    .line 15
    :cond_8f
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzju;->p(Lcom/google/android/gms/internal/ads/zzjr;)Z

    move-result v1

    if-nez v1, :cond_96

    return v4

    :cond_96
    return v6

    :cond_97
    return v4
.end method

.method public final s(Lcom/google/android/gms/internal/ads/zzcn;I)Z
    .registers 3

    .line 1
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzju;->f:I

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzju;->b(Lcom/google/android/gms/internal/ads/zzcn;)Z

    move-result p1

    return p1
.end method

.method public final t(Lcom/google/android/gms/internal/ads/zzcn;Z)Z
    .registers 3

    .line 1
    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzju;->g:Z

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzju;->b(Lcom/google/android/gms/internal/ads/zzcn;)Z

    move-result p1

    return p1
.end method

.method public final u([Lcom/google/android/gms/internal/ads/zzko;Lcom/google/android/gms/internal/ads/zzwk;Lcom/google/android/gms/internal/ads/zzwt;Lcom/google/android/gms/internal/ads/zzkg;Lcom/google/android/gms/internal/ads/zzjs;Lcom/google/android/gms/internal/ads/zzwl;)Lcom/google/android/gms/internal/ads/zzjr;
    .registers 21

    move-object v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzju;->j:Lcom/google/android/gms/internal/ads/zzjr;

    if-nez v1, :cond_e

    const-wide v1, 0xe8d4a51000L

    move-wide v6, v1

    move-object/from16 v1, p5

    goto :goto_1d

    .line 2
    :cond_e
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzjr;->e()J

    move-result-wide v2

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzjr;->f:Lcom/google/android/gms/internal/ads/zzjs;

    .line 3
    iget-wide v4, v1, Lcom/google/android/gms/internal/ads/zzjs;->e:J

    add-long/2addr v2, v4

    move-object/from16 v1, p5

    iget-wide v4, v1, Lcom/google/android/gms/internal/ads/zzjs;->b:J

    sub-long/2addr v2, v4

    move-wide v6, v2

    .line 4
    :goto_1d
    new-instance v2, Lcom/google/android/gms/internal/ads/zzjr;

    const/4 v13, 0x0

    move-object v4, v2

    move-object v5, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    invoke-direct/range {v4 .. v13}, Lcom/google/android/gms/internal/ads/zzjr;-><init>([Lcom/google/android/gms/internal/ads/zzko;JLcom/google/android/gms/internal/ads/zzwk;Lcom/google/android/gms/internal/ads/zzwt;Lcom/google/android/gms/internal/ads/zzkg;Lcom/google/android/gms/internal/ads/zzjs;Lcom/google/android/gms/internal/ads/zzwl;[B)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzju;->j:Lcom/google/android/gms/internal/ads/zzjr;

    if-eqz v1, :cond_37

    .line 5
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzjr;->o(Lcom/google/android/gms/internal/ads/zzjr;)V

    goto :goto_3b

    .line 6
    :cond_37
    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzju;->h:Lcom/google/android/gms/internal/ads/zzjr;

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzju;->i:Lcom/google/android/gms/internal/ads/zzjr;

    :goto_3b
    const/4 v1, 0x0

    .line 7
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzju;->l:Ljava/lang/Object;

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzju;->j:Lcom/google/android/gms/internal/ads/zzjr;

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzju;->k:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzju;->k:I

    .line 8
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzju;->B()V

    return-object v2
.end method

###### Class com.google.android.gms.internal.ads.zzjt (com.google.android.gms.internal.ads.zzjt)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzjt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Lcom/google/android/gms/internal/ads/zzju;

.field public final synthetic p:Lcom/google/android/gms/internal/ads/zzfqh;

.field public final synthetic q:Lcom/google/android/gms/internal/ads/zzss;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzju;Lcom/google/android/gms/internal/ads/zzfqh;Lcom/google/android/gms/internal/ads/zzss;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzjt;->o:Lcom/google/android/gms/internal/ads/zzju;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzjt;->p:Lcom/google/android/gms/internal/ads/zzfqh;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzjt;->q:Lcom/google/android/gms/internal/ads/zzss;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjt;->o:Lcom/google/android/gms/internal/ads/zzju;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzjt;->p:Lcom/google/android/gms/internal/ads/zzfqh;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzjt;->q:Lcom/google/android/gms/internal/ads/zzss;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzju;->m(Lcom/google/android/gms/internal/ads/zzfqh;Lcom/google/android/gms/internal/ads/zzss;)V

    return-void
.end method
