###### Class com.google.android.gms.internal.ads.zzaar (com.google.android.gms.internal.ads.zzaar)
.class public final Lcom/google/android/gms/internal/ads/zzaar;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# static fields
.field public static final a:[B

.field public static final b:[F

.field private static final c:Ljava/lang/Object;

.field private static d:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_20

    sput-object v0, Lcom/google/android/gms/internal/ads/zzaar;->a:[B

    const/16 v0, 0x11

    new-array v0, v0, [F

    fill-array-data v0, :array_26

    sput-object v0, Lcom/google/android/gms/internal/ads/zzaar;->b:[F

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzaar;->c:Ljava/lang/Object;

    const/16 v0, 0xa

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/gms/internal/ads/zzaar;->d:[I

    return-void

    nop

    :array_20
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_26
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f8ba2e9
        0x3f68ba2f
        0x3fba2e8c
        0x3f9b26ca
        0x400ba2e9
        0x3fe8ba2f
        0x403a2e8c
        0x401b26ca
        0x3fd1745d
        0x3fae8ba3
        0x3ff83e10
        0x3fcede62
        0x3faaaaab
        0x3fc00000    # 1.5f
        0x40000000    # 2.0f
    .end array-data
.end method

.method public static a([BII[Z)I
    .registers 12

    sub-int v0, p2, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v0, :cond_8

    const/4 v3, 0x1

    goto :goto_9

    :cond_8
    const/4 v3, 0x0

    .line 1
    :goto_9
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzdl;->f(Z)V

    if-nez v0, :cond_f

    return p2

    :cond_f
    aget-boolean v3, p3, v1

    if-eqz v3, :cond_19

    .line 2
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzaar;->e([Z)V

    add-int/lit8 p1, p1, -0x3

    return p1

    :cond_19
    if-le v0, v2, :cond_2a

    aget-boolean v3, p3, v2

    if-eqz v3, :cond_2a

    .line 3
    aget-byte v3, p0, p1

    if-eq v3, v2, :cond_24

    goto :goto_2a

    .line 4
    :cond_24
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzaar;->e([Z)V

    add-int/lit8 p1, p1, -0x2

    return p1

    :cond_2a
    :goto_2a
    const/4 v3, 0x2

    if-le v0, v3, :cond_42

    .line 5
    aget-boolean v4, p3, v3

    if-eqz v4, :cond_42

    .line 6
    aget-byte v4, p0, p1

    if-nez v4, :cond_42

    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    if-eq v4, v2, :cond_3c

    goto :goto_42

    .line 7
    :cond_3c
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzaar;->e([Z)V

    add-int/lit8 p1, p1, -0x1

    return p1

    :cond_42
    :goto_42
    add-int/lit8 v4, p2, -0x1

    add-int/2addr p1, v3

    :goto_45
    if-ge p1, v4, :cond_64

    .line 8
    aget-byte v5, p0, p1

    and-int/lit16 v6, v5, 0xfe

    if-nez v6, :cond_61

    add-int/lit8 v6, p1, -0x2

    .line 9
    aget-byte v7, p0, v6

    if-nez v7, :cond_60

    add-int/lit8 p1, p1, -0x1

    aget-byte p1, p0, p1

    if-nez p1, :cond_60

    if-eq v5, v2, :cond_5c

    goto :goto_60

    .line 10
    :cond_5c
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzaar;->e([Z)V

    return v6

    :cond_60
    :goto_60
    move p1, v6

    :cond_61
    add-int/lit8 p1, p1, 0x3

    goto :goto_45

    :cond_64
    if-le v0, v3, :cond_79

    add-int/lit8 p1, p2, -0x3

    .line 11
    aget-byte p1, p0, p1

    if-nez p1, :cond_77

    add-int/lit8 p1, p2, -0x2

    aget-byte p1, p0, p1

    if-nez p1, :cond_77

    aget-byte p1, p0, v4

    if-ne p1, v2, :cond_77

    goto :goto_92

    :cond_77
    const/4 p1, 0x0

    goto :goto_93

    :cond_79
    if-ne v0, v3, :cond_8a

    .line 12
    aget-boolean p1, p3, v3

    if-eqz p1, :cond_77

    add-int/lit8 p1, p2, -0x2

    .line 13
    aget-byte p1, p0, p1

    if-nez p1, :cond_77

    aget-byte p1, p0, v4

    if-ne p1, v2, :cond_77

    goto :goto_92

    :cond_8a
    aget-boolean p1, p3, v2

    if-eqz p1, :cond_77

    .line 14
    aget-byte p1, p0, v4

    if-ne p1, v2, :cond_77

    :goto_92
    const/4 p1, 0x1

    .line 15
    :goto_93
    aput-boolean p1, p3, v1

    if-le v0, v2, :cond_a2

    add-int/lit8 p1, p2, -0x2

    .line 16
    aget-byte p1, p0, p1

    if-nez p1, :cond_ac

    aget-byte p1, p0, v4

    if-nez p1, :cond_ac

    goto :goto_aa

    .line 17
    :cond_a2
    aget-boolean p1, p3, v3

    if-eqz p1, :cond_ac

    .line 18
    aget-byte p1, p0, v4

    if-nez p1, :cond_ac

    :goto_aa
    const/4 p1, 0x1

    goto :goto_ad

    :cond_ac
    const/4 p1, 0x0

    .line 19
    :goto_ad
    aput-boolean p1, p3, v2

    .line 20
    aget-byte p0, p0, v4

    if-nez p0, :cond_b4

    const/4 v1, 0x1

    :cond_b4
    aput-boolean v1, p3, v3

    return p2
.end method

.method public static b([BI)I
    .registers 10

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzaar;->c:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_6
    :goto_6
    if-lt v2, p1, :cond_2c

    sub-int/2addr p1, v3

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_c
    if-ge v2, v3, :cond_25

    :try_start_e
    sget-object v6, Lcom/google/android/gms/internal/ads/zzaar;->d:[I

    aget v6, v6, v2

    sub-int/2addr v6, v4

    .line 2
    invoke-static {p0, v4, p0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v5, v6

    add-int/lit8 v7, v5, 0x1

    .line 3
    aput-byte v1, p0, v5

    add-int/lit8 v5, v7, 0x1

    .line 4
    aput-byte v1, p0, v7

    add-int/lit8 v6, v6, 0x3

    add-int/2addr v4, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_25
    sub-int v1, p1, v5

    .line 5
    invoke-static {p0, v4, p0, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    monitor-exit v0

    return p1

    :cond_2c
    :goto_2c
    add-int/lit8 v4, p1, -0x2

    if-ge v2, v4, :cond_47

    .line 7
    aget-byte v4, p0, v2

    if-nez v4, :cond_42

    add-int/lit8 v4, v2, 0x1

    aget-byte v4, p0, v4

    if-nez v4, :cond_42

    add-int/lit8 v4, v2, 0x2

    aget-byte v4, p0, v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_42

    goto :goto_48

    :cond_42
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    :catchall_45
    move-exception p0

    goto :goto_60

    :cond_47
    move v2, p1

    :goto_48
    if-ge v2, p1, :cond_6

    sget-object v4, Lcom/google/android/gms/internal/ads/zzaar;->d:[I

    .line 8
    array-length v5, v4

    if-gt v5, v3, :cond_56

    add-int/2addr v5, v5

    .line 9
    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v4

    sput-object v4, Lcom/google/android/gms/internal/ads/zzaar;->d:[I

    :cond_56
    sget-object v4, Lcom/google/android/gms/internal/ads/zzaar;->d:[I

    add-int/lit8 v5, v3, 0x1

    .line 10
    aput v2, v4, v3

    add-int/lit8 v2, v2, 0x3

    move v3, v5

    goto :goto_6

    .line 11
    :goto_60
    monitor-exit v0
    :try_end_61
    .catchall {:try_start_e .. :try_end_61} :catchall_45

    goto :goto_63

    :goto_62
    throw p0

    :goto_63
    goto :goto_62
.end method

.method public static c([BII)Lcom/google/android/gms/internal/ads/zzaap;
    .registers 4

    .line 1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzaat;

    const/4 v0, 0x4

    invoke-direct {p1, p0, v0, p2}, Lcom/google/android/gms/internal/ads/zzaat;-><init>([BII)V

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzaat;->c()I

    move-result p0

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzaat;->c()I

    move-result p2

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzaat;->d()V

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzaat;->f()Z

    move-result p1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaap;

    invoke-direct {v0, p0, p2, p1}, Lcom/google/android/gms/internal/ads/zzaap;-><init>(IIZ)V

    return-object v0
.end method

.method public static d([BII)Lcom/google/android/gms/internal/ads/zzaaq;
    .registers 26

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaat;

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzaat;-><init>([BII)V

    const/16 v1, 0x8

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzaat;->a(I)I

    move-result v2

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzaat;->a(I)I

    move-result v5

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzaat;->a(I)I

    move-result v6

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaat;->c()I

    move-result v7

    const/16 v3, 0x8a

    const/4 v4, 0x3

    const/16 v8, 0x10

    const/4 v10, 0x1

    const/16 v11, 0x64

    if-eq v2, v11, :cond_4f

    const/16 v11, 0x6e

    if-eq v2, v11, :cond_4f

    const/16 v11, 0x7a

    if-eq v2, v11, :cond_4f

    const/16 v11, 0xf4

    if-eq v2, v11, :cond_4f

    const/16 v11, 0x2c

    if-eq v2, v11, :cond_4f

    const/16 v11, 0x53

    if-eq v2, v11, :cond_4f

    const/16 v11, 0x56

    if-eq v2, v11, :cond_4f

    const/16 v11, 0x76

    if-eq v2, v11, :cond_4f

    const/16 v11, 0x80

    if-eq v2, v11, :cond_4f

    if-ne v2, v3, :cond_4c

    const/16 v2, 0x8a

    goto :goto_4f

    :cond_4c
    const/4 v3, 0x1

    const/4 v12, 0x0

    goto :goto_a4

    .line 6
    :cond_4f
    :goto_4f
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaat;->c()I

    move-result v3

    if-ne v3, v4, :cond_5b

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaat;->f()Z

    move-result v11

    const/4 v12, 0x3

    goto :goto_5d

    :cond_5b
    move v12, v3

    const/4 v11, 0x0

    .line 8
    :goto_5d
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaat;->c()I

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaat;->c()I

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaat;->d()V

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaat;->f()Z

    move-result v13

    if-eqz v13, :cond_a3

    if-eq v12, v4, :cond_71

    const/16 v12, 0x8

    goto :goto_73

    :cond_71
    const/16 v12, 0xc

    :goto_73
    const/4 v13, 0x0

    :goto_74
    if-ge v13, v12, :cond_a3

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaat;->f()Z

    move-result v14

    if-eqz v14, :cond_a0

    const/4 v14, 0x6

    if-ge v13, v14, :cond_82

    const/16 v14, 0x10

    goto :goto_84

    :cond_82
    const/16 v14, 0x40

    :goto_84
    const/4 v15, 0x0

    const/16 v16, 0x8

    const/16 v17, 0x8

    :goto_89
    if-ge v15, v14, :cond_a0

    if-eqz v16, :cond_99

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaat;->b()I

    move-result v16

    add-int v9, v17, v16

    add-int/lit16 v9, v9, 0x100

    rem-int/lit16 v9, v9, 0x100

    move/from16 v16, v9

    :cond_99
    if-eqz v16, :cond_9d

    move/from16 v17, v16

    :cond_9d
    add-int/lit8 v15, v15, 0x1

    goto :goto_89

    :cond_a0
    add-int/lit8 v13, v13, 0x1

    goto :goto_74

    :cond_a3
    move v12, v11

    .line 14
    :goto_a4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaat;->c()I

    move-result v9

    add-int/lit8 v14, v9, 0x4

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaat;->c()I

    move-result v9

    if-nez v9, :cond_bf

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaat;->c()I

    move-result v11

    add-int/lit8 v11, v11, 0x4

    move/from16 p2, v2

    move v13, v5

    move v1, v9

    move/from16 v16, v11

    :goto_bc
    const/16 v17, 0x0

    goto :goto_ec

    :cond_bf
    if-ne v9, v10, :cond_e5

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaat;->f()Z

    move-result v9

    .line 18
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaat;->b()I

    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaat;->b()I

    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaat;->c()I

    move-result v11

    move/from16 p2, v2

    int-to-long v1, v11

    move v13, v5

    const/4 v11, 0x0

    :goto_d4
    int-to-long v4, v11

    cmp-long v16, v4, v1

    if-gez v16, :cond_df

    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaat;->c()I

    add-int/lit8 v11, v11, 0x1

    goto :goto_d4

    :cond_df
    move/from16 v17, v9

    const/4 v1, 0x1

    const/16 v16, 0x0

    goto :goto_ec

    :cond_e5
    move/from16 p2, v2

    move v13, v5

    move v1, v9

    const/16 v16, 0x0

    goto :goto_bc

    .line 22
    :goto_ec
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaat;->c()I

    move-result v2

    .line 23
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaat;->d()V

    .line 24
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaat;->c()I

    move-result v4

    add-int/2addr v4, v10

    .line 25
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaat;->c()I

    move-result v5

    add-int/2addr v5, v10

    .line 26
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaat;->f()Z

    move-result v18

    rsub-int/lit8 v9, v18, 0x2

    if-nez v18, :cond_108

    .line 27
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaat;->d()V

    :cond_108
    mul-int v5, v5, v9

    .line 28
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaat;->d()V

    mul-int/lit8 v4, v4, 0x10

    mul-int/lit8 v5, v5, 0x10

    .line 29
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaat;->f()Z

    move-result v11

    if-eqz v11, :cond_143

    .line 30
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaat;->c()I

    move-result v11

    .line 31
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaat;->c()I

    move-result v19

    .line 32
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaat;->c()I

    move-result v20

    .line 33
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaat;->c()I

    move-result v21

    if-nez v3, :cond_12a

    goto :goto_138

    :cond_12a
    const/16 v22, 0x2

    const/4 v15, 0x3

    if-ne v3, v15, :cond_131

    const/4 v15, 0x1

    goto :goto_132

    :cond_131
    const/4 v15, 0x2

    :goto_132
    if-ne v3, v10, :cond_135

    const/4 v10, 0x2

    :cond_135
    mul-int v9, v9, v10

    move v10, v15

    :goto_138
    add-int v11, v11, v19

    mul-int v11, v11, v10

    sub-int/2addr v4, v11

    add-int v20, v20, v21

    mul-int v20, v20, v9

    sub-int v5, v5, v20

    :cond_143
    move v9, v4

    move v10, v5

    .line 34
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaat;->f()Z

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v3, :cond_18e

    .line 35
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaat;->f()Z

    move-result v3

    if-eqz v3, :cond_18e

    const/16 v3, 0x8

    .line 36
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzaat;->a(I)I

    move-result v3

    const/16 v5, 0xff

    if-ne v3, v5, :cond_16e

    .line 37
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzaat;->a(I)I

    move-result v3

    .line 38
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzaat;->a(I)I

    move-result v0

    if-eqz v3, :cond_18e

    if-eqz v0, :cond_18e

    int-to-float v3, v3

    int-to-float v0, v0

    div-float/2addr v3, v0

    move v11, v3

    goto :goto_190

    :cond_16e
    const/16 v0, 0x11

    if-ge v3, v0, :cond_178

    sget-object v0, Lcom/google/android/gms/internal/ads/zzaar;->b:[F

    .line 39
    aget v0, v0, v3

    move v11, v0

    goto :goto_190

    :cond_178
    new-instance v0, Ljava/lang/StringBuilder;

    .line 40
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected aspect_ratio_idc value: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "NalUnitUtil"

    invoke-static {v3, v0}, Lcom/google/android/gms/internal/ads/zzee;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_18e
    const/high16 v11, 0x3f800000    # 1.0f

    .line 41
    :goto_190
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaaq;

    move-object v3, v0

    move/from16 v4, p2

    move v5, v13

    move v8, v2

    move/from16 v13, v18

    move v15, v1

    invoke-direct/range {v3 .. v17}, Lcom/google/android/gms/internal/ads/zzaaq;-><init>(IIIIIIIFZZIIIZ)V

    return-object v0
.end method

.method public static e([Z)V
    .registers 3

    const/4 v0, 0x0

    aput-boolean v0, p0, v0

    const/4 v1, 0x1

    aput-boolean v0, p0, v1

    const/4 v1, 0x2

    aput-boolean v0, p0, v1

    return-void
.end method
