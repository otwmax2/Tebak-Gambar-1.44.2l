###### Class l0.b (l0.b)
.class public final Ll0/b;
.super Ll0/c;
.source "MetadataList.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ll0/c;-><init>()V

    return-void
.end method

.method public static h(Ljava/nio/ByteBuffer;)Ll0/b;
    .registers 2

    .line 1
    new-instance v0, Ll0/b;

    invoke-direct {v0}, Ll0/b;-><init>()V

    invoke-static {p0, v0}, Ll0/b;->i(Ljava/nio/ByteBuffer;Ll0/b;)Ll0/b;

    move-result-object p0

    return-object p0
.end method

.method public static i(Ljava/nio/ByteBuffer;Ll0/b;)Ll0/b;
    .registers 4

    .line 1
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1, v0, p0}, Ll0/b;->f(ILjava/nio/ByteBuffer;)Ll0/b;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public f(ILjava/nio/ByteBuffer;)Ll0/b;
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Ll0/b;->g(ILjava/nio/ByteBuffer;)V

    return-object p0
.end method

.method public g(ILjava/nio/ByteBuffer;)V
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Ll0/c;->c(ILjava/nio/ByteBuffer;)V

    return-void
.end method

.method public j(Ll0/a;I)Ll0/a;
    .registers 4

    const/4 v0, 0x6

    .line 1
    invoke-virtual {p0, v0}, Ll0/c;->b(I)I

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual {p0, v0}, Ll0/c;->d(I)I

    move-result v0

    mul-int/lit8 p2, p2, 0x4

    add-int/2addr v0, p2

    invoke-virtual {p0, v0}, Ll0/c;->a(I)I

    move-result p2

    iget-object v0, p0, Ll0/c;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p2, v0}, Ll0/a;->f(ILjava/nio/ByteBuffer;)Ll0/a;

    move-result-object p1

    goto :goto_1a

    :cond_19
    const/4 p1, 0x0

    :goto_1a
    return-object p1
.end method

.method public k()I
    .registers 2

    const/4 v0, 0x6

    .line 1
    invoke-virtual {p0, v0}, Ll0/c;->b(I)I

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0, v0}, Ll0/c;->e(I)I

    move-result v0

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public l()I
    .registers 4

    const/4 v0, 0x4

    .line 1
    invoke-virtual {p0, v0}, Ll0/c;->b(I)I

    move-result v0

    if-eqz v0, :cond_11

    iget-object v1, p0, Ll0/c;->b:Ljava/nio/ByteBuffer;

    iget v2, p0, Ll0/c;->a:I

    add-int/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    return v0
.end method
