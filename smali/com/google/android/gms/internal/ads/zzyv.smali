###### Class com.google.android.gms.internal.ads.zzyv (com.google.android.gms.internal.ads.zzyv)
.class public final Lcom/google/android/gms/internal/ads/zzyv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# static fields
.field private static final a:[I

.field private static final b:[I

.field private static final c:[I

.field private static final d:[I

.field private static final e:[I

.field private static final f:[I

.field public static final synthetic g:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_32

    sput-object v0, Lcom/google/android/gms/internal/ads/zzyv;->a:[I

    const/4 v0, 0x3

    new-array v1, v0, [I

    fill-array-data v1, :array_3e

    sput-object v1, Lcom/google/android/gms/internal/ads/zzyv;->b:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_48

    sput-object v0, Lcom/google/android/gms/internal/ads/zzyv;->c:[I

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_52

    sput-object v0, Lcom/google/android/gms/internal/ads/zzyv;->d:[I

    const/16 v0, 0x13

    new-array v1, v0, [I

    fill-array-data v1, :array_66

    sput-object v1, Lcom/google/android/gms/internal/ads/zzyv;->e:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_90

    sput-object v0, Lcom/google/android/gms/internal/ads/zzyv;->f:[I

    return-void

    nop

    :array_32
    .array-data 4
        0x1
        0x2
        0x3
        0x6
    .end array-data

    :array_3e
    .array-data 4
        0xbb80
        0xac44
        0x7d00
    .end array-data

    :array_48
    .array-data 4
        0x5dc0
        0x5622
        0x3e80
    .end array-data

    :array_52
    .array-data 4
        0x2
        0x1
        0x2
        0x3
        0x3
        0x4
        0x4
        0x5
    .end array-data

    :array_66
    .array-data 4
        0x20
        0x28
        0x30
        0x38
        0x40
        0x50
        0x60
        0x70
        0x80
        0xa0
        0xc0
        0xe0
        0x100
        0x140
        0x180
        0x1c0
        0x200
        0x240
        0x280
    .end array-data

    :array_90
    .array-data 4
        0x45
        0x57
        0x68
        0x79
        0x8b
        0xae
        0xd0
        0xf3
        0x116
        0x15c
        0x1a1
        0x1e7
        0x22d
        0x2b8
        0x343
        0x3cf
        0x45a
        0x4e5
        0x571
    .end array-data
.end method

.method public static a(Ljava/nio/ByteBuffer;)I
    .registers 4

    .line 1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xf8

    const/4 v1, 0x3

    shr-int/2addr v0, v1

    const/16 v2, 0xa

    if-le v0, v2, :cond_38

    .line 2
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xc0

    shr-int/lit8 v0, v0, 0x6

    if-ne v0, v1, :cond_23

    goto :goto_31

    .line 3
    :cond_23
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    and-int/lit8 p0, p0, 0x30

    shr-int/lit8 v1, p0, 0x4

    .line 4
    :goto_31
    sget-object p0, Lcom/google/android/gms/internal/ads/zzyv;->a:[I

    aget p0, p0, v1

    mul-int/lit16 p0, p0, 0x100

    return p0

    :cond_38
    const/16 p0, 0x600

    return p0
.end method

.method public static b([B)I
    .registers 5

    .line 1
    array-length v0, p0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_6

    const/4 p0, -0x1

    return p0

    :cond_6
    const/4 v0, 0x5

    .line 2
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xf8

    const/4 v2, 0x3

    shr-int/2addr v0, v2

    const/16 v3, 0xa

    if-le v0, v3, :cond_21

    const/4 v0, 0x2

    .line 3
    aget-byte v0, p0, v0

    and-int/lit8 v0, v0, 0x7

    .line 4
    aget-byte p0, p0, v2

    shl-int/lit8 v0, v0, 0x8

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    add-int/lit8 p0, p0, 0x1

    add-int/2addr p0, p0

    return p0

    :cond_21
    const/4 v0, 0x4

    .line 5
    aget-byte p0, p0, v0

    and-int/lit16 v0, p0, 0xc0

    shr-int/2addr v0, v1

    and-int/lit8 p0, p0, 0x3f

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzyv;->f(II)I

    move-result p0

    return p0
.end method

.method public static c(Lcom/google/android/gms/internal/ads/zzen;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzx;)Lcom/google/android/gms/internal/ads/zzaf;
    .registers 9

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzem;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzem;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzem;->h(Lcom/google/android/gms/internal/ads/zzen;)V

    const/4 v1, 0x2

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzem;->d(I)I

    move-result v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzyv;->b:[I

    .line 4
    aget v1, v2, v1

    const/16 v2, 0x8

    .line 5
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzem;->l(I)V

    sget-object v2, Lcom/google/android/gms/internal/ads/zzyv;->d:[I

    const/4 v3, 0x3

    .line 6
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzem;->d(I)I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    .line 7
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzem;->d(I)I

    move-result v3

    if-eqz v3, :cond_28

    add-int/lit8 v2, v2, 0x1

    :cond_28
    const/4 v3, 0x5

    .line 8
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzem;->d(I)I

    move-result v3

    sget-object v4, Lcom/google/android/gms/internal/ads/zzyv;->e:[I

    .line 9
    aget v3, v4, v3

    mul-int/lit16 v3, v3, 0x3e8

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzem;->e()V

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzem;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    new-instance p0, Lcom/google/android/gms/internal/ads/zzad;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzad;-><init>()V

    .line 12
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzad;->h(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzad;

    const-string p1, "audio/ac3"

    .line 13
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzad;->s(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzad;

    .line 14
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/zzad;->e0(I)Lcom/google/android/gms/internal/ads/zzad;

    .line 15
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzad;->t(I)Lcom/google/android/gms/internal/ads/zzad;

    .line 16
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/ads/zzad;->b(Lcom/google/android/gms/internal/ads/zzx;)Lcom/google/android/gms/internal/ads/zzad;

    .line 17
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzad;->k(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzad;

    .line 18
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/ads/zzad;->d0(I)Lcom/google/android/gms/internal/ads/zzad;

    .line 19
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/ads/zzad;->o(I)Lcom/google/android/gms/internal/ads/zzad;

    .line 20
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzad;->y()Lcom/google/android/gms/internal/ads/zzaf;

    move-result-object p0

    return-object p0
.end method

.method public static d(Lcom/google/android/gms/internal/ads/zzen;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzx;)Lcom/google/android/gms/internal/ads/zzaf;
    .registers 11

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzem;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzem;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzem;->h(Lcom/google/android/gms/internal/ads/zzen;)V

    const/16 v1, 0xd

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzem;->d(I)I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    const/4 v2, 0x3

    .line 4
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzem;->l(I)V

    const/4 v3, 0x2

    .line 5
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzem;->d(I)I

    move-result v3

    sget-object v4, Lcom/google/android/gms/internal/ads/zzyv;->b:[I

    .line 6
    aget v3, v4, v3

    const/16 v4, 0xa

    .line 7
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzem;->l(I)V

    sget-object v4, Lcom/google/android/gms/internal/ads/zzyv;->d:[I

    .line 8
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzem;->d(I)I

    move-result v5

    aget v4, v4, v5

    const/4 v5, 0x1

    .line 9
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzem;->d(I)I

    move-result v6

    if-eqz v6, :cond_33

    add-int/lit8 v4, v4, 0x1

    .line 10
    :cond_33
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzem;->l(I)V

    const/4 v2, 0x4

    .line 11
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzem;->d(I)I

    move-result v2

    .line 12
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzem;->l(I)V

    if-lez v2, :cond_4f

    const/4 v2, 0x6

    .line 13
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzem;->m(I)V

    .line 14
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzem;->d(I)I

    move-result v2

    if-eqz v2, :cond_4c

    add-int/lit8 v4, v4, 0x2

    .line 15
    :cond_4c
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzem;->l(I)V

    :cond_4f
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzem;->a()I

    move-result v2

    const/4 v6, 0x7

    if-le v2, v6, :cond_62

    .line 16
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/zzem;->l(I)V

    .line 17
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzem;->d(I)I

    move-result v2

    if-eqz v2, :cond_62

    const-string v2, "audio/eac3-joc"

    goto :goto_64

    :cond_62
    const-string v2, "audio/eac3"

    .line 18
    :goto_64
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzem;->e()V

    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzem;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    new-instance p0, Lcom/google/android/gms/internal/ads/zzad;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzad;-><init>()V

    .line 20
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzad;->h(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzad;

    .line 21
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/zzad;->s(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzad;

    .line 22
    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/ads/zzad;->e0(I)Lcom/google/android/gms/internal/ads/zzad;

    .line 23
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/ads/zzad;->t(I)Lcom/google/android/gms/internal/ads/zzad;

    .line 24
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/ads/zzad;->b(Lcom/google/android/gms/internal/ads/zzx;)Lcom/google/android/gms/internal/ads/zzad;

    .line 25
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzad;->k(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzad;

    .line 26
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzad;->o(I)Lcom/google/android/gms/internal/ads/zzad;

    .line 27
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzad;->y()Lcom/google/android/gms/internal/ads/zzaf;

    move-result-object p0

    return-object p0
.end method

.method public static e(Lcom/google/android/gms/internal/ads/zzem;)Lcom/google/android/gms/internal/ads/zzyu;
    .registers 31

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzem;->c()I

    move-result v1

    const/16 v2, 0x28

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzem;->l(I)V

    const/4 v2, 0x5

    .line 2
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzem;->d(I)I

    move-result v3

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzem;->j(I)V

    const/16 v1, 0xa

    const/4 v4, -0x1

    const/16 v5, 0x8

    const/4 v6, 0x6

    const/4 v7, 0x3

    const/4 v8, 0x1

    const/4 v9, 0x2

    if-le v3, v1, :cond_228

    const/16 v3, 0x10

    .line 4
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzem;->l(I)V

    .line 5
    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzem;->d(I)I

    move-result v10

    if-eqz v10, :cond_32

    if-eq v10, v8, :cond_30

    if-eq v10, v9, :cond_2e

    goto :goto_33

    :cond_2e
    const/4 v4, 0x2

    goto :goto_33

    :cond_30
    const/4 v4, 0x1

    goto :goto_33

    :cond_32
    const/4 v4, 0x0

    .line 6
    :goto_33
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzem;->l(I)V

    const/16 v10, 0xb

    .line 7
    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/ads/zzem;->d(I)I

    move-result v10

    add-int/2addr v10, v8

    .line 8
    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzem;->d(I)I

    move-result v12

    if-ne v12, v7, :cond_4e

    sget-object v13, Lcom/google/android/gms/internal/ads/zzyv;->c:[I

    .line 9
    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzem;->d(I)I

    move-result v14

    aget v13, v13, v14

    const/4 v14, 0x3

    const/4 v15, 0x6

    goto :goto_60

    .line 10
    :cond_4e
    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzem;->d(I)I

    move-result v13

    sget-object v14, Lcom/google/android/gms/internal/ads/zzyv;->a:[I

    .line 11
    aget v14, v14, v13

    sget-object v15, Lcom/google/android/gms/internal/ads/zzyv;->b:[I

    .line 12
    aget v15, v15, v12

    move/from16 v29, v14

    move v14, v13

    move v13, v15

    move/from16 v15, v29

    :goto_60
    add-int/2addr v10, v10

    mul-int v16, v10, v13

    mul-int/lit8 v17, v15, 0x20

    .line 13
    div-int v16, v16, v17

    .line 14
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzem;->d(I)I

    move-result v17

    .line 15
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzem;->n()Z

    move-result v18

    sget-object v19, Lcom/google/android/gms/internal/ads/zzyv;->d:[I

    .line 16
    aget v19, v19, v17

    add-int v19, v19, v18

    .line 17
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzem;->l(I)V

    .line 18
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzem;->n()Z

    move-result v1

    if-eqz v1, :cond_81

    .line 19
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzem;->l(I)V

    :cond_81
    if-nez v17, :cond_93

    .line 20
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzem;->l(I)V

    .line 21
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzem;->n()Z

    move-result v1

    if-eqz v1, :cond_8f

    .line 22
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzem;->l(I)V

    :cond_8f
    const/4 v1, 0x0

    const/16 v17, 0x0

    goto :goto_95

    :cond_93
    move/from16 v1, v17

    :goto_95
    if-ne v4, v8, :cond_a2

    .line 23
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzem;->n()Z

    move-result v20

    if-eqz v20, :cond_a0

    .line 24
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzem;->l(I)V

    :cond_a0
    const/4 v3, 0x1

    goto :goto_a3

    :cond_a2
    move v3, v4

    .line 25
    :goto_a3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzem;->n()Z

    move-result v20

    const/4 v11, 0x4

    if-eqz v20, :cond_1be

    if-le v1, v9, :cond_af

    .line 26
    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzem;->l(I)V

    :cond_af
    and-int/lit8 v20, v1, 0x1

    if-eqz v20, :cond_b8

    if-le v1, v9, :cond_b8

    .line 27
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/zzem;->l(I)V

    :cond_b8
    and-int/lit8 v20, v1, 0x4

    if-eqz v20, :cond_bf

    .line 28
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/zzem;->l(I)V

    :cond_bf
    if-eqz v18, :cond_ca

    .line 29
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzem;->n()Z

    move-result v18

    if-eqz v18, :cond_ca

    .line 30
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzem;->l(I)V

    :cond_ca
    if-nez v3, :cond_1be

    .line 31
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzem;->n()Z

    move-result v3

    if-eqz v3, :cond_d5

    .line 32
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/zzem;->l(I)V

    :cond_d5
    if-nez v1, :cond_e0

    .line 33
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzem;->n()Z

    move-result v3

    if-eqz v3, :cond_e0

    .line 34
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/zzem;->l(I)V

    .line 35
    :cond_e0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzem;->n()Z

    move-result v3

    if-eqz v3, :cond_e9

    .line 36
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/zzem;->l(I)V

    .line 37
    :cond_e9
    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzem;->d(I)I

    move-result v3

    if-ne v3, v8, :cond_f4

    .line 38
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzem;->l(I)V

    goto/16 :goto_188

    :cond_f4
    if-ne v3, v9, :cond_fd

    const/16 v3, 0xc

    .line 39
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzem;->l(I)V

    goto/16 :goto_188

    :cond_fd
    if-ne v3, v7, :cond_188

    .line 40
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzem;->d(I)I

    move-result v3

    .line 41
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzem;->n()Z

    move-result v18

    if-eqz v18, :cond_163

    .line 42
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzem;->l(I)V

    .line 43
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzem;->n()Z

    move-result v18

    if-eqz v18, :cond_115

    .line 44
    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/ads/zzem;->l(I)V

    .line 45
    :cond_115
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzem;->n()Z

    move-result v18

    if-eqz v18, :cond_11e

    .line 46
    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/ads/zzem;->l(I)V

    .line 47
    :cond_11e
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzem;->n()Z

    move-result v18

    if-eqz v18, :cond_127

    .line 48
    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/ads/zzem;->l(I)V

    .line 49
    :cond_127
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzem;->n()Z

    move-result v18

    if-eqz v18, :cond_130

    .line 50
    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/ads/zzem;->l(I)V

    .line 51
    :cond_130
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzem;->n()Z

    move-result v18

    if-eqz v18, :cond_139

    .line 52
    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/ads/zzem;->l(I)V

    .line 53
    :cond_139
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzem;->n()Z

    move-result v18

    if-eqz v18, :cond_142

    .line 54
    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/ads/zzem;->l(I)V

    .line 55
    :cond_142
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzem;->n()Z

    move-result v18

    if-eqz v18, :cond_14b

    .line 56
    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/ads/zzem;->l(I)V

    .line 57
    :cond_14b
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzem;->n()Z

    move-result v18

    if-eqz v18, :cond_163

    .line 58
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzem;->n()Z

    move-result v18

    if-eqz v18, :cond_15a

    .line 59
    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/ads/zzem;->l(I)V

    .line 60
    :cond_15a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzem;->n()Z

    move-result v18

    if-eqz v18, :cond_163

    .line 61
    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/ads/zzem;->l(I)V

    .line 62
    :cond_163
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzem;->n()Z

    move-result v18

    if-eqz v18, :cond_17f

    .line 63
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzem;->l(I)V

    .line 64
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzem;->n()Z

    move-result v18

    if-eqz v18, :cond_17f

    const/4 v8, 0x7

    .line 65
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzem;->l(I)V

    .line 66
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzem;->n()Z

    move-result v8

    if-eqz v8, :cond_17f

    .line 67
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzem;->l(I)V

    :cond_17f
    add-int/2addr v3, v9

    mul-int/lit8 v3, v3, 0x8

    .line 68
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzem;->l(I)V

    .line 69
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzem;->e()V

    :cond_188
    :goto_188
    if-ge v1, v9, :cond_1a0

    .line 70
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzem;->n()Z

    move-result v3

    const/16 v8, 0xe

    if-eqz v3, :cond_195

    .line 71
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzem;->l(I)V

    :cond_195
    if-nez v17, :cond_1a0

    .line 72
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzem;->n()Z

    move-result v3

    if-eqz v3, :cond_1a0

    .line 73
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzem;->l(I)V

    .line 74
    :cond_1a0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzem;->n()Z

    move-result v3

    if-eqz v3, :cond_1bd

    if-nez v14, :cond_1ae

    .line 75
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzem;->l(I)V

    const/4 v3, 0x0

    const/4 v14, 0x0

    goto :goto_1be

    :cond_1ae
    const/4 v3, 0x0

    :goto_1af
    if-ge v3, v15, :cond_1bd

    .line 76
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzem;->n()Z

    move-result v8

    if-eqz v8, :cond_1ba

    .line 77
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzem;->l(I)V

    :cond_1ba
    add-int/lit8 v3, v3, 0x1

    goto :goto_1af

    :cond_1bd
    const/4 v3, 0x0

    .line 78
    :cond_1be
    :goto_1be
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzem;->n()Z

    move-result v8

    if-eqz v8, :cond_1eb

    .line 79
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzem;->l(I)V

    if-ne v1, v9, :cond_1cd

    .line 80
    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/ads/zzem;->l(I)V

    const/4 v1, 0x2

    :cond_1cd
    if-lt v1, v6, :cond_1d2

    .line 81
    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzem;->l(I)V

    .line 82
    :cond_1d2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzem;->n()Z

    move-result v2

    if-eqz v2, :cond_1db

    .line 83
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzem;->l(I)V

    :cond_1db
    if-nez v1, :cond_1e6

    .line 84
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzem;->n()Z

    move-result v1

    if-eqz v1, :cond_1e6

    .line 85
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzem;->l(I)V

    :cond_1e6
    if-ge v12, v7, :cond_1eb

    .line 86
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzem;->k()V

    :cond_1eb
    if-nez v3, :cond_1f2

    if-eq v14, v7, :cond_1f2

    .line 87
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzem;->k()V

    :cond_1f2
    if-ne v3, v9, :cond_1ff

    if-eq v14, v7, :cond_1fc

    .line 88
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzem;->n()Z

    move-result v1

    if-eqz v1, :cond_1ff

    .line 89
    :cond_1fc
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/zzem;->l(I)V

    .line 90
    :cond_1ff
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzem;->n()Z

    move-result v1

    if-eqz v1, :cond_215

    .line 91
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/zzem;->d(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_215

    .line 92
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzem;->d(I)I

    move-result v0

    if-ne v0, v2, :cond_215

    const-string v0, "audio/eac3-joc"

    goto :goto_217

    :cond_215
    const-string v0, "audio/eac3"

    :goto_217
    mul-int/lit16 v15, v15, 0x100

    move-object/from16 v21, v0

    move/from16 v22, v4

    move/from16 v25, v10

    move/from16 v24, v13

    move/from16 v26, v15

    move/from16 v27, v16

    move/from16 v23, v19

    goto :goto_287

    :cond_228
    const/16 v1, 0x20

    .line 93
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzem;->l(I)V

    .line 94
    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzem;->d(I)I

    move-result v1

    if-ne v1, v7, :cond_235

    const/4 v2, 0x0

    goto :goto_237

    :cond_235
    const-string v2, "audio/ac3"

    .line 95
    :goto_237
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/zzem;->d(I)I

    move-result v3

    div-int/lit8 v6, v3, 0x2

    sget-object v8, Lcom/google/android/gms/internal/ads/zzyv;->e:[I

    .line 96
    aget v6, v8, v6

    mul-int/lit16 v6, v6, 0x3e8

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/ads/zzyv;->f(II)I

    move-result v10

    .line 97
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzem;->l(I)V

    .line 98
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzem;->d(I)I

    move-result v3

    and-int/lit8 v5, v3, 0x1

    if-eqz v5, :cond_258

    const/4 v5, 0x1

    if-eq v3, v5, :cond_258

    .line 99
    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzem;->l(I)V

    :cond_258
    and-int/lit8 v5, v3, 0x4

    if-eqz v5, :cond_25f

    .line 100
    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzem;->l(I)V

    :cond_25f
    if-ne v3, v9, :cond_264

    .line 101
    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzem;->l(I)V

    :cond_264
    if-ge v1, v7, :cond_26c

    sget-object v5, Lcom/google/android/gms/internal/ads/zzyv;->b:[I

    .line 102
    aget v1, v5, v1

    move v13, v1

    goto :goto_26d

    :cond_26c
    const/4 v13, -0x1

    .line 103
    :goto_26d
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzem;->n()Z

    move-result v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzyv;->d:[I

    .line 104
    aget v1, v1, v3

    add-int v19, v1, v0

    const/16 v15, 0x600

    move-object/from16 v21, v2

    move/from16 v27, v6

    move/from16 v25, v10

    move/from16 v24, v13

    move/from16 v23, v19

    const/16 v22, -0x1

    const/16 v26, 0x600

    .line 105
    :goto_287
    new-instance v0, Lcom/google/android/gms/internal/ads/zzyu;

    const/16 v28, 0x0

    move-object/from16 v20, v0

    invoke-direct/range {v20 .. v28}, Lcom/google/android/gms/internal/ads/zzyu;-><init>(Ljava/lang/String;IIIIIILcom/google/android/gms/internal/ads/zzyt;)V

    return-object v0
.end method

.method private static f(II)I
    .registers 4

    if-ltz p0, :cond_2e

    const/4 v0, 0x3

    if-ge p0, v0, :cond_2e

    if-ltz p1, :cond_2e

    shr-int/lit8 v0, p1, 0x1

    const/16 v1, 0x13

    if-lt v0, v1, :cond_e

    goto :goto_2e

    :cond_e
    sget-object v1, Lcom/google/android/gms/internal/ads/zzyv;->b:[I

    aget p0, v1, p0

    const v1, 0xac44

    if-ne p0, v1, :cond_20

    sget-object p0, Lcom/google/android/gms/internal/ads/zzyv;->f:[I

    aget p0, p0, v0

    and-int/lit8 p1, p1, 0x1

    add-int/2addr p0, p1

    add-int/2addr p0, p0

    return p0

    :cond_20
    sget-object p1, Lcom/google/android/gms/internal/ads/zzyv;->e:[I

    aget p1, p1, v0

    const/16 v0, 0x7d00

    if-ne p0, v0, :cond_2b

    mul-int/lit8 p1, p1, 0x6

    return p1

    :cond_2b
    mul-int/lit8 p1, p1, 0x4

    return p1

    :cond_2e
    :goto_2e
    const/4 p0, -0x1

    return p0
.end method
