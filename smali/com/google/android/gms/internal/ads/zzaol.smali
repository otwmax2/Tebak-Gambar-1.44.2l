###### Class com.google.android.gms.internal.ads.zzaol (com.google.android.gms.internal.ads.zzaol)
.class final Lcom/google/android/gms/internal/ads/zzaol;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# static fields
.field static a:Z = false

.field private static b:Ljava/security/MessageDigest;

.field private static final c:Ljava/lang/Object;

.field private static final d:Ljava/lang/Object;

.field static final e:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzaol;->c:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzaol;->d:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzaol;->e:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method static a(Lcom/google/android/gms/internal/ads/zzans;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgon;->t()[B

    move-result-object p0

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbar;->O2:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_4b

    sget-object v0, Lcom/google/android/gms/internal/ads/zzaqz;->a:Lcom/google/android/gms/internal/ads/zzfvw;

    if-eqz v0, :cond_45

    if-eqz p1, :cond_23

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    goto :goto_25

    :cond_23
    new-array p1, v1, [B

    :goto_25
    sget-object v0, Lcom/google/android/gms/internal/ads/zzaqz;->a:Lcom/google/android/gms/internal/ads/zzfvw;

    .line 6
    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzfvw;->a([B[B)[B

    move-result-object p0

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzaof;->I()Lcom/google/android/gms/internal/ads/zzaoe;

    move-result-object p1

    .line 8
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgpe;->J([B)Lcom/google/android/gms/internal/ads/zzgpe;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzaoe;->o(Lcom/google/android/gms/internal/ads/zzgpe;)Lcom/google/android/gms/internal/ads/zzaoe;

    const/4 p0, 0x3

    .line 9
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzaoe;->q(I)Lcom/google/android/gms/internal/ads/zzaoe;

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgqi;->k()Lcom/google/android/gms/internal/ads/zzgqm;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzaof;

    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgon;->t()[B

    move-result-object p0

    goto :goto_9d

    .line 12
    :cond_45
    new-instance p0, Ljava/security/GeneralSecurityException;

    invoke-direct {p0}, Ljava/security/GeneralSecurityException;-><init>()V

    throw p0

    :cond_4b
    const/16 v0, 0xff

    .line 13
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzaol;->b([BI)Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_8f

    .line 14
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v3

    if-nez v3, :cond_5a

    goto :goto_8f

    .line 15
    :cond_5a
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzaof;->I()Lcom/google/android/gms/internal/ads/zzaoe;

    move-result-object v3

    .line 16
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_63
    if-ge v5, v4, :cond_79

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 17
    check-cast v6, [B

    .line 18
    invoke-static {v6, p1, v1}, Lcom/google/android/gms/internal/ads/zzaol;->g([BLjava/lang/String;Z)[B

    move-result-object v6

    .line 19
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzgpe;->J([B)Lcom/google/android/gms/internal/ads/zzgpe;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/ads/zzaoe;->o(Lcom/google/android/gms/internal/ads/zzgpe;)Lcom/google/android/gms/internal/ads/zzaoe;

    add-int/lit8 v5, v5, 0x1

    goto :goto_63

    .line 20
    :cond_79
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzaol;->e([B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgpe;->J([B)Lcom/google/android/gms/internal/ads/zzgpe;

    move-result-object p0

    invoke-virtual {v3, p0}, Lcom/google/android/gms/internal/ads/zzaoe;->p(Lcom/google/android/gms/internal/ads/zzgpe;)Lcom/google/android/gms/internal/ads/zzaoe;

    .line 21
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzgqi;->k()Lcom/google/android/gms/internal/ads/zzgqm;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzaof;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgon;->t()[B

    move-result-object p0

    goto :goto_9d

    :cond_8f
    :goto_8f
    const/16 p0, 0x1000

    .line 22
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzaol;->f(I)Lcom/google/android/gms/internal/ads/zzans;

    move-result-object p0

    .line 23
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgon;->t()[B

    move-result-object p0

    .line 24
    invoke-static {p0, p1, v2}, Lcom/google/android/gms/internal/ads/zzaol;->g([BLjava/lang/String;Z)[B

    move-result-object p0

    .line 25
    :goto_9d
    invoke-static {p0, v2}, Lcom/google/android/gms/internal/ads/zzaoh;->a([BZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static b([BI)Ljava/util/Vector;
    .registers 9

    const/4 p1, 0x0

    if-eqz p0, :cond_2a

    array-length v0, p0

    if-gtz v0, :cond_7

    goto :goto_2a

    :cond_7
    add-int/lit16 v0, v0, 0xfe

    .line 1
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    const/4 v2, 0x0

    :goto_f
    const/16 v3, 0xff

    div-int/lit16 v4, v0, 0xff

    if-ge v2, v4, :cond_29

    mul-int/lit16 v4, v2, 0xff

    :try_start_17
    array-length v5, p0

    sub-int v6, v5, v4

    if-le v6, v3, :cond_1e

    add-int/lit16 v5, v4, 0xff

    .line 2
    :cond_1e
    invoke-static {p0, v4, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_25
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_17 .. :try_end_25} :catch_28

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :catch_28
    return-object p1

    :cond_29
    return-object v1

    :cond_2a
    :goto_2a
    return-object p1
.end method

.method static bridge synthetic c(Ljava/security/MessageDigest;)V
    .registers 1

    sput-object p0, Lcom/google/android/gms/internal/ads/zzaol;->b:Ljava/security/MessageDigest;

    return-void
.end method

.method static d()V
    .registers 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzaol;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-boolean v1, Lcom/google/android/gms/internal/ads/zzaol;->a:Z

    if-nez v1, :cond_18

    const/4 v1, 0x1

    sput-boolean v1, Lcom/google/android/gms/internal/ads/zzaol;->a:Z

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzaok;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzaok;-><init>(Lcom/google/android/gms/internal/ads/zzaoj;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 2
    :cond_18
    monitor-exit v0

    return-void

    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public static e([B)[B
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzaol;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzaol;->d()V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_34

    const/4 v1, 0x0

    :try_start_7
    sget-object v2, Lcom/google/android/gms/internal/ads/zzaol;->e:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v3, 0x2

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 2
    invoke-virtual {v2, v3, v4, v5}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2
    :try_end_11
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_11} :catch_1b
    .catchall {:try_start_7 .. :try_end_11} :catchall_34

    if-nez v2, :cond_14

    goto :goto_1c

    .line 3
    :cond_14
    :try_start_14
    sget-object v2, Lcom/google/android/gms/internal/ads/zzaol;->b:Ljava/security/MessageDigest;

    if-nez v2, :cond_19

    goto :goto_1c

    :cond_19
    move-object v1, v2

    goto :goto_1c

    :catch_1b
    nop

    :goto_1c
    if-eqz v1, :cond_2c

    .line 4
    invoke-virtual {v1}, Ljava/security/MessageDigest;->reset()V

    .line 5
    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->update([B)V

    sget-object p0, Lcom/google/android/gms/internal/ads/zzaol;->b:Ljava/security/MessageDigest;

    .line 6
    invoke-virtual {p0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 7
    :cond_2c
    new-instance p0, Ljava/security/NoSuchAlgorithmException;

    const-string v1, "Cannot compute hash"

    invoke-direct {p0, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_34
    move-exception p0

    .line 8
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_14 .. :try_end_36} :catchall_34

    throw p0
.end method

.method static f(I)Lcom/google/android/gms/internal/ads/zzans;
    .registers 3

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzans;->j0()Lcom/google/android/gms/internal/ads/zzamv;

    move-result-object p0

    const-wide/16 v0, 0x1000

    .line 2
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzamv;->r(J)Lcom/google/android/gms/internal/ads/zzamv;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgqi;->k()Lcom/google/android/gms/internal/ads/zzgqm;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzans;

    return-object p0
.end method

.method private static g([BLjava/lang/String;Z)[B
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 1
    array-length v0, p0

    const/4 v1, 0x1

    if-eq v1, p2, :cond_7

    const/16 v2, 0xff

    goto :goto_9

    :cond_7
    const/16 v2, 0xef

    :goto_9
    if-le v0, v2, :cond_15

    const/16 p0, 0x1000

    .line 2
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzaol;->f(I)Lcom/google/android/gms/internal/ads/zzans;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgon;->t()[B

    move-result-object p0

    .line 4
    :cond_15
    array-length v0, p0

    if-ge v0, v2, :cond_3b

    sub-int v3, v2, v0

    new-array v3, v3, [B

    new-instance v4, Ljava/security/SecureRandom;

    .line 5
    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v4, v3}, Ljava/security/SecureRandom;->nextBytes([B)V

    add-int/2addr v2, v1

    int-to-byte v0, v0

    .line 6
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 7
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 8
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 9
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 10
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    goto :goto_4d

    :cond_3b
    add-int/2addr v2, v1

    int-to-byte v0, v0

    .line 11
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 12
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 13
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 14
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    :goto_4d
    const/16 v0, 0x100

    if-eqz p2, :cond_65

    .line 15
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzaol;->e([B)[B

    move-result-object p2

    .line 16
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 17
    invoke-virtual {v1, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 18
    invoke-virtual {p2, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 19
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    :cond_65
    new-array p2, v0, [B

    new-instance v0, Lcom/google/android/gms/internal/ads/zzapl;

    .line 20
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzapl;-><init>()V

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzapl;->G2:[Lcom/google/android/gms/internal/ads/zzaom;

    .line 21
    array-length v1, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_71
    const/16 v3, 0xc

    if-ge v2, v3, :cond_7d

    aget-object v3, v0, v2

    invoke-interface {v3, p0, p2}, Lcom/google/android/gms/internal/ads/zzaom;->a([B[B)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_71

    :cond_7d
    if-eqz p1, :cond_9f

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_9f

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v0, 0x20

    if-le p0, v0, :cond_91

    .line 22
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_91
    const-string p0, "UTF-8"

    .line 23
    invoke-virtual {p1, p0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    new-instance p1, Lcom/google/android/gms/internal/ads/zzgol;

    .line 24
    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzgol;-><init>([B)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzgol;->a([B)V

    :cond_9f
    return-object p2
.end method
