###### Class l0.c (l0.c)
.class public Ll0/c;
.super Ljava/lang/Object;
.source "Table.java"


# instance fields
.field protected a:I

.field protected b:Ljava/nio/ByteBuffer;

.field private c:I

.field private d:I

.field e:Ll0/d;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Ll0/d;->a()Ll0/d;

    move-result-object v0

    iput-object v0, p0, Ll0/c;->e:Ll0/d;

    return-void
.end method


# virtual methods
.method protected a(I)I
    .registers 3

    .line 1
    iget-object v0, p0, Ll0/c;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    add-int/2addr p1, v0

    return p1
.end method

.method protected b(I)I
    .registers 4

    .line 1
    iget v0, p0, Ll0/c;->d:I

    if-ge p1, v0, :cond_e

    iget-object v0, p0, Ll0/c;->b:Ljava/nio/ByteBuffer;

    iget v1, p0, Ll0/c;->c:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result p1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method protected c(ILjava/nio/ByteBuffer;)V
    .registers 3

    .line 1
    iput-object p2, p0, Ll0/c;->b:Ljava/nio/ByteBuffer;

    if-eqz p2, :cond_16

    .line 2
    iput p1, p0, Ll0/c;->a:I

    .line 3
    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p2

    sub-int/2addr p1, p2

    iput p1, p0, Ll0/c;->c:I

    .line 4
    iget-object p2, p0, Ll0/c;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result p1

    iput p1, p0, Ll0/c;->d:I

    goto :goto_1d

    :cond_16
    const/4 p1, 0x0

    .line 5
    iput p1, p0, Ll0/c;->a:I

    .line 6
    iput p1, p0, Ll0/c;->c:I

    .line 7
    iput p1, p0, Ll0/c;->d:I

    :goto_1d
    return-void
.end method

.method protected d(I)I
    .registers 3

    .line 1
    iget v0, p0, Ll0/c;->a:I

    add-int/2addr p1, v0

    .line 2
    iget-object v0, p0, Ll0/c;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    add-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x4

    return p1
.end method

.method protected e(I)I
    .registers 3

    .line 1
    iget v0, p0, Ll0/c;->a:I

    add-int/2addr p1, v0

    .line 2
    iget-object v0, p0, Ll0/c;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    add-int/2addr p1, v0

    .line 3
    iget-object v0, p0, Ll0/c;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p1

    return p1
.end method
