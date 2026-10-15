###### Class s4.e (s4.e)
.class public final Ls4/e;
.super Ljava/io/InputStream;
.source "com.google.android.play:core@@1.10.2"


# instance fields
.field private final o:Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Enumeration<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/util/Enumeration;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Enumeration<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p1, p0, Ls4/e;->o:Ljava/util/Enumeration;

    .line 2
    invoke-virtual {p0}, Ls4/e;->b()V

    return-void
.end method


# virtual methods
.method final b()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ls4/e;->p:Ljava/io/InputStream;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_7
    iget-object v0, p0, Ls4/e;->o:Ljava/util/Enumeration;

    .line 2
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1f

    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Ls4/e;->o:Ljava/util/Enumeration;

    .line 3
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :goto_1c
    iput-object v0, p0, Ls4/e;->p:Ljava/io/InputStream;

    return-void

    :cond_1f
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method public final close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-super {p0}, Ljava/io/InputStream;->close()V

    iget-object v0, p0, Ls4/e;->p:Ljava/io/InputStream;

    if-eqz v0, :cond_d

    .line 2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Ls4/e;->p:Ljava/io/InputStream;

    :cond_d
    return-void
.end method

.method public final read()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :goto_0
    iget-object v0, p0, Ls4/e;->p:Ljava/io/InputStream;

    const/4 v1, -0x1

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-eq v0, v1, :cond_c

    return v0

    .line 2
    :cond_c
    invoke-virtual {p0}, Ls4/e;->b()V

    goto :goto_0

    :cond_10
    return v1
.end method

.method public final read([BII)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    iget-object v0, p0, Ls4/e;->p:Ljava/io/InputStream;

    const/4 v1, -0x1

    if-nez v0, :cond_6

    return v1

    :cond_6
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-ltz p2, :cond_26

    if-ltz p3, :cond_26

    array-length v0, p1

    sub-int/2addr v0, p2

    if-gt p3, v0, :cond_26

    if-eqz p3, :cond_24

    .line 4
    :cond_13
    iget-object v0, p0, Ls4/e;->p:Ljava/io/InputStream;

    .line 5
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-lez v0, :cond_1c

    return v0

    .line 6
    :cond_1c
    invoke-virtual {p0}, Ls4/e;->b()V

    iget-object v0, p0, Ls4/e;->p:Ljava/io/InputStream;

    if-nez v0, :cond_13

    return v1

    :cond_24
    const/4 p1, 0x0

    return p1

    .line 7
    :cond_26
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    .line 8
    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    goto :goto_2d

    :goto_2c
    throw p1

    :goto_2d
    goto :goto_2c
.end method
