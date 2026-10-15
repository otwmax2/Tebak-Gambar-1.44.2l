###### Class q5.g (q5.g)
.class Lq5/g;
.super Ljava/lang/Object;
.source "BytesBackedNativeSessionFile.java"

# interfaces
.implements Lq5/e0;


# instance fields
.field private final a:[B

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;[B)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lq5/g;->b:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lq5/g;->c:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lq5/g;->a:[B

    return-void
.end method

.method private d()[B
    .registers 5

    .line 1
    invoke-direct {p0}, Lq5/g;->e()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    .line 2
    :cond_8
    :try_start_8
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_d} :catch_39

    .line 3
    :try_start_d
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v2, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_2f

    .line 4
    :try_start_12
    iget-object v3, p0, Lq5/g;->a:[B

    invoke-virtual {v2, v3}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 5
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 6
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3
    :try_end_1e
    .catchall {:try_start_12 .. :try_end_1e} :catchall_25

    .line 7
    :try_start_1e
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_2f

    :try_start_21
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_24} :catch_39

    return-object v3

    :catchall_25
    move-exception v3

    .line 8
    :try_start_26
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_2a

    goto :goto_2e

    :catchall_2a
    move-exception v2

    :try_start_2b
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2e
    throw v3
    :try_end_2f
    .catchall {:try_start_2b .. :try_end_2f} :catchall_2f

    :catchall_2f
    move-exception v2

    :try_start_30
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_34

    goto :goto_38

    :catchall_34
    move-exception v0

    :try_start_35
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_38
    throw v2
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_39} :catch_39

    :catch_39
    return-object v1
.end method

.method private e()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lq5/g;->a:[B

    if-eqz v0, :cond_a

    array-length v0, v0

    if-nez v0, :cond_8

    goto :goto_a

    :cond_8
    const/4 v0, 0x0

    goto :goto_b

    :cond_a
    :goto_a
    const/4 v0, 0x1

    :goto_b
    return v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lq5/g;->c:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/io/InputStream;
    .registers 3

    .line 1
    invoke-direct {p0}, Lq5/g;->e()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    goto :goto_f

    :cond_8
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lq5/g;->a:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    :goto_f
    return-object v0
.end method

.method public c()Ls5/f0$d$b;
    .registers 3

    .line 1
    invoke-direct {p0}, Lq5/g;->d()[B

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    goto :goto_1a

    .line 2
    :cond_8
    invoke-static {}, Ls5/f0$d$b;->a()Ls5/f0$d$b$a;

    move-result-object v1

    .line 3
    invoke-virtual {v1, v0}, Ls5/f0$d$b$a;->b([B)Ls5/f0$d$b$a;

    move-result-object v0

    iget-object v1, p0, Lq5/g;->b:Ljava/lang/String;

    .line 4
    invoke-virtual {v0, v1}, Ls5/f0$d$b$a;->c(Ljava/lang/String;)Ls5/f0$d$b$a;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ls5/f0$d$b$a;->a()Ls5/f0$d$b;

    move-result-object v0

    :goto_1a
    return-object v0
.end method
