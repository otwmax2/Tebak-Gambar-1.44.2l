###### Class com.google.android.gms.internal.ads.zzfsp (com.google.android.gms.internal.ads.zzfsp)
.class public final Lcom/google/android/gms/internal/ads/zzfsp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# direct methods
.method public static a(IILjava/math/RoundingMode;)I
    .registers 8

    .line 1
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    div-int/lit8 p1, p0, 0x8

    mul-int/lit8 v0, p1, 0x8

    sub-int v0, p0, v0

    if-nez v0, :cond_c

    return p1

    :cond_c
    const/16 v1, 0x8

    xor-int/2addr p0, v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzfso;->a:[I

    invoke-virtual {p2}, Ljava/math/RoundingMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    shr-int/lit8 p0, p0, 0x1f

    const/4 v3, 0x1

    or-int/2addr p0, v3

    const/4 v4, 0x0

    packed-switch v2, :pswitch_data_5c

    .line 3
    new-instance p0, Ljava/lang/AssertionError;

    .line 4
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 5
    :pswitch_25
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 6
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    sub-int/2addr v1, v0

    sub-int/2addr v0, v1

    if-nez v0, :cond_42

    sget-object v0, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    if-eq p2, v0, :cond_4c

    sget-object v0, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    if-ne p2, v0, :cond_3b

    const/4 p2, 0x1

    goto :goto_3c

    :cond_3b
    const/4 p2, 0x0

    :goto_3c
    and-int/lit8 v0, p1, 0x1

    and-int/2addr p2, v0

    if-eqz p2, :cond_4b

    goto :goto_4c

    :cond_42
    if-lez v0, :cond_4b

    goto :goto_4c

    :pswitch_45
    if-lez p0, :cond_4b

    goto :goto_4c

    :pswitch_48
    if-gez p0, :cond_4b

    goto :goto_4c

    :cond_4b
    const/4 v3, 0x0

    :cond_4c
    :goto_4c
    if-eqz v3, :cond_52

    :pswitch_4e
    add-int/2addr p1, p0

    return p1

    :pswitch_50
    if-nez v0, :cond_53

    :cond_52
    :pswitch_52
    return p1

    :cond_53
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string p1, "mode was UNNECESSARY, but rounding was necessary"

    .line 7
    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_5c
    .packed-switch 0x1
        :pswitch_50
        :pswitch_52
        :pswitch_48
        :pswitch_4e
        :pswitch_45
        :pswitch_25
        :pswitch_25
        :pswitch_25
    .end packed-switch
.end method
