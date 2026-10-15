###### Class com.google.android.gms.internal.ads.zzarb (com.google.android.gms.internal.ads.zzarb)
.class public final Lcom/google/android/gms/internal/ads/zzarb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# static fields
.field private static final a:[C


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "0123456789abcdef"

    .line 1
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzarb;->a:[C

    return-void
.end method

.method public static a(DILandroid/util/DisplayMetrics;)J
    .registers 4

    .line 1
    iget p2, p3, Landroid/util/DisplayMetrics;->density:F

    float-to-double p2, p2

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p0, p2

    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    return-wide p0
.end method

.method public static b(Landroid/view/View;)Landroid/app/Activity;
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_7

    move-object p0, v0

    .line 2
    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x0

    .line 3
    :goto_c
    instance-of v1, p0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_24

    const/16 v1, 0xa

    if-ge v0, v1, :cond_24

    .line 4
    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_1b

    .line 5
    check-cast p0, Landroid/app/Activity;

    return-object p0

    .line 6
    :cond_1b
    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_24
    const/4 p0, 0x0

    return-object p0
.end method

.method public static c([B)Ljava/lang/String;
    .registers 7

    .line 1
    array-length v0, p0

    add-int/2addr v0, v0

    new-array v0, v0, [C

    const/4 v1, 0x0

    .line 2
    :goto_5
    array-length v2, p0

    if-ge v1, v2, :cond_21

    .line 3
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    sget-object v3, Lcom/google/android/gms/internal/ads/zzarb;->a:[C

    ushr-int/lit8 v4, v2, 0x4

    .line 4
    aget-char v4, v3, v4

    add-int v5, v1, v1

    aput-char v4, v0, v5

    and-int/lit8 v2, v2, 0xf

    add-int/lit8 v5, v5, 0x1

    .line 5
    aget-char v2, v3, v2

    aput-char v2, v0, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_21
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    if-eqz p0, :cond_29

    const-string v0, "^[a-fA-F0-9]{8}-([a-fA-F0-9]{4}-){3}[a-fA-F0-9]{12}$"

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 2
    invoke-static {p0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p0

    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 3
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 4
    invoke-virtual {p0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 5
    invoke-virtual {p0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    const/4 p0, 0x1

    .line 6
    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzaoh;->a([BZ)Ljava/lang/String;

    move-result-object p0

    :cond_29
    return-object p0
.end method

.method public static e(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    new-instance v1, Ljava/io/PrintWriter;

    .line 2
    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 3
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static f()Z
    .registers 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public static g(Ljava/lang/String;)Z
    .registers 1

    if-eqz p0, :cond_b

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    return p0

    :cond_b
    :goto_b
    const/4 p0, 0x1

    return p0
.end method

.method public static h(Landroid/util/DisplayMetrics;)Z
    .registers 2

    if-eqz p0, :cond_b

    .line 1
    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-eqz p0, :cond_b

    const/4 p0, 0x1

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public static i(Ljava/lang/String;)[B
    .registers 8

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_2f

    .line 2
    div-int/lit8 v1, v0, 0x2

    .line 3
    new-array v1, v1, [B

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v0, :cond_2e

    div-int/lit8 v3, v2, 0x2

    .line 4
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v6, v2, 0x1

    .line 5
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    add-int/lit8 v2, v2, 0x2

    goto :goto_d

    :cond_2e
    return-object v1

    .line 6
    :cond_2f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "String must be of even-length"

    .line 7
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_38

    :goto_37
    throw p0

    :goto_38
    goto :goto_37
.end method
