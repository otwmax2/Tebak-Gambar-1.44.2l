###### Class com.google.android.gms.internal.ads.zzxs (com.google.android.gms.internal.ads.zzxs)
.class public final Lcom/google/android/gms/internal/ads/zzxs;
.super Lcom/google/android/gms/internal/ads/zzra;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# static fields
.field private static final s1:[I

.field private static t1:Z

.field private static u1:Z


# instance fields
.field private final P0:Landroid/content/Context;

.field private final Q0:Lcom/google/android/gms/internal/ads/zzyd;

.field private final R0:Lcom/google/android/gms/internal/ads/zzyo;

.field private final S0:Lcom/google/android/gms/internal/ads/zzxr;

.field private final T0:Z

.field private U0:Lcom/google/android/gms/internal/ads/zzxq;

.field private V0:Z

.field private W0:Z

.field private X0:Landroid/view/Surface;

.field private Y0:Lcom/google/android/gms/internal/ads/zzxv;

.field private Z0:Z

.field private a1:I

.field private b1:Z

.field private c1:Z

.field private d1:Z

.field private e1:J

.field private f1:J

.field private g1:J

.field private h1:I

.field private i1:I

.field private j1:I

.field private k1:J

.field private l1:J

.field private m1:J

.field private n1:I

.field private o1:Lcom/google/android/gms/internal/ads/zzda;

.field private p1:Lcom/google/android/gms/internal/ads/zzda;

.field private q1:I

.field private r1:Lcom/google/android/gms/internal/ads/zzxw;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/google/android/gms/internal/ads/zzxs;->s1:[I

    return-void

    :array_a
    .array-data 4
        0x780
        0x640
        0x5a0
        0x500
        0x3c0
        0x356
        0x280
        0x21c
        0x1e0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzqt;Lcom/google/android/gms/internal/ads/zzrc;JZLandroid/os/Handler;Lcom/google/android/gms/internal/ads/zzyp;IF)V
    .registers 18

    move-object v6, p0

    const/4 v1, 0x2

    const/4 v4, 0x0

    const/high16 v5, 0x41f00000    # 30.0f

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzra;-><init>(ILcom/google/android/gms/internal/ads/zzqt;Lcom/google/android/gms/internal/ads/zzrc;ZF)V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, v6, Lcom/google/android/gms/internal/ads/zzxs;->P0:Landroid/content/Context;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzyd;

    .line 3
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzyd;-><init>(Landroid/content/Context;)V

    iput-object v1, v6, Lcom/google/android/gms/internal/ads/zzxs;->Q0:Lcom/google/android/gms/internal/ads/zzyd;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzyo;

    move-object v2, p7

    move-object v3, p8

    invoke-direct {v0, p7, p8}, Lcom/google/android/gms/internal/ads/zzyo;-><init>(Landroid/os/Handler;Lcom/google/android/gms/internal/ads/zzyp;)V

    iput-object v0, v6, Lcom/google/android/gms/internal/ads/zzxs;->R0:Lcom/google/android/gms/internal/ads/zzyo;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzxr;

    .line 4
    invoke-direct {v0, v1, p0}, Lcom/google/android/gms/internal/ads/zzxr;-><init>(Lcom/google/android/gms/internal/ads/zzyd;Lcom/google/android/gms/internal/ads/zzxs;)V

    iput-object v0, v6, Lcom/google/android/gms/internal/ads/zzxs;->S0:Lcom/google/android/gms/internal/ads/zzxr;

    .line 5
    sget-object v0, Lcom/google/android/gms/internal/ads/zzew;->c:Ljava/lang/String;

    const-string v1, "NVIDIA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, v6, Lcom/google/android/gms/internal/ads/zzxs;->T0:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, v6, Lcom/google/android/gms/internal/ads/zzxs;->f1:J

    const/4 v0, 0x1

    iput v0, v6, Lcom/google/android/gms/internal/ads/zzxs;->a1:I

    .line 6
    sget-object v0, Lcom/google/android/gms/internal/ads/zzda;->e:Lcom/google/android/gms/internal/ads/zzda;

    iput-object v0, v6, Lcom/google/android/gms/internal/ads/zzxs;->o1:Lcom/google/android/gms/internal/ads/zzda;

    const/4 v0, 0x0

    iput v0, v6, Lcom/google/android/gms/internal/ads/zzxs;->q1:I

    const/4 v0, 0x0

    iput-object v0, v6, Lcom/google/android/gms/internal/ads/zzxs;->p1:Lcom/google/android/gms/internal/ads/zzda;

    return-void
.end method

.method public static K0(Lcom/google/android/gms/internal/ads/zzqx;Lcom/google/android/gms/internal/ads/zzaf;)I
    .registers 12

    .line 1
    iget v0, p1, Lcom/google/android/gms/internal/ads/zzaf;->q:I

    .line 2
    iget v1, p1, Lcom/google/android/gms/internal/ads/zzaf;->r:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_d7

    if-ne v1, v2, :cond_b

    goto/16 :goto_d7

    .line 3
    :cond_b
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzaf;->l:Ljava/lang/String;

    const-string v4, "video/dolby-vision"

    .line 4
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x1

    const-string v7, "video/avc"

    const-string v8, "video/hevc"

    if-eqz v4, :cond_34

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzrp;->b(Lcom/google/android/gms/internal/ads/zzaf;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_33

    .line 6
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v3, 0x200

    if-eq p1, v3, :cond_31

    if-eq p1, v6, :cond_31

    if-ne p1, v5, :cond_33

    :cond_31
    move-object v3, v7

    goto :goto_34

    :cond_33
    move-object v3, v8

    .line 7
    :cond_34
    :goto_34
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result p1

    const/4 v4, 0x3

    const/4 v9, 0x4

    sparse-switch p1, :sswitch_data_d8

    goto :goto_7f

    :sswitch_3e
    const-string p1, "video/x-vnd.on2.vp9"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7f

    const/4 v5, 0x6

    goto :goto_80

    :sswitch_48
    const-string p1, "video/x-vnd.on2.vp8"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7f

    const/4 v5, 0x3

    goto :goto_80

    :sswitch_52
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7f

    const/4 v5, 0x5

    goto :goto_80

    :sswitch_5a
    const-string p1, "video/mp4v-es"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7f

    const/4 v5, 0x1

    goto :goto_80

    :sswitch_64
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7f

    const/4 v5, 0x4

    goto :goto_80

    :sswitch_6c
    const-string p1, "video/av01"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7f

    goto :goto_80

    :sswitch_75
    const-string p1, "video/3gpp"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7f

    const/4 v5, 0x0

    goto :goto_80

    :cond_7f
    :goto_7f
    const/4 v5, -0x1

    :goto_80
    packed-switch v5, :pswitch_data_f6

    return v2

    :pswitch_84
    mul-int v0, v0, v1

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x8

    return v0

    .line 8
    :pswitch_8b
    sget-object p1, Lcom/google/android/gms/internal/ads/zzew;->d:Ljava/lang/String;

    const-string v3, "BRAVIA 4K 2015"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c4

    sget-object v3, Lcom/google/android/gms/internal/ads/zzew;->c:Ljava/lang/String;

    const-string v4, "Amazon"

    .line 9
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b4

    const-string v3, "KFSOWI"

    .line 10
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c4

    const-string v3, "AFTS"

    .line 11
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b4

    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/zzqx;->f:Z

    if-eqz p0, :cond_b4

    goto :goto_c4

    :cond_b4
    const/16 p0, 0x10

    .line 12
    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzew;->P(II)I

    move-result p1

    invoke-static {v1, p0}, Lcom/google/android/gms/internal/ads/zzew;->P(II)I

    move-result p0

    mul-int p1, p1, p0

    mul-int/lit16 p1, p1, 0x300

    div-int/2addr p1, v9

    return p1

    :cond_c4
    :goto_c4
    return v2

    :pswitch_c5
    const/high16 p0, 0x200000

    mul-int v0, v0, v1

    mul-int/lit8 v0, v0, 0x3

    div-int/2addr v0, v9

    .line 13
    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    :pswitch_d1
    mul-int v0, v0, v1

    mul-int/lit8 v0, v0, 0x3

    div-int/2addr v0, v9

    return v0

    :cond_d7
    :goto_d7
    return v2

    :sswitch_data_d8
    .sparse-switch
        -0x63306f58 -> :sswitch_75
        -0x631b55f6 -> :sswitch_6c
        -0x63185e82 -> :sswitch_64
        0x46cdc642 -> :sswitch_5a
        0x4f62373a -> :sswitch_52
        0x5f50bed8 -> :sswitch_48
        0x5f50bed9 -> :sswitch_3e
    .end sparse-switch

    :pswitch_data_f6
    .packed-switch 0x0
        :pswitch_d1
        :pswitch_d1
        :pswitch_d1
        :pswitch_d1
        :pswitch_c5
        :pswitch_8b
        :pswitch_84
    .end packed-switch
.end method

.method protected static L0(Lcom/google/android/gms/internal/ads/zzqx;Lcom/google/android/gms/internal/ads/zzaf;)I
    .registers 5

    .line 1
    iget v0, p1, Lcom/google/android/gms/internal/ads/zzaf;->m:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_20

    .line 2
    iget-object p0, p1, Lcom/google/android/gms/internal/ads/zzaf;->n:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_d
    if-ge v0, p0, :cond_1c

    .line 3
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzaf;->n:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    array-length v2, v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 4
    :cond_1c
    iget p0, p1, Lcom/google/android/gms/internal/ads/zzaf;->m:I

    add-int/2addr p0, v1

    return p0

    .line 5
    :cond_20
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzxs;->K0(Lcom/google/android/gms/internal/ads/zzqx;Lcom/google/android/gms/internal/ads/zzaf;)I

    move-result p0

    return p0
.end method

.method protected static final P0(Ljava/lang/String;)Z
    .registers 18

    const-string v0, "OMX.google"

    move-object/from16 v1, p0

    .line 1
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    return v1

    :cond_c
    const-class v2, Lcom/google/android/gms/internal/ads/zzxs;

    monitor-enter v2

    :try_start_f
    sget-boolean v0, Lcom/google/android/gms/internal/ads/zzxs;->t1:Z

    if-nez v0, :cond_7a6

    .line 2
    sget v0, Lcom/google/android/gms/internal/ads/zzew;->a:I

    const/16 v3, 0x1c

    const/4 v4, 0x5

    const/4 v5, 0x6

    const/4 v6, 0x4

    const/4 v7, 0x7

    const/4 v8, 0x2

    const/4 v9, 0x3

    const/4 v10, -0x1

    const/4 v11, 0x1

    if-gt v0, v3, :cond_83

    sget-object v12, Lcom/google/android/gms/internal/ads/zzew;->b:Ljava/lang/String;

    .line 3
    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    move-result v13
    :try_end_27
    .catchall {:try_start_f .. :try_end_27} :catchall_7aa

    sparse-switch v13, :sswitch_data_7b0

    goto :goto_7b

    :sswitch_2b
    const-string v13, "machuca"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7b

    const/4 v12, 0x5

    goto :goto_7c

    :sswitch_35
    const-string v13, "once"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7b

    const/4 v12, 0x6

    goto :goto_7c

    :sswitch_3f
    const-string v13, "magnolia"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7b

    const/4 v12, 0x4

    goto :goto_7c

    :sswitch_49
    const-string v13, "aquaman"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7b

    const/4 v12, 0x0

    goto :goto_7c

    :sswitch_53
    const-string v13, "oneday"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7b

    const/4 v12, 0x7

    goto :goto_7c

    :sswitch_5d
    const-string v13, "dangalUHD"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7b

    const/4 v12, 0x2

    goto :goto_7c

    :sswitch_67
    const-string v13, "dangalFHD"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7b

    const/4 v12, 0x3

    goto :goto_7c

    :sswitch_71
    const-string v13, "dangal"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7b

    const/4 v12, 0x1

    goto :goto_7c

    :cond_7b
    :goto_7b
    const/4 v12, -0x1

    :goto_7c
    packed-switch v12, :pswitch_data_7d2

    goto :goto_83

    :cond_80
    :goto_80
    :pswitch_80
    const/4 v1, 0x1

    goto/16 :goto_7a2

    :cond_83
    :goto_83
    const/16 v12, 0x1b

    if-gt v0, v12, :cond_92

    :try_start_87
    const-string v13, "HWEML"

    sget-object v14, Lcom/google/android/gms/internal/ads/zzew;->b:Ljava/lang/String;

    .line 4
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_92

    goto :goto_80

    .line 5
    :cond_92
    sget-object v13, Lcom/google/android/gms/internal/ads/zzew;->d:Ljava/lang/String;

    .line 6
    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    move-result v14
    :try_end_98
    .catchall {:try_start_87 .. :try_end_98} :catchall_7aa

    const/16 v15, 0x8

    sparse-switch v14, :sswitch_data_7e6

    goto :goto_f9

    :sswitch_9e
    const-string v14, "AFTEUFF014"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_f9

    const/4 v14, 0x5

    goto :goto_fa

    :sswitch_a8
    const-string v14, "AFTSO001"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_f9

    const/16 v14, 0x8

    goto :goto_fa

    :sswitch_b3
    const-string v14, "AFTEU014"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_f9

    const/4 v14, 0x4

    goto :goto_fa

    :sswitch_bd
    const-string v14, "AFTEU011"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_f9

    const/4 v14, 0x3

    goto :goto_fa

    :sswitch_c7
    const-string v14, "AFTR"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_f9

    const/4 v14, 0x2

    goto :goto_fa

    :sswitch_d1
    const-string v14, "AFTN"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_f9

    const/4 v14, 0x1

    goto :goto_fa

    :sswitch_db
    const-string v14, "AFTA"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_f9

    const/4 v14, 0x0

    goto :goto_fa

    :sswitch_e5
    const-string v14, "AFTKMST12"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_f9

    const/4 v14, 0x7

    goto :goto_fa

    :sswitch_ef
    const-string v14, "AFTJMST12"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_f9

    const/4 v14, 0x6

    goto :goto_fa

    :cond_f9
    :goto_f9
    const/4 v14, -0x1

    :goto_fa
    packed-switch v14, :pswitch_data_80c

    const/16 v14, 0x1a

    if-gt v0, v14, :cond_7a2

    :try_start_101
    sget-object v0, Lcom/google/android/gms/internal/ads/zzew;->b:Ljava/lang/String;

    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v16
    :try_end_107
    .catchall {:try_start_101 .. :try_end_107} :catchall_7aa

    sparse-switch v16, :sswitch_data_822

    goto/16 :goto_789

    :sswitch_10c
    const-string v3, "HWWAS-H"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x42

    goto/16 :goto_78a

    :sswitch_118
    const-string v3, "HWVNS-H"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x41

    goto/16 :goto_78a

    :sswitch_124
    const-string v3, "ELUGA_Prim"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x21

    goto/16 :goto_78a

    :sswitch_130
    const-string v3, "ELUGA_Note"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x20

    goto/16 :goto_78a

    :sswitch_13c
    const-string v3, "ASUS_X00AD_2"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0xe

    goto/16 :goto_78a

    :sswitch_148
    const-string v3, "HWCAM-H"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x40

    goto/16 :goto_78a

    :sswitch_154
    const-string v3, "HWBLN-H"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x3f

    goto/16 :goto_78a

    :sswitch_160
    const-string v3, "DM-01K"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x1d

    goto/16 :goto_78a

    :sswitch_16c
    const-string v3, "BRAVIA_ATV3_4K"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x13

    goto/16 :goto_78a

    :sswitch_178
    const-string v3, "Infinix-X572"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x45

    goto/16 :goto_78a

    :sswitch_184
    const-string v3, "PB2-670M"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x64

    goto/16 :goto_78a

    :sswitch_190
    const-string v3, "santoni"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x75

    goto/16 :goto_78a

    :sswitch_19c
    const-string v3, "iball8735_9806"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x44

    goto/16 :goto_78a

    :sswitch_1a8
    const-string v3, "CPH1715"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x18

    goto/16 :goto_78a

    :sswitch_1b4
    const-string v3, "CPH1609"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x17

    goto/16 :goto_78a

    :sswitch_1c0
    const-string v3, "woods_f"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x85

    goto/16 :goto_78a

    :sswitch_1cc
    const-string v3, "htc_e56ml_dtul"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x3d

    goto/16 :goto_78a

    :sswitch_1d8
    const-string v3, "EverStar_S"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x23

    goto/16 :goto_78a

    :sswitch_1e4
    const-string v3, "hwALE-H"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x3e

    goto/16 :goto_78a

    :sswitch_1f0
    const-string v3, "itel_S41"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x47

    goto/16 :goto_78a

    :sswitch_1fc
    const-string v3, "LS-5017"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x4e

    goto/16 :goto_78a

    :sswitch_208
    const-string v3, "panell_d"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x60

    goto/16 :goto_78a

    :sswitch_214
    const-string v3, "j2xlteins"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x48

    goto/16 :goto_78a

    :sswitch_220
    const-string v3, "A7000plus"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0xa

    goto/16 :goto_78a

    :sswitch_22c
    const-string v3, "manning"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x51

    goto/16 :goto_78a

    :sswitch_238
    const-string v3, "GIONEE_WBL7519"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x3b

    goto/16 :goto_78a

    :sswitch_244
    const-string v3, "GIONEE_WBL7365"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x3a

    goto/16 :goto_78a

    :sswitch_250
    const-string v3, "GIONEE_WBL5708"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x39

    goto/16 :goto_78a

    :sswitch_25c
    const-string v3, "QM16XE_U"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x72

    goto/16 :goto_78a

    :sswitch_268
    const-string v3, "Pixi5-10_4G"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x6a

    goto/16 :goto_78a

    :sswitch_274
    const-string v3, "TB3-850M"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x7d

    goto/16 :goto_78a

    :sswitch_280
    const-string v3, "TB3-850F"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x7c

    goto/16 :goto_78a

    :sswitch_28c
    const-string v3, "TB3-730X"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x7b

    goto/16 :goto_78a

    :sswitch_298
    const-string v3, "TB3-730F"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x7a

    goto/16 :goto_78a

    :sswitch_2a4
    const-string v3, "A7020a48"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0xc

    goto/16 :goto_78a

    :sswitch_2b0
    const-string v3, "A7010a48"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0xb

    goto/16 :goto_78a

    :sswitch_2bc
    const-string v3, "griffin"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x3c

    goto/16 :goto_78a

    :sswitch_2c8
    const-string v3, "marino_f"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x52

    goto/16 :goto_78a

    :sswitch_2d4
    const-string v3, "CPY83_I00"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x19

    goto/16 :goto_78a

    :sswitch_2e0
    const-string v3, "A2016a40"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x8

    goto/16 :goto_78a

    :sswitch_2ec
    const-string v3, "le_x6"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x4d

    goto/16 :goto_78a

    :sswitch_2f8
    const-string v3, "l5460"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x4c

    goto/16 :goto_78a

    :sswitch_304
    const-string v3, "i9031"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x43

    goto/16 :goto_78a

    :sswitch_310
    const-string v3, "X3_HK"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x87

    goto/16 :goto_78a

    :sswitch_31c
    const-string v3, "V23GB"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x80

    goto/16 :goto_78a

    :sswitch_328
    const-string v3, "Q4310"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x70

    goto/16 :goto_78a

    :sswitch_334
    const-string v3, "Q4260"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x6e

    goto/16 :goto_78a

    :sswitch_340
    const-string v3, "PRO7S"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x6c

    goto/16 :goto_78a

    :sswitch_34c
    const-string v3, "F3311"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x30

    goto/16 :goto_78a

    :sswitch_358
    const-string v3, "F3215"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x2f

    goto/16 :goto_78a

    :sswitch_364
    const-string v3, "F3213"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x2e

    goto/16 :goto_78a

    :sswitch_370
    const-string v3, "F3211"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x2d

    goto/16 :goto_78a

    :sswitch_37c
    const-string v3, "F3116"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x2c

    goto/16 :goto_78a

    :sswitch_388
    const-string v3, "F3113"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x2b

    goto/16 :goto_78a

    :sswitch_394
    const-string v3, "F3111"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x2a

    goto/16 :goto_78a

    :sswitch_3a0
    const-string v3, "E5643"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x1e

    goto/16 :goto_78a

    :sswitch_3ac
    const-string v3, "A1601"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/4 v3, 0x7

    goto/16 :goto_78a

    :sswitch_3b7
    const-string v3, "Aura_Note_2"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0xf

    goto/16 :goto_78a

    :sswitch_3c3
    const-string v3, "602LV"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/4 v3, 0x4

    goto/16 :goto_78a

    :sswitch_3ce
    const-string v3, "601LV"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/4 v3, 0x3

    goto/16 :goto_78a

    :sswitch_3d9
    const-string v3, "MEIZU_M5"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x53

    goto/16 :goto_78a

    :sswitch_3e5
    const-string v3, "p212"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x5c

    goto/16 :goto_78a

    :sswitch_3f1
    const-string v3, "mido"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x55

    goto/16 :goto_78a

    :sswitch_3fd
    const-string v3, "kate"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x4b

    goto/16 :goto_78a

    :sswitch_409
    const-string v3, "fugu"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x32

    goto/16 :goto_78a

    :sswitch_415
    const-string v3, "XE2X"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x88

    goto/16 :goto_78a

    :sswitch_421
    const-string v3, "Q427"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x6f

    goto/16 :goto_78a

    :sswitch_42d
    const-string v3, "Q350"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x6d

    goto/16 :goto_78a

    :sswitch_439
    const-string v3, "P681"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x5d

    goto/16 :goto_78a

    :sswitch_445
    const-string v3, "F04J"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x29

    goto/16 :goto_78a

    :sswitch_451
    const-string v3, "F04H"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x28

    goto/16 :goto_78a

    :sswitch_45d
    const-string v3, "F03H"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x27

    goto/16 :goto_78a

    :sswitch_469
    const-string v3, "F02H"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x26

    goto/16 :goto_78a

    :sswitch_475
    const-string v3, "F01J"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x25

    goto/16 :goto_78a

    :sswitch_481
    const-string v3, "F01H"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x24

    goto/16 :goto_78a

    :sswitch_48d
    const-string v3, "1714"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/4 v3, 0x2

    goto/16 :goto_78a

    :sswitch_498
    const-string v3, "1713"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/4 v3, 0x1

    goto/16 :goto_78a

    :sswitch_4a3
    const-string v3, "1601"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/4 v3, 0x0

    goto/16 :goto_78a

    :sswitch_4ae
    const-string v3, "flo"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x31

    goto/16 :goto_78a

    :sswitch_4ba
    const-string v4, "deb"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    goto/16 :goto_78a

    :sswitch_4c4
    const-string v3, "cv3"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x1b

    goto/16 :goto_78a

    :sswitch_4d0
    const-string v3, "cv1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x1a

    goto/16 :goto_78a

    :sswitch_4dc
    const-string v3, "Z80"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x8b

    goto/16 :goto_78a

    :sswitch_4e8
    const-string v3, "QX1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x73

    goto/16 :goto_78a

    :sswitch_4f4
    const-string v3, "PLE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x6b

    goto/16 :goto_78a

    :sswitch_500
    const-string v3, "P85"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x5e

    goto/16 :goto_78a

    :sswitch_50c
    const-string v3, "MX6"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x56

    goto/16 :goto_78a

    :sswitch_518
    const-string v3, "M5c"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x50

    goto/16 :goto_78a

    :sswitch_524
    const-string v3, "M04"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x4f

    goto/16 :goto_78a

    :sswitch_530
    const-string v3, "JGZ"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x49

    goto/16 :goto_78a

    :sswitch_53c
    const-string v3, "mh"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x54

    goto/16 :goto_78a

    :sswitch_548
    const-string v3, "b5"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x10

    goto/16 :goto_78a

    :sswitch_554
    const-string v3, "V5"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x81

    goto/16 :goto_78a

    :sswitch_560
    const-string v3, "V1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x7f

    goto/16 :goto_78a

    :sswitch_56c
    const-string v3, "Q5"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x71

    goto/16 :goto_78a

    :sswitch_578
    const-string v3, "C1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x14

    goto/16 :goto_78a

    :sswitch_584
    const-string v3, "woods_fn"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x86

    goto/16 :goto_78a

    :sswitch_590
    const-string v3, "ELUGA_A3_Pro"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x1f

    goto/16 :goto_78a

    :sswitch_59c
    const-string v3, "Z12_PRO"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x8a

    goto/16 :goto_78a

    :sswitch_5a8
    const-string v3, "BLACK-1X"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x11

    goto/16 :goto_78a

    :sswitch_5b4
    const-string v3, "taido_row"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x79

    goto/16 :goto_78a

    :sswitch_5c0
    const-string v3, "Pixi4-7_3G"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x69

    goto/16 :goto_78a

    :sswitch_5cc
    const-string v3, "GIONEE_GBL7360"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x35

    goto/16 :goto_78a

    :sswitch_5d8
    const-string v3, "GiONEE_CBL7513"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x33

    goto/16 :goto_78a

    :sswitch_5e4
    const-string v3, "OnePlus5T"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x5b

    goto/16 :goto_78a

    :sswitch_5f0
    const-string v3, "whyred"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x84

    goto/16 :goto_78a

    :sswitch_5fc
    const-string v3, "watson"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x83

    goto/16 :goto_78a

    :sswitch_608
    const-string v3, "SVP-DTV15"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x77

    goto/16 :goto_78a

    :sswitch_614
    const-string v3, "A7000-a"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x9

    goto/16 :goto_78a

    :sswitch_620
    const-string v3, "nicklaus_f"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x58

    goto/16 :goto_78a

    :sswitch_62c
    const-string v3, "tcl_eu"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x7e

    goto/16 :goto_78a

    :sswitch_638
    const-string v3, "ELUGA_Ray_X"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x22

    goto/16 :goto_78a

    :sswitch_644
    const-string v3, "s905x018"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x78

    goto/16 :goto_78a

    :sswitch_650
    const-string v3, "A10-70L"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/4 v3, 0x6

    goto/16 :goto_78a

    :sswitch_65b
    const-string v3, "A10-70F"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/4 v3, 0x5

    goto/16 :goto_78a

    :sswitch_666
    const-string v3, "namath"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x57

    goto/16 :goto_78a

    :sswitch_672
    const-string v3, "Slate_Pro"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x76

    goto/16 :goto_78a

    :sswitch_67e
    const-string v3, "iris60"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x46

    goto/16 :goto_78a

    :sswitch_68a
    const-string v3, "BRAVIA_ATV2"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x12

    goto/16 :goto_78a

    :sswitch_696
    const-string v3, "GiONEE_GBL7319"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x34

    goto/16 :goto_78a

    :sswitch_6a2
    const-string v3, "panell_dt"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x63

    goto/16 :goto_78a

    :sswitch_6ae
    const-string v3, "panell_ds"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x62

    goto/16 :goto_78a

    :sswitch_6ba
    const-string v3, "panell_dl"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x61

    goto/16 :goto_78a

    :sswitch_6c6
    const-string v3, "vernee_M5"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x82

    goto/16 :goto_78a

    :sswitch_6d2
    const-string v3, "pacificrim"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x5f

    goto/16 :goto_78a

    :sswitch_6de
    const-string v3, "Phantom6"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x68

    goto/16 :goto_78a

    :sswitch_6ea
    const-string v3, "ComioS1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x15

    goto/16 :goto_78a

    :sswitch_6f6
    const-string v3, "XT1663"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x89

    goto/16 :goto_78a

    :sswitch_702
    const-string v3, "RAIJIN"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x74

    goto/16 :goto_78a

    :sswitch_70e
    const-string v3, "AquaPowerM"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0xd

    goto/16 :goto_78a

    :sswitch_71a
    const-string v3, "PGN611"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x67

    goto/16 :goto_78a

    :sswitch_726
    const-string v3, "PGN610"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x66

    goto :goto_78a

    :sswitch_731
    const-string v3, "PGN528"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x65

    goto :goto_78a

    :sswitch_73c
    const-string v3, "NX573J"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x5a

    goto :goto_78a

    :sswitch_747
    const-string v3, "NX541J"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x59

    goto :goto_78a

    :sswitch_752
    const-string v3, "CP8676_I02"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x16

    goto :goto_78a

    :sswitch_75d
    const-string v3, "K50a40"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x4a

    goto :goto_78a

    :sswitch_768
    const-string v3, "GIONEE_SWW1631"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x38

    goto :goto_78a

    :sswitch_773
    const-string v3, "GIONEE_SWW1627"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x37

    goto :goto_78a

    :sswitch_77e
    const-string v3, "GIONEE_SWW1609"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_789

    const/16 v3, 0x36

    goto :goto_78a

    :cond_789
    :goto_789
    const/4 v3, -0x1

    :goto_78a
    packed-switch v3, :pswitch_data_a54

    .line 8
    :try_start_78d
    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    move-result v0
    :try_end_791
    .catchall {:try_start_78d .. :try_end_791} :catchall_7aa

    const v3, -0x236fe21d

    if-eq v0, v3, :cond_797

    goto :goto_7a0

    :cond_797
    const-string v0, "JSN-L21"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7a0

    const/4 v10, 0x0

    :cond_7a0
    :goto_7a0
    if-eqz v10, :cond_80

    .line 9
    :cond_7a2
    :goto_7a2
    :try_start_7a2
    sput-boolean v1, Lcom/google/android/gms/internal/ads/zzxs;->u1:Z

    sput-boolean v11, Lcom/google/android/gms/internal/ads/zzxs;->t1:Z

    .line 10
    :cond_7a6
    monitor-exit v2
    :try_end_7a7
    .catchall {:try_start_7a2 .. :try_end_7a7} :catchall_7aa

    sget-boolean v0, Lcom/google/android/gms/internal/ads/zzxs;->u1:Z

    return v0

    :catchall_7aa
    move-exception v0

    :try_start_7ab
    monitor-exit v2
    :try_end_7ac
    .catchall {:try_start_7ab .. :try_end_7ac} :catchall_7aa

    goto :goto_7ae

    :goto_7ad
    throw v0

    :goto_7ae
    goto :goto_7ad

    nop

    :sswitch_data_7b0
    .sparse-switch
        -0x4fd0ea5f -> :sswitch_71
        -0x48b8f57f -> :sswitch_67
        -0x48b8bd30 -> :sswitch_5d
        -0x3c588c8a -> :sswitch_53
        -0x2d5172e2 -> :sswitch_49
        -0x3de1850 -> :sswitch_3f
        0x341e81 -> :sswitch_35
        0x31316ffa -> :sswitch_2b
    .end sparse-switch

    :pswitch_data_7d2
    .packed-switch 0x0
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
    .end packed-switch

    :sswitch_data_7e6
    .sparse-switch
        -0x14d76e6c -> :sswitch_ef
        -0x132295cd -> :sswitch_e5
        0x1e9d52 -> :sswitch_db
        0x1e9d5f -> :sswitch_d1
        0x1e9d63 -> :sswitch_c7
        0x6a6b6031 -> :sswitch_bd
        0x6a6b6034 -> :sswitch_b3
        0x6b2deee6 -> :sswitch_a8
        0x7e53ab34 -> :sswitch_9e
    .end sparse-switch

    :pswitch_data_80c
    .packed-switch 0x0
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
    .end packed-switch

    :sswitch_data_822
    .sparse-switch
        -0x7fd6c3bd -> :sswitch_77e
        -0x7fd6c381 -> :sswitch_773
        -0x7fd6c368 -> :sswitch_768
        -0x7d026749 -> :sswitch_75d
        -0x78929d6a -> :sswitch_752
        -0x75f50a1e -> :sswitch_747
        -0x75f4fe9d -> :sswitch_73c
        -0x736f875c -> :sswitch_731
        -0x736f83c2 -> :sswitch_726
        -0x736f83c1 -> :sswitch_71a
        -0x7327ce1c -> :sswitch_70e
        -0x705c574b -> :sswitch_702
        -0x651ebb62 -> :sswitch_6f6
        -0x6423293b -> :sswitch_6ea
        -0x604f5117 -> :sswitch_6de
        -0x5f691e13 -> :sswitch_6d2
        -0x5ca40cc4 -> :sswitch_6c6
        -0x58520ec1 -> :sswitch_6ba
        -0x58520eba -> :sswitch_6ae
        -0x58520eb9 -> :sswitch_6a2
        -0x4eaed329 -> :sswitch_696
        -0x4892fb4f -> :sswitch_68a
        -0x465b3df3 -> :sswitch_67e
        -0x43e6c939 -> :sswitch_672
        -0x3ec0fcc5 -> :sswitch_666
        -0x3b33cca0 -> :sswitch_65b
        -0x3b33cc9a -> :sswitch_650
        -0x398ae3f6 -> :sswitch_644
        -0x391f0fb4 -> :sswitch_638
        -0x346837ae -> :sswitch_62c
        -0x323788e3 -> :sswitch_620
        -0x30f57652 -> :sswitch_614
        -0x2f88a116 -> :sswitch_608
        -0x2f61ed98 -> :sswitch_5fc
        -0x2efd0837 -> :sswitch_5f0
        -0x2e9e9441 -> :sswitch_5e4
        -0x2247b8b1 -> :sswitch_5d8
        -0x1f0fa2b7 -> :sswitch_5cc
        -0x19af3b41 -> :sswitch_5c0
        -0x114fad3e -> :sswitch_5b4
        -0x10dae90b -> :sswitch_5a8
        -0x1084b7b7 -> :sswitch_59c
        -0xa5988e9 -> :sswitch_590
        -0x35f9fbf -> :sswitch_584
        0x84e -> :sswitch_578
        0xa04 -> :sswitch_56c
        0xa9b -> :sswitch_560
        0xa9f -> :sswitch_554
        0xc13 -> :sswitch_548
        0xd9b -> :sswitch_53c
        0x11ebd -> :sswitch_530
        0x12711 -> :sswitch_524
        0x127db -> :sswitch_518
        0x12beb -> :sswitch_50c
        0x1334d -> :sswitch_500
        0x135c9 -> :sswitch_4f4
        0x13aea -> :sswitch_4e8
        0x158d2 -> :sswitch_4dc
        0x1821e -> :sswitch_4d0
        0x18220 -> :sswitch_4c4
        0x18401 -> :sswitch_4ba
        0x18c69 -> :sswitch_4ae
        0x1716e6 -> :sswitch_4a3
        0x171ac8 -> :sswitch_498
        0x171ac9 -> :sswitch_48d
        0x208c61 -> :sswitch_481
        0x208c63 -> :sswitch_475
        0x208c80 -> :sswitch_469
        0x208c9f -> :sswitch_45d
        0x208cbe -> :sswitch_451
        0x208cc0 -> :sswitch_445
        0x252f5f -> :sswitch_439
        0x25981d -> :sswitch_42d
        0x259b88 -> :sswitch_421
        0x290a13 -> :sswitch_415
        0x3021fd -> :sswitch_409
        0x321e47 -> :sswitch_3fd
        0x332327 -> :sswitch_3f1
        0x33ab63 -> :sswitch_3e5
        0x27691fb -> :sswitch_3d9
        0x30f8881 -> :sswitch_3ce
        0x30f8c42 -> :sswitch_3c3
        0x349f581 -> :sswitch_3b7
        0x3ab0ea7 -> :sswitch_3ac
        0x3e53ea5 -> :sswitch_3a0
        0x3f25a44 -> :sswitch_394
        0x3f25a46 -> :sswitch_388
        0x3f25a49 -> :sswitch_37c
        0x3f25e05 -> :sswitch_370
        0x3f25e07 -> :sswitch_364
        0x3f25e09 -> :sswitch_358
        0x3f261c6 -> :sswitch_34c
        0x48dce49 -> :sswitch_340
        0x48dd589 -> :sswitch_334
        0x48dd8af -> :sswitch_328
        0x4d36832 -> :sswitch_31c
        0x4f0b0e7 -> :sswitch_310
        0x5e2479e -> :sswitch_304
        0x60acc05 -> :sswitch_2f8
        0x6214744 -> :sswitch_2ec
        0x9d91379 -> :sswitch_2e0
        0xadc0551 -> :sswitch_2d4
        0xea056b3 -> :sswitch_2c8
        0x1121dbc3 -> :sswitch_2bc
        0x1255818c -> :sswitch_2b0
        0x1263990d -> :sswitch_2a4
        0x12d90f3a -> :sswitch_298
        0x12d90f4c -> :sswitch_28c
        0x12d98b1b -> :sswitch_280
        0x12d98b22 -> :sswitch_274
        0x1844c711 -> :sswitch_268
        0x1e3e8044 -> :sswitch_25c
        0x2f5336ed -> :sswitch_250
        0x2f54115e -> :sswitch_244
        0x2f541849 -> :sswitch_238
        0x31cf010e -> :sswitch_22c
        0x36ad82f4 -> :sswitch_220
        0x391a0b61 -> :sswitch_214
        0x3f3728cd -> :sswitch_208
        0x448ec687 -> :sswitch_1fc
        0x46260f63 -> :sswitch_1f0
        0x4c505106 -> :sswitch_1e4
        0x4de67084 -> :sswitch_1d8
        0x506ac5a9 -> :sswitch_1cc
        0x5abad9cd -> :sswitch_1c0
        0x64d2e6e9 -> :sswitch_1b4
        0x64d2eac5 -> :sswitch_1a8
        0x65e4085b -> :sswitch_19c
        0x6f373556 -> :sswitch_190
        0x719f1dcb -> :sswitch_184
        0x75d9a0f0 -> :sswitch_178
        0x7796d144 -> :sswitch_16c
        0x785bcb26 -> :sswitch_160
        0x78fc0e50 -> :sswitch_154
        0x790521fb -> :sswitch_148
        0x7933207f -> :sswitch_13c
        0x7a05a409 -> :sswitch_130
        0x7a0696bd -> :sswitch_124
        0x7a16dfe7 -> :sswitch_118
        0x7a1f0e95 -> :sswitch_10c
    .end sparse-switch

    :pswitch_data_a54
    .packed-switch 0x0
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
    .end packed-switch
.end method

.method private static Q0(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzrc;Lcom/google/android/gms/internal/ads/zzaf;ZZ)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzrj;
        }
    .end annotation

    .line 1
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzaf;->l:Ljava/lang/String;

    if-nez p1, :cond_9

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfqk;->u()Lcom/google/android/gms/internal/ads/zzfqk;

    move-result-object p0

    return-object p0

    .line 3
    :cond_9
    invoke-static {p1, p3, p4}, Lcom/google/android/gms/internal/ads/zzrp;->f(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object p1

    .line 4
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzrp;->e(Lcom/google/android/gms/internal/ads/zzaf;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_18

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfqk;->s(Ljava/util/Collection;)Lcom/google/android/gms/internal/ads/zzfqk;

    move-result-object p0

    return-object p0

    .line 6
    :cond_18
    invoke-static {v0, p3, p4}, Lcom/google/android/gms/internal/ads/zzrp;->f(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object p3

    .line 7
    sget p4, Lcom/google/android/gms/internal/ads/zzew;->a:I

    const/16 v0, 0x1a

    if-lt p4, v0, :cond_3d

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzaf;->l:Ljava/lang/String;

    const-string p4, "video/dolby-vision"

    .line 8
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3d

    .line 9
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_3d

    .line 10
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzxp;->a(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_3d

    .line 11
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzfqk;->s(Ljava/util/Collection;)Lcom/google/android/gms/internal/ads/zzfqk;

    move-result-object p0

    return-object p0

    .line 12
    :cond_3d
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfqk;->o()Lcom/google/android/gms/internal/ads/zzfqh;

    move-result-object p0

    .line 13
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzfqh;->i(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzfqh;

    .line 14
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/ads/zzfqh;->i(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzfqh;

    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfqh;->j()Lcom/google/android/gms/internal/ads/zzfqk;

    move-result-object p0

    return-object p0
.end method

.method private final R0(Lcom/google/android/gms/internal/ads/zzda;)V
    .registers 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzda;->e:Lcom/google/android/gms/internal/ads/zzda;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzda;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxs;->p1:Lcom/google/android/gms/internal/ads/zzda;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzda;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzxs;->p1:Lcom/google/android/gms/internal/ads/zzda;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxs;->R0:Lcom/google/android/gms/internal/ads/zzyo;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzyo;->t(Lcom/google/android/gms/internal/ads/zzda;)V

    :cond_17
    return-void
.end method

.method private final S0()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxs;->p1:Lcom/google/android/gms/internal/ads/zzda;

    if-eqz v0, :cond_9

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzxs;->R0:Lcom/google/android/gms/internal/ads/zzyo;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzyo;->t(Lcom/google/android/gms/internal/ads/zzda;)V

    :cond_9
    return-void
.end method

.method private final T0()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxs;->X0:Landroid/view/Surface;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzxs;->Y0:Lcom/google/android/gms/internal/ads/zzxv;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_9

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzxs;->X0:Landroid/view/Surface;

    :cond_9
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzxv;->release()V

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzxs;->Y0:Lcom/google/android/gms/internal/ads/zzxv;

    return-void
.end method

.method private static U0(J)Z
    .registers 5

    const-wide/16 v0, -0x7530

    cmp-long v2, p0, v0

    if-gez v2, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method private final V0(Lcom/google/android/gms/internal/ads/zzqx;)Z
    .registers 6

    .line 1
    sget v0, Lcom/google/android/gms/internal/ads/zzew;->a:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x17

    if-lt v0, v3, :cond_1e

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzqx;->a:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzxs;->P0(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1e

    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzqx;->f:Z

    if-eqz p1, :cond_1f

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzxs;->P0:Landroid/content/Context;

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzxv;->t(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1d

    goto :goto_1e

    :cond_1d
    return v1

    :cond_1e
    :goto_1e
    const/4 v1, 0x0

    :cond_1f
    return v1
.end method

.method static bridge synthetic W0(Lcom/google/android/gms/internal/ads/zzxs;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzxs;->P0:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method protected final B0()V
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzra;->B0()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzxs;->j1:I

    return-void
.end method

.method protected final D()V
    .registers 4

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzxs;->p1:Lcom/google/android/gms/internal/ads/zzda;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzxs;->b1:Z

    sget v1, Lcom/google/android/gms/internal/ads/zzew;->a:I

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzxs;->Z0:Z

    .line 2
    :try_start_a
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzra;->D()V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_15

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxs;->R0:Lcom/google/android/gms/internal/ads/zzyo;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzra;->I0:Lcom/google/android/gms/internal/ads/zzhb;

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzyo;->c(Lcom/google/android/gms/internal/ads/zzhb;)V

    return-void

    :catchall_15
    move-exception v0

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzxs;->R0:Lcom/google/android/gms/internal/ads/zzyo;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzra;->I0:Lcom/google/android/gms/internal/ads/zzhb;

    .line 6
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzyo;->c(Lcom/google/android/gms/internal/ads/zzhb;)V

    .line 7
    throw v0
.end method

.method protected final E(ZZ)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhj;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzra;->E(ZZ)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzha;->A()Lcom/google/android/gms/internal/ads/zzkp;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzxs;->R0:Lcom/google/android/gms/internal/ads/zzyo;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzra;->I0:Lcom/google/android/gms/internal/ads/zzhb;

    .line 3
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzyo;->e(Lcom/google/android/gms/internal/ads/zzhb;)V

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzxs;->c1:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzxs;->d1:Z

    return-void
.end method

.method protected final F(JZ)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhj;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzra;->F(JZ)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzxs;->b1:Z

    .line 2
    sget p2, Lcom/google/android/gms/internal/ads/zzew;->a:I

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzxs;->Q0:Lcom/google/android/gms/internal/ads/zzyd;

    .line 3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzyd;->f()V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzxs;->k1:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzxs;->e1:J

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzxs;->i1:I

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzxs;->f1:J

    return-void
.end method

.method protected final F0(Lcom/google/android/gms/internal/ads/zzqx;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxs;->X0:Landroid/view/Surface;

    if-nez v0, :cond_d

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzxs;->V0(Lcom/google/android/gms/internal/ads/zzqx;)Z

    move-result p1

    if-eqz p1, :cond_b

    goto :goto_d

    :cond_b
    const/4 p1, 0x0

    return p1

    :cond_d
    :goto_d
    const/4 p1, 0x1

    return p1
.end method

.method protected final G()V
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .line 1
    :try_start_0
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzra;->G()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_b

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxs;->Y0:Lcom/google/android/gms/internal/ads/zzxv;

    if-eqz v0, :cond_a

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzxs;->T0()V

    :cond_a
    return-void

    :catchall_b
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzxs;->Y0:Lcom/google/android/gms/internal/ads/zzxv;

    if-nez v1, :cond_11

    goto :goto_14

    :cond_11
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzxs;->T0()V

    .line 3
    :goto_14
    throw v0
.end method

.method protected final I()V
    .registers 6

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzxs;->h1:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzxs;->g1:J

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzxs;->l1:J

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzxs;->m1:J

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzxs;->n1:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxs;->Q0:Lcom/google/android/gms/internal/ads/zzyd;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzyd;->g()V

    return-void
.end method

.method public final J()Z
    .registers 10

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzra;->J()Z

    move-result v0

    const/4 v1, 0x1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_22

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzxs;->b1:Z

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxs;->Y0:Lcom/google/android/gms/internal/ads/zzxv;

    if-eqz v0, :cond_18

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzxs;->X0:Landroid/view/Surface;

    if-eq v4, v0, :cond_1f

    :cond_18
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzra;->t0()Lcom/google/android/gms/internal/ads/zzqu;

    move-result-object v0

    if-eqz v0, :cond_1f

    goto :goto_22

    .line 2
    :cond_1f
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzxs;->f1:J

    return v1

    .line 3
    :cond_22
    :goto_22
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzxs;->f1:J

    const/4 v0, 0x0

    cmp-long v6, v4, v2

    if-nez v6, :cond_2a

    return v0

    .line 4
    :cond_2a
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/zzxs;->f1:J

    cmp-long v8, v4, v6

    if-gez v8, :cond_35

    return v1

    :cond_35
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzxs;->f1:J

    return v0
.end method

.method protected final K()V
    .registers 8

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 1
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzxs;->f1:J

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzxs;->h1:I

    const/4 v1, 0x0

    if-lez v0, :cond_1f

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzxs;->g1:J

    sub-long v4, v2, v4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxs;->R0:Lcom/google/android/gms/internal/ads/zzyo;

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzxs;->h1:I

    .line 2
    invoke-virtual {v0, v6, v4, v5}, Lcom/google/android/gms/internal/ads/zzyo;->d(IJ)V

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzxs;->h1:I

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzxs;->g1:J

    :cond_1f
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzxs;->n1:I

    if-eqz v0, :cond_30

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzxs;->R0:Lcom/google/android/gms/internal/ads/zzyo;

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzxs;->m1:J

    .line 3
    invoke-virtual {v2, v3, v4, v0}, Lcom/google/android/gms/internal/ads/zzyo;->r(JI)V

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzxs;->m1:J

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzxs;->n1:I

    :cond_30
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxs;->Q0:Lcom/google/android/gms/internal/ads/zzyd;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzyd;->h()V

    return-void
.end method

.method protected final M0(Lcom/google/android/gms/internal/ads/zzqu;IJ)V
    .registers 5

    .line 1
    sget p3, Lcom/google/android/gms/internal/ads/zzew;->a:I

    const-string p3, "skipVideoBuffer"

    .line 2
    invoke-static {p3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 3
    invoke-interface {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzqu;->n(IZ)V

    .line 4
    invoke-static {}, Landroid/os/Trace;->endSection()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzra;->I0:Lcom/google/android/gms/internal/ads/zzhb;

    .line 5
    iget p2, p1, Lcom/google/android/gms/internal/ads/zzhb;->f:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lcom/google/android/gms/internal/ads/zzhb;->f:I

    return-void
.end method

.method protected final N(FLcom/google/android/gms/internal/ads/zzaf;[Lcom/google/android/gms/internal/ads/zzaf;)F
    .registers 8

    const/high16 p2, -0x40800000    # -1.0f

    const/4 v0, 0x0

    const/high16 v1, -0x40800000    # -1.0f

    .line 1
    :goto_5
    array-length v2, p3

    if-ge v0, v2, :cond_17

    aget-object v2, p3, v0

    .line 2
    iget v2, v2, Lcom/google/android/gms/internal/ads/zzaf;->s:F

    cmpl-float v3, v2, p2

    if-eqz v3, :cond_14

    .line 3
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_17
    cmpl-float p3, v1, p2

    if-nez p3, :cond_1c

    return p2

    :cond_1c
    mul-float v1, v1, p1

    return v1
.end method

.method protected final N0(II)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzra;->I0:Lcom/google/android/gms/internal/ads/zzhb;

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzhb;->h:I

    add-int/2addr v1, p1

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzhb;->h:I

    .line 2
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzhb;->g:I

    add-int/2addr p1, p2

    add-int/2addr v1, p1

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzhb;->g:I

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzxs;->h1:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzxs;->h1:I

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzxs;->i1:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzxs;->i1:I

    .line 3
    iget p1, v0, Lcom/google/android/gms/internal/ads/zzhb;->i:I

    .line 4
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, v0, Lcom/google/android/gms/internal/ads/zzhb;->i:I

    return-void
.end method

.method protected final O(Lcom/google/android/gms/internal/ads/zzrc;Lcom/google/android/gms/internal/ads/zzaf;)I
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzrj;
        }
    .end annotation

    .line 1
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzaf;->l:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbt;->h(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x80

    if-nez v0, :cond_b

    return v1

    .line 3
    :cond_b
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzaf;->o:Lcom/google/android/gms/internal/ads/zzx;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzxs;->P0:Landroid/content/Context;

    .line 4
    invoke-static {v4, p1, p2, v0, v3}, Lcom/google/android/gms/internal/ads/zzxs;->Q0(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzrc;Lcom/google/android/gms/internal/ads/zzaf;ZZ)Ljava/util/List;

    move-result-object v4

    if-eqz v0, :cond_28

    .line 5
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_28

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzxs;->P0:Landroid/content/Context;

    .line 6
    invoke-static {v4, p1, p2, v3, v3}, Lcom/google/android/gms/internal/ads/zzxs;->Q0(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzrc;Lcom/google/android/gms/internal/ads/zzaf;ZZ)Ljava/util/List;

    move-result-object v4

    .line 7
    :cond_28
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_31

    const/16 p1, 0x81

    return p1

    .line 8
    :cond_31
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzra;->G0(Lcom/google/android/gms/internal/ads/zzaf;)Z

    move-result v5

    if-nez v5, :cond_3a

    const/16 p1, 0x82

    return p1

    .line 9
    :cond_3a
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/zzqx;

    .line 10
    invoke-virtual {v5, p2}, Lcom/google/android/gms/internal/ads/zzqx;->e(Lcom/google/android/gms/internal/ads/zzaf;)Z

    move-result v6

    if-nez v6, :cond_60

    const/4 v7, 0x1

    .line 11
    :goto_47
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_60

    .line 12
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/ads/zzqx;

    .line 13
    invoke-virtual {v8, p2}, Lcom/google/android/gms/internal/ads/zzqx;->e(Lcom/google/android/gms/internal/ads/zzaf;)Z

    move-result v9

    if-eqz v9, :cond_5d

    move-object v5, v8

    const/4 v4, 0x0

    const/4 v6, 0x1

    goto :goto_61

    :cond_5d
    add-int/lit8 v7, v7, 0x1

    goto :goto_47

    :cond_60
    const/4 v4, 0x1

    :goto_61
    if-eq v2, v6, :cond_65

    const/4 v7, 0x3

    goto :goto_66

    :cond_65
    const/4 v7, 0x4

    .line 14
    :goto_66
    invoke-virtual {v5, p2}, Lcom/google/android/gms/internal/ads/zzqx;->f(Lcom/google/android/gms/internal/ads/zzaf;)Z

    move-result v8

    if-eq v2, v8, :cond_6f

    const/16 v8, 0x8

    goto :goto_71

    :cond_6f
    const/16 v8, 0x10

    .line 15
    :goto_71
    iget-boolean v5, v5, Lcom/google/android/gms/internal/ads/zzqx;->g:Z

    if-eq v2, v5, :cond_77

    const/4 v5, 0x0

    goto :goto_79

    :cond_77
    const/16 v5, 0x40

    :goto_79
    if-eq v2, v4, :cond_7c

    const/4 v1, 0x0

    .line 16
    :cond_7c
    sget v4, Lcom/google/android/gms/internal/ads/zzew;->a:I

    const/16 v9, 0x1a

    if-lt v4, v9, :cond_96

    iget-object v4, p2, Lcom/google/android/gms/internal/ads/zzaf;->l:Ljava/lang/String;

    const-string v9, "video/dolby-vision"

    .line 17
    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_96

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzxs;->P0:Landroid/content/Context;

    .line 18
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzxp;->a(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_96

    const/16 v1, 0x100

    :cond_96
    if-eqz v6, :cond_bc

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzxs;->P0:Landroid/content/Context;

    .line 19
    invoke-static {v4, p1, p2, v0, v2}, Lcom/google/android/gms/internal/ads/zzxs;->Q0(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzrc;Lcom/google/android/gms/internal/ads/zzaf;ZZ)Ljava/util/List;

    move-result-object p1

    .line 20
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_bc

    .line 21
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzrp;->g(Ljava/util/List;Lcom/google/android/gms/internal/ads/zzaf;)Ljava/util/List;

    move-result-object p1

    .line 22
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzqx;

    .line 23
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzqx;->e(Lcom/google/android/gms/internal/ads/zzaf;)Z

    move-result v0

    if-eqz v0, :cond_bc

    .line 24
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzqx;->f(Lcom/google/android/gms/internal/ads/zzaf;)Z

    move-result p1

    if-eqz p1, :cond_bc

    const/16 v3, 0x20

    :cond_bc
    or-int p1, v7, v8

    or-int/2addr p1, v3

    or-int/2addr p1, v5

    or-int/2addr p1, v1

    return p1
.end method

.method protected final O0(J)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzra;->I0:Lcom/google/android/gms/internal/ads/zzhb;

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzhb;->k:J

    add-long/2addr v1, p1

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzhb;->k:J

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzhb;->l:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzhb;->l:I

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzxs;->m1:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzxs;->m1:J

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzxs;->n1:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzxs;->n1:I

    return-void
.end method

.method protected final P(Lcom/google/android/gms/internal/ads/zzqx;Lcom/google/android/gms/internal/ads/zzaf;Lcom/google/android/gms/internal/ads/zzaf;)Lcom/google/android/gms/internal/ads/zzhc;
    .registers 13

    .line 1
    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzqx;->b(Lcom/google/android/gms/internal/ads/zzaf;Lcom/google/android/gms/internal/ads/zzaf;)Lcom/google/android/gms/internal/ads/zzhc;

    move-result-object v0

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzhc;->e:I

    iget v2, p3, Lcom/google/android/gms/internal/ads/zzaf;->q:I

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzxs;->U0:Lcom/google/android/gms/internal/ads/zzxq;

    .line 2
    iget v4, v3, Lcom/google/android/gms/internal/ads/zzxq;->a:I

    if-gt v2, v4, :cond_14

    iget v2, p3, Lcom/google/android/gms/internal/ads/zzaf;->r:I

    iget v3, v3, Lcom/google/android/gms/internal/ads/zzxq;->b:I

    if-le v2, v3, :cond_16

    :cond_14
    or-int/lit16 v1, v1, 0x100

    .line 3
    :cond_16
    invoke-static {p1, p3}, Lcom/google/android/gms/internal/ads/zzxs;->L0(Lcom/google/android/gms/internal/ads/zzqx;Lcom/google/android/gms/internal/ads/zzaf;)I

    move-result v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzxs;->U0:Lcom/google/android/gms/internal/ads/zzxq;

    iget v3, v3, Lcom/google/android/gms/internal/ads/zzxq;->c:I

    if-le v2, v3, :cond_22

    or-int/lit8 v1, v1, 0x40

    :cond_22
    new-instance v8, Lcom/google/android/gms/internal/ads/zzhc;

    .line 4
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzqx;->a:Ljava/lang/String;

    const/4 p1, 0x0

    if-eqz v1, :cond_2c

    move v7, v1

    const/4 v6, 0x0

    goto :goto_30

    .line 5
    :cond_2c
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzhc;->d:I

    move v6, v0

    const/4 v7, 0x0

    :goto_30
    move-object v2, v8

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzhc;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaf;Lcom/google/android/gms/internal/ads/zzaf;II)V

    return-object v8
.end method

.method protected final Q(Lcom/google/android/gms/internal/ads/zzjo;)Lcom/google/android/gms/internal/ads/zzhc;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhj;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzra;->Q(Lcom/google/android/gms/internal/ads/zzjo;)Lcom/google/android/gms/internal/ads/zzhc;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzxs;->R0:Lcom/google/android/gms/internal/ads/zzyo;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzjo;->a:Lcom/google/android/gms/internal/ads/zzaf;

    .line 2
    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzyo;->f(Lcom/google/android/gms/internal/ads/zzaf;Lcom/google/android/gms/internal/ads/zzhc;)V

    return-object v0
.end method

.method protected final T(Lcom/google/android/gms/internal/ads/zzqx;Lcom/google/android/gms/internal/ads/zzaf;Landroid/media/MediaCrypto;F)Lcom/google/android/gms/internal/ads/zzqs;
    .registers 24
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p4

    .line 1
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzxs;->Y0:Lcom/google/android/gms/internal/ads/zzxv;

    if-eqz v4, :cond_15

    iget-boolean v4, v4, Lcom/google/android/gms/internal/ads/zzxv;->o:Z

    iget-boolean v5, v1, Lcom/google/android/gms/internal/ads/zzqx;->f:Z

    if-eq v4, v5, :cond_15

    .line 2
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzxs;->T0()V

    .line 3
    :cond_15
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzqx;->c:Ljava/lang/String;

    .line 4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzha;->u()[Lcom/google/android/gms/internal/ads/zzaf;

    move-result-object v5

    .line 5
    iget v6, v2, Lcom/google/android/gms/internal/ads/zzaf;->q:I

    .line 6
    iget v7, v2, Lcom/google/android/gms/internal/ads/zzaf;->r:I

    .line 7
    invoke-static/range {p1 .. p2}, Lcom/google/android/gms/internal/ads/zzxs;->L0(Lcom/google/android/gms/internal/ads/zzqx;Lcom/google/android/gms/internal/ads/zzaf;)I

    move-result v8

    array-length v9, v5

    const/4 v10, -0x1

    const/4 v13, 0x1

    if-ne v9, v13, :cond_43

    if-eq v8, v10, :cond_3a

    .line 8
    invoke-static/range {p1 .. p2}, Lcom/google/android/gms/internal/ads/zzxs;->K0(Lcom/google/android/gms/internal/ads/zzqx;Lcom/google/android/gms/internal/ads/zzaf;)I

    move-result v5

    if-eq v5, v10, :cond_3a

    int-to-float v8, v8

    const/high16 v9, 0x3fc00000    # 1.5f

    mul-float v8, v8, v9

    float-to-int v8, v8

    .line 9
    invoke-static {v8, v5}, Ljava/lang/Math;->min(II)I

    move-result v8

    :cond_3a
    new-instance v5, Lcom/google/android/gms/internal/ads/zzxq;

    invoke-direct {v5, v6, v7, v8}, Lcom/google/android/gms/internal/ads/zzxq;-><init>(III)V

    move-object/from16 v16, v4

    goto/16 :goto_173

    :cond_43
    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_45
    if-ge v14, v9, :cond_89

    .line 10
    aget-object v11, v5, v14

    .line 11
    iget-object v12, v2, Lcom/google/android/gms/internal/ads/zzaf;->x:Lcom/google/android/gms/internal/ads/zzq;

    if-eqz v12, :cond_5e

    iget-object v12, v11, Lcom/google/android/gms/internal/ads/zzaf;->x:Lcom/google/android/gms/internal/ads/zzq;

    if-nez v12, :cond_5e

    .line 12
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzaf;->b()Lcom/google/android/gms/internal/ads/zzad;

    move-result-object v11

    iget-object v12, v2, Lcom/google/android/gms/internal/ads/zzaf;->x:Lcom/google/android/gms/internal/ads/zzq;

    invoke-virtual {v11, v12}, Lcom/google/android/gms/internal/ads/zzad;->g0(Lcom/google/android/gms/internal/ads/zzq;)Lcom/google/android/gms/internal/ads/zzad;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzad;->y()Lcom/google/android/gms/internal/ads/zzaf;

    move-result-object v11

    .line 13
    :cond_5e
    invoke-virtual {v1, v2, v11}, Lcom/google/android/gms/internal/ads/zzqx;->b(Lcom/google/android/gms/internal/ads/zzaf;Lcom/google/android/gms/internal/ads/zzaf;)Lcom/google/android/gms/internal/ads/zzhc;

    move-result-object v12

    iget v12, v12, Lcom/google/android/gms/internal/ads/zzhc;->d:I

    if-eqz v12, :cond_85

    .line 14
    iget v12, v11, Lcom/google/android/gms/internal/ads/zzaf;->q:I

    if-eq v12, v10, :cond_71

    iget v13, v11, Lcom/google/android/gms/internal/ads/zzaf;->r:I

    if-ne v13, v10, :cond_6f

    goto :goto_71

    :cond_6f
    const/4 v13, 0x0

    goto :goto_72

    :cond_71
    :goto_71
    const/4 v13, 0x1

    :goto_72
    or-int/2addr v15, v13

    .line 15
    invoke-static {v6, v12}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 16
    iget v12, v11, Lcom/google/android/gms/internal/ads/zzaf;->r:I

    invoke-static {v7, v12}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 17
    invoke-static {v1, v11}, Lcom/google/android/gms/internal/ads/zzxs;->L0(Lcom/google/android/gms/internal/ads/zzqx;Lcom/google/android/gms/internal/ads/zzaf;)I

    move-result v11

    invoke-static {v8, v11}, Ljava/lang/Math;->max(II)I

    move-result v8

    :cond_85
    add-int/lit8 v14, v14, 0x1

    const/4 v13, 0x1

    goto :goto_45

    :cond_89
    if-eqz v15, :cond_16c

    new-instance v5, Ljava/lang/StringBuilder;

    .line 18
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Resolutions unknown. Codec max resolution: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "x"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v10, "MediaCodecVideoRenderer"

    invoke-static {v10, v5}, Lcom/google/android/gms/internal/ads/zzee;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    iget v5, v2, Lcom/google/android/gms/internal/ads/zzaf;->r:I

    iget v11, v2, Lcom/google/android/gms/internal/ads/zzaf;->q:I

    if-le v5, v11, :cond_b1

    const/4 v12, 0x1

    goto :goto_b2

    :cond_b1
    const/4 v12, 0x0

    :goto_b2
    if-eqz v12, :cond_b6

    move v13, v5

    goto :goto_b7

    :cond_b6
    move v13, v11

    :goto_b7
    const/4 v14, 0x1

    if-ne v14, v12, :cond_bb

    move v5, v11

    :cond_bb
    sget-object v11, Lcom/google/android/gms/internal/ads/zzxs;->s1:[I

    const/4 v14, 0x0

    :goto_be
    const/16 v15, 0x9

    if-ge v14, v15, :cond_12a

    int-to-float v15, v5

    int-to-float v3, v13

    move-object/from16 v16, v4

    .line 20
    aget v4, v11, v14

    move-object/from16 v17, v11

    int-to-float v11, v4

    if-le v4, v13, :cond_12c

    div-float/2addr v15, v3

    mul-float v11, v11, v15

    float-to-int v3, v11

    if-gt v3, v5, :cond_d5

    goto/16 :goto_12c

    .line 21
    :cond_d5
    sget v11, Lcom/google/android/gms/internal/ads/zzew;->a:I

    const/16 v15, 0x15

    if-lt v11, v15, :cond_fb

    const/4 v11, 0x1

    if-eq v11, v12, :cond_e0

    move v15, v4

    goto :goto_e1

    :cond_e0
    move v15, v3

    :goto_e1
    if-ne v11, v12, :cond_e4

    goto :goto_e5

    :cond_e4
    move v4, v3

    .line 22
    :goto_e5
    invoke-virtual {v1, v15, v4}, Lcom/google/android/gms/internal/ads/zzqx;->a(II)Landroid/graphics/Point;

    move-result-object v3

    .line 23
    iget v4, v2, Lcom/google/android/gms/internal/ads/zzaf;->s:F

    .line 24
    iget v11, v3, Landroid/graphics/Point;->x:I

    iget v15, v3, Landroid/graphics/Point;->y:I

    move-object/from16 v18, v3

    float-to-double v3, v4

    invoke-virtual {v1, v11, v15, v3, v4}, Lcom/google/android/gms/internal/ads/zzqx;->g(IID)Z

    move-result v3

    if-eqz v3, :cond_121

    move-object/from16 v3, v18

    goto :goto_12d

    :cond_fb
    const/16 v11, 0x10

    .line 25
    :try_start_fd
    invoke-static {v4, v11}, Lcom/google/android/gms/internal/ads/zzew;->P(II)I

    move-result v4

    mul-int/lit8 v4, v4, 0x10

    .line 26
    invoke-static {v3, v11}, Lcom/google/android/gms/internal/ads/zzew;->P(II)I

    move-result v3

    mul-int/lit8 v3, v3, 0x10

    mul-int v11, v4, v3

    .line 27
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzrp;->a()I

    move-result v15

    if-gt v11, v15, :cond_121

    new-instance v5, Landroid/graphics/Point;

    const/4 v11, 0x1

    if-eq v11, v12, :cond_118

    move v13, v4

    goto :goto_119

    :cond_118
    move v13, v3

    :goto_119
    if-eq v11, v12, :cond_11c

    move v4, v3

    .line 28
    :cond_11c
    invoke-direct {v5, v13, v4}, Landroid/graphics/Point;-><init>(II)V
    :try_end_11f
    .catch Lcom/google/android/gms/internal/ads/zzrj; {:try_start_fd .. :try_end_11f} :catch_12c

    move-object v3, v5

    goto :goto_12d

    :cond_121
    add-int/lit8 v14, v14, 0x1

    move/from16 v3, p4

    move-object/from16 v4, v16

    move-object/from16 v11, v17

    goto :goto_be

    :cond_12a
    move-object/from16 v16, v4

    :catch_12c
    :cond_12c
    :goto_12c
    const/4 v3, 0x0

    :goto_12d
    if-eqz v3, :cond_16e

    .line 29
    iget v4, v3, Landroid/graphics/Point;->x:I

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 30
    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-static {v7, v3}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 31
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzaf;->b()Lcom/google/android/gms/internal/ads/zzad;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/ads/zzad;->x(I)Lcom/google/android/gms/internal/ads/zzad;

    invoke-virtual {v3, v7}, Lcom/google/android/gms/internal/ads/zzad;->f(I)Lcom/google/android/gms/internal/ads/zzad;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzad;->y()Lcom/google/android/gms/internal/ads/zzaf;

    move-result-object v3

    .line 32
    invoke-static {v1, v3}, Lcom/google/android/gms/internal/ads/zzxs;->K0(Lcom/google/android/gms/internal/ads/zzqx;Lcom/google/android/gms/internal/ads/zzaf;)I

    move-result v3

    .line 33
    invoke-static {v8, v3}, Ljava/lang/Math;->max(II)I

    move-result v8

    new-instance v3, Ljava/lang/StringBuilder;

    .line 34
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Codec max resolution adjusted to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Lcom/google/android/gms/internal/ads/zzee;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16e

    :cond_16c
    move-object/from16 v16, v4

    :cond_16e
    :goto_16e
    new-instance v5, Lcom/google/android/gms/internal/ads/zzxq;

    invoke-direct {v5, v6, v7, v8}, Lcom/google/android/gms/internal/ads/zzxq;-><init>(III)V

    .line 35
    :goto_173
    iput-object v5, v0, Lcom/google/android/gms/internal/ads/zzxs;->U0:Lcom/google/android/gms/internal/ads/zzxq;

    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzxs;->T0:Z

    .line 36
    new-instance v4, Landroid/media/MediaFormat;

    invoke-direct {v4}, Landroid/media/MediaFormat;-><init>()V

    const-string v6, "mime"

    move-object/from16 v7, v16

    .line 37
    invoke-virtual {v4, v6, v7}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    iget v6, v2, Lcom/google/android/gms/internal/ads/zzaf;->q:I

    const-string v7, "width"

    invoke-virtual {v4, v7, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 39
    iget v6, v2, Lcom/google/android/gms/internal/ads/zzaf;->r:I

    const-string v7, "height"

    invoke-virtual {v4, v7, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 40
    iget-object v6, v2, Lcom/google/android/gms/internal/ads/zzaf;->n:Ljava/util/List;

    invoke-static {v4, v6}, Lcom/google/android/gms/internal/ads/zzeg;->b(Landroid/media/MediaFormat;Ljava/util/List;)V

    .line 41
    iget v6, v2, Lcom/google/android/gms/internal/ads/zzaf;->s:F

    const/high16 v7, -0x40800000    # -1.0f

    cmpl-float v8, v6, v7

    if-eqz v8, :cond_1a3

    const-string v8, "frame-rate"

    .line 42
    invoke-virtual {v4, v8, v6}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    .line 43
    :cond_1a3
    iget v6, v2, Lcom/google/android/gms/internal/ads/zzaf;->t:I

    const-string v8, "rotation-degrees"

    invoke-static {v4, v8, v6}, Lcom/google/android/gms/internal/ads/zzeg;->a(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 44
    iget-object v6, v2, Lcom/google/android/gms/internal/ads/zzaf;->x:Lcom/google/android/gms/internal/ads/zzq;

    if-eqz v6, :cond_1d0

    iget v8, v6, Lcom/google/android/gms/internal/ads/zzq;->c:I

    const-string v9, "color-transfer"

    .line 45
    invoke-static {v4, v9, v8}, Lcom/google/android/gms/internal/ads/zzeg;->a(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    iget v8, v6, Lcom/google/android/gms/internal/ads/zzq;->a:I

    const-string v9, "color-standard"

    .line 46
    invoke-static {v4, v9, v8}, Lcom/google/android/gms/internal/ads/zzeg;->a(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    iget v8, v6, Lcom/google/android/gms/internal/ads/zzq;->b:I

    const-string v9, "color-range"

    .line 47
    invoke-static {v4, v9, v8}, Lcom/google/android/gms/internal/ads/zzeg;->a(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzq;->d:[B

    if-eqz v6, :cond_1d0

    .line 48
    invoke-static {v6}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v6

    const-string v8, "hdr-static-info"

    invoke-virtual {v4, v8, v6}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 49
    :cond_1d0
    iget-object v6, v2, Lcom/google/android/gms/internal/ads/zzaf;->l:Ljava/lang/String;

    const-string v8, "video/dolby-vision"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1ed

    .line 50
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzrp;->b(Lcom/google/android/gms/internal/ads/zzaf;)Landroid/util/Pair;

    move-result-object v6

    if-eqz v6, :cond_1ed

    .line 51
    iget-object v6, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    .line 52
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const-string v8, "profile"

    .line 53
    invoke-static {v4, v8, v6}, Lcom/google/android/gms/internal/ads/zzeg;->a(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 54
    :cond_1ed
    iget v6, v5, Lcom/google/android/gms/internal/ads/zzxq;->a:I

    const-string v8, "max-width"

    invoke-virtual {v4, v8, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 55
    iget v6, v5, Lcom/google/android/gms/internal/ads/zzxq;->b:I

    const-string v8, "max-height"

    invoke-virtual {v4, v8, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 56
    iget v5, v5, Lcom/google/android/gms/internal/ads/zzxq;->c:I

    const-string v6, "max-input-size"

    invoke-static {v4, v6, v5}, Lcom/google/android/gms/internal/ads/zzeg;->a(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 57
    sget v5, Lcom/google/android/gms/internal/ads/zzew;->a:I

    const/16 v6, 0x17

    if-lt v5, v6, :cond_219

    const-string v5, "priority"

    const/4 v6, 0x0

    .line 58
    invoke-virtual {v4, v5, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    move/from16 v5, p4

    cmpl-float v6, v5, v7

    if-eqz v6, :cond_219

    const-string v6, "operating-rate"

    .line 59
    invoke-virtual {v4, v6, v5}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    :cond_219
    if-eqz v3, :cond_227

    const-string v3, "no-post-process"

    const/4 v5, 0x1

    .line 60
    invoke-virtual {v4, v3, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v3, "auto-frc"

    const/4 v5, 0x0

    .line 61
    invoke-virtual {v4, v3, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_227
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzxs;->X0:Landroid/view/Surface;

    if-nez v3, :cond_24a

    .line 62
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzxs;->V0(Lcom/google/android/gms/internal/ads/zzqx;)Z

    move-result v3

    if-eqz v3, :cond_244

    .line 63
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzxs;->Y0:Lcom/google/android/gms/internal/ads/zzxv;

    if-nez v3, :cond_23f

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzxs;->P0:Landroid/content/Context;

    .line 64
    iget-boolean v5, v1, Lcom/google/android/gms/internal/ads/zzqx;->f:Z

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/ads/zzxv;->h(Landroid/content/Context;Z)Lcom/google/android/gms/internal/ads/zzxv;

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzxs;->Y0:Lcom/google/android/gms/internal/ads/zzxv;

    :cond_23f
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzxs;->Y0:Lcom/google/android/gms/internal/ads/zzxv;

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzxs;->X0:Landroid/view/Surface;

    goto :goto_24a

    .line 65
    :cond_244
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 66
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 67
    :cond_24a
    :goto_24a
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzxs;->X0:Landroid/view/Surface;

    const/4 v5, 0x0

    invoke-static {v1, v4, v2, v3, v5}, Lcom/google/android/gms/internal/ads/zzqs;->b(Lcom/google/android/gms/internal/ads/zzqx;Landroid/media/MediaFormat;Lcom/google/android/gms/internal/ads/zzaf;Landroid/view/Surface;Landroid/media/MediaCrypto;)Lcom/google/android/gms/internal/ads/zzqs;

    move-result-object v1

    return-object v1
.end method

.method protected final U(Lcom/google/android/gms/internal/ads/zzrc;Lcom/google/android/gms/internal/ads/zzaf;Z)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzrj;
        }
    .end annotation

    .line 1
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzxs;->P0:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-static {p3, p1, p2, v0, v0}, Lcom/google/android/gms/internal/ads/zzxs;->Q0(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzrc;Lcom/google/android/gms/internal/ads/zzaf;ZZ)Ljava/util/List;

    move-result-object p1

    .line 2
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzrp;->g(Ljava/util/List;Lcom/google/android/gms/internal/ads/zzaf;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected final W(Ljava/lang/Exception;)V
    .registers 4

    const-string v0, "MediaCodecVideoRenderer"

    const-string v1, "Video codec error"

    .line 1
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzee;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxs;->R0:Lcom/google/android/gms/internal/ads/zzyo;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzyo;->s(Ljava/lang/Exception;)V

    return-void
.end method

.method protected final X(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzqs;JJ)V
    .registers 13

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxs;->R0:Lcom/google/android/gms/internal/ads/zzyo;

    move-object v1, p1

    move-wide v2, p3

    move-wide v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzyo;->a(Ljava/lang/String;JJ)V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzxs;->P0(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzxs;->V0:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzra;->v0()Lcom/google/android/gms/internal/ads/zzqx;

    move-result-object p2

    .line 3
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget p3, Lcom/google/android/gms/internal/ads/zzew;->a:I

    const/16 p4, 0x1d

    const/4 p5, 0x0

    if-lt p3, p4, :cond_3b

    iget-object p3, p2, Lcom/google/android/gms/internal/ads/zzqx;->b:Ljava/lang/String;

    const-string p4, "video/x-vnd.on2.vp9"

    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3b

    .line 5
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzqx;->h()[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    move-result-object p2

    array-length p3, p2

    const/4 p4, 0x0

    :goto_2c
    if-ge p4, p3, :cond_3b

    aget-object p6, p2, p4

    .line 6
    iget p6, p6, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    const/16 v0, 0x4000

    if-ne p6, v0, :cond_38

    const/4 p5, 0x1

    goto :goto_3b

    :cond_38
    add-int/lit8 p4, p4, 0x1

    goto :goto_2c

    :cond_3b
    :goto_3b
    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/zzxs;->W0:Z

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzxs;->S0:Lcom/google/android/gms/internal/ads/zzxr;

    .line 7
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzxr;->a(Ljava/lang/String;)V

    return-void
.end method

.method final X0()V
    .registers 4

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzxs;->d1:Z

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzxs;->b1:Z

    if-nez v1, :cond_12

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzxs;->b1:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzxs;->R0:Lcom/google/android/gms/internal/ads/zzyo;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzxs;->X0:Landroid/view/Surface;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzyo;->q(Ljava/lang/Object;)V

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzxs;->Z0:Z

    :cond_12
    return-void
.end method

.method protected final Y0(Lcom/google/android/gms/internal/ads/zzqu;IJ)V
    .registers 7

    .line 1
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzxs;->o1:Lcom/google/android/gms/internal/ads/zzda;

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/ads/zzxs;->R0(Lcom/google/android/gms/internal/ads/zzda;)V

    .line 2
    sget p3, Lcom/google/android/gms/internal/ads/zzew;->a:I

    const-string p3, "releaseOutputBuffer"

    .line 3
    invoke-static {p3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    const/4 p3, 0x1

    .line 4
    invoke-interface {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzqu;->n(IZ)V

    .line 5
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    const-wide/16 v0, 0x3e8

    mul-long p1, p1, v0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzxs;->l1:J

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzra;->I0:Lcom/google/android/gms/internal/ads/zzhb;

    .line 7
    iget p2, p1, Lcom/google/android/gms/internal/ads/zzhb;->e:I

    add-int/2addr p2, p3

    iput p2, p1, Lcom/google/android/gms/internal/ads/zzhb;->e:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzxs;->i1:I

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzxs;->X0()V

    return-void
.end method

.method protected final Z(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxs;->R0:Lcom/google/android/gms/internal/ads/zzyo;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzyo;->b(Ljava/lang/String;)V

    return-void
.end method

.method protected final Z0(Lcom/google/android/gms/internal/ads/zzqu;IJJ)V
    .registers 7

    .line 1
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzxs;->o1:Lcom/google/android/gms/internal/ads/zzda;

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/ads/zzxs;->R0(Lcom/google/android/gms/internal/ads/zzda;)V

    .line 2
    sget p3, Lcom/google/android/gms/internal/ads/zzew;->a:I

    const-string p3, "releaseOutputBuffer"

    .line 3
    invoke-static {p3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 4
    invoke-interface {p1, p2, p5, p6}, Lcom/google/android/gms/internal/ads/zzqu;->h(IJ)V

    .line 5
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    const-wide/16 p3, 0x3e8

    mul-long p1, p1, p3

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzxs;->l1:J

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzra;->I0:Lcom/google/android/gms/internal/ads/zzhb;

    .line 7
    iget p2, p1, Lcom/google/android/gms/internal/ads/zzhb;->e:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lcom/google/android/gms/internal/ads/zzhb;->e:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzxs;->i1:I

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzxs;->X0()V

    return-void
.end method

.method public final i(FF)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhj;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzra;->i(FF)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzxs;->Q0:Lcom/google/android/gms/internal/ads/zzyd;

    .line 2
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzyd;->e(F)V

    return-void
.end method

.method protected final k0(Lcom/google/android/gms/internal/ads/zzaf;Landroid/media/MediaFormat;)V
    .registers 11

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzra;->t0()Lcom/google/android/gms/internal/ads/zzqu;

    move-result-object v0

    if-eqz v0, :cond_b

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzxs;->a1:I

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzqu;->m(I)V

    .line 2
    :cond_b
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "crop-right"

    .line 3
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "crop-top"

    const-string v3, "crop-bottom"

    const-string v4, "crop-left"

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v1, :cond_32

    .line 4
    invoke-virtual {p2, v4}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 5
    invoke-virtual {p2, v3}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 6
    invoke-virtual {p2, v2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_32

    const/4 v1, 0x1

    goto :goto_33

    :cond_32
    const/4 v1, 0x0

    :goto_33
    if-eqz v1, :cond_40

    .line 7
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    sub-int/2addr v0, v4

    add-int/2addr v0, v5

    goto :goto_46

    :cond_40
    const-string v0, "width"

    .line 8
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    :goto_46
    if-eqz v1, :cond_53

    .line 9
    invoke-virtual {p2, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p2

    sub-int/2addr v1, p2

    add-int/2addr v1, v5

    goto :goto_59

    :cond_53
    const-string v1, "height"

    .line 10
    invoke-virtual {p2, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    .line 11
    :goto_59
    iget p2, p1, Lcom/google/android/gms/internal/ads/zzaf;->u:F

    .line 12
    sget v2, Lcom/google/android/gms/internal/ads/zzew;->a:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_73

    .line 13
    iget v2, p1, Lcom/google/android/gms/internal/ads/zzaf;->t:I

    const/16 v3, 0x5a

    if-eq v2, v3, :cond_6b

    const/16 v3, 0x10e

    if-ne v2, v3, :cond_75

    :cond_6b
    const/high16 v2, 0x3f800000    # 1.0f

    div-float p2, v2, p2

    move v7, v1

    move v1, v0

    move v0, v7

    goto :goto_75

    .line 14
    :cond_73
    iget v6, p1, Lcom/google/android/gms/internal/ads/zzaf;->t:I

    .line 15
    :cond_75
    :goto_75
    new-instance v2, Lcom/google/android/gms/internal/ads/zzda;

    invoke-direct {v2, v0, v1, v6, p2}, Lcom/google/android/gms/internal/ads/zzda;-><init>(IIIF)V

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzxs;->o1:Lcom/google/android/gms/internal/ads/zzda;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzxs;->Q0:Lcom/google/android/gms/internal/ads/zzyd;

    .line 16
    iget p1, p1, Lcom/google/android/gms/internal/ads/zzaf;->s:F

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzyd;->c(F)V

    return-void
.end method

.method protected final m0()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzxs;->b1:Z

    sget v0, Lcom/google/android/gms/internal/ads/zzew;->a:I

    return-void
.end method

.method public final n(ILjava/lang/Object;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhj;
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4c

    const/4 v0, 0x7

    if-eq p1, v0, :cond_47

    const/16 v0, 0xa

    if-eq p1, v0, :cond_3a

    const/16 v0, 0xd

    if-eq p1, v0, :cond_34

    const/4 v0, 0x4

    if-eq p1, v0, :cond_22

    const/4 v0, 0x5

    if-eq p1, v0, :cond_16

    goto/16 :goto_d4

    .line 1
    :cond_16
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzxs;->Q0:Lcom/google/android/gms/internal/ads/zzyd;

    .line 2
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzyd;->j(I)V

    return-void

    .line 3
    :cond_22
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzxs;->a1:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzra;->t0()Lcom/google/android/gms/internal/ads/zzqu;

    move-result-object p2

    if-eqz p2, :cond_d4

    .line 4
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzqu;->m(I)V

    return-void

    .line 5
    :cond_34
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    check-cast p2, Lcom/google/android/gms/internal/ads/zzeo;

    return-void

    .line 7
    :cond_3a
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzxs;->q1:I

    if-eq p2, p1, :cond_d4

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzxs;->q1:I

    return-void

    .line 8
    :cond_47
    check-cast p2, Lcom/google/android/gms/internal/ads/zzxw;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzxs;->r1:Lcom/google/android/gms/internal/ads/zzxw;

    return-void

    .line 9
    :cond_4c
    instance-of p1, p2, Landroid/view/Surface;

    const/4 v0, 0x0

    if-eqz p1, :cond_54

    check-cast p2, Landroid/view/Surface;

    goto :goto_55

    :cond_54
    move-object p2, v0

    :goto_55
    if-nez p2, :cond_73

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzxs;->Y0:Lcom/google/android/gms/internal/ads/zzxv;

    if-eqz p1, :cond_5d

    move-object p2, p1

    goto :goto_73

    .line 10
    :cond_5d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzra;->v0()Lcom/google/android/gms/internal/ads/zzqx;

    move-result-object p1

    if-eqz p1, :cond_73

    .line 11
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzxs;->V0(Lcom/google/android/gms/internal/ads/zzqx;)Z

    move-result v1

    if-eqz v1, :cond_73

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzxs;->P0:Landroid/content/Context;

    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzqx;->f:Z

    .line 12
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzxv;->h(Landroid/content/Context;Z)Lcom/google/android/gms/internal/ads/zzxv;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzxs;->Y0:Lcom/google/android/gms/internal/ads/zzxv;

    .line 13
    :cond_73
    :goto_73
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzxs;->X0:Landroid/view/Surface;

    if-eq p1, p2, :cond_c0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzxs;->X0:Landroid/view/Surface;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzxs;->Q0:Lcom/google/android/gms/internal/ads/zzyd;

    .line 14
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzyd;->i(Landroid/view/Surface;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzxs;->Z0:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzha;->f()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzra;->t0()Lcom/google/android/gms/internal/ads/zzqu;

    move-result-object v2

    if-eqz v2, :cond_a1

    .line 15
    sget v3, Lcom/google/android/gms/internal/ads/zzew;->a:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_9b

    if-eqz p2, :cond_9b

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzxs;->V0:Z

    if-nez v3, :cond_9b

    .line 16
    invoke-interface {v2, p2}, Lcom/google/android/gms/internal/ads/zzqu;->l(Landroid/view/Surface;)V

    goto :goto_a1

    .line 17
    :cond_9b
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzra;->A0()V

    .line 18
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzra;->x0()V

    :cond_a1
    :goto_a1
    if-eqz p2, :cond_b9

    .line 19
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzxs;->Y0:Lcom/google/android/gms/internal/ads/zzxv;

    if-eq p2, v2, :cond_b9

    .line 20
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzxs;->S0()V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzxs;->b1:Z

    .line 21
    sget p1, Lcom/google/android/gms/internal/ads/zzew;->a:I

    const/4 p1, 0x2

    if-ne v1, p1, :cond_d4

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzxs;->f1:J

    return-void

    :cond_b9
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzxs;->p1:Lcom/google/android/gms/internal/ads/zzda;

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzxs;->b1:Z

    .line 22
    sget p1, Lcom/google/android/gms/internal/ads/zzew;->a:I

    return-void

    :cond_c0
    if-eqz p2, :cond_d4

    .line 23
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzxs;->Y0:Lcom/google/android/gms/internal/ads/zzxv;

    if-eq p2, p1, :cond_d4

    .line 24
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzxs;->S0()V

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzxs;->Z0:Z

    if-eqz p1, :cond_d4

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzxs;->R0:Lcom/google/android/gms/internal/ads/zzyo;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzxs;->X0:Landroid/view/Surface;

    .line 25
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzyo;->q(Ljava/lang/Object;)V

    :cond_d4
    :goto_d4
    return-void
.end method

.method protected final n0(Lcom/google/android/gms/internal/ads/zzgr;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhj;
        }
    .end annotation

    .line 1
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzxs;->j1:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzxs;->j1:I

    sget p1, Lcom/google/android/gms/internal/ads/zzew;->a:I

    return-void
.end method

.method protected final p0(JJLcom/google/android/gms/internal/ads/zzqu;Ljava/nio/ByteBuffer;IIIJZZLcom/google/android/gms/internal/ads/zzaf;)Z
    .registers 36
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhj;
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p5

    move/from16 v4, p7

    move-wide/from16 v5, p10

    .line 1
    invoke-static/range {p5 .. p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/zzxs;->e1:J

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v11, v7, v9

    if-nez v11, :cond_1a

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzxs;->e1:J

    :cond_1a
    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/zzxs;->k1:J

    cmp-long v11, v5, v7

    if-eqz v11, :cond_27

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzxs;->Q0:Lcom/google/android/gms/internal/ads/zzyd;

    invoke-virtual {v7, v5, v6}, Lcom/google/android/gms/internal/ads/zzyd;->d(J)V

    iput-wide v5, v0, Lcom/google/android/gms/internal/ads/zzxs;->k1:J

    :cond_27
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzra;->s0()J

    move-result-wide v7

    sub-long v11, v5, v7

    const/4 v13, 0x1

    if-eqz p12, :cond_37

    if-eqz p13, :cond_33

    goto :goto_37

    .line 3
    :cond_33
    invoke-virtual {v0, v3, v4, v11, v12}, Lcom/google/android/gms/internal/ads/zzxs;->M0(Lcom/google/android/gms/internal/ads/zzqu;IJ)V

    return v13

    .line 4
    :cond_37
    :goto_37
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzha;->f()I

    move-result v14

    const/4 v15, 0x2

    if-ne v14, v15, :cond_40

    const/4 v10, 0x1

    goto :goto_41

    :cond_40
    const/4 v10, 0x0

    .line 5
    :goto_41
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    const-wide/16 v16, 0x3e8

    mul-long v14, v14, v16

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzra;->r0()F

    move-result v9

    move-wide/from16 v18, v14

    float-to-double v13, v9

    sub-long/2addr v5, v1

    long-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v5, v13

    double-to-long v5, v5

    if-eqz v10, :cond_5f

    sub-long v14, v18, p3

    sub-long/2addr v5, v14

    :cond_5f
    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzxs;->X0:Landroid/view/Surface;

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzxs;->Y0:Lcom/google/android/gms/internal/ads/zzxv;

    if-ne v9, v13, :cond_75

    invoke-static {v5, v6}, Lcom/google/android/gms/internal/ads/zzxs;->U0(J)Z

    move-result v1

    if-eqz v1, :cond_73

    .line 6
    invoke-virtual {v0, v3, v4, v11, v12}, Lcom/google/android/gms/internal/ads/zzxs;->M0(Lcom/google/android/gms/internal/ads/zzqu;IJ)V

    .line 7
    invoke-virtual {v0, v5, v6}, Lcom/google/android/gms/internal/ads/zzxs;->O0(J)V

    const/4 v1, 0x1

    return v1

    :cond_73
    const/4 v1, 0x0

    return v1

    :cond_75
    iget-wide v13, v0, Lcom/google/android/gms/internal/ads/zzxs;->l1:J

    sub-long v13, v18, v13

    iget-boolean v9, v0, Lcom/google/android/gms/internal/ads/zzxs;->d1:Z

    if-nez v9, :cond_84

    if-nez v10, :cond_88

    iget-boolean v9, v0, Lcom/google/android/gms/internal/ads/zzxs;->c1:Z

    if-eqz v9, :cond_8a

    goto :goto_88

    .line 8
    :cond_84
    iget-boolean v9, v0, Lcom/google/android/gms/internal/ads/zzxs;->b1:Z

    if-nez v9, :cond_8a

    :cond_88
    :goto_88
    const/4 v9, 0x1

    goto :goto_8b

    :cond_8a
    const/4 v9, 0x0

    .line 9
    :goto_8b
    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzxs;->f1:J

    const/16 v15, 0x15

    const-wide v18, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v20, v3, v18

    if-nez v20, :cond_cf

    cmp-long v3, v1, v7

    if-ltz v3, :cond_cf

    if-nez v9, :cond_ad

    if-eqz v10, :cond_cf

    invoke-static {v5, v6}, Lcom/google/android/gms/internal/ads/zzxs;->U0(J)Z

    move-result v3

    if-eqz v3, :cond_cf

    const-wide/32 v3, 0x186a0

    cmp-long v7, v13, v3

    if-lez v7, :cond_cf

    .line 10
    :cond_ad
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    .line 11
    sget v3, Lcom/google/android/gms/internal/ads/zzew;->a:I

    if-lt v3, v15, :cond_c3

    move-object/from16 p8, p0

    move-object/from16 p9, p5

    move/from16 p10, p7

    move-wide/from16 p11, v11

    move-wide/from16 p13, v1

    .line 12
    invoke-virtual/range {p8 .. p14}, Lcom/google/android/gms/internal/ads/zzxs;->Z0(Lcom/google/android/gms/internal/ads/zzqu;IJJ)V

    goto :goto_ca

    :cond_c3
    move-object/from16 v3, p5

    move/from16 v4, p7

    .line 13
    invoke-virtual {v0, v3, v4, v11, v12}, Lcom/google/android/gms/internal/ads/zzxs;->Y0(Lcom/google/android/gms/internal/ads/zzqu;IJ)V

    .line 14
    :goto_ca
    invoke-virtual {v0, v5, v6}, Lcom/google/android/gms/internal/ads/zzxs;->O0(J)V

    const/4 v1, 0x1

    return v1

    :cond_cf
    move-object/from16 v3, p5

    move/from16 v4, p7

    if-eqz v10, :cond_19b

    .line 15
    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/zzxs;->e1:J

    cmp-long v9, v1, v7

    if-nez v9, :cond_dd

    goto/16 :goto_19b

    :cond_dd
    mul-long v5, v5, v16

    .line 16
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    add-long/2addr v5, v7

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzxs;->Q0:Lcom/google/android/gms/internal/ads/zzyd;

    .line 17
    invoke-virtual {v9, v5, v6}, Lcom/google/android/gms/internal/ads/zzyd;->a(J)J

    move-result-wide v5

    sub-long v7, v5, v7

    div-long v7, v7, v16

    iget-wide v9, v0, Lcom/google/android/gms/internal/ads/zzxs;->f1:J

    const-wide/32 v13, -0x7a120

    cmp-long v18, v7, v13

    if-gez v18, :cond_12a

    if-nez p13, :cond_12a

    .line 18
    invoke-virtual/range {p0 .. p2}, Lcom/google/android/gms/internal/ads/zzha;->y(J)I

    move-result v1

    if-nez v1, :cond_100

    goto :goto_12a

    :cond_100
    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v9, v13

    if-eqz v2, :cond_118

    .line 19
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzra;->I0:Lcom/google/android/gms/internal/ads/zzhb;

    .line 20
    iget v3, v2, Lcom/google/android/gms/internal/ads/zzhb;->d:I

    add-int/2addr v3, v1

    iput v3, v2, Lcom/google/android/gms/internal/ads/zzhb;->d:I

    .line 21
    iget v1, v2, Lcom/google/android/gms/internal/ads/zzhb;->f:I

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzxs;->j1:I

    add-int/2addr v1, v3

    iput v1, v2, Lcom/google/android/gms/internal/ads/zzhb;->f:I

    goto :goto_125

    .line 22
    :cond_118
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzra;->I0:Lcom/google/android/gms/internal/ads/zzhb;

    .line 23
    iget v3, v2, Lcom/google/android/gms/internal/ads/zzhb;->j:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    iput v3, v2, Lcom/google/android/gms/internal/ads/zzhb;->j:I

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzxs;->j1:I

    .line 24
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzxs;->N0(II)V

    .line 25
    :goto_125
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzra;->D0()Z

    const/4 v1, 0x0

    return v1

    .line 26
    :cond_12a
    :goto_12a
    invoke-static {v7, v8}, Lcom/google/android/gms/internal/ads/zzxs;->U0(J)Z

    move-result v1

    if-eqz v1, :cond_156

    if-nez p13, :cond_156

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v9, v1

    if-eqz v5, :cond_140

    .line 27
    invoke-virtual {v0, v3, v4, v11, v12}, Lcom/google/android/gms/internal/ads/zzxs;->M0(Lcom/google/android/gms/internal/ads/zzqu;IJ)V

    const/4 v2, 0x1

    goto :goto_152

    .line 28
    :cond_140
    sget v1, Lcom/google/android/gms/internal/ads/zzew;->a:I

    const-string v1, "dropVideoBuffer"

    .line 29
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 30
    invoke-interface {v3, v4, v1}, Lcom/google/android/gms/internal/ads/zzqu;->n(IZ)V

    .line 31
    invoke-static {}, Landroid/os/Trace;->endSection()V

    const/4 v2, 0x1

    .line 32
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzxs;->N0(II)V

    .line 33
    :goto_152
    invoke-virtual {v0, v7, v8}, Lcom/google/android/gms/internal/ads/zzxs;->O0(J)V

    return v2

    .line 34
    :cond_156
    sget v1, Lcom/google/android/gms/internal/ads/zzew;->a:I

    if-lt v1, v15, :cond_173

    const-wide/32 v1, 0xc350

    cmp-long v9, v7, v1

    if-gez v9, :cond_199

    move-object/from16 p8, p0

    move-object/from16 p9, p5

    move/from16 p10, p7

    move-wide/from16 p11, v11

    move-wide/from16 p13, v5

    .line 35
    invoke-virtual/range {p8 .. p14}, Lcom/google/android/gms/internal/ads/zzxs;->Z0(Lcom/google/android/gms/internal/ads/zzqu;IJJ)V

    .line 36
    invoke-virtual {v0, v7, v8}, Lcom/google/android/gms/internal/ads/zzxs;->O0(J)V

    const/4 v1, 0x1

    return v1

    :cond_173
    const-wide/16 v1, 0x7530

    cmp-long v5, v7, v1

    if-gez v5, :cond_199

    const-wide/16 v1, 0x2af8

    cmp-long v5, v7, v1

    if-lez v5, :cond_191

    const-wide/16 v1, -0x2710

    add-long/2addr v1, v7

    :try_start_182
    div-long v1, v1, v16

    .line 37
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_187
    .catch Ljava/lang/InterruptedException; {:try_start_182 .. :try_end_187} :catch_188

    goto :goto_191

    .line 38
    :catch_188
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    const/4 v1, 0x0

    return v1

    .line 39
    :cond_191
    :goto_191
    invoke-virtual {v0, v3, v4, v11, v12}, Lcom/google/android/gms/internal/ads/zzxs;->Y0(Lcom/google/android/gms/internal/ads/zzqu;IJ)V

    .line 40
    invoke-virtual {v0, v7, v8}, Lcom/google/android/gms/internal/ads/zzxs;->O0(J)V

    const/4 v1, 0x1

    return v1

    :cond_199
    const/4 v1, 0x0

    return v1

    :cond_19b
    :goto_19b
    const/4 v1, 0x0

    return v1
.end method

.method public final s()Ljava/lang/String;
    .registers 2

    const-string v0, "MediaCodecVideoRenderer"

    return-object v0
.end method

.method protected final u0(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzqx;)Lcom/google/android/gms/internal/ads/zzqv;
    .registers 5

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzxo;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzxs;->X0:Landroid/view/Surface;

    invoke-direct {v0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzxo;-><init>(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzqx;Landroid/view/Surface;)V

    return-object v0
.end method

.method protected final w0(Lcom/google/android/gms/internal/ads/zzgr;)V
    .registers 9
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1d
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhj;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzxs;->W0:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzgr;->f:Ljava/nio/ByteBuffer;

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_58

    .line 4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 5
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    .line 6
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    .line 7
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    .line 8
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    const/4 v5, 0x0

    .line 9
    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/16 v6, -0x4b

    if-ne v0, v6, :cond_58

    const/16 v0, 0x3c

    if-ne v1, v0, :cond_58

    const/4 v0, 0x1

    if-ne v2, v0, :cond_58

    const/4 v1, 0x4

    if-ne v3, v1, :cond_58

    if-eqz v4, :cond_3b

    if-ne v4, v0, :cond_58

    .line 10
    :cond_3b
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    .line 11
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 12
    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzra;->t0()Lcom/google/android/gms/internal/ads/zzqu;

    move-result-object p1

    new-instance v1, Landroid/os/Bundle;

    .line 13
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "hdr10-plus-info"

    .line 14
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 15
    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/ads/zzqu;->n0(Landroid/os/Bundle;)V

    :cond_58
    return-void
.end method

.method protected final y0(J)V
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzra;->y0(J)V

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzxs;->j1:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzxs;->j1:I

    return-void
.end method

.method protected final z0(Lcom/google/android/gms/internal/ads/zzaf;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhj;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxs;->S0:Lcom/google/android/gms/internal/ads/zzxr;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzxr;->b(Lcom/google/android/gms/internal/ads/zzaf;)Z

    return-void
.end method
