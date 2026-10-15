###### Class com.google.android.gms.internal.ads.zzfsm (com.google.android.gms.internal.ads.zzfsm)
.class public final Lcom/google/android/gms/internal/ads/zzfsm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# static fields
.field private static final a:Ljava/io/OutputStream;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfsl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfsl;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfsm;->a:Ljava/io/OutputStream;

    return-void
.end method

.method public static a(Ljava/io/InputStream;)[B
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Ljava/util/ArrayDeque;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    const/16 v1, 0x2000

    const/16 v2, 0x80

    const/4 v3, 0x0

    .line 3
    invoke-static {v3}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v4

    add-int/2addr v4, v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    :goto_1d
    const/4 v4, -0x1

    const v5, 0x7ffffff7

    if-ge v2, v5, :cond_50

    sub-int/2addr v5, v2

    .line 4
    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    new-array v6, v5, [B

    .line 5
    invoke-interface {v0, v6}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x0

    :goto_2e
    if-ge v7, v5, :cond_40

    sub-int v8, v5, v7

    .line 6
    invoke-virtual {p0, v6, v7, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v8

    if-ne v8, v4, :cond_3d

    .line 7
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzfsm;->b(Ljava/util/Queue;I)[B

    move-result-object p0

    goto :goto_5a

    :cond_3d
    add-int/2addr v7, v8

    add-int/2addr v2, v8

    goto :goto_2e

    :cond_40
    const/16 v4, 0x1000

    if-ge v1, v4, :cond_46

    const/4 v4, 0x4

    goto :goto_47

    :cond_46
    const/4 v4, 0x2

    :goto_47
    int-to-long v5, v1

    int-to-long v7, v4

    mul-long v5, v5, v7

    invoke-static {v5, v6}, Lcom/google/android/gms/internal/ads/zzfsr;->c(J)I

    move-result v1

    goto :goto_1d

    .line 8
    :cond_50
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p0

    if-ne p0, v4, :cond_5b

    .line 9
    invoke-static {v0, v5}, Lcom/google/android/gms/internal/ads/zzfsm;->b(Ljava/util/Queue;I)[B

    move-result-object p0

    :goto_5a
    return-object p0

    .line 10
    :cond_5b
    new-instance p0, Ljava/lang/OutOfMemoryError;

    const-string v0, "input is too large to fit in a byte array"

    .line 11
    invoke-direct {p0, v0}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    goto :goto_64

    :goto_63
    throw p0

    :goto_64
    goto :goto_63
.end method

.method private static b(Ljava/util/Queue;I)[B
    .registers 8

    .line 1
    invoke-interface {p0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    new-array p0, v1, [B

    return-object p0

    .line 2
    :cond_a
    invoke-interface {p0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 3
    array-length v2, v0

    if-ne v2, p1, :cond_14

    return-object v0

    .line 4
    :cond_14
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    sub-int v2, p1, v2

    :goto_1a
    if-lez v2, :cond_2e

    .line 5
    invoke-interface {p0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 6
    array-length v4, v3

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    sub-int v5, p1, v2

    .line 7
    invoke-static {v3, v1, v0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr v2, v4

    goto :goto_1a

    :cond_2e
    return-object v0
.end method
