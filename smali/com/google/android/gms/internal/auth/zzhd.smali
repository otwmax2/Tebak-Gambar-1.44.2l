###### Class com.google.android.gms.internal.auth.zzhd (com.google.android.gms.internal.auth.zzhd)
.class final Lcom/google/android/gms/internal/auth/zzhd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-auth-base@@17.1.4"


# static fields
.field private static final a:Lcom/google/android/gms/internal/auth/zzhb;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzgz;->u()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {}, Lcom/google/android/gms/internal/auth/zzgz;->v()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2
    sget v0, Lcom/google/android/gms/internal/auth/zzdo;->a:I

    :cond_e
    new-instance v0, Lcom/google/android/gms/internal/auth/zzhc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/auth/zzhc;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/auth/zzhd;->a:Lcom/google/android/gms/internal/auth/zzhb;

    return-void
.end method

.method static synthetic a([BII)I
    .registers 9

    add-int/lit8 v0, p1, -0x1

    .line 1
    aget-byte v0, p0, v0

    sub-int/2addr p2, p1

    const/16 v1, -0xc

    const/4 v2, -0x1

    if-eqz p2, :cond_37

    const/4 v3, 0x1

    const/16 v4, -0x41

    if-eq p2, v3, :cond_2c

    const/4 v5, 0x2

    if-ne p2, v5, :cond_26

    .line 2
    aget-byte p2, p0, p1

    add-int/2addr p1, v3

    aget-byte p0, p0, p1

    if-gt v0, v1, :cond_39

    if-gt p2, v4, :cond_39

    if-le p0, v4, :cond_1e

    goto :goto_39

    :cond_1e
    shl-int/lit8 p1, p2, 0x8

    xor-int/2addr p1, v0

    shl-int/lit8 p0, p0, 0x10

    xor-int v0, p1, p0

    goto :goto_3a

    .line 3
    :cond_26
    new-instance p0, Ljava/lang/AssertionError;

    .line 4
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 5
    :cond_2c
    aget-byte p0, p0, p1

    if-gt v0, v1, :cond_39

    if-le p0, v4, :cond_33

    goto :goto_39

    :cond_33
    shl-int/lit8 p0, p0, 0x8

    xor-int/2addr v0, p0

    goto :goto_3a

    :cond_37
    if-le v0, v1, :cond_3a

    :cond_39
    :goto_39
    const/4 v0, -0x1

    :cond_3a
    :goto_3a
    return v0
.end method

.method static b([BII)Ljava/lang/String;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/auth/zzew;
        }
    .end annotation

    .line 1
    array-length v0, p0

    or-int v1, p1, p2

    sub-int v2, v0, p1

    sub-int/2addr v2, p2

    or-int/2addr v1, v2

    const/4 v2, 0x0

    if-ltz v1, :cond_a5

    add-int v0, p1, p2

    .line 2
    new-array p2, p2, [C

    const/4 v1, 0x0

    :goto_f
    if-ge p1, v0, :cond_23

    .line 3
    aget-byte v3, p0, p1

    invoke-static {v3}, Lcom/google/android/gms/internal/auth/zzha;->d(B)Z

    move-result v4

    if-nez v4, :cond_1a

    goto :goto_23

    :cond_1a
    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v4, v1, 0x1

    int-to-char v3, v3

    .line 4
    aput-char v3, p2, v1

    move v1, v4

    goto :goto_f

    :cond_23
    :goto_23
    if-ge p1, v0, :cond_9f

    add-int/lit8 v3, p1, 0x1

    .line 5
    aget-byte p1, p0, p1

    invoke-static {p1}, Lcom/google/android/gms/internal/auth/zzha;->d(B)Z

    move-result v4

    if-eqz v4, :cond_49

    add-int/lit8 v4, v1, 0x1

    int-to-char p1, p1

    .line 6
    aput-char p1, p2, v1

    move p1, v3

    :goto_35
    move v1, v4

    if-ge p1, v0, :cond_23

    .line 7
    aget-byte v3, p0, p1

    invoke-static {v3}, Lcom/google/android/gms/internal/auth/zzha;->d(B)Z

    move-result v4

    if-nez v4, :cond_41

    goto :goto_23

    :cond_41
    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v4, v1, 0x1

    int-to-char v3, v3

    .line 8
    aput-char v3, p2, v1

    goto :goto_35

    :cond_49
    const/16 v4, -0x20

    if-ge p1, v4, :cond_60

    if-ge v3, v0, :cond_5b

    add-int/lit8 v4, v3, 0x1

    add-int/lit8 v5, v1, 0x1

    .line 9
    aget-byte v3, p0, v3

    invoke-static {p1, v3, p2, v1}, Lcom/google/android/gms/internal/auth/zzha;->b(BB[CI)V

    move p1, v4

    move v1, v5

    goto :goto_23

    .line 10
    :cond_5b
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzew;->b()Lcom/google/android/gms/internal/auth/zzew;

    move-result-object p0

    throw p0

    :cond_60
    const/16 v4, -0x10

    if-ge p1, v4, :cond_7d

    add-int/lit8 v4, v0, -0x1

    if-ge v3, v4, :cond_78

    add-int/lit8 v4, v3, 0x1

    add-int/lit8 v5, v4, 0x1

    add-int/lit8 v6, v1, 0x1

    .line 11
    aget-byte v3, p0, v3

    aget-byte v4, p0, v4

    invoke-static {p1, v3, v4, p2, v1}, Lcom/google/android/gms/internal/auth/zzha;->c(BBB[CI)V

    move p1, v5

    move v1, v6

    goto :goto_23

    .line 12
    :cond_78
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzew;->b()Lcom/google/android/gms/internal/auth/zzew;

    move-result-object p0

    throw p0

    :cond_7d
    add-int/lit8 v4, v0, -0x2

    if-ge v3, v4, :cond_9a

    add-int/lit8 v4, v3, 0x1

    add-int/lit8 v5, v4, 0x1

    add-int/lit8 v9, v5, 0x1

    .line 13
    aget-byte v6, p0, v3

    aget-byte v7, p0, v4

    aget-byte v8, p0, v5

    move v3, p1

    move v4, v6

    move v5, v7

    move v6, v8

    move-object v7, p2

    move v8, v1

    invoke-static/range {v3 .. v8}, Lcom/google/android/gms/internal/auth/zzha;->a(BBBB[CI)V

    add-int/lit8 v1, v1, 0x2

    move p1, v9

    goto :goto_23

    .line 14
    :cond_9a
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzew;->b()Lcom/google/android/gms/internal/auth/zzew;

    move-result-object p0

    throw p0

    .line 15
    :cond_9f
    new-instance p0, Ljava/lang/String;

    .line 16
    invoke-direct {p0, p2, v2, v1}, Ljava/lang/String;-><init>([CII)V

    return-object p0

    .line 17
    :cond_a5
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 18
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x1

    aput-object p1, v1, v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v1, p2

    const-string p1, "buffer length=%d, index=%d, size=%d"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    goto :goto_c9

    :goto_c8
    throw p0

    :goto_c9
    goto :goto_c8
.end method

.method public static c([B)Z
    .registers 4

    sget-object v0, Lcom/google/android/gms/internal/auth/zzhd;->a:Lcom/google/android/gms/internal/auth/zzhb;

    .line 1
    array-length v1, p0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Lcom/google/android/gms/internal/auth/zzhb;->b([BII)Z

    move-result p0

    return p0
.end method

.method public static d([BII)Z
    .registers 4

    sget-object v0, Lcom/google/android/gms/internal/auth/zzhd;->a:Lcom/google/android/gms/internal/auth/zzhb;

    .line 1
    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/auth/zzhb;->b([BII)Z

    move-result p0

    return p0
.end method
