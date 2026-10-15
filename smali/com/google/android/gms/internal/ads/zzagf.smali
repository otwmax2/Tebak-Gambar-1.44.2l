###### Class com.google.android.gms.internal.ads.zzagf (com.google.android.gms.internal.ads.zzagf)
.class final Lcom/google/android/gms/internal/ads/zzagf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# static fields
.field private static final a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x1d

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/google/android/gms/internal/ads/zzagf;->a:[I

    return-void

    :array_a
    .array-data 4
        0x69736f6d
        0x69736f32
        0x69736f33
        0x69736f34
        0x69736f35
        0x69736f36
        0x69736f39
        0x61766331
        0x68766331
        0x68657631
        0x61763031
        0x6d703431
        0x6d703432
        0x33673261
        0x33673262
        0x33677236
        0x33677336
        0x33676536
        0x33676736
        0x4d345620    # 1.8909645E8f
        0x4d344120    # 1.8901043E8f
        0x66347620
        0x6b646469
        0x4d345650
        0x71742020
        0x4d534e56    # 2.215704E8f
        0x64627931
        0x69736d6c
        0x70696666
    .end array-data
.end method

.method public static a(Lcom/google/android/gms/internal/ads/zzzv;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzagf;->c(Lcom/google/android/gms/internal/ads/zzzv;ZZ)Z

    move-result p0

    return p0
.end method

.method public static b(Lcom/google/android/gms/internal/ads/zzzv;Z)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p1, 0x0

    .line 1
    invoke-static {p0, p1, p1}, Lcom/google/android/gms/internal/ads/zzagf;->c(Lcom/google/android/gms/internal/ads/zzzv;ZZ)Z

    move-result p0

    return p0
.end method

.method private static c(Lcom/google/android/gms/internal/ads/zzzv;ZZ)Z
    .registers 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzzv;->d()J

    move-result-wide v1

    const-wide/16 v3, 0x1000

    const-wide/16 v5, -0x1

    cmp-long v7, v1, v5

    if-eqz v7, :cond_14

    cmp-long v7, v1, v3

    if-lez v7, :cond_13

    goto :goto_14

    :cond_13
    move-wide v3, v1

    .line 2
    :cond_14
    :goto_14
    new-instance v7, Lcom/google/android/gms/internal/ads/zzen;

    const/16 v8, 0x40

    invoke-direct {v7, v8}, Lcom/google/android/gms/internal/ads/zzen;-><init>(I)V

    long-to-int v4, v3

    const/4 v3, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_1f
    const/4 v10, 0x1

    if-ge v8, v4, :cond_fd

    const/16 v11, 0x8

    .line 3
    invoke-virtual {v7, v11}, Lcom/google/android/gms/internal/ads/zzen;->c(I)V

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v12

    .line 4
    invoke-interface {v0, v12, v3, v11, v10}, Lcom/google/android/gms/internal/ads/zzzv;->k([BIIZ)Z

    move-result v12

    if-nez v12, :cond_33

    goto/16 :goto_fd

    .line 5
    :cond_33
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzen;->A()J

    move-result-wide v12

    .line 6
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzen;->m()I

    move-result v14

    const-wide/16 v15, 0x1

    const/16 v10, 0x10

    cmp-long v17, v12, v15

    if-nez v17, :cond_52

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v12

    .line 7
    invoke-interface {v0, v12, v11, v11}, Lcom/google/android/gms/internal/ads/zzzv;->m([BII)V

    .line 8
    invoke-virtual {v7, v10}, Lcom/google/android/gms/internal/ads/zzen;->e(I)V

    .line 9
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzen;->z()J

    move-result-wide v12

    goto :goto_6a

    :cond_52
    const-wide/16 v15, 0x0

    cmp-long v10, v12, v15

    if-nez v10, :cond_68

    .line 10
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzzv;->d()J

    move-result-wide v15

    cmp-long v10, v15, v5

    if-eqz v10, :cond_68

    .line 11
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzzv;->b()J

    move-result-wide v12

    sub-long/2addr v15, v12

    const-wide/16 v12, 0x8

    add-long/2addr v12, v15

    :cond_68
    const/16 v10, 0x8

    :goto_6a
    int-to-long v5, v10

    cmp-long v17, v12, v5

    if-gez v17, :cond_70

    return v3

    :cond_70
    add-int/2addr v8, v10

    const v10, 0x6d6f6f76

    if-ne v14, v10, :cond_86

    long-to-int v5, v12

    add-int/2addr v4, v5

    const-wide/16 v15, -0x1

    cmp-long v5, v1, v15

    if-eqz v5, :cond_84

    int-to-long v5, v4

    cmp-long v10, v5, v1

    if-lez v10, :cond_84

    long-to-int v4, v1

    :cond_84
    move-wide v5, v15

    goto :goto_1f

    :cond_86
    const-wide/16 v15, -0x1

    const v10, 0x6d6f6f66

    if-eq v14, v10, :cond_fb

    const v10, 0x6d766578

    if-ne v14, v10, :cond_94

    goto/16 :goto_fb

    :cond_94
    move-wide/from16 v17, v1

    int-to-long v1, v8

    add-long/2addr v1, v12

    move-wide/from16 v19, v12

    int-to-long v11, v4

    sub-long/2addr v1, v5

    cmp-long v13, v1, v11

    if-ltz v13, :cond_a1

    goto :goto_fd

    :cond_a1
    sub-long v12, v19, v5

    long-to-int v1, v12

    add-int/2addr v8, v1

    const v2, 0x66747970

    if-ne v14, v2, :cond_f1

    const/16 v2, 0x8

    if-ge v1, v2, :cond_af

    return v3

    .line 12
    :cond_af
    invoke-virtual {v7, v1}, Lcom/google/android/gms/internal/ads/zzen;->c(I)V

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v2

    .line 13
    invoke-interface {v0, v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzzv;->m([BII)V

    shr-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    :goto_bc
    if-ge v2, v1, :cond_ed

    const/4 v5, 0x1

    if-ne v2, v5, :cond_c6

    const/4 v5, 0x4

    .line 14
    invoke-virtual {v7, v5}, Lcom/google/android/gms/internal/ads/zzen;->g(I)V

    goto :goto_ea

    .line 15
    :cond_c6
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzen;->m()I

    move-result v5

    ushr-int/lit8 v6, v5, 0x8

    const v10, 0x336770

    if-ne v6, v10, :cond_d3

    :goto_d1
    const/4 v9, 0x1

    goto :goto_ed

    :cond_d3
    const v6, 0x68656963

    if-ne v5, v6, :cond_db

    const v5, 0x68656963

    :cond_db
    sget-object v6, Lcom/google/android/gms/internal/ads/zzagf;->a:[I

    const/4 v10, 0x0

    :goto_de
    const/16 v11, 0x1d

    if-ge v10, v11, :cond_ea

    .line 16
    aget v11, v6, v10

    if-ne v11, v5, :cond_e7

    goto :goto_d1

    :cond_e7
    add-int/lit8 v10, v10, 0x1

    goto :goto_de

    :cond_ea
    :goto_ea
    add-int/lit8 v2, v2, 0x1

    goto :goto_bc

    :cond_ed
    :goto_ed
    if-eqz v9, :cond_f0

    goto :goto_f6

    :cond_f0
    return v3

    :cond_f1
    if-eqz v1, :cond_f6

    .line 17
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzzv;->w(I)V

    :cond_f6
    :goto_f6
    move-wide v5, v15

    move-wide/from16 v1, v17

    goto/16 :goto_1f

    :cond_fb
    :goto_fb
    const/4 v5, 0x1

    goto :goto_fe

    :cond_fd
    :goto_fd
    const/4 v5, 0x0

    :goto_fe
    if-eqz v9, :cond_106

    move/from16 v0, p1

    if-ne v0, v5, :cond_106

    const/4 v0, 0x1

    return v0

    :cond_106
    return v3
.end method
