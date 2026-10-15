###### Class com.google.android.gms.internal.ads.zzzr (com.google.android.gms.internal.ads.zzzr)
.class public final Lcom/google/android/gms/internal/ads/zzzr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# static fields
.field private static final a:[I

.field private static final b:[I

.field private static final c:[I

.field public static final synthetic d:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/16 v0, 0x10

    new-array v1, v0, [I

    fill-array-data v1, :array_1a

    sput-object v1, Lcom/google/android/gms/internal/ads/zzzr;->a:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_3e

    sput-object v0, Lcom/google/android/gms/internal/ads/zzzr;->b:[I

    const/16 v0, 0x1d

    new-array v0, v0, [I

    fill-array-data v0, :array_62

    sput-object v0, Lcom/google/android/gms/internal/ads/zzzr;->c:[I

    return-void

    :array_1a
    .array-data 4
        0x1
        0x2
        0x2
        0x2
        0x2
        0x3
        0x3
        0x4
        0x4
        0x5
        0x6
        0x6
        0x6
        0x7
        0x8
        0x8
    .end array-data

    :array_3e
    .array-data 4
        -0x1
        0x1f40
        0x3e80
        0x7d00
        -0x1
        -0x1
        0x2b11
        0x5622
        0xac44
        -0x1
        -0x1
        0x2ee0
        0x5dc0
        0xbb80
        -0x1
        -0x1
    .end array-data

    :array_62
    .array-data 4
        0x40
        0x70
        0x80
        0xc0
        0xe0
        0x100
        0x180
        0x1c0
        0x200
        0x280
        0x300
        0x380
        0x400
        0x480
        0x500
        0x600
        0x780
        0x800
        0x900
        0xa00
        0xa80
        0xb00
        0xb07
        0xb80
        0xc00
        0xf00
        0x1000
        0x1800
        0x1e00
    .end array-data
.end method

.method public static a([BLjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzx;)Lcom/google/android/gms/internal/ads/zzaf;
    .registers 10

    const/4 p3, 0x0

    .line 1
    aget-byte v0, p0, p3

    const/4 v1, -0x1

    const/4 v2, 0x2

    const/16 v3, 0x7f

    if-ne v0, v3, :cond_10

    new-instance v0, Lcom/google/android/gms/internal/ads/zzem;

    .line 2
    array-length v3, p0

    invoke-direct {v0, p0, v3}, Lcom/google/android/gms/internal/ads/zzem;-><init>([BI)V

    goto :goto_58

    .line 3
    :cond_10
    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    .line 4
    aget-byte v0, p0, p3

    const/4 v3, -0x2

    if-eq v0, v3, :cond_1c

    if-ne v0, v1, :cond_2e

    :cond_1c
    const/4 v0, 0x0

    .line 5
    :goto_1d
    array-length v3, p0

    add-int/2addr v3, v1

    if-ge v0, v3, :cond_2e

    .line 6
    aget-byte v3, p0, v0

    add-int/lit8 v4, v0, 0x1

    .line 7
    aget-byte v5, p0, v4

    aput-byte v5, p0, v0

    .line 8
    aput-byte v3, p0, v4

    add-int/lit8 v0, v0, 0x2

    goto :goto_1d

    :cond_2e
    new-instance v0, Lcom/google/android/gms/internal/ads/zzem;

    .line 9
    array-length v3, p0

    invoke-direct {v0, p0, v3}, Lcom/google/android/gms/internal/ads/zzem;-><init>([BI)V

    .line 10
    aget-byte v4, p0, p3

    const/16 v5, 0x1f

    if-ne v4, v5, :cond_54

    new-instance v4, Lcom/google/android/gms/internal/ads/zzem;

    invoke-direct {v4, p0, v3}, Lcom/google/android/gms/internal/ads/zzem;-><init>([BI)V

    :goto_3f
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzem;->a()I

    move-result v3

    const/16 v5, 0x10

    if-lt v3, v5, :cond_54

    .line 11
    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/zzem;->l(I)V

    const/16 v3, 0xe

    .line 12
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzem;->d(I)I

    move-result v5

    invoke-virtual {v0, v5, v3}, Lcom/google/android/gms/internal/ads/zzem;->f(II)V

    goto :goto_3f

    .line 13
    :cond_54
    array-length v3, p0

    invoke-virtual {v0, p0, v3}, Lcom/google/android/gms/internal/ads/zzem;->i([BI)V

    :goto_58
    const/16 p0, 0x3c

    .line 14
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzem;->l(I)V

    const/4 p0, 0x6

    .line 15
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzem;->d(I)I

    move-result p0

    sget-object v3, Lcom/google/android/gms/internal/ads/zzzr;->a:[I

    .line 16
    aget p0, v3, p0

    const/4 v3, 0x4

    .line 17
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzem;->d(I)I

    move-result v3

    sget-object v4, Lcom/google/android/gms/internal/ads/zzzr;->b:[I

    .line 18
    aget v3, v4, v3

    const/4 v4, 0x5

    .line 19
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzem;->d(I)I

    move-result v4

    const/16 v5, 0x1d

    if-lt v4, v5, :cond_79

    goto :goto_80

    .line 20
    :cond_79
    sget-object v1, Lcom/google/android/gms/internal/ads/zzzr;->c:[I

    .line 21
    aget v1, v1, v4

    mul-int/lit16 v1, v1, 0x3e8

    div-int/2addr v1, v2

    :goto_80
    const/16 v4, 0xa

    .line 22
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzem;->l(I)V

    .line 23
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzem;->d(I)I

    move-result v0

    if-lez v0, :cond_8c

    const/4 p3, 0x1

    :cond_8c
    add-int/2addr p0, p3

    new-instance p3, Lcom/google/android/gms/internal/ads/zzad;

    invoke-direct {p3}, Lcom/google/android/gms/internal/ads/zzad;-><init>()V

    .line 24
    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/ads/zzad;->h(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzad;

    const-string p1, "audio/vnd.dts"

    .line 25
    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/ads/zzad;->s(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzad;

    .line 26
    invoke-virtual {p3, v1}, Lcom/google/android/gms/internal/ads/zzad;->d0(I)Lcom/google/android/gms/internal/ads/zzad;

    .line 27
    invoke-virtual {p3, p0}, Lcom/google/android/gms/internal/ads/zzad;->e0(I)Lcom/google/android/gms/internal/ads/zzad;

    .line 28
    invoke-virtual {p3, v3}, Lcom/google/android/gms/internal/ads/zzad;->t(I)Lcom/google/android/gms/internal/ads/zzad;

    const/4 p0, 0x0

    .line 29
    invoke-virtual {p3, p0}, Lcom/google/android/gms/internal/ads/zzad;->b(Lcom/google/android/gms/internal/ads/zzx;)Lcom/google/android/gms/internal/ads/zzad;

    .line 30
    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/ads/zzad;->k(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzad;

    .line 31
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzad;->y()Lcom/google/android/gms/internal/ads/zzaf;

    move-result-object p0

    return-object p0
.end method
