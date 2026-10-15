###### Class com.google.android.gms.internal.ads.zzgtq (com.google.android.gms.internal.ads.zzgtq)
.class final Lcom/google/android/gms/internal/ads/zzgtq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# static fields
.field private static final a:Lsun/misc/Unsafe;

.field private static final b:Ljava/lang/Class;

.field private static final c:Z

.field private static final d:Lcom/google/android/gms/internal/ads/zzgtp;

.field private static final e:Z

.field private static final f:Z

.field static final g:J

.field private static final h:J

.field static final i:Z


# direct methods
.method static constructor <clinit>()V
    .registers 17

    .line 1
    const-class v1, [Ljava/lang/Object;

    const-class v2, [D

    const-class v3, [F

    const-class v4, [J

    const-class v5, [I

    const-class v6, [Z

    const-class v7, Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgtq;->q()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgtq;->a:Lsun/misc/Unsafe;

    .line 2
    sget v8, Lcom/google/android/gms/internal/ads/zzgop;->a:I

    const-class v8, Llibcore/io/Memory;

    sput-object v8, Lcom/google/android/gms/internal/ads/zzgtq;->b:Ljava/lang/Class;

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 3
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzgtq;->G(Ljava/lang/Class;)Z

    move-result v9

    sput-boolean v9, Lcom/google/android/gms/internal/ads/zzgtq;->c:Z

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 4
    invoke-static {v10}, Lcom/google/android/gms/internal/ads/zzgtq;->G(Ljava/lang/Class;)Z

    move-result v10

    const/4 v11, 0x0

    if-nez v0, :cond_2c

    goto :goto_3b

    :cond_2c
    if-eqz v9, :cond_34

    .line 5
    new-instance v11, Lcom/google/android/gms/internal/ads/zzgto;

    invoke-direct {v11, v0}, Lcom/google/android/gms/internal/ads/zzgto;-><init>(Lsun/misc/Unsafe;)V

    goto :goto_3b

    :cond_34
    if-eqz v10, :cond_3b

    new-instance v11, Lcom/google/android/gms/internal/ads/zzgtn;

    invoke-direct {v11, v0}, Lcom/google/android/gms/internal/ads/zzgtn;-><init>(Lsun/misc/Unsafe;)V

    .line 6
    :cond_3b
    :goto_3b
    sput-object v11, Lcom/google/android/gms/internal/ads/zzgtq;->d:Lcom/google/android/gms/internal/ads/zzgtp;

    const-string v9, "getLong"

    const-string v10, "objectFieldOffset"

    const/4 v12, 0x2

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-nez v11, :cond_48

    :goto_46
    const/4 v0, 0x0

    goto :goto_6e

    .line 7
    :cond_48
    iget-object v0, v11, Lcom/google/android/gms/internal/ads/zzgtp;->a:Lsun/misc/Unsafe;

    :try_start_4a
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-array v11, v13, [Ljava/lang/Class;

    const-class v15, Ljava/lang/reflect/Field;

    aput-object v15, v11, v14

    .line 8
    invoke-virtual {v0, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v11, v12, [Ljava/lang/Class;

    aput-object v7, v11, v14

    aput-object v8, v11, v13

    .line 9
    invoke-virtual {v0, v9, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgtq;->e()Ljava/lang/reflect/Field;

    move-result-object v0
    :try_end_64
    .catchall {:try_start_4a .. :try_end_64} :catchall_69

    if-nez v0, :cond_67

    goto :goto_46

    :cond_67
    const/4 v0, 0x1

    goto :goto_6e

    :catchall_69
    move-exception v0

    .line 11
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgtq;->r(Ljava/lang/Throwable;)V

    goto :goto_46

    .line 12
    :goto_6e
    sput-boolean v0, Lcom/google/android/gms/internal/ads/zzgtq;->e:Z

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgtq;->d:Lcom/google/android/gms/internal/ads/zzgtp;

    if-nez v0, :cond_76

    :goto_74
    const/4 v0, 0x0

    goto :goto_ed

    .line 13
    :cond_76
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzgtp;->a:Lsun/misc/Unsafe;

    :try_start_78
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-array v8, v13, [Ljava/lang/Class;

    const-class v11, Ljava/lang/reflect/Field;

    aput-object v11, v8, v14

    .line 14
    invoke-virtual {v0, v10, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v8, "arrayBaseOffset"

    new-array v10, v13, [Ljava/lang/Class;

    const-class v11, Ljava/lang/Class;

    aput-object v11, v10, v14

    .line 15
    invoke-virtual {v0, v8, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v8, "arrayIndexScale"

    new-array v10, v13, [Ljava/lang/Class;

    const-class v11, Ljava/lang/Class;

    aput-object v11, v10, v14

    .line 16
    invoke-virtual {v0, v8, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v8, "getInt"

    new-array v10, v12, [Ljava/lang/Class;

    aput-object v7, v10, v14

    sget-object v11, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v11, v10, v13

    .line 17
    invoke-virtual {v0, v8, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v8, "putInt"

    const/4 v10, 0x3

    new-array v15, v10, [Ljava/lang/Class;

    aput-object v7, v15, v14

    aput-object v11, v15, v13

    sget-object v16, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v16, v15, v12

    .line 18
    invoke-virtual {v0, v8, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v8, v12, [Ljava/lang/Class;

    aput-object v7, v8, v14

    aput-object v11, v8, v13

    .line 19
    invoke-virtual {v0, v9, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v8, "putLong"

    new-array v9, v10, [Ljava/lang/Class;

    aput-object v7, v9, v14

    aput-object v11, v9, v13

    aput-object v11, v9, v12

    .line 20
    invoke-virtual {v0, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v8, "getObject"

    new-array v9, v12, [Ljava/lang/Class;

    aput-object v7, v9, v14

    aput-object v11, v9, v13

    .line 21
    invoke-virtual {v0, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v8, "putObject"

    new-array v9, v10, [Ljava/lang/Class;

    aput-object v7, v9, v14

    aput-object v11, v9, v13

    aput-object v7, v9, v12

    .line 22
    invoke-virtual {v0, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_e6
    .catchall {:try_start_78 .. :try_end_e6} :catchall_e8

    const/4 v0, 0x1

    goto :goto_ed

    :catchall_e8
    move-exception v0

    .line 23
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgtq;->r(Ljava/lang/Throwable;)V

    goto :goto_74

    .line 24
    :goto_ed
    sput-boolean v0, Lcom/google/android/gms/internal/ads/zzgtq;->f:Z

    const-class v0, [B

    .line 25
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgtq;->c(Ljava/lang/Class;)I

    move-result v0

    int-to-long v7, v0

    sput-wide v7, Lcom/google/android/gms/internal/ads/zzgtq;->g:J

    .line 26
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzgtq;->c(Ljava/lang/Class;)I

    .line 27
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzgtq;->d(Ljava/lang/Class;)I

    .line 28
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzgtq;->c(Ljava/lang/Class;)I

    .line 29
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzgtq;->d(Ljava/lang/Class;)I

    .line 30
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzgtq;->c(Ljava/lang/Class;)I

    .line 31
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzgtq;->d(Ljava/lang/Class;)I

    .line 32
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzgtq;->c(Ljava/lang/Class;)I

    .line 33
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzgtq;->d(Ljava/lang/Class;)I

    .line 34
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzgtq;->c(Ljava/lang/Class;)I

    .line 35
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzgtq;->d(Ljava/lang/Class;)I

    .line 36
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgtq;->c(Ljava/lang/Class;)I

    .line 37
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgtq;->d(Ljava/lang/Class;)I

    .line 38
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgtq;->e()Ljava/lang/reflect/Field;

    move-result-object v0

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_12f

    sget-object v3, Lcom/google/android/gms/internal/ads/zzgtq;->d:Lcom/google/android/gms/internal/ads/zzgtp;

    if-nez v3, :cond_129

    goto :goto_12f

    .line 39
    :cond_129
    iget-object v1, v3, Lcom/google/android/gms/internal/ads/zzgtp;->a:Lsun/misc/Unsafe;

    .line 40
    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v1

    .line 41
    :cond_12f
    :goto_12f
    sput-wide v1, Lcom/google/android/gms/internal/ads/zzgtq;->h:J

    .line 42
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_13a

    goto :goto_13b

    :cond_13a
    const/4 v13, 0x0

    :goto_13b
    sput-boolean v13, Lcom/google/android/gms/internal/ads/zzgtq;->i:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static A(Ljava/lang/Object;JF)V
    .registers 5

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgtq;->d:Lcom/google/android/gms/internal/ads/zzgtp;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzgtp;->h(Ljava/lang/Object;JF)V

    return-void
.end method

.method static B(Ljava/lang/Object;JI)V
    .registers 5

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgtq;->d:Lcom/google/android/gms/internal/ads/zzgtp;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzgtp;->a:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2, p3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return-void
.end method

.method static C(Ljava/lang/Object;JJ)V
    .registers 12

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgtq;->d:Lcom/google/android/gms/internal/ads/zzgtp;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzgtp;->a:Lsun/misc/Unsafe;

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    return-void
.end method

.method static D(Ljava/lang/Object;JLjava/lang/Object;)V
    .registers 5

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgtq;->d:Lcom/google/android/gms/internal/ads/zzgtp;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzgtp;->a:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2, p3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method static bridge synthetic E(Ljava/lang/Object;J)Z
    .registers 6

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgtq;->d:Lcom/google/android/gms/internal/ads/zzgtp;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzgtp;->a:Lsun/misc/Unsafe;

    const-wide/16 v1, -0x4

    and-long/2addr v1, p1

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result p0

    const-wide/16 v0, -0x1

    xor-long/2addr p1, v0

    const-wide/16 v0, 0x3

    and-long/2addr p1, v0

    const/4 v0, 0x3

    shl-long/2addr p1, v0

    long-to-int p2, p1

    ushr-int/2addr p0, p2

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    if-eqz p0, :cond_1c

    const/4 p0, 0x1

    return p0

    :cond_1c
    const/4 p0, 0x0

    return p0
.end method

.method static bridge synthetic F(Ljava/lang/Object;J)Z
    .registers 6

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgtq;->d:Lcom/google/android/gms/internal/ads/zzgtp;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzgtp;->a:Lsun/misc/Unsafe;

    const-wide/16 v1, -0x4

    and-long/2addr v1, p1

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result p0

    const-wide/16 v0, 0x3

    and-long/2addr p1, v0

    const/4 v0, 0x3

    shl-long/2addr p1, v0

    long-to-int p2, p1

    ushr-int/2addr p0, p2

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    if-eqz p0, :cond_19

    const/4 p0, 0x1

    return p0

    :cond_19
    const/4 p0, 0x0

    return p0
.end method

.method static G(Ljava/lang/Class;)Z
    .registers 11

    .line 1
    const-class v0, [B

    sget v1, Lcom/google/android/gms/internal/ads/zzgop;->a:I

    const/4 v1, 0x0

    :try_start_5
    sget-object v2, Lcom/google/android/gms/internal/ads/zzgtq;->b:Ljava/lang/Class;

    const-string v3, "peekLong"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    aput-object p0, v5, v1

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    .line 2
    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "pokeLong"

    const/4 v5, 0x3

    new-array v8, v5, [Ljava/lang/Class;

    aput-object p0, v8, v1

    sget-object v9, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v7

    aput-object v6, v8, v4

    .line 3
    invoke-virtual {v2, v3, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "pokeInt"

    new-array v8, v5, [Ljava/lang/Class;

    aput-object p0, v8, v1

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v7

    aput-object v6, v8, v4

    .line 4
    invoke-virtual {v2, v3, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "peekInt"

    new-array v8, v4, [Ljava/lang/Class;

    aput-object p0, v8, v1

    aput-object v6, v8, v7

    .line 5
    invoke-virtual {v2, v3, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "pokeByte"

    new-array v6, v4, [Ljava/lang/Class;

    aput-object p0, v6, v1

    sget-object v8, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    .line 6
    invoke-virtual {v2, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "peekByte"

    new-array v6, v7, [Ljava/lang/Class;

    aput-object p0, v6, v1

    .line 7
    invoke-virtual {v2, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "pokeByteArray"

    const/4 v6, 0x4

    new-array v8, v6, [Ljava/lang/Class;

    aput-object p0, v8, v1

    aput-object v0, v8, v7

    aput-object v9, v8, v4

    aput-object v9, v8, v5

    .line 8
    invoke-virtual {v2, v3, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "peekByteArray"

    new-array v6, v6, [Ljava/lang/Class;

    aput-object p0, v6, v1

    aput-object v0, v6, v7

    aput-object v9, v6, v4

    aput-object v9, v6, v5

    .line 9
    invoke-virtual {v2, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_75
    .catchall {:try_start_5 .. :try_end_75} :catchall_76

    return v7

    :catchall_76
    return v1
.end method

.method static H(Ljava/lang/Object;J)Z
    .registers 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgtq;->d:Lcom/google/android/gms/internal/ads/zzgtp;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgtp;->i(Ljava/lang/Object;J)Z

    move-result p0

    return p0
.end method

.method static a()Z
    .registers 1

    sget-boolean v0, Lcom/google/android/gms/internal/ads/zzgtq;->f:Z

    return v0
.end method

.method static b()Z
    .registers 1

    sget-boolean v0, Lcom/google/android/gms/internal/ads/zzgtq;->e:Z

    return v0
.end method

.method private static c(Ljava/lang/Class;)I
    .registers 2

    .line 1
    sget-boolean v0, Lcom/google/android/gms/internal/ads/zzgtq;->f:Z

    if-eqz v0, :cond_d

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgtq;->d:Lcom/google/android/gms/internal/ads/zzgtp;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzgtp;->a:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result p0

    return p0

    :cond_d
    const/4 p0, -0x1

    return p0
.end method

.method private static d(Ljava/lang/Class;)I
    .registers 2

    .line 1
    sget-boolean v0, Lcom/google/android/gms/internal/ads/zzgtq;->f:Z

    if-eqz v0, :cond_d

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgtq;->d:Lcom/google/android/gms/internal/ads/zzgtp;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzgtp;->a:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result p0

    return p0

    :cond_d
    const/4 p0, -0x1

    return p0
.end method

.method private static e()Ljava/lang/reflect/Field;
    .registers 3

    .line 1
    sget v0, Lcom/google/android/gms/internal/ads/zzgop;->a:I

    const-class v0, Ljava/nio/Buffer;

    const-string v1, "effectiveDirectAddress"

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzgtq;->f(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-nez v0, :cond_20

    const-class v0, Ljava/nio/Buffer;

    const-string v1, "address"

    .line 3
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzgtq;->f(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 4
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_1f

    return-object v0

    :cond_1f
    const/4 v0, 0x0

    :cond_20
    return-object v0
.end method

.method private static f(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 2

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_5

    goto :goto_6

    :catchall_5
    const/4 p0, 0x0

    :goto_6
    return-object p0
.end method

.method private static g(Ljava/lang/Object;JB)V
    .registers 9

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgtq;->d:Lcom/google/android/gms/internal/ads/zzgtp;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzgtp;->a:Lsun/misc/Unsafe;

    const-wide/16 v2, -0x4

    and-long/2addr v2, p1

    invoke-virtual {v1, p0, v2, v3}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    long-to-int p2, p1

    xor-int/lit8 p1, p2, -0x1

    and-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x3

    const/16 p2, 0xff

    shl-int v4, p2, p1

    xor-int/lit8 v4, v4, -0x1

    and-int/2addr v1, v4

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzgtp;->a:Lsun/misc/Unsafe;

    and-int/2addr p2, p3

    shl-int p1, p2, p1

    or-int/2addr p1, v1

    .line 2
    invoke-virtual {v0, p0, v2, v3, p1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return-void
.end method

.method private static h(Ljava/lang/Object;JB)V
    .registers 9

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgtq;->d:Lcom/google/android/gms/internal/ads/zzgtp;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzgtp;->a:Lsun/misc/Unsafe;

    const-wide/16 v2, -0x4

    and-long/2addr v2, p1

    invoke-virtual {v1, p0, v2, v3}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    long-to-int p2, p1

    and-int/lit8 p1, p2, 0x3

    shl-int/lit8 p1, p1, 0x3

    const/16 p2, 0xff

    shl-int v4, p2, p1

    xor-int/lit8 v4, v4, -0x1

    and-int/2addr v1, v4

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzgtp;->a:Lsun/misc/Unsafe;

    and-int/2addr p2, p3

    shl-int p1, p2, p1

    or-int/2addr p1, v1

    .line 2
    invoke-virtual {v0, p0, v2, v3, p1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return-void
.end method

.method static i(J)B
    .registers 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgtq;->d:Lcom/google/android/gms/internal/ads/zzgtp;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzgtp;->a(J)B

    move-result p0

    return p0
.end method

.method static j(Ljava/lang/Object;J)D
    .registers 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgtq;->d:Lcom/google/android/gms/internal/ads/zzgtp;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgtp;->b(Ljava/lang/Object;J)D

    move-result-wide p0

    return-wide p0
.end method

.method static k(Ljava/lang/Object;J)F
    .registers 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgtq;->d:Lcom/google/android/gms/internal/ads/zzgtp;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgtp;->c(Ljava/lang/Object;J)F

    move-result p0

    return p0
.end method

.method static l(Ljava/lang/Object;J)I
    .registers 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgtq;->d:Lcom/google/android/gms/internal/ads/zzgtp;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzgtp;->a:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result p0

    return p0
.end method

.method static m(Ljava/nio/ByteBuffer;)J
    .registers 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgtq;->d:Lcom/google/android/gms/internal/ads/zzgtp;

    sget-wide v1, Lcom/google/android/gms/internal/ads/zzgtq;->h:J

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzgtp;->a:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method

.method static n(Ljava/lang/Object;J)J
    .registers 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgtq;->d:Lcom/google/android/gms/internal/ads/zzgtp;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzgtp;->a:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide p0

    return-wide p0
.end method

.method static o(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 2

    .line 1
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgtq;->a:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->allocateInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0
    :try_end_6
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p0

    :catch_7
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    .line 2
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method static p(Ljava/lang/Object;J)Ljava/lang/Object;
    .registers 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgtq;->d:Lcom/google/android/gms/internal/ads/zzgtp;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzgtp;->a:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static q()Lsun/misc/Unsafe;
    .registers 1

    .line 1
    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgtm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgtm;-><init>()V

    .line 2
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/misc/Unsafe;
    :try_end_b
    .catchall {:try_start_0 .. :try_end_b} :catchall_c

    goto :goto_d

    :catchall_c
    const/4 v0, 0x0

    :goto_d
    return-object v0
.end method

.method static bridge synthetic r(Ljava/lang/Throwable;)V
    .registers 5

    .line 1
    const-class v0, Lcom/google/android/gms/internal/ads/zzgtq;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "platform method missing - proto runtime falling back to safer methods: "

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "com.google.protobuf.UnsafeUtil"

    const-string v3, "logMissingMethod"

    .line 2
    invoke-virtual {v0, v1, v2, v3, p0}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic s(Ljava/lang/Object;JZ)V
    .registers 4

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzgtq;->g(Ljava/lang/Object;JB)V

    return-void
.end method

.method static synthetic t(Ljava/lang/Object;JZ)V
    .registers 4

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzgtq;->h(Ljava/lang/Object;JB)V

    return-void
.end method

.method static bridge synthetic u(Ljava/lang/Object;JB)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzgtq;->g(Ljava/lang/Object;JB)V

    return-void
.end method

.method static bridge synthetic v(Ljava/lang/Object;JB)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzgtq;->h(Ljava/lang/Object;JB)V

    return-void
.end method

.method static w(J[BJJ)V
    .registers 15

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgtq;->d:Lcom/google/android/gms/internal/ads/zzgtp;

    move-wide v1, p0

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzgtp;->d(J[BJJ)V

    return-void
.end method

.method static x(Ljava/lang/Object;JZ)V
    .registers 5

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgtq;->d:Lcom/google/android/gms/internal/ads/zzgtp;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzgtp;->e(Ljava/lang/Object;JZ)V

    return-void
.end method

.method static y([BJB)V
    .registers 7

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgtq;->d:Lcom/google/android/gms/internal/ads/zzgtp;

    sget-wide v1, Lcom/google/android/gms/internal/ads/zzgtq;->g:J

    add-long/2addr v1, p1

    invoke-virtual {v0, p0, v1, v2, p3}, Lcom/google/android/gms/internal/ads/zzgtp;->f(Ljava/lang/Object;JB)V

    return-void
.end method

.method static z(Ljava/lang/Object;JD)V
    .registers 11

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgtq;->d:Lcom/google/android/gms/internal/ads/zzgtp;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzgtp;->g(Ljava/lang/Object;JD)V

    return-void
.end method
