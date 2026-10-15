###### Class com.google.android.play.core.assetpacks.d0 (com.google.android.play.core.assetpacks.d0)
.class public final Lcom/google/android/play/core/assetpacks/d0;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.2"


# direct methods
.method public static a(I)Z
    .registers 3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_f

    const/4 v1, 0x7

    if-eq p0, v1, :cond_f

    const/4 v1, 0x2

    if-ne p0, v1, :cond_a

    goto :goto_f

    :cond_a
    const/4 v1, 0x3

    if-eq p0, v1, :cond_f

    const/4 p0, 0x0

    return p0

    :cond_f
    :goto_f
    return v0
.end method

.method public static b(I)Z
    .registers 2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_c

    const/4 v0, 0x7

    if-eq p0, v0, :cond_c

    const/4 v0, 0x3

    if-ne p0, v0, :cond_a

    goto :goto_c

    :cond_a
    const/4 p0, 0x0

    return p0

    :cond_c
    :goto_c
    const/4 p0, 0x1

    return p0
.end method

.method static c(II)Z
    .registers 6

    const/4 v0, 0x5

    const/4 v1, 0x1

    if-ne p0, v0, :cond_9

    if-ne p1, v0, :cond_8

    const/4 p0, 0x5

    goto :goto_9

    :cond_8
    return v1

    :cond_9
    :goto_9
    const/4 v2, 0x6

    if-ne p0, v2, :cond_13

    if-eq p1, v2, :cond_12

    if-ne p1, v0, :cond_11

    goto :goto_12

    :cond_11
    return v1

    :cond_12
    :goto_12
    const/4 p0, 0x6

    :cond_13
    const/4 v0, 0x4

    if-ne p0, v0, :cond_1a

    if-ne p1, v0, :cond_19

    goto :goto_1a

    :cond_19
    return v1

    :cond_1a
    :goto_1a
    const/4 v0, 0x3

    const/16 v2, 0x8

    const/4 v3, 0x2

    if-ne p0, v0, :cond_2b

    if-eq p1, v3, :cond_2a

    const/4 v0, 0x7

    if-eq p1, v0, :cond_2a

    if-eq p1, v1, :cond_2a

    if-eq p1, v2, :cond_2a

    goto :goto_2b

    :cond_2a
    return v1

    :cond_2b
    :goto_2b
    if-ne p0, v3, :cond_32

    if-eq p1, v1, :cond_31

    if-ne p1, v2, :cond_32

    :cond_31
    return v1

    :cond_32
    const/4 p0, 0x0

    return p0
.end method

.method public static d(I)Z
    .registers 2

    const/4 v0, 0x5

    if-eq p0, v0, :cond_c

    const/4 v0, 0x6

    if-eq p0, v0, :cond_c

    const/4 v0, 0x4

    if-ne p0, v0, :cond_a

    goto :goto_c

    :cond_a
    const/4 p0, 0x0

    return p0

    :cond_c
    :goto_c
    const/4 p0, 0x1

    return p0
.end method
