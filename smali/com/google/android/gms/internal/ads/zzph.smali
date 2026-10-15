###### Class com.google.android.gms.internal.ads.zzph (com.google.android.gms.internal.ads.zzph)
.class public final Lcom/google/android/gms/internal/ads/zzph;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzos;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/ads/zzpg;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static a(III)I
    .registers 5

    int-to-long v0, p0

    int-to-long p0, p1

    mul-long v0, v0, p0

    int-to-long p0, p2

    mul-long v0, v0, p0

    const-wide/32 p0, 0xf4240

    .line 1
    div-long/2addr v0, p0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfsr;->a(J)I

    move-result p0

    return p0
.end method

.method protected static b(I)I
    .registers 1

    packed-switch p0, :pswitch_data_3a

    .line 1
    :pswitch_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :pswitch_9
    const p0, 0xf906

    return p0

    :pswitch_d
    const p0, 0x52080

    return p0

    :pswitch_11
    const p0, 0x3e800

    return p0

    :pswitch_15
    const/16 p0, 0x1f40

    return p0

    :pswitch_18
    const p0, 0x2ebae4

    return p0

    :pswitch_1c
    const/16 p0, 0x1b58

    return p0

    :pswitch_1f
    const/16 p0, 0x3e80

    return p0

    :pswitch_22
    const p0, 0x186a0

    return p0

    :pswitch_26
    const p0, 0x9c40

    return p0

    :pswitch_2a
    const p0, 0x225510

    return p0

    :pswitch_2e
    const p0, 0x2ee00

    return p0

    :pswitch_32
    const p0, 0xbb800

    return p0

    :pswitch_36
    const p0, 0x13880

    return p0

    :pswitch_data_3a
    .packed-switch 0x5
        :pswitch_36
        :pswitch_32
        :pswitch_2e
        :pswitch_2a
        :pswitch_26
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
        :pswitch_3
        :pswitch_18
        :pswitch_15
        :pswitch_11
        :pswitch_d
        :pswitch_32
        :pswitch_3
        :pswitch_9
    .end packed-switch
.end method
