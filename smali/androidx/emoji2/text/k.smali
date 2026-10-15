###### Class androidx.emoji2.text.k (androidx.emoji2.text.k)
.class Landroidx/emoji2/text/k;
.super Ljava/lang/Object;
.source "MetadataListReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/emoji2/text/k$a;,
        Landroidx/emoji2/text/k$c;,
        Landroidx/emoji2/text/k$b;
    }
.end annotation


# direct methods
.method private static a(Landroidx/emoji2/text/k$c;)Landroidx/emoji2/text/k$b;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 1
    invoke-interface {p0, v0}, Landroidx/emoji2/text/k$c;->b(I)V

    .line 2
    invoke-interface {p0}, Landroidx/emoji2/text/k$c;->readUnsignedShort()I

    move-result v1

    const-string v2, "Cannot read metadata."

    const/16 v3, 0x64

    if-gt v1, v3, :cond_73

    const/4 v3, 0x6

    .line 3
    invoke-interface {p0, v3}, Landroidx/emoji2/text/k$c;->b(I)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_14
    const-wide/16 v5, -0x1

    if-ge v4, v1, :cond_2f

    .line 4
    invoke-interface {p0}, Landroidx/emoji2/text/k$c;->a()I

    move-result v7

    .line 5
    invoke-interface {p0, v0}, Landroidx/emoji2/text/k$c;->b(I)V

    .line 6
    invoke-interface {p0}, Landroidx/emoji2/text/k$c;->c()J

    move-result-wide v8

    .line 7
    invoke-interface {p0, v0}, Landroidx/emoji2/text/k$c;->b(I)V

    const v10, 0x6d657461

    if-ne v10, v7, :cond_2c

    goto :goto_30

    :cond_2c
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    :cond_2f
    move-wide v8, v5

    :goto_30
    cmp-long v0, v8, v5

    if-eqz v0, :cond_6d

    .line 8
    invoke-interface {p0}, Landroidx/emoji2/text/k$c;->getPosition()J

    move-result-wide v0

    sub-long v0, v8, v0

    long-to-int v1, v0

    invoke-interface {p0, v1}, Landroidx/emoji2/text/k$c;->b(I)V

    const/16 v0, 0xc

    .line 9
    invoke-interface {p0, v0}, Landroidx/emoji2/text/k$c;->b(I)V

    .line 10
    invoke-interface {p0}, Landroidx/emoji2/text/k$c;->c()J

    move-result-wide v0

    :goto_47
    int-to-long v4, v3

    cmp-long v6, v4, v0

    if-gez v6, :cond_6d

    .line 11
    invoke-interface {p0}, Landroidx/emoji2/text/k$c;->a()I

    move-result v4

    .line 12
    invoke-interface {p0}, Landroidx/emoji2/text/k$c;->c()J

    move-result-wide v5

    .line 13
    invoke-interface {p0}, Landroidx/emoji2/text/k$c;->c()J

    move-result-wide v10

    const v7, 0x456d6a69

    if-eq v7, v4, :cond_66

    const v7, 0x656d6a69

    if-ne v7, v4, :cond_63

    goto :goto_66

    :cond_63
    add-int/lit8 v3, v3, 0x1

    goto :goto_47

    .line 14
    :cond_66
    :goto_66
    new-instance p0, Landroidx/emoji2/text/k$b;

    add-long/2addr v5, v8

    invoke-direct {p0, v5, v6, v10, v11}, Landroidx/emoji2/text/k$b;-><init>(JJ)V

    return-object p0

    .line 15
    :cond_6d
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 16
    :cond_73
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_7a

    :goto_79
    throw p0

    :goto_7a
    goto :goto_79
.end method

.method static b(Ljava/nio/ByteBuffer;)Ll0/b;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 2
    new-instance v0, Landroidx/emoji2/text/k$a;

    invoke-direct {v0, p0}, Landroidx/emoji2/text/k$a;-><init>(Ljava/nio/ByteBuffer;)V

    .line 3
    invoke-static {v0}, Landroidx/emoji2/text/k;->a(Landroidx/emoji2/text/k$c;)Landroidx/emoji2/text/k$b;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Landroidx/emoji2/text/k$b;->a()J

    move-result-wide v0

    long-to-int v1, v0

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 5
    invoke-static {p0}, Ll0/b;->h(Ljava/nio/ByteBuffer;)Ll0/b;

    move-result-object p0

    return-object p0
.end method

.method static c(I)J
    .registers 5

    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method static d(S)I
    .registers 2

    const v0, 0xffff

    and-int/2addr p0, v0

    return p0
.end method

###### Class androidx.emoji2.text.k.a (androidx.emoji2.text.k$a)
.class Landroidx/emoji2/text/k$a;
.super Ljava/lang/Object;
.source "MetadataListReader.java"

# interfaces
.implements Landroidx/emoji2/text/k$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/text/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/nio/ByteBuffer;


# direct methods
.method constructor <init>(Ljava/nio/ByteBuffer;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/emoji2/text/k$a;->a:Ljava/nio/ByteBuffer;

    .line 3
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/emoji2/text/k$a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    return v0
.end method

.method public b(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/emoji2/text/k$a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method public c()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/emoji2/text/k$a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    invoke-static {v0}, Landroidx/emoji2/text/k;->c(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPosition()J
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/emoji2/text/k$a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public readUnsignedShort()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/emoji2/text/k$a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    invoke-static {v0}, Landroidx/emoji2/text/k;->d(S)I

    move-result v0

    return v0
.end method

###### Class androidx.emoji2.text.k.b (androidx.emoji2.text.k$b)
.class Landroidx/emoji2/text/k$b;
.super Ljava/lang/Object;
.source "MetadataListReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/text/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final a:J

.field private final b:J


# direct methods
.method constructor <init>(JJ)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Landroidx/emoji2/text/k$b;->a:J

    .line 3
    iput-wide p3, p0, Landroidx/emoji2/text/k$b;->b:J

    return-void
.end method


# virtual methods
.method a()J
    .registers 3

    .line 1
    iget-wide v0, p0, Landroidx/emoji2/text/k$b;->a:J

    return-wide v0
.end method

###### Class androidx.emoji2.text.k.c (androidx.emoji2.text.k$c)
.class interface abstract Landroidx/emoji2/text/k$c;
.super Ljava/lang/Object;
.source "MetadataListReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/text/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "c"
.end annotation


# virtual methods
.method public abstract a()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract b(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract c()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getPosition()J
.end method

.method public abstract readUnsignedShort()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
