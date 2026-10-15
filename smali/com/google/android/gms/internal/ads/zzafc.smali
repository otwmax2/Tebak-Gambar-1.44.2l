###### Class com.google.android.gms.internal.ads.zzafc (com.google.android.gms.internal.ads.zzafc)
.class public final Lcom/google/android/gms/internal/ads/zzafc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzzu;


# static fields
.field public static final q:Lcom/google/android/gms/internal/ads/zzaab;

.field private static final r:Lcom/google/android/gms/internal/ads/zzadm;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzen;

.field private final b:Lcom/google/android/gms/internal/ads/zzaan;

.field private final c:Lcom/google/android/gms/internal/ads/zzaaj;

.field private final d:Lcom/google/android/gms/internal/ads/zzaal;

.field private final e:Lcom/google/android/gms/internal/ads/zzabb;

.field private f:Lcom/google/android/gms/internal/ads/zzzx;

.field private g:Lcom/google/android/gms/internal/ads/zzabb;

.field private h:Lcom/google/android/gms/internal/ads/zzabb;

.field private i:I

.field private j:Lcom/google/android/gms/internal/ads/zzbq;

.field private k:J

.field private l:J

.field private m:J

.field private n:I

.field private o:Lcom/google/android/gms/internal/ads/zzafe;

.field private p:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzafa;->b:Lcom/google/android/gms/internal/ads/zzafa;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzafc;->q:Lcom/google/android/gms/internal/ads/zzaab;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzafb;->a:Lcom/google/android/gms/internal/ads/zzafb;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzafc;->r:Lcom/google/android/gms/internal/ads/zzadm;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzafc;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzen;

    const/16 v0, 0xa

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzen;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzafc;->a:Lcom/google/android/gms/internal/ads/zzen;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzaan;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzaan;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzafc;->b:Lcom/google/android/gms/internal/ads/zzaan;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzaaj;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzaaj;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzafc;->c:Lcom/google/android/gms/internal/ads/zzaaj;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzafc;->k:J

    new-instance p1, Lcom/google/android/gms/internal/ads/zzaal;

    .line 3
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzaal;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzafc;->d:Lcom/google/android/gms/internal/ads/zzaal;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzzt;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzzt;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzafc;->e:Lcom/google/android/gms/internal/ads/zzabb;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzafc;->h:Lcom/google/android/gms/internal/ads/zzabb;

    return-void
.end method

.method private final c(Lcom/google/android/gms/internal/ads/zzzv;)I
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "extractorOutput",
            "realTrackOutput"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzafc;->i:I

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-nez v2, :cond_f

    :try_start_a
    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/internal/ads/zzafc;->k(Lcom/google/android/gms/internal/ads/zzzv;Z)Z
    :try_end_d
    .catch Ljava/io/EOFException; {:try_start_a .. :try_end_d} :catch_e

    goto :goto_f

    :catch_e
    return v3

    :cond_f
    :goto_f
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzafc;->o:Lcom/google/android/gms/internal/ads/zzafe;

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v8, 0x1

    if-nez v2, :cond_1c3

    .line 2
    new-instance v14, Lcom/google/android/gms/internal/ads/zzen;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzafc;->b:Lcom/google/android/gms/internal/ads/zzaan;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzaan;->c:I

    invoke-direct {v14, v2}, Lcom/google/android/gms/internal/ads/zzen;-><init>(I)V

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v2

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzafc;->b:Lcom/google/android/gms/internal/ads/zzaan;

    iget v9, v9, Lcom/google/android/gms/internal/ads/zzaan;->c:I

    move-object v10, v1

    check-cast v10, Lcom/google/android/gms/internal/ads/zzzk;

    .line 3
    invoke-virtual {v10, v2, v4, v9, v4}, Lcom/google/android/gms/internal/ads/zzzk;->k([BIIZ)Z

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzafc;->b:Lcom/google/android/gms/internal/ads/zzaan;

    iget v9, v2, Lcom/google/android/gms/internal/ads/zzaan;->a:I

    and-int/2addr v9, v8

    const/16 v10, 0x24

    const/16 v11, 0x15

    if-eqz v9, :cond_42

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzaan;->e:I

    if-eq v2, v8, :cond_46

    const/16 v2, 0x24

    goto :goto_4d

    .line 4
    :cond_42
    iget v2, v2, Lcom/google/android/gms/internal/ads/zzaan;->e:I

    if-eq v2, v8, :cond_49

    :cond_46
    const/16 v2, 0x15

    goto :goto_4d

    :cond_49
    const/16 v11, 0xd

    const/16 v2, 0xd

    .line 5
    :goto_4d
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzen;->l()I

    move-result v9

    add-int/lit8 v11, v2, 0x4

    const v12, 0x58696e67

    const v13, 0x56425249

    const v15, 0x496e666f

    if-lt v9, v11, :cond_6f

    .line 6
    invoke-virtual {v14, v2}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    .line 7
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzen;->m()I

    move-result v9

    if-eq v9, v12, :cond_6d

    if-ne v9, v15, :cond_6f

    const v11, 0x496e666f

    goto :goto_85

    :cond_6d
    move v11, v9

    goto :goto_85

    .line 8
    :cond_6f
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzen;->l()I

    move-result v9

    const/16 v11, 0x28

    if-lt v9, v11, :cond_84

    .line 9
    invoke-virtual {v14, v10}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    .line 10
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzen;->m()I

    move-result v9

    if-ne v9, v13, :cond_84

    const v11, 0x56425249

    goto :goto_85

    :cond_84
    const/4 v11, 0x0

    :goto_85
    if-eq v11, v12, :cond_aa

    if-ne v11, v15, :cond_8a

    goto :goto_aa

    :cond_8a
    if-ne v11, v13, :cond_a5

    .line 11
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzzv;->d()J

    move-result-wide v9

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzzv;->c()J

    move-result-wide v11

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzafc;->b:Lcom/google/android/gms/internal/ads/zzaan;

    .line 12
    invoke-static/range {v9 .. v14}, Lcom/google/android/gms/internal/ads/zzaff;->a(JJLcom/google/android/gms/internal/ads/zzaan;Lcom/google/android/gms/internal/ads/zzen;)Lcom/google/android/gms/internal/ads/zzaff;

    move-result-object v2

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzafc;->b:Lcom/google/android/gms/internal/ads/zzaan;

    iget v9, v9, Lcom/google/android/gms/internal/ads/zzaan;->c:I

    move-object v10, v1

    check-cast v10, Lcom/google/android/gms/internal/ads/zzzk;

    .line 13
    invoke-virtual {v10, v9, v4}, Lcom/google/android/gms/internal/ads/zzzk;->o(IZ)Z

    goto :goto_10d

    .line 14
    :cond_a5
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzzv;->h()V

    const/4 v2, 0x0

    goto :goto_10d

    .line 15
    :cond_aa
    :goto_aa
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzzv;->d()J

    move-result-wide v9

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzzv;->c()J

    move-result-wide v12

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzafc;->b:Lcom/google/android/gms/internal/ads/zzaan;

    move v7, v11

    move-wide v11, v12

    move-object v13, v8

    .line 16
    invoke-static/range {v9 .. v14}, Lcom/google/android/gms/internal/ads/zzafg;->a(JJLcom/google/android/gms/internal/ads/zzaan;Lcom/google/android/gms/internal/ads/zzen;)Lcom/google/android/gms/internal/ads/zzafg;

    move-result-object v8

    if-eqz v8, :cond_f3

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzafc;->c:Lcom/google/android/gms/internal/ads/zzaaj;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzaaj;->a()Z

    move-result v9

    if-nez v9, :cond_f3

    .line 17
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzzv;->h()V

    add-int/lit16 v2, v2, 0x8d

    move-object v9, v1

    check-cast v9, Lcom/google/android/gms/internal/ads/zzzk;

    .line 18
    invoke-virtual {v9, v2, v4}, Lcom/google/android/gms/internal/ads/zzzk;->n(IZ)Z

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzafc;->a:Lcom/google/android/gms/internal/ads/zzen;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v2

    const/4 v10, 0x3

    .line 19
    invoke-virtual {v9, v2, v4, v10, v4}, Lcom/google/android/gms/internal/ads/zzzk;->k([BIIZ)Z

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzafc;->a:Lcom/google/android/gms/internal/ads/zzen;

    .line 20
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzafc;->c:Lcom/google/android/gms/internal/ads/zzaaj;

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzafc;->a:Lcom/google/android/gms/internal/ads/zzen;

    .line 21
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzen;->u()I

    move-result v9

    shr-int/lit8 v10, v9, 0xc

    and-int/lit16 v9, v9, 0xfff

    if-gtz v10, :cond_ef

    if-lez v9, :cond_f3

    :cond_ef
    iput v10, v2, Lcom/google/android/gms/internal/ads/zzaaj;->a:I

    iput v9, v2, Lcom/google/android/gms/internal/ads/zzaaj;->b:I

    :cond_f3
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzafc;->b:Lcom/google/android/gms/internal/ads/zzaan;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzaan;->c:I

    move-object v9, v1

    check-cast v9, Lcom/google/android/gms/internal/ads/zzzk;

    .line 22
    invoke-virtual {v9, v2, v4}, Lcom/google/android/gms/internal/ads/zzzk;->o(IZ)Z

    if-eqz v8, :cond_10c

    invoke-interface {v8}, Lcom/google/android/gms/internal/ads/zzaax;->f()Z

    move-result v2

    if-nez v2, :cond_10c

    if-ne v7, v15, :cond_10c

    .line 23
    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/internal/ads/zzafc;->f(Lcom/google/android/gms/internal/ads/zzzv;Z)Lcom/google/android/gms/internal/ads/zzafe;

    move-result-object v2

    goto :goto_10d

    :cond_10c
    move-object v2, v8

    :goto_10d
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzafc;->j:Lcom/google/android/gms/internal/ads/zzbq;

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzzv;->c()J

    move-result-wide v8

    if-eqz v7, :cond_15e

    .line 24
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzbq;->h()I

    move-result v10

    const/4 v11, 0x0

    :goto_11a
    if-ge v11, v10, :cond_15e

    .line 25
    invoke-virtual {v7, v11}, Lcom/google/android/gms/internal/ads/zzbq;->t(I)Lcom/google/android/gms/internal/ads/zzbp;

    move-result-object v12

    .line 26
    instance-of v13, v12, Lcom/google/android/gms/internal/ads/zzadt;

    if-eqz v13, :cond_15b

    .line 27
    check-cast v12, Lcom/google/android/gms/internal/ads/zzadt;

    .line 28
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzbq;->h()I

    move-result v10

    const/4 v11, 0x0

    :goto_12b
    if-ge v11, v10, :cond_155

    .line 29
    invoke-virtual {v7, v11}, Lcom/google/android/gms/internal/ads/zzbq;->t(I)Lcom/google/android/gms/internal/ads/zzbp;

    move-result-object v13

    .line 30
    instance-of v14, v13, Lcom/google/android/gms/internal/ads/zzadx;

    if-eqz v14, :cond_152

    check-cast v13, Lcom/google/android/gms/internal/ads/zzadx;

    iget-object v14, v13, Lcom/google/android/gms/internal/ads/zzadp;->o:Ljava/lang/String;

    const-string v15, "TLEN"

    .line 31
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_152

    .line 32
    iget-object v7, v13, Lcom/google/android/gms/internal/ads/zzadx;->r:Lcom/google/android/gms/internal/ads/zzfqk;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/google/android/gms/internal/ads/zzew;->g0(J)J

    move-result-wide v10

    goto :goto_156

    :cond_152
    add-int/lit8 v11, v11, 0x1

    goto :goto_12b

    :cond_155
    move-wide v10, v5

    .line 33
    :goto_156
    invoke-static {v8, v9, v12, v10, v11}, Lcom/google/android/gms/internal/ads/zzaez;->a(JLcom/google/android/gms/internal/ads/zzadt;J)Lcom/google/android/gms/internal/ads/zzaez;

    move-result-object v7

    goto :goto_15f

    :cond_15b
    add-int/lit8 v11, v11, 0x1

    goto :goto_11a

    :cond_15e
    const/4 v7, 0x0

    :goto_15f
    iget-boolean v8, v0, Lcom/google/android/gms/internal/ads/zzafc;->p:Z

    if-eqz v8, :cond_169

    new-instance v2, Lcom/google/android/gms/internal/ads/zzafd;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzafd;-><init>()V

    goto :goto_17a

    :cond_169
    if-eqz v7, :cond_16d

    move-object v2, v7

    goto :goto_170

    :cond_16d
    if-nez v2, :cond_170

    const/4 v2, 0x0

    :cond_170
    :goto_170
    if-eqz v2, :cond_176

    .line 34
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzaax;->f()Z

    goto :goto_17a

    .line 35
    :cond_176
    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/internal/ads/zzafc;->f(Lcom/google/android/gms/internal/ads/zzzv;Z)Lcom/google/android/gms/internal/ads/zzafe;

    move-result-object v2

    .line 36
    :goto_17a
    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzafc;->o:Lcom/google/android/gms/internal/ads/zzafe;

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzafc;->f:Lcom/google/android/gms/internal/ads/zzzx;

    .line 37
    invoke-interface {v7, v2}, Lcom/google/android/gms/internal/ads/zzzx;->e(Lcom/google/android/gms/internal/ads/zzaax;)V

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzafc;->h:Lcom/google/android/gms/internal/ads/zzabb;

    new-instance v7, Lcom/google/android/gms/internal/ads/zzad;

    invoke-direct {v7}, Lcom/google/android/gms/internal/ads/zzad;-><init>()V

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzafc;->b:Lcom/google/android/gms/internal/ads/zzaan;

    iget-object v8, v8, Lcom/google/android/gms/internal/ads/zzaan;->b:Ljava/lang/String;

    .line 38
    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/ads/zzad;->s(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzad;

    const/16 v8, 0x1000

    .line 39
    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/ads/zzad;->l(I)Lcom/google/android/gms/internal/ads/zzad;

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzafc;->b:Lcom/google/android/gms/internal/ads/zzaan;

    iget v8, v8, Lcom/google/android/gms/internal/ads/zzaan;->e:I

    .line 40
    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/ads/zzad;->e0(I)Lcom/google/android/gms/internal/ads/zzad;

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzafc;->b:Lcom/google/android/gms/internal/ads/zzaan;

    iget v8, v8, Lcom/google/android/gms/internal/ads/zzaan;->d:I

    .line 41
    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/ads/zzad;->t(I)Lcom/google/android/gms/internal/ads/zzad;

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzafc;->c:Lcom/google/android/gms/internal/ads/zzaaj;

    iget v8, v8, Lcom/google/android/gms/internal/ads/zzaaj;->a:I

    .line 42
    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/ads/zzad;->c(I)Lcom/google/android/gms/internal/ads/zzad;

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzafc;->c:Lcom/google/android/gms/internal/ads/zzaaj;

    iget v8, v8, Lcom/google/android/gms/internal/ads/zzaaj;->b:I

    .line 43
    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/ads/zzad;->d(I)Lcom/google/android/gms/internal/ads/zzad;

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzafc;->j:Lcom/google/android/gms/internal/ads/zzbq;

    .line 44
    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/ads/zzad;->m(Lcom/google/android/gms/internal/ads/zzbq;)Lcom/google/android/gms/internal/ads/zzad;

    .line 45
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzad;->y()Lcom/google/android/gms/internal/ads/zzaf;

    move-result-object v7

    .line 46
    invoke-interface {v2, v7}, Lcom/google/android/gms/internal/ads/zzabb;->e(Lcom/google/android/gms/internal/ads/zzaf;)V

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzzv;->c()J

    move-result-wide v7

    iput-wide v7, v0, Lcom/google/android/gms/internal/ads/zzafc;->m:J

    goto :goto_1db

    .line 47
    :cond_1c3
    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/zzafc;->m:J

    const-wide/16 v9, 0x0

    cmp-long v2, v7, v9

    if-eqz v2, :cond_1db

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzzv;->c()J

    move-result-wide v9

    cmp-long v2, v9, v7

    if-gez v2, :cond_1db

    sub-long/2addr v7, v9

    move-object v2, v1

    check-cast v2, Lcom/google/android/gms/internal/ads/zzzk;

    long-to-int v8, v7

    .line 48
    invoke-virtual {v2, v8, v4}, Lcom/google/android/gms/internal/ads/zzzk;->o(IZ)Z

    .line 49
    :cond_1db
    :goto_1db
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzafc;->n:I

    if-nez v2, :cond_23f

    .line 50
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzzv;->h()V

    .line 51
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzafc;->j(Lcom/google/android/gms/internal/ads/zzzv;)Z

    move-result v2

    if-eqz v2, :cond_1e9

    goto :goto_251

    :cond_1e9
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzafc;->a:Lcom/google/android/gms/internal/ads/zzen;

    .line 52
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzafc;->a:Lcom/google/android/gms/internal/ads/zzen;

    .line 53
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->m()I

    move-result v2

    iget v7, v0, Lcom/google/android/gms/internal/ads/zzafc;->i:I

    int-to-long v7, v7

    invoke-static {v2, v7, v8}, Lcom/google/android/gms/internal/ads/zzafc;->i(IJ)Z

    move-result v7

    if-eqz v7, :cond_236

    .line 54
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzaao;->b(I)I

    move-result v7

    if-ne v7, v3, :cond_204

    goto :goto_236

    .line 55
    :cond_204
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzafc;->b:Lcom/google/android/gms/internal/ads/zzaan;

    .line 56
    invoke-virtual {v7, v2}, Lcom/google/android/gms/internal/ads/zzaan;->a(I)Z

    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/zzafc;->k:J

    cmp-long v2, v7, v5

    if-nez v2, :cond_21b

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzafc;->o:Lcom/google/android/gms/internal/ads/zzafe;

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzzv;->c()J

    move-result-wide v5

    .line 57
    invoke-interface {v2, v5, v6}, Lcom/google/android/gms/internal/ads/zzafe;->d(J)J

    move-result-wide v5

    iput-wide v5, v0, Lcom/google/android/gms/internal/ads/zzafc;->k:J

    :cond_21b
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzafc;->b:Lcom/google/android/gms/internal/ads/zzaan;

    iget v5, v2, Lcom/google/android/gms/internal/ads/zzaan;->c:I

    iput v5, v0, Lcom/google/android/gms/internal/ads/zzafc;->n:I

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzafc;->o:Lcom/google/android/gms/internal/ads/zzafe;

    .line 58
    instance-of v7, v6, Lcom/google/android/gms/internal/ads/zzaey;

    if-nez v7, :cond_229

    move v2, v5

    goto :goto_23f

    .line 59
    :cond_229
    check-cast v6, Lcom/google/android/gms/internal/ads/zzaey;

    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzafc;->l:J

    iget v1, v2, Lcom/google/android/gms/internal/ads/zzaan;->g:I

    int-to-long v1, v1

    add-long/2addr v3, v1

    .line 60
    invoke-direct {v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzafc;->d(J)J

    const/4 v1, 0x0

    .line 61
    throw v1

    .line 62
    :cond_236
    :goto_236
    check-cast v1, Lcom/google/android/gms/internal/ads/zzzk;

    const/4 v5, 0x1

    .line 63
    invoke-virtual {v1, v5, v4}, Lcom/google/android/gms/internal/ads/zzzk;->o(IZ)Z

    iput v4, v0, Lcom/google/android/gms/internal/ads/zzafc;->i:I

    goto :goto_250

    :cond_23f
    :goto_23f
    const/4 v5, 0x1

    .line 64
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzafc;->h:Lcom/google/android/gms/internal/ads/zzabb;

    .line 65
    invoke-interface {v6, v1, v2, v5}, Lcom/google/android/gms/internal/ads/zzabb;->b(Lcom/google/android/gms/internal/ads/zzr;IZ)I

    move-result v1

    if-ne v1, v3, :cond_249

    goto :goto_251

    :cond_249
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzafc;->n:I

    sub-int/2addr v2, v1

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzafc;->n:I

    if-lez v2, :cond_252

    :goto_250
    const/4 v3, 0x0

    :goto_251
    return v3

    :cond_252
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzafc;->h:Lcom/google/android/gms/internal/ads/zzabb;

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzafc;->l:J

    .line 66
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzafc;->d(J)J

    move-result-wide v6

    const/4 v8, 0x1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzafc;->b:Lcom/google/android/gms/internal/ads/zzaan;

    iget v9, v1, Lcom/google/android/gms/internal/ads/zzaan;->c:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 67
    invoke-interface/range {v5 .. v11}, Lcom/google/android/gms/internal/ads/zzabb;->f(JIIILcom/google/android/gms/internal/ads/zzaba;)V

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzafc;->l:J

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzafc;->b:Lcom/google/android/gms/internal/ads/zzaan;

    iget v3, v3, Lcom/google/android/gms/internal/ads/zzaan;->g:I

    int-to-long v5, v3

    add-long/2addr v1, v5

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzafc;->l:J

    iput v4, v0, Lcom/google/android/gms/internal/ads/zzafc;->n:I

    return v4
.end method

.method private final d(J)J
    .registers 9

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzafc;->k:J

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzafc;->b:Lcom/google/android/gms/internal/ads/zzaan;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzaan;->d:I

    int-to-long v2, v2

    const-wide/32 v4, 0xf4240

    mul-long p1, p1, v4

    div-long/2addr p1, v2

    add-long/2addr v0, p1

    return-wide v0
.end method

.method private final f(Lcom/google/android/gms/internal/ads/zzzv;Z)Lcom/google/android/gms/internal/ads/zzafe;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzafc;->a:Lcom/google/android/gms/internal/ads/zzen;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object p2

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzzk;

    const/4 v1, 0x0

    const/4 v2, 0x4

    .line 1
    invoke-virtual {v0, p2, v1, v2, v1}, Lcom/google/android/gms/internal/ads/zzzk;->k([BIIZ)Z

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzafc;->a:Lcom/google/android/gms/internal/ads/zzen;

    .line 2
    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzafc;->b:Lcom/google/android/gms/internal/ads/zzaan;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafc;->a:Lcom/google/android/gms/internal/ads/zzen;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzen;->m()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzaan;->a(I)Z

    new-instance p2, Lcom/google/android/gms/internal/ads/zzaex;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzzv;->d()J

    move-result-wide v2

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzzv;->c()J

    move-result-wide v4

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzafc;->b:Lcom/google/android/gms/internal/ads/zzaan;

    const/4 v7, 0x0

    move-object v1, p2

    .line 4
    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzaex;-><init>(JJLcom/google/android/gms/internal/ads/zzaan;Z)V

    return-object p2
.end method

.method private static i(IJ)Z
    .registers 7

    const v0, -0x1f400

    and-int/2addr p0, v0

    int-to-long v0, p0

    const-wide/32 v2, -0x1f400

    and-long/2addr p1, v2

    cmp-long p0, v0, p1

    if-nez p0, :cond_f

    const/4 p0, 0x1

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method private final j(Lcom/google/android/gms/internal/ads/zzzv;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafc;->o:Lcom/google/android/gms/internal/ads/zzafe;

    const/4 v1, 0x1

    if-eqz v0, :cond_1c

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzafe;->zzb()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1c

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzzv;->b()J

    move-result-wide v4

    const-wide/16 v6, -0x4

    add-long/2addr v2, v6

    cmp-long v0, v4, v2

    if-gtz v0, :cond_1b

    goto :goto_1c

    :cond_1b
    return v1

    :cond_1c
    :goto_1c
    :try_start_1c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafc;->a:Lcom/google/android/gms/internal/ads/zzen;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v0

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-interface {p1, v0, v3, v2, v1}, Lcom/google/android/gms/internal/ads/zzzv;->k([BIIZ)Z

    move-result p1
    :try_end_28
    .catch Ljava/io/EOFException; {:try_start_1c .. :try_end_28} :catch_2c

    if-nez p1, :cond_2b

    return v1

    :cond_2b
    return v3

    :catch_2c
    return v1
.end method

.method private final k(Lcom/google/android/gms/internal/ads/zzzv;Z)Z
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzzv;->h()V

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzzv;->c()J

    move-result-wide v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-nez v6, :cond_2d

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafc;->d:Lcom/google/android/gms/internal/ads/zzaal;

    .line 2
    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/internal/ads/zzaal;->a(Lcom/google/android/gms/internal/ads/zzzv;Lcom/google/android/gms/internal/ads/zzadm;)Lcom/google/android/gms/internal/ads/zzbq;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzafc;->j:Lcom/google/android/gms/internal/ads/zzbq;

    if-eqz v0, :cond_1e

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzafc;->c:Lcom/google/android/gms/internal/ads/zzaaj;

    .line 3
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaaj;->b(Lcom/google/android/gms/internal/ads/zzbq;)Z

    :cond_1e
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzzv;->b()J

    move-result-wide v0

    long-to-int v1, v0

    if-nez p2, :cond_2b

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzzk;

    .line 4
    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/ads/zzzk;->o(IZ)Z

    :cond_2b
    const/4 v0, 0x0

    goto :goto_2f

    :cond_2d
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2f
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 5
    :goto_31
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzafc;->j(Lcom/google/android/gms/internal/ads/zzzv;)Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_41

    if-lez v4, :cond_3b

    goto :goto_98

    .line 6
    :cond_3b
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 7
    :cond_41
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzafc;->a:Lcom/google/android/gms/internal/ads/zzen;

    .line 8
    invoke-virtual {v6, v3}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzafc;->a:Lcom/google/android/gms/internal/ads/zzen;

    .line 9
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzen;->m()I

    move-result v6

    if-eqz v0, :cond_55

    int-to-long v8, v0

    invoke-static {v6, v8, v9}, Lcom/google/android/gms/internal/ads/zzafc;->i(IJ)Z

    move-result v8

    if-eqz v8, :cond_5c

    .line 10
    :cond_55
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzaao;->b(I)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_8a

    :cond_5c
    if-eq v7, p2, :cond_61

    const/high16 v0, 0x20000

    goto :goto_64

    :cond_61
    const v0, 0x8000

    :goto_64
    add-int/lit8 v4, v5, 0x1

    if-ne v5, v0, :cond_72

    if-eqz p2, :cond_6b

    return v3

    :cond_6b
    const-string p1, "Searched too many bytes."

    .line 11
    invoke-static {p1, v2}, Lcom/google/android/gms/internal/ads/zzbu;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbu;

    move-result-object p1

    throw p1

    :cond_72
    if-eqz p2, :cond_80

    .line 12
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzzv;->h()V

    add-int v0, v1, v4

    move-object v5, p1

    check-cast v5, Lcom/google/android/gms/internal/ads/zzzk;

    .line 13
    invoke-virtual {v5, v0, v3}, Lcom/google/android/gms/internal/ads/zzzk;->n(IZ)Z

    goto :goto_86

    :cond_80
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzzk;

    .line 14
    invoke-virtual {v0, v7, v3}, Lcom/google/android/gms/internal/ads/zzzk;->o(IZ)Z

    :goto_86
    move v5, v4

    const/4 v0, 0x0

    const/4 v4, 0x0

    goto :goto_31

    :cond_8a
    add-int/lit8 v4, v4, 0x1

    if-ne v4, v7, :cond_95

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafc;->b:Lcom/google/android/gms/internal/ads/zzaan;

    .line 15
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/zzaan;->a(I)Z

    move v0, v6

    goto :goto_a7

    :cond_95
    const/4 v6, 0x4

    if-ne v4, v6, :cond_a7

    :goto_98
    if-eqz p2, :cond_a1

    add-int/2addr v1, v5

    .line 16
    check-cast p1, Lcom/google/android/gms/internal/ads/zzzk;

    .line 17
    invoke-virtual {p1, v1, v3}, Lcom/google/android/gms/internal/ads/zzzk;->o(IZ)Z

    goto :goto_a4

    .line 18
    :cond_a1
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzzv;->h()V

    .line 19
    :goto_a4
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzafc;->i:I

    return v7

    :cond_a7
    :goto_a7
    add-int/lit8 v8, v8, -0x4

    .line 20
    move-object v6, p1

    check-cast v6, Lcom/google/android/gms/internal/ads/zzzk;

    .line 21
    invoke-virtual {v6, v8, v3}, Lcom/google/android/gms/internal/ads/zzzk;->n(IZ)Z

    goto :goto_31
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/zzzv;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzafc;->k(Lcom/google/android/gms/internal/ads/zzzv;Z)Z

    move-result p1

    return p1
.end method

.method public final b()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzafc;->p:Z

    return-void
.end method

.method public final e(Lcom/google/android/gms/internal/ads/zzzv;Lcom/google/android/gms/internal/ads/zzaau;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzafc;->g:Lcom/google/android/gms/internal/ads/zzabb;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzdl;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget p2, Lcom/google/android/gms/internal/ads/zzew;->a:I

    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzafc;->c(Lcom/google/android/gms/internal/ads/zzzv;)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_2b

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzafc;->o:Lcom/google/android/gms/internal/ads/zzafe;

    .line 4
    instance-of p2, p2, Lcom/google/android/gms/internal/ads/zzaey;

    if-eqz p2, :cond_2b

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzafc;->l:J

    .line 5
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzafc;->d(J)J

    move-result-wide v0

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzafc;->o:Lcom/google/android/gms/internal/ads/zzafe;

    .line 6
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzaax;->b()J

    move-result-wide v2

    cmp-long p2, v2, v0

    if-nez p2, :cond_25

    goto :goto_2b

    :cond_25
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzafc;->o:Lcom/google/android/gms/internal/ads/zzafe;

    .line 7
    check-cast p1, Lcom/google/android/gms/internal/ads/zzaey;

    const/4 p1, 0x0

    .line 8
    throw p1

    :cond_2b
    :goto_2b
    return p1
.end method

.method public final g(Lcom/google/android/gms/internal/ads/zzzx;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzafc;->f:Lcom/google/android/gms/internal/ads/zzzx;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzzx;->q(II)Lcom/google/android/gms/internal/ads/zzabb;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzafc;->g:Lcom/google/android/gms/internal/ads/zzabb;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzafc;->h:Lcom/google/android/gms/internal/ads/zzabb;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzafc;->f:Lcom/google/android/gms/internal/ads/zzzx;

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzzx;->f0()V

    return-void
.end method

.method public final h(JJ)V
    .registers 5

    const/4 p1, 0x0

    .line 1
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzafc;->i:I

    const-wide p2, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzafc;->k:J

    const-wide/16 p2, 0x0

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzafc;->l:J

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzafc;->n:I

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzafc;->o:Lcom/google/android/gms/internal/ads/zzafe;

    instance-of p2, p1, Lcom/google/android/gms/internal/ads/zzaey;

    if-nez p2, :cond_17

    return-void

    :cond_17
    check-cast p1, Lcom/google/android/gms/internal/ads/zzaey;

    const/4 p1, 0x0

    .line 2
    throw p1
.end method

###### Class com.google.android.gms.internal.ads.zzafa (com.google.android.gms.internal.ads.zzafa)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzafa;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaab;


# static fields
.field public static final synthetic b:Lcom/google/android/gms/internal/ads/zzafa;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzafa;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzafa;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzafa;->b:Lcom/google/android/gms/internal/ads/zzafa;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Landroid/net/Uri;Ljava/util/Map;)[Lcom/google/android/gms/internal/ads/zzzu;
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzaaa;->a(Lcom/google/android/gms/internal/ads/zzaab;Landroid/net/Uri;Ljava/util/Map;)[Lcom/google/android/gms/internal/ads/zzzu;

    move-result-object p1

    return-object p1
.end method

.method public final zza()[Lcom/google/android/gms/internal/ads/zzzu;
    .registers 4

    sget-object v0, Lcom/google/android/gms/internal/ads/zzafc;->q:Lcom/google/android/gms/internal/ads/zzaab;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/zzzu;

    .line 1
    new-instance v1, Lcom/google/android/gms/internal/ads/zzafc;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzafc;-><init>(I)V

    aput-object v1, v0, v2

    return-object v0
.end method

###### Class com.google.android.gms.internal.ads.zzafb (com.google.android.gms.internal.ads.zzafb)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzafb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzadm;


# static fields
.field public static final synthetic a:Lcom/google/android/gms/internal/ads/zzafb;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzafb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzafb;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzafb;->a:Lcom/google/android/gms/internal/ads/zzafb;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
