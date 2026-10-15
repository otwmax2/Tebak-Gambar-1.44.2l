###### Class com.google.android.gms.internal.ads.zzyy (com.google.android.gms.internal.ads.zzyy)
.class public final Lcom/google/android/gms/internal/ads/zzyy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# static fields
.field private static final a:[I

.field public static final synthetic b:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/google/android/gms/internal/ads/zzyy;->a:[I

    return-void

    :array_a
    .array-data 4
        0x7d2
        0x7d0
        0x780
        0x641
        0x640
        0x3e9
        0x3e8
        0x3c0
        0x320
        0x320
        0x1e0
        0x190
        0x190
        0x800
    .end array-data
.end method

.method public static a(Lcom/google/android/gms/internal/ads/zzem;)Lcom/google/android/gms/internal/ads/zzyx;
    .registers 12

    const/16 v0, 0x10

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzem;->d(I)I

    move-result v1

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzem;->d(I)I

    move-result v0

    const/4 v2, 0x4

    const v3, 0xffff

    if-ne v0, v3, :cond_18

    const/16 v0, 0x18

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzem;->d(I)I

    move-result v0

    const/4 v3, 0x7

    goto :goto_19

    :cond_18
    const/4 v3, 0x4

    :goto_19
    add-int/2addr v0, v3

    const v3, 0xac41

    if-ne v1, v3, :cond_21

    add-int/lit8 v0, v0, 0x2

    :cond_21
    move v7, v0

    const/4 v0, 0x2

    .line 4
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzem;->d(I)I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x3

    if-ne v1, v4, :cond_3d

    const/4 v1, 0x0

    .line 5
    :goto_2c
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzem;->d(I)I

    move-result v5

    add-int/2addr v1, v5

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzem;->n()Z

    move-result v5

    if-nez v5, :cond_39

    add-int/2addr v1, v4

    goto :goto_3d

    :cond_39
    add-int/lit8 v1, v1, 0x1

    shl-int/2addr v1, v0

    goto :goto_2c

    :cond_3d
    :goto_3d
    const/16 v5, 0xa

    .line 7
    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/ads/zzem;->d(I)I

    move-result v5

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzem;->n()Z

    move-result v6

    if-eqz v6, :cond_52

    .line 9
    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/ads/zzem;->d(I)I

    move-result v6

    if-lez v6, :cond_52

    .line 10
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzem;->l(I)V

    .line 11
    :cond_52
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzem;->n()Z

    move-result v6

    const v8, 0xac44

    const v9, 0xbb80

    const/4 v10, 0x1

    if-eq v10, v6, :cond_63

    const v6, 0xac44

    goto :goto_66

    :cond_63
    const v6, 0xbb80

    .line 12
    :goto_66
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/zzem;->d(I)I

    move-result p0

    if-ne v6, v8, :cond_76

    const/16 v8, 0xd

    if-ne p0, v8, :cond_76

    sget-object p0, Lcom/google/android/gms/internal/ads/zzyy;->a:[I

    aget p0, p0, v8

    move v8, p0

    goto :goto_a6

    :cond_76
    if-ne v6, v9, :cond_a5

    const/16 v8, 0xe

    if-ge p0, v8, :cond_a5

    sget-object v3, Lcom/google/android/gms/internal/ads/zzyy;->a:[I

    .line 13
    aget v3, v3, p0

    rem-int/lit8 v5, v5, 0x5

    const/16 v8, 0x8

    if-eq v5, v10, :cond_9b

    const/16 v9, 0xb

    if-eq v5, v0, :cond_96

    if-eq v5, v4, :cond_9b

    if-eq v5, v2, :cond_8f

    goto :goto_a0

    :cond_8f
    if-eq p0, v4, :cond_a2

    if-eq p0, v8, :cond_a2

    if-ne p0, v9, :cond_a0

    goto :goto_a2

    :cond_96
    if-eq p0, v8, :cond_a2

    if-ne p0, v9, :cond_a0

    goto :goto_a2

    :cond_9b
    if-eq p0, v4, :cond_a2

    if-ne p0, v8, :cond_a0

    goto :goto_a2

    :cond_a0
    :goto_a0
    move v8, v3

    goto :goto_a6

    :cond_a2
    :goto_a2
    add-int/lit8 v3, v3, 0x1

    goto :goto_a0

    :cond_a5
    const/4 v8, 0x0

    .line 14
    :goto_a6
    new-instance p0, Lcom/google/android/gms/internal/ads/zzyx;

    const/4 v5, 0x2

    const/4 v9, 0x0

    move-object v3, p0

    move v4, v1

    invoke-direct/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/zzyx;-><init>(IIIIILcom/google/android/gms/internal/ads/zzyw;)V

    return-object p0
.end method

.method public static b(ILcom/google/android/gms/internal/ads/zzen;)V
    .registers 4

    const/4 v0, 0x7

    .line 1
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzen;->c(I)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object p1

    const/4 v0, 0x0

    const/16 v1, -0x54

    .line 2
    aput-byte v1, p1, v0

    const/4 v0, 0x1

    const/16 v1, 0x40

    .line 3
    aput-byte v1, p1, v0

    const/4 v0, 0x2

    const/4 v1, -0x1

    .line 4
    aput-byte v1, p1, v0

    const/4 v0, 0x3

    .line 5
    aput-byte v1, p1, v0

    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    const/4 v1, 0x4

    .line 6
    aput-byte v0, p1, v1

    shr-int/lit8 v0, p0, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    const/4 v1, 0x5

    .line 7
    aput-byte v0, p1, v1

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    const/4 v0, 0x6

    .line 8
    aput-byte p0, p1, v0

    return-void
.end method
