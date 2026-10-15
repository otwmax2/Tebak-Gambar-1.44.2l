###### Class com.google.android.gms.internal.ads.zzagm (com.google.android.gms.internal.ads.zzagm)
.class final Lcom/google/android/gms/internal/ads/zzagm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzagt;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzags;

.field private final b:J

.field private final c:J

.field private final d:Lcom/google/android/gms/internal/ads/zzagy;

.field private e:I

.field private f:J

.field private g:J

.field private h:J

.field private i:J

.field private j:J

.field private k:J

.field private l:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzagy;JJJJZ)V
    .registers 15

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-ltz v3, :cond_10

    cmp-long v1, p4, p2

    if-lez v1, :cond_10

    const/4 v1, 0x1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdl;->d(Z)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzagm;->d:Lcom/google/android/gms/internal/ads/zzagy;

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzagm;->b:J

    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/zzagm;->c:J

    sub-long/2addr p4, p2

    cmp-long p1, p6, p4

    if-eqz p1, :cond_25

    if-eqz p10, :cond_22

    goto :goto_25

    .line 2
    :cond_22
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzagm;->e:I

    goto :goto_2a

    .line 3
    :cond_25
    :goto_25
    iput-wide p8, p0, Lcom/google/android/gms/internal/ads/zzagm;->f:J

    const/4 p1, 0x4

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzagm;->e:I

    :goto_2a
    new-instance p1, Lcom/google/android/gms/internal/ads/zzags;

    .line 4
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzags;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzagm;->a:Lcom/google/android/gms/internal/ads/zzags;

    return-void
.end method

.method static bridge synthetic d(Lcom/google/android/gms/internal/ads/zzagm;)J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzagm;->c:J

    return-wide v0
.end method

.method static bridge synthetic e(Lcom/google/android/gms/internal/ads/zzagm;)J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzagm;->b:J

    return-wide v0
.end method

.method static bridge synthetic f(Lcom/google/android/gms/internal/ads/zzagm;)J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzagm;->f:J

    return-wide v0
.end method

.method static bridge synthetic g(Lcom/google/android/gms/internal/ads/zzagm;)Lcom/google/android/gms/internal/ads/zzagy;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzagm;->d:Lcom/google/android/gms/internal/ads/zzagy;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/zzzv;)J
    .registers 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzagm;->e:I

    const/4 v3, 0x1

    const/4 v5, 0x0

    const-wide/16 v6, -0x1

    if-eqz v2, :cond_eb

    if-eq v2, v3, :cond_fe

    const/4 v3, 0x2

    const/4 v10, 0x3

    if-eq v2, v3, :cond_15

    if-eq v2, v10, :cond_ae

    return-wide v6

    .line 2
    :cond_15
    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzagm;->i:J

    iget-wide v11, v0, Lcom/google/android/gms/internal/ads/zzagm;->j:J

    cmp-long v13, v2, v11

    if-nez v13, :cond_20

    :goto_1d
    move-wide v11, v6

    goto/16 :goto_a6

    :cond_20
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzzv;->c()J

    move-result-wide v2

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzagm;->a:Lcom/google/android/gms/internal/ads/zzags;

    .line 3
    invoke-virtual {v13, v1, v11, v12}, Lcom/google/android/gms/internal/ads/zzags;->c(Lcom/google/android/gms/internal/ads/zzzv;J)Z

    move-result v11

    if-nez v11, :cond_3c

    iget-wide v11, v0, Lcom/google/android/gms/internal/ads/zzagm;->i:J

    cmp-long v13, v11, v2

    if-eqz v13, :cond_34

    goto/16 :goto_a6

    .line 4
    :cond_34
    new-instance v1, Ljava/io/IOException;

    const-string v2, "No ogg page can be found."

    .line 5
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 6
    :cond_3c
    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzagm;->a:Lcom/google/android/gms/internal/ads/zzags;

    .line 7
    invoke-virtual {v11, v1, v5}, Lcom/google/android/gms/internal/ads/zzags;->b(Lcom/google/android/gms/internal/ads/zzzv;Z)Z

    .line 8
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzzv;->h()V

    iget-wide v11, v0, Lcom/google/android/gms/internal/ads/zzagm;->h:J

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzagm;->a:Lcom/google/android/gms/internal/ads/zzags;

    iget-wide v14, v13, Lcom/google/android/gms/internal/ads/zzags;->b:J

    sub-long/2addr v11, v14

    iget v8, v13, Lcom/google/android/gms/internal/ads/zzags;->d:I

    iget v9, v13, Lcom/google/android/gms/internal/ads/zzags;->e:I

    add-int/2addr v8, v9

    const-wide/16 v16, 0x0

    cmp-long v9, v11, v16

    if-ltz v9, :cond_5e

    const-wide/32 v18, 0x11940

    cmp-long v9, v11, v18

    if-gez v9, :cond_5e

    goto :goto_1d

    :cond_5e
    cmp-long v9, v11, v16

    if-gez v9, :cond_67

    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/zzagm;->j:J

    iput-wide v14, v0, Lcom/google/android/gms/internal/ads/zzagm;->l:J

    goto :goto_71

    .line 9
    :cond_67
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzzv;->c()J

    move-result-wide v2

    int-to-long v4, v8

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/zzagm;->i:J

    iput-wide v14, v0, Lcom/google/android/gms/internal/ads/zzagm;->k:J

    .line 10
    :goto_71
    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzagm;->j:J

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzagm;->i:J

    sub-long v14, v2, v4

    const-wide/32 v18, 0x186a0

    cmp-long v20, v14, v18

    if-gez v20, :cond_82

    iput-wide v4, v0, Lcom/google/android/gms/internal/ads/zzagm;->j:J

    move-wide v11, v4

    goto :goto_a6

    :cond_82
    int-to-long v9, v8

    cmp-long v8, v11, v16

    if-gtz v8, :cond_8a

    const-wide/16 v16, 0x2

    goto :goto_8c

    :cond_8a
    const-wide/16 v16, 0x1

    :goto_8c
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzzv;->c()J

    move-result-wide v18

    mul-long v9, v9, v16

    sub-long v18, v18, v9

    mul-long v11, v11, v14

    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/zzagm;->l:J

    iget-wide v14, v0, Lcom/google/android/gms/internal/ads/zzagm;->k:J

    sub-long/2addr v8, v14

    .line 11
    div-long/2addr v11, v8

    add-long v18, v18, v11

    add-long v22, v2, v6

    move-wide/from16 v20, v4

    .line 12
    invoke-static/range {v18 .. v23}, Lcom/google/android/gms/internal/ads/zzew;->c0(JJJ)J

    move-result-wide v11

    :goto_a6
    cmp-long v2, v11, v6

    if-eqz v2, :cond_ab

    return-wide v11

    :cond_ab
    const/4 v2, 0x3

    .line 13
    iput v2, v0, Lcom/google/android/gms/internal/ads/zzagm;->e:I

    .line 14
    :cond_ae
    :goto_ae
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzagm;->a:Lcom/google/android/gms/internal/ads/zzags;

    invoke-virtual {v2, v1, v6, v7}, Lcom/google/android/gms/internal/ads/zzags;->c(Lcom/google/android/gms/internal/ads/zzzv;J)Z

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzagm;->a:Lcom/google/android/gms/internal/ads/zzags;

    const/4 v3, 0x0

    .line 15
    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/internal/ads/zzags;->b(Lcom/google/android/gms/internal/ads/zzzv;Z)Z

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzagm;->a:Lcom/google/android/gms/internal/ads/zzags;

    iget-wide v3, v2, Lcom/google/android/gms/internal/ads/zzags;->b:J

    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/zzagm;->h:J

    cmp-long v5, v3, v8

    if-lez v5, :cond_d0

    .line 16
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzzv;->h()V

    const/4 v1, 0x4

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzagm;->e:I

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzagm;->k:J

    const-wide/16 v4, 0x2

    add-long/2addr v1, v4

    neg-long v1, v1

    return-wide v1

    :cond_d0
    const-wide/16 v4, 0x2

    iget v3, v2, Lcom/google/android/gms/internal/ads/zzags;->d:I

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzags;->e:I

    add-int/2addr v3, v2

    move-object v2, v1

    check-cast v2, Lcom/google/android/gms/internal/ads/zzzk;

    const/4 v8, 0x0

    .line 17
    invoke-virtual {v2, v3, v8}, Lcom/google/android/gms/internal/ads/zzzk;->o(IZ)Z

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzzv;->c()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/zzagm;->i:J

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzagm;->a:Lcom/google/android/gms/internal/ads/zzags;

    iget-wide v2, v2, Lcom/google/android/gms/internal/ads/zzags;->b:J

    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/zzagm;->k:J

    goto :goto_ae

    .line 18
    :cond_eb
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzzv;->c()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/google/android/gms/internal/ads/zzagm;->g:J

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzagm;->e:I

    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/zzagm;->c:J

    const-wide/32 v14, -0xff1b

    add-long/2addr v10, v14

    cmp-long v2, v10, v4

    if-lez v2, :cond_fe

    return-wide v10

    .line 19
    :cond_fe
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzagm;->a:Lcom/google/android/gms/internal/ads/zzags;

    .line 20
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzags;->a()V

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzagm;->a:Lcom/google/android/gms/internal/ads/zzags;

    .line 21
    invoke-virtual {v2, v1, v6, v7}, Lcom/google/android/gms/internal/ads/zzags;->c(Lcom/google/android/gms/internal/ads/zzzv;J)Z

    move-result v2

    if-eqz v2, :cond_15d

    .line 22
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzagm;->a:Lcom/google/android/gms/internal/ads/zzags;

    const/4 v4, 0x0

    .line 23
    invoke-virtual {v2, v1, v4}, Lcom/google/android/gms/internal/ads/zzags;->b(Lcom/google/android/gms/internal/ads/zzzv;Z)Z

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzagm;->a:Lcom/google/android/gms/internal/ads/zzags;

    iget v5, v2, Lcom/google/android/gms/internal/ads/zzags;->d:I

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzags;->e:I

    add-int/2addr v5, v2

    move-object v2, v1

    check-cast v2, Lcom/google/android/gms/internal/ads/zzzk;

    .line 24
    invoke-virtual {v2, v5, v4}, Lcom/google/android/gms/internal/ads/zzzk;->o(IZ)Z

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzagm;->a:Lcom/google/android/gms/internal/ads/zzags;

    iget-wide v4, v2, Lcom/google/android/gms/internal/ads/zzags;->b:J

    :goto_122
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzagm;->a:Lcom/google/android/gms/internal/ads/zzags;

    iget v8, v2, Lcom/google/android/gms/internal/ads/zzags;->a:I

    const/4 v9, 0x4

    and-int/2addr v8, v9

    if-eq v8, v9, :cond_155

    .line 25
    invoke-virtual {v2, v1, v6, v7}, Lcom/google/android/gms/internal/ads/zzags;->c(Lcom/google/android/gms/internal/ads/zzzv;J)Z

    move-result v2

    if-eqz v2, :cond_155

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzzv;->c()J

    move-result-wide v10

    iget-wide v12, v0, Lcom/google/android/gms/internal/ads/zzagm;->c:J

    cmp-long v2, v10, v12

    if-gez v2, :cond_155

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzagm;->a:Lcom/google/android/gms/internal/ads/zzags;

    .line 26
    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/internal/ads/zzags;->b(Lcom/google/android/gms/internal/ads/zzzv;Z)Z

    move-result v2

    if-eqz v2, :cond_155

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzagm;->a:Lcom/google/android/gms/internal/ads/zzags;

    iget v8, v2, Lcom/google/android/gms/internal/ads/zzags;->d:I

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzags;->e:I

    add-int/2addr v8, v2

    .line 27
    invoke-static {v1, v8}, Lcom/google/android/gms/internal/ads/zzzy;->e(Lcom/google/android/gms/internal/ads/zzzv;I)Z

    move-result v2

    if-nez v2, :cond_150

    goto :goto_155

    :cond_150
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzagm;->a:Lcom/google/android/gms/internal/ads/zzags;

    iget-wide v4, v2, Lcom/google/android/gms/internal/ads/zzags;->b:J

    goto :goto_122

    :cond_155
    :goto_155
    iput-wide v4, v0, Lcom/google/android/gms/internal/ads/zzagm;->f:J

    const/4 v1, 0x4

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzagm;->e:I

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzagm;->g:J

    return-wide v1

    .line 28
    :cond_15d
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    goto :goto_164

    :goto_163
    throw v1

    :goto_164
    goto :goto_163
.end method

.method public final bridge synthetic b()Lcom/google/android/gms/internal/ads/zzaax;
    .registers 7

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzagm;->f:J

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-eqz v5, :cond_f

    new-instance v0, Lcom/google/android/gms/internal/ads/zzagl;

    invoke-direct {v0, p0, v2}, Lcom/google/android/gms/internal/ads/zzagl;-><init>(Lcom/google/android/gms/internal/ads/zzagm;Lcom/google/android/gms/internal/ads/zzagk;)V

    return-object v0

    :cond_f
    return-object v2
.end method

.method public final c(J)V
    .registers 13

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzagm;->f:J

    const-wide/16 v2, -0x1

    add-long v8, v0, v2

    const-wide/16 v6, 0x0

    move-wide v4, p1

    invoke-static/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/zzew;->c0(JJJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzagm;->h:J

    const/4 p1, 0x2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzagm;->e:I

    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/zzagm;->b:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzagm;->i:J

    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/zzagm;->c:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzagm;->j:J

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzagm;->k:J

    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/zzagm;->f:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzagm;->l:J

    return-void
.end method
