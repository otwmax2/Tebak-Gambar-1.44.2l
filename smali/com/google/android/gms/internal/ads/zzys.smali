###### Class com.google.android.gms.internal.ads.zzys (com.google.android.gms.internal.ads.zzys)
.class public final Lcom/google/android/gms/internal/ads/zzys;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# static fields
.field private static final a:[I

.field private static final b:[I

.field public static final synthetic c:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_14

    sput-object v0, Lcom/google/android/gms/internal/ads/zzys;->a:[I

    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_32

    sput-object v0, Lcom/google/android/gms/internal/ads/zzys;->b:[I

    return-void

    nop

    :array_14
    .array-data 4
        0x17700
        0x15888
        0xfa00
        0xbb80
        0xac44
        0x7d00
        0x5dc0
        0x5622
        0x3e80
        0x2ee0
        0x2b11
        0x1f40
        0x1cb6
    .end array-data

    :array_32
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x8
        -0x1
        -0x1
        -0x1
        0x7
        0x8
        -0x1
        0x8
        -0x1
    .end array-data
.end method

.method public static a([B)Lcom/google/android/gms/internal/ads/zzyr;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzbu;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzem;

    array-length v1, p0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzem;-><init>([BI)V

    const/4 p0, 0x0

    .line 2
    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzys;->b(Lcom/google/android/gms/internal/ads/zzem;Z)Lcom/google/android/gms/internal/ads/zzyr;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lcom/google/android/gms/internal/ads/zzem;Z)Lcom/google/android/gms/internal/ads/zzyr;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzbu;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzys;->c(Lcom/google/android/gms/internal/ads/zzem;)I

    move-result v0

    .line 2
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzys;->d(Lcom/google/android/gms/internal/ads/zzem;)I

    move-result v1

    const/4 v2, 0x4

    .line 3
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/zzem;->d(I)I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    .line 4
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mp4a.40."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x16

    const/4 v6, 0x5

    if-eq v0, v6, :cond_27

    const/16 v6, 0x1d

    if-ne v0, v6, :cond_35

    .line 5
    :cond_27
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzys;->d(Lcom/google/android/gms/internal/ads/zzem;)I

    move-result v1

    .line 6
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzys;->c(Lcom/google/android/gms/internal/ads/zzem;)I

    move-result v0

    if-ne v0, v5, :cond_35

    .line 7
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/zzem;->d(I)I

    move-result v3

    :cond_35
    if-eqz p1, :cond_d5

    const/16 p1, 0x11

    const/4 v6, 0x6

    const/4 v7, 0x1

    const/4 v8, 0x2

    const/4 v9, 0x3

    if-eq v0, v7, :cond_65

    if-eq v0, v8, :cond_65

    if-eq v0, v9, :cond_65

    if-eq v0, v2, :cond_65

    if-eq v0, v6, :cond_65

    const/4 v2, 0x7

    if-eq v0, v2, :cond_65

    if-eq v0, p1, :cond_65

    packed-switch v0, :pswitch_data_e8

    .line 8
    new-instance p0, Ljava/lang/StringBuilder;

    .line 9
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Unsupported audio object type: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbu;->c(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbu;

    move-result-object p0

    throw p0

    .line 10
    :cond_65
    :pswitch_65
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzem;->n()Z

    move-result v2

    if-eqz v2, :cond_72

    const-string v2, "AacUtil"

    const-string v10, "Unexpected frameLengthFlag = 1"

    .line 11
    invoke-static {v2, v10}, Lcom/google/android/gms/internal/ads/zzee;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    :cond_72
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzem;->n()Z

    move-result v2

    if-eqz v2, :cond_7d

    const/16 v2, 0xe

    .line 13
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/zzem;->l(I)V

    .line 14
    :cond_7d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzem;->n()Z

    move-result v2

    if-eqz v3, :cond_cf

    const/16 v10, 0x14

    if-eq v0, v6, :cond_8b

    if-ne v0, v10, :cond_8e

    const/16 v0, 0x14

    .line 15
    :cond_8b
    invoke-virtual {p0, v9}, Lcom/google/android/gms/internal/ads/zzem;->l(I)V

    :cond_8e
    if-eqz v2, :cond_ab

    if-ne v0, v5, :cond_98

    const/16 v2, 0x10

    .line 16
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/zzem;->l(I)V

    goto :goto_99

    :cond_98
    move v5, v0

    :goto_99
    if-eq v5, p1, :cond_a5

    const/16 p1, 0x13

    if-eq v5, p1, :cond_a5

    if-eq v5, v10, :cond_a5

    const/16 p1, 0x17

    if-ne v5, p1, :cond_a8

    .line 17
    :cond_a5
    invoke-virtual {p0, v9}, Lcom/google/android/gms/internal/ads/zzem;->l(I)V

    .line 18
    :cond_a8
    invoke-virtual {p0, v7}, Lcom/google/android/gms/internal/ads/zzem;->l(I)V

    :cond_ab
    packed-switch v0, :pswitch_data_f6

    :pswitch_ae
    goto :goto_d5

    .line 19
    :pswitch_af
    invoke-virtual {p0, v8}, Lcom/google/android/gms/internal/ads/zzem;->d(I)I

    move-result p0

    if-eq p0, v8, :cond_b8

    if-eq p0, v9, :cond_b9

    goto :goto_d5

    :cond_b8
    move v9, p0

    :cond_b9
    new-instance p0, Ljava/lang/StringBuilder;

    .line 20
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Unsupported epConfig: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbu;->c(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbu;

    move-result-object p0

    throw p0

    .line 21
    :cond_cf
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 22
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    .line 23
    :cond_d5
    :goto_d5
    sget-object p0, Lcom/google/android/gms/internal/ads/zzys;->b:[I

    .line 24
    aget p0, p0, v3

    const/4 p1, -0x1

    const/4 v0, 0x0

    if-eq p0, p1, :cond_e3

    .line 25
    new-instance p1, Lcom/google/android/gms/internal/ads/zzyr;

    invoke-direct {p1, v1, p0, v4, v0}, Lcom/google/android/gms/internal/ads/zzyr;-><init>(IILjava/lang/String;Lcom/google/android/gms/internal/ads/zzyq;)V

    return-object p1

    :cond_e3
    invoke-static {v0, v0}, Lcom/google/android/gms/internal/ads/zzbu;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbu;

    move-result-object p0

    throw p0

    :pswitch_data_e8
    .packed-switch 0x13
        :pswitch_65
        :pswitch_65
        :pswitch_65
        :pswitch_65
        :pswitch_65
    .end packed-switch

    :pswitch_data_f6
    .packed-switch 0x11
        :pswitch_af
        :pswitch_ae
        :pswitch_af
        :pswitch_af
        :pswitch_af
        :pswitch_af
        :pswitch_af
    .end packed-switch
.end method

.method private static c(Lcom/google/android/gms/internal/ads/zzem;)I
    .registers 3

    const/4 v0, 0x5

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzem;->d(I)I

    move-result v0

    const/16 v1, 0x1f

    if-ne v0, v1, :cond_11

    const/4 v0, 0x6

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzem;->d(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x20

    return p0

    :cond_11
    return v0
.end method

.method private static d(Lcom/google/android/gms/internal/ads/zzem;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzbu;
        }
    .end annotation

    const/4 v0, 0x4

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzem;->d(I)I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0xf

    if-ne v0, v2, :cond_1e

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzem;->a()I

    move-result v0

    const/16 v2, 0x18

    if-lt v0, v2, :cond_17

    .line 2
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/zzem;->d(I)I

    move-result p0

    goto :goto_26

    :cond_17
    const-string p0, "AAC header insufficient data"

    .line 3
    invoke-static {p0, v1}, Lcom/google/android/gms/internal/ads/zzbu;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbu;

    move-result-object p0

    throw p0

    :cond_1e
    const/16 p0, 0xd

    if-ge v0, p0, :cond_27

    .line 4
    sget-object p0, Lcom/google/android/gms/internal/ads/zzys;->a:[I

    .line 5
    aget p0, p0, v0

    :goto_26
    return p0

    :cond_27
    const-string p0, "AAC header wrong Sampling Frequency Index"

    .line 6
    invoke-static {p0, v1}, Lcom/google/android/gms/internal/ads/zzbu;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbu;

    move-result-object p0

    throw p0
.end method
