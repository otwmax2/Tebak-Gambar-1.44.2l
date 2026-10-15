###### Class k2.o (k2.o)
.class public Lk2/o;
.super Ljava/io/FilterInputStream;
.source "RecyclableBufferedInputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk2/o$a;
    }
.end annotation


# instance fields
.field private volatile o:[B

.field private p:I

.field private q:I

.field private r:I

.field private s:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;[B)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lk2/o;->r:I

    if-eqz p2, :cond_e

    .line 3
    array-length p1, p2

    if-eqz p1, :cond_e

    .line 4
    iput-object p2, p0, Lk2/o;->o:[B

    return-void

    .line 5
    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "buffer is null or empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private b(Ljava/io/InputStream;[B)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lk2/o;->r:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_67

    iget v3, p0, Lk2/o;->s:I

    sub-int/2addr v3, v0

    iget v4, p0, Lk2/o;->q:I

    if-lt v3, v4, :cond_e

    goto :goto_67

    :cond_e
    if-nez v0, :cond_46

    .line 2
    array-length v1, p2

    if-le v4, v1, :cond_46

    iget v1, p0, Lk2/o;->p:I

    array-length v3, p2

    if-ne v1, v3, :cond_46

    .line 3
    array-length v0, p2

    mul-int/lit8 v0, v0, 0x2

    if-le v0, v4, :cond_1e

    goto :goto_1f

    :cond_1e
    move v4, v0

    :goto_1f
    const/4 v0, 0x3

    const-string v1, "BufferedIs"

    .line 4
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "allocate buffer of length: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    :cond_3c
    new-array v0, v4, [B

    .line 7
    array-length v1, p2

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    iput-object v0, p0, Lk2/o;->o:[B

    move-object p2, v0

    goto :goto_4d

    :cond_46
    if-lez v0, :cond_4d

    .line 9
    array-length v1, p2

    sub-int/2addr v1, v0

    invoke-static {p2, v0, p2, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10
    :cond_4d
    :goto_4d
    iget v0, p0, Lk2/o;->s:I

    iget v1, p0, Lk2/o;->r:I

    sub-int/2addr v0, v1

    iput v0, p0, Lk2/o;->s:I

    .line 11
    iput v2, p0, Lk2/o;->r:I

    iput v2, p0, Lk2/o;->p:I

    .line 12
    array-length v1, p2

    sub-int/2addr v1, v0

    invoke-virtual {p1, p2, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    .line 13
    iget p2, p0, Lk2/o;->s:I

    if-gtz p1, :cond_63

    goto :goto_64

    :cond_63
    add-int/2addr p2, p1

    :goto_64
    iput p2, p0, Lk2/o;->p:I

    return p1

    .line 14
    :cond_67
    :goto_67
    invoke-virtual {p1, p2}, Ljava/io/InputStream;->read([B)I

    move-result p1

    if-lez p1, :cond_73

    .line 15
    iput v1, p0, Lk2/o;->r:I

    .line 16
    iput v2, p0, Lk2/o;->s:I

    .line 17
    iput p1, p0, Lk2/o;->p:I

    :cond_73
    return p1
.end method

.method private static d()Ljava/io/IOException;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "BufferedInputStream is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public declared-synchronized available()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    .line 2
    iget-object v1, p0, Lk2/o;->o:[B

    if-eqz v1, :cond_15

    if-eqz v0, :cond_15

    .line 3
    iget v1, p0, Lk2/o;->p:I

    iget v2, p0, Lk2/o;->s:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_1a

    add-int/2addr v1, v0

    monitor-exit p0

    return v1

    .line 4
    :cond_15
    :try_start_15
    invoke-static {}, Lk2/o;->d()Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_1a

    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()V
    .registers 2

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lk2/o;->o:[B

    array-length v0, v0

    iput v0, p0, Lk2/o;->q:I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 2
    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lk2/o;->o:[B

    .line 2
    iget-object v1, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    .line 3
    iput-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    if-eqz v1, :cond_c

    .line 4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_c
    return-void
.end method

.method public declared-synchronized mark(I)V
    .registers 3

    monitor-enter p0

    .line 1
    :try_start_1
    iget v0, p0, Lk2/o;->q:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lk2/o;->q:I

    .line 2
    iget p1, p0, Lk2/o;->s:I

    iput p1, p0, Lk2/o;->r:I
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 3
    monitor-exit p0

    return-void

    :catchall_f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public markSupported()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized read()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lk2/o;->o:[B

    .line 2
    iget-object v1, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_39

    if-eqz v1, :cond_39

    .line 3
    iget v2, p0, Lk2/o;->s:I

    iget v3, p0, Lk2/o;->p:I

    const/4 v4, -0x1

    if-lt v2, v3, :cond_18

    invoke-direct {p0, v1, v0}, Lk2/o;->b(Ljava/io/InputStream;[B)I

    move-result v1
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_3e

    if-ne v1, v4, :cond_18

    .line 4
    monitor-exit p0

    return v4

    .line 5
    :cond_18
    :try_start_18
    iget-object v1, p0, Lk2/o;->o:[B

    if-eq v0, v1, :cond_26

    .line 6
    iget-object v0, p0, Lk2/o;->o:[B

    if-eqz v0, :cond_21

    goto :goto_26

    .line 7
    :cond_21
    invoke-static {}, Lk2/o;->d()Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 8
    :cond_26
    :goto_26
    iget v1, p0, Lk2/o;->p:I

    iget v2, p0, Lk2/o;->s:I

    sub-int/2addr v1, v2

    if-lez v1, :cond_37

    add-int/lit8 v1, v2, 0x1

    .line 9
    iput v1, p0, Lk2/o;->s:I

    aget-byte v0, v0, v2
    :try_end_33
    .catchall {:try_start_18 .. :try_end_33} :catchall_3e

    and-int/lit16 v0, v0, 0xff

    monitor-exit p0

    return v0

    .line 10
    :cond_37
    monitor-exit p0

    return v4

    .line 11
    :cond_39
    :try_start_39
    invoke-static {}, Lk2/o;->d()Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_3e
    .catchall {:try_start_39 .. :try_end_3e} :catchall_3e

    :catchall_3e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized read([BII)I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 12
    :try_start_1
    iget-object v0, p0, Lk2/o;->o:[B
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_90

    if-eqz v0, :cond_8b

    if-nez p3, :cond_a

    const/4 p1, 0x0

    .line 13
    monitor-exit p0

    return p1

    .line 14
    :cond_a
    :try_start_a
    iget-object v1, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    if-eqz v1, :cond_86

    .line 15
    iget v2, p0, Lk2/o;->s:I

    iget v3, p0, Lk2/o;->p:I

    if-ge v2, v3, :cond_32

    sub-int v4, v3, v2

    if-lt v4, p3, :cond_1a

    move v3, p3

    goto :goto_1b

    :cond_1a
    sub-int/2addr v3, v2

    .line 16
    :goto_1b
    invoke-static {v0, v2, p1, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 17
    iget v2, p0, Lk2/o;->s:I

    add-int/2addr v2, v3

    iput v2, p0, Lk2/o;->s:I

    if-eq v3, p3, :cond_30

    .line 18
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v2
    :try_end_29
    .catchall {:try_start_a .. :try_end_29} :catchall_90

    if-nez v2, :cond_2c

    goto :goto_30

    :cond_2c
    add-int/2addr p2, v3

    sub-int v2, p3, v3

    goto :goto_33

    .line 19
    :cond_30
    :goto_30
    monitor-exit p0

    return v3

    :cond_32
    move v2, p3

    .line 20
    :goto_33
    :try_start_33
    iget v3, p0, Lk2/o;->r:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_48

    array-length v3, v0

    if-lt v2, v3, :cond_48

    .line 21
    invoke-virtual {v1, p1, p2, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v3
    :try_end_3f
    .catchall {:try_start_33 .. :try_end_3f} :catchall_90

    if-ne v3, v4, :cond_76

    if-ne v2, p3, :cond_44

    goto :goto_46

    :cond_44
    sub-int v4, p3, v2

    .line 22
    :goto_46
    monitor-exit p0

    return v4

    .line 23
    :cond_48
    :try_start_48
    invoke-direct {p0, v1, v0}, Lk2/o;->b(Ljava/io/InputStream;[B)I

    move-result v3
    :try_end_4c
    .catchall {:try_start_48 .. :try_end_4c} :catchall_90

    if-ne v3, v4, :cond_55

    if-ne v2, p3, :cond_51

    goto :goto_53

    :cond_51
    sub-int v4, p3, v2

    .line 24
    :goto_53
    monitor-exit p0

    return v4

    .line 25
    :cond_55
    :try_start_55
    iget-object v3, p0, Lk2/o;->o:[B

    if-eq v0, v3, :cond_63

    .line 26
    iget-object v0, p0, Lk2/o;->o:[B

    if-eqz v0, :cond_5e

    goto :goto_63

    .line 27
    :cond_5e
    invoke-static {}, Lk2/o;->d()Ljava/io/IOException;

    move-result-object p1

    throw p1

    .line 28
    :cond_63
    :goto_63
    iget v3, p0, Lk2/o;->p:I

    iget v4, p0, Lk2/o;->s:I

    sub-int v5, v3, v4

    if-lt v5, v2, :cond_6d

    move v3, v2

    goto :goto_6e

    :cond_6d
    sub-int/2addr v3, v4

    .line 29
    :goto_6e
    invoke-static {v0, v4, p1, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 30
    iget v4, p0, Lk2/o;->s:I

    add-int/2addr v4, v3

    iput v4, p0, Lk2/o;->s:I
    :try_end_76
    .catchall {:try_start_55 .. :try_end_76} :catchall_90

    :cond_76
    sub-int/2addr v2, v3

    if-nez v2, :cond_7b

    .line 31
    monitor-exit p0

    return p3

    .line 32
    :cond_7b
    :try_start_7b
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v4
    :try_end_7f
    .catchall {:try_start_7b .. :try_end_7f} :catchall_90

    if-nez v4, :cond_84

    sub-int/2addr p3, v2

    .line 33
    monitor-exit p0

    return p3

    :cond_84
    add-int/2addr p2, v3

    goto :goto_33

    .line 34
    :cond_86
    :try_start_86
    invoke-static {}, Lk2/o;->d()Ljava/io/IOException;

    move-result-object p1

    throw p1

    .line 35
    :cond_8b
    invoke-static {}, Lk2/o;->d()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_90
    .catchall {:try_start_86 .. :try_end_90} :catchall_90

    :catchall_90
    move-exception p1

    monitor-exit p0

    goto :goto_94

    :goto_93
    throw p1

    :goto_94
    goto :goto_93
.end method

.method public declared-synchronized reset()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lk2/o;->o:[B

    if-eqz v0, :cond_16

    const/4 v0, -0x1

    .line 2
    iget v1, p0, Lk2/o;->r:I

    if-eq v0, v1, :cond_e

    .line 3
    iput v1, p0, Lk2/o;->s:I
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_1e

    .line 4
    monitor-exit p0

    return-void

    .line 5
    :cond_e
    :try_start_e
    new-instance v0, Lk2/o$a;

    const-string v1, "Mark has been invalidated"

    invoke-direct {v0, v1}, Lk2/o$a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_16
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1e
    .catchall {:try_start_e .. :try_end_1e} :catchall_1e

    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized skip(J)J
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lk2/o;->o:[B

    .line 2
    iget-object v1, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_6c

    if-eqz v0, :cond_67

    const-wide/16 v2, 0x1

    cmp-long v4, p1, v2

    if-gez v4, :cond_11

    const-wide/16 p1, 0x0

    .line 3
    monitor-exit p0

    return-wide p1

    :cond_11
    if-eqz v1, :cond_62

    .line 4
    :try_start_13
    iget v2, p0, Lk2/o;->p:I

    iget v3, p0, Lk2/o;->s:I

    sub-int v4, v2, v3

    int-to-long v4, v4

    cmp-long v6, v4, p1

    if-ltz v6, :cond_25

    int-to-long v0, v3

    add-long/2addr v0, p1

    long-to-int v1, v0

    .line 5
    iput v1, p0, Lk2/o;->s:I
    :try_end_23
    .catchall {:try_start_13 .. :try_end_23} :catchall_6c

    .line 6
    monitor-exit p0

    return-wide p1

    :cond_25
    sub-int v3, v2, v3

    int-to-long v3, v3

    .line 7
    :try_start_28
    iput v2, p0, Lk2/o;->s:I

    .line 8
    iget v2, p0, Lk2/o;->r:I

    const/4 v5, -0x1

    if-eq v2, v5, :cond_5a

    iget v2, p0, Lk2/o;->q:I

    int-to-long v6, v2

    cmp-long v2, p1, v6

    if-gtz v2, :cond_5a

    .line 9
    invoke-direct {p0, v1, v0}, Lk2/o;->b(Ljava/io/InputStream;[B)I

    move-result v0
    :try_end_3a
    .catchall {:try_start_28 .. :try_end_3a} :catchall_6c

    if-ne v0, v5, :cond_3e

    .line 10
    monitor-exit p0

    return-wide v3

    .line 11
    :cond_3e
    :try_start_3e
    iget v0, p0, Lk2/o;->p:I

    iget v1, p0, Lk2/o;->s:I

    sub-int v2, v0, v1

    int-to-long v5, v2

    sub-long v7, p1, v3

    cmp-long v2, v5, v7

    if-ltz v2, :cond_52

    int-to-long v0, v1

    add-long/2addr v0, v7

    long-to-int v1, v0

    .line 12
    iput v1, p0, Lk2/o;->s:I
    :try_end_50
    .catchall {:try_start_3e .. :try_end_50} :catchall_6c

    .line 13
    monitor-exit p0

    return-wide p1

    :cond_52
    int-to-long p1, v0

    add-long/2addr v3, p1

    int-to-long p1, v1

    sub-long/2addr v3, p1

    .line 14
    :try_start_56
    iput v0, p0, Lk2/o;->s:I
    :try_end_58
    .catchall {:try_start_56 .. :try_end_58} :catchall_6c

    .line 15
    monitor-exit p0

    return-wide v3

    :cond_5a
    sub-long/2addr p1, v3

    .line 16
    :try_start_5b
    invoke-virtual {v1, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide p1
    :try_end_5f
    .catchall {:try_start_5b .. :try_end_5f} :catchall_6c

    add-long/2addr v3, p1

    monitor-exit p0

    return-wide v3

    .line 17
    :cond_62
    :try_start_62
    invoke-static {}, Lk2/o;->d()Ljava/io/IOException;

    move-result-object p1

    throw p1

    .line 18
    :cond_67
    invoke-static {}, Lk2/o;->d()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_6c
    .catchall {:try_start_62 .. :try_end_6c} :catchall_6c

    :catchall_6c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

###### Class k2.o.a (k2.o$a)
.class public Lk2/o$a;
.super Ljava/lang/RuntimeException;
.source "RecyclableBufferedInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk2/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x3c350493c899b79dL


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-void
.end method
