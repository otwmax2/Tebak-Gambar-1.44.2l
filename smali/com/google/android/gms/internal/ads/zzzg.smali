###### Class com.google.android.gms.internal.ads.zzzg (com.google.android.gms.internal.ads.zzzg)
.class public Lcom/google/android/gms/internal/ads/zzzg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field protected final a:Lcom/google/android/gms/internal/ads/zzza;

.field protected final b:Lcom/google/android/gms/internal/ads/zzzf;

.field protected c:Lcom/google/android/gms/internal/ads/zzzc;

.field private final d:I


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/ads/zzzd;Lcom/google/android/gms/internal/ads/zzzf;JJJJJJI)V
    .registers 32

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v1, p2

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzzg;->b:Lcom/google/android/gms/internal/ads/zzzf;

    move/from16 v1, p15

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzzg;->d:I

    new-instance v15, Lcom/google/android/gms/internal/ads/zzza;

    const-wide/16 v5, 0x0

    move-object v1, v15

    move-object/from16 v2, p1

    move-wide/from16 v3, p3

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    move-wide/from16 v11, p11

    move-wide/from16 v13, p13

    invoke-direct/range {v1 .. v14}, Lcom/google/android/gms/internal/ads/zzza;-><init>(Lcom/google/android/gms/internal/ads/zzzd;JJJJJJ)V

    iput-object v15, v0, Lcom/google/android/gms/internal/ads/zzzg;->a:Lcom/google/android/gms/internal/ads/zzza;

    return-void
.end method

.method protected static final f(Lcom/google/android/gms/internal/ads/zzzv;JLcom/google/android/gms/internal/ads/zzaau;)I
    .registers 6

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzzv;->c()J

    move-result-wide v0

    cmp-long p0, p1, v0

    if-nez p0, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    iput-wide p1, p3, Lcom/google/android/gms/internal/ads/zzaau;->a:J

    const/4 p0, 0x1

    return p0
.end method

.method protected static final g(Lcom/google/android/gms/internal/ads/zzzv;J)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzzv;->c()J

    move-result-wide v0

    sub-long/2addr p1, v0

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-ltz v3, :cond_1b

    const-wide/32 v1, 0x40000

    cmp-long v3, p1, v1

    if-gtz v3, :cond_1b

    long-to-int p2, p1

    check-cast p0, Lcom/google/android/gms/internal/ads/zzzk;

    .line 1
    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/ads/zzzk;->o(IZ)Z

    const/4 p0, 0x1

    return p0

    :cond_1b
    return v0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/zzzv;Lcom/google/android/gms/internal/ads/zzaau;)I
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzg;->c:Lcom/google/android/gms/internal/ads/zzzc;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdl;->b(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzzc;->b(Lcom/google/android/gms/internal/ads/zzzc;)J

    move-result-wide v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzzc;->a(Lcom/google/android/gms/internal/ads/zzzc;)J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzzc;->c(Lcom/google/android/gms/internal/ads/zzzc;)J

    move-result-wide v5

    iget v7, p0, Lcom/google/android/gms/internal/ads/zzzg;->d:I

    int-to-long v7, v7

    const/4 v9, 0x0

    cmp-long v10, v3, v7

    if-gtz v10, :cond_22

    .line 2
    invoke-virtual {p0, v9, v1, v2}, Lcom/google/android/gms/internal/ads/zzzg;->c(ZJ)V

    .line 3
    invoke-static {p1, v1, v2, p2}, Lcom/google/android/gms/internal/ads/zzzg;->f(Lcom/google/android/gms/internal/ads/zzzv;JLcom/google/android/gms/internal/ads/zzaau;)I

    move-result p1

    return p1

    .line 4
    :cond_22
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzzg;->g(Lcom/google/android/gms/internal/ads/zzzv;J)Z

    move-result v1

    if-nez v1, :cond_2d

    .line 5
    invoke-static {p1, v5, v6, p2}, Lcom/google/android/gms/internal/ads/zzzg;->f(Lcom/google/android/gms/internal/ads/zzzv;JLcom/google/android/gms/internal/ads/zzaau;)I

    move-result p1

    return p1

    .line 6
    :cond_2d
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzzv;->h()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzzg;->b:Lcom/google/android/gms/internal/ads/zzzf;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzzc;->e(Lcom/google/android/gms/internal/ads/zzzc;)J

    move-result-wide v2

    .line 7
    invoke-interface {v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzzf;->a(Lcom/google/android/gms/internal/ads/zzzv;J)Lcom/google/android/gms/internal/ads/zzze;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzze;->a(Lcom/google/android/gms/internal/ads/zzze;)I

    move-result v2

    const/4 v3, -0x3

    if-eq v2, v3, :cond_77

    const/4 v3, -0x2

    if-eq v2, v3, :cond_6b

    const/4 v3, -0x1

    if-eq v2, v3, :cond_5f

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzze;->b(Lcom/google/android/gms/internal/ads/zzze;)J

    move-result-wide v2

    .line 8
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzzg;->g(Lcom/google/android/gms/internal/ads/zzzv;J)Z

    const/4 v0, 0x1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzze;->b(Lcom/google/android/gms/internal/ads/zzze;)J

    move-result-wide v2

    .line 9
    invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzzg;->c(ZJ)V

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzze;->b(Lcom/google/android/gms/internal/ads/zzze;)J

    move-result-wide v0

    .line 10
    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/ads/zzzg;->f(Lcom/google/android/gms/internal/ads/zzzv;JLcom/google/android/gms/internal/ads/zzaau;)I

    move-result p1

    return p1

    :cond_5f
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzze;->c(Lcom/google/android/gms/internal/ads/zzze;)J

    move-result-wide v2

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzze;->b(Lcom/google/android/gms/internal/ads/zzze;)J

    move-result-wide v4

    .line 11
    invoke-static {v0, v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzzc;->g(Lcom/google/android/gms/internal/ads/zzzc;JJ)V

    goto :goto_0

    :cond_6b
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzze;->c(Lcom/google/android/gms/internal/ads/zzze;)J

    move-result-wide v2

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzze;->b(Lcom/google/android/gms/internal/ads/zzze;)J

    move-result-wide v4

    .line 12
    invoke-static {v0, v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzzc;->h(Lcom/google/android/gms/internal/ads/zzzc;JJ)V

    goto :goto_0

    .line 13
    :cond_77
    invoke-virtual {p0, v9, v5, v6}, Lcom/google/android/gms/internal/ads/zzzg;->c(ZJ)V

    .line 14
    invoke-static {p1, v5, v6, p2}, Lcom/google/android/gms/internal/ads/zzzg;->f(Lcom/google/android/gms/internal/ads/zzzv;JLcom/google/android/gms/internal/ads/zzaau;)I

    move-result p1

    return p1
.end method

.method public final b()Lcom/google/android/gms/internal/ads/zzaax;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzg;->a:Lcom/google/android/gms/internal/ads/zzza;

    return-object v0
.end method

.method protected final c(ZJ)V
    .registers 4

    const/4 p1, 0x0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzzg;->c:Lcom/google/android/gms/internal/ads/zzzc;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzzg;->b:Lcom/google/android/gms/internal/ads/zzzf;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzzf;->zzb()V

    return-void
.end method

.method public final d(J)V
    .registers 20

    move-object/from16 v0, p0

    move-wide/from16 v2, p1

    .line 1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzzg;->c:Lcom/google/android/gms/internal/ads/zzzc;

    if-eqz v1, :cond_11

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzzc;->d(Lcom/google/android/gms/internal/ads/zzzc;)J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-nez v1, :cond_11

    return-void

    :cond_11
    new-instance v14, Lcom/google/android/gms/internal/ads/zzzc;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzzg;->a:Lcom/google/android/gms/internal/ads/zzza;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzza;->i(J)J

    move-result-wide v4

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzzg;->a:Lcom/google/android/gms/internal/ads/zzza;

    const-wide/16 v6, 0x0

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzza;->g(Lcom/google/android/gms/internal/ads/zzza;)J

    move-result-wide v8

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzza;->h(Lcom/google/android/gms/internal/ads/zzza;)J

    move-result-wide v10

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzza;->e(Lcom/google/android/gms/internal/ads/zzza;)J

    move-result-wide v12

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzza;->a(Lcom/google/android/gms/internal/ads/zzza;)J

    move-result-wide v15

    move-object v1, v14

    move-wide/from16 v2, p1

    move-object v0, v14

    move-wide v14, v15

    invoke-direct/range {v1 .. v15}, Lcom/google/android/gms/internal/ads/zzzc;-><init>(JJJJJJJ)V

    move-object v1, v0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzzg;->c:Lcom/google/android/gms/internal/ads/zzzc;

    return-void
.end method

.method public final e()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzg;->c:Lcom/google/android/gms/internal/ads/zzzc;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method
