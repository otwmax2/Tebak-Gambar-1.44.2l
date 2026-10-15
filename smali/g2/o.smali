###### Class g2.o (g2.o)
.class public Lg2/o;
.super Ljava/lang/Object;
.source "StreamEncoder.java"

# interfaces
.implements Lz1/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lz1/b<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    const-string v0, ""

    return-object v0
.end method

.method public bridge synthetic b(Ljava/lang/Object;Ljava/io/OutputStream;)Z
    .registers 3

    .line 1
    check-cast p1, Ljava/io/InputStream;

    invoke-virtual {p0, p1, p2}, Lg2/o;->c(Ljava/io/InputStream;Ljava/io/OutputStream;)Z

    move-result p1

    return p1
.end method

.method public c(Ljava/io/InputStream;Ljava/io/OutputStream;)Z
    .registers 8

    const-string v0, "StreamEncoder"

    .line 1
    invoke-static {}, Lx2/a;->a()Lx2/a;

    move-result-object v1

    invoke-virtual {v1}, Lx2/a;->b()[B

    move-result-object v1

    :goto_a
    const/4 v2, 0x0

    .line 2
    :try_start_b
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_16

    .line 3
    invoke-virtual {p2, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_15} :catch_21
    .catchall {:try_start_b .. :try_end_15} :catchall_1f

    goto :goto_a

    :cond_16
    const/4 p1, 0x1

    .line 4
    invoke-static {}, Lx2/a;->a()Lx2/a;

    move-result-object p2

    invoke-virtual {p2, v1}, Lx2/a;->c([B)Z

    return p1

    :catchall_1f
    move-exception p1

    goto :goto_36

    :catch_21
    move-exception p1

    const/4 p2, 0x3

    .line 5
    :try_start_23
    invoke-static {v0, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_2e

    const-string p2, "Failed to encode data onto the OutputStream"

    .line 6
    invoke-static {v0, p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2e
    .catchall {:try_start_23 .. :try_end_2e} :catchall_1f

    .line 7
    :cond_2e
    invoke-static {}, Lx2/a;->a()Lx2/a;

    move-result-object p1

    invoke-virtual {p1, v1}, Lx2/a;->c([B)Z

    return v2

    :goto_36
    invoke-static {}, Lx2/a;->a()Lx2/a;

    move-result-object p2

    invoke-virtual {p2, v1}, Lx2/a;->c([B)Z

    goto :goto_3f

    :goto_3e
    throw p1

    :goto_3f
    goto :goto_3e
.end method
