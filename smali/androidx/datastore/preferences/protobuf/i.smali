###### Class androidx.datastore.preferences.protobuf.i (androidx.datastore.preferences.protobuf.i)
.class public abstract Landroidx/datastore/preferences/protobuf/i;
.super Ljava/lang/Object;
.source "CodedInputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/datastore/preferences/protobuf/i$c;,
        Landroidx/datastore/preferences/protobuf/i$b;
    }
.end annotation


# instance fields
.field a:I

.field b:I

.field c:I

.field d:Landroidx/datastore/preferences/protobuf/j;

.field private e:Z


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    .line 3
    iput v0, p0, Landroidx/datastore/preferences/protobuf/i;->b:I

    const v0, 0x7fffffff

    .line 4
    iput v0, p0, Landroidx/datastore/preferences/protobuf/i;->c:I

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Landroidx/datastore/preferences/protobuf/i;->e:Z

    return-void
.end method

.method synthetic constructor <init>(Landroidx/datastore/preferences/protobuf/i$a;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/i;-><init>()V

    return-void
.end method

.method public static b(I)I
    .registers 2

    ushr-int/lit8 v0, p0, 0x1

    and-int/lit8 p0, p0, 0x1

    neg-int p0, p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public static c(J)J
    .registers 6

    const/4 v0, 0x1

    ushr-long v0, p0, v0

    const-wide/16 v2, 0x1

    and-long/2addr p0, v2

    neg-long p0, p0

    xor-long/2addr p0, v0

    return-wide p0
.end method

.method public static f(Ljava/io/InputStream;)Landroidx/datastore/preferences/protobuf/i;
    .registers 2

    const/16 v0, 0x1000

    .line 1
    invoke-static {p0, v0}, Landroidx/datastore/preferences/protobuf/i;->g(Ljava/io/InputStream;I)Landroidx/datastore/preferences/protobuf/i;

    move-result-object p0

    return-object p0
.end method

.method public static g(Ljava/io/InputStream;I)Landroidx/datastore/preferences/protobuf/i;
    .registers 4

    if-lez p1, :cond_12

    if-nez p0, :cond_b

    .line 1
    sget-object p0, Landroidx/datastore/preferences/protobuf/a0;->c:[B

    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/i;->h([B)Landroidx/datastore/preferences/protobuf/i;

    move-result-object p0

    return-object p0

    .line 2
    :cond_b
    new-instance v0, Landroidx/datastore/preferences/protobuf/i$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroidx/datastore/preferences/protobuf/i$c;-><init>(Ljava/io/InputStream;ILandroidx/datastore/preferences/protobuf/i$a;)V

    return-object v0

    .line 3
    :cond_12
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bufferSize must be > 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static h([B)Landroidx/datastore/preferences/protobuf/i;
    .registers 3

    .line 1
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Landroidx/datastore/preferences/protobuf/i;->i([BII)Landroidx/datastore/preferences/protobuf/i;

    move-result-object p0

    return-object p0
.end method

.method public static i([BII)Landroidx/datastore/preferences/protobuf/i;
    .registers 4

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, p2, v0}, Landroidx/datastore/preferences/protobuf/i;->j([BIIZ)Landroidx/datastore/preferences/protobuf/i;

    move-result-object p0

    return-object p0
.end method

.method static j([BIIZ)Landroidx/datastore/preferences/protobuf/i;
    .registers 11

    .line 1
    new-instance v6, Landroidx/datastore/preferences/protobuf/i$b;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/i$b;-><init>([BIIZLandroidx/datastore/preferences/protobuf/i$a;)V

    .line 2
    :try_start_b
    invoke-virtual {v6, p2}, Landroidx/datastore/preferences/protobuf/i$b;->l(I)I
    :try_end_e
    .catch Landroidx/datastore/preferences/protobuf/b0; {:try_start_b .. :try_end_e} :catch_f

    return-object v6

    :catch_f
    move-exception p0

    .line 3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public abstract A()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract B()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract C()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract D()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract E(I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract a(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/datastore/preferences/protobuf/b0;
        }
    .end annotation
.end method

.method public abstract d()I
.end method

.method public abstract e()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract k(I)V
.end method

.method public abstract l(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/datastore/preferences/protobuf/b0;
        }
    .end annotation
.end method

.method public abstract m()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract n()Landroidx/datastore/preferences/protobuf/h;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract o()D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract p()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract q()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract r()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract s()F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract t()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract u()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract v()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract w()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract x()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract y()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract z()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

###### Class androidx.datastore.preferences.protobuf.i.a (androidx.datastore.preferences.protobuf.i$a)
.class synthetic Landroidx/datastore/preferences/protobuf/i$a;
.super Ljava/lang/Object;
.source "CodedInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/datastore/preferences/protobuf/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class androidx.datastore.preferences.protobuf.i.b (androidx.datastore.preferences.protobuf.i$b)
.class final Landroidx/datastore/preferences/protobuf/i$b;
.super Landroidx/datastore/preferences/protobuf/i;
.source "CodedInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/datastore/preferences/protobuf/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final f:[B

.field private final g:Z

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:Z

.field private n:I


# direct methods
.method private constructor <init>([BIIZ)V
    .registers 6

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/i;-><init>(Landroidx/datastore/preferences/protobuf/i$a;)V

    const v0, 0x7fffffff

    .line 3
    iput v0, p0, Landroidx/datastore/preferences/protobuf/i$b;->n:I

    .line 4
    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/i$b;->f:[B

    add-int/2addr p3, p2

    .line 5
    iput p3, p0, Landroidx/datastore/preferences/protobuf/i$b;->h:I

    .line 6
    iput p2, p0, Landroidx/datastore/preferences/protobuf/i$b;->j:I

    .line 7
    iput p2, p0, Landroidx/datastore/preferences/protobuf/i$b;->k:I

    .line 8
    iput-boolean p4, p0, Landroidx/datastore/preferences/protobuf/i$b;->g:Z

    return-void
.end method

.method synthetic constructor <init>([BIIZLandroidx/datastore/preferences/protobuf/i$a;)V
    .registers 6

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/datastore/preferences/protobuf/i$b;-><init>([BIIZ)V

    return-void
.end method

.method private M()V
    .registers 4

    .line 1
    iget v0, p0, Landroidx/datastore/preferences/protobuf/i$b;->h:I

    iget v1, p0, Landroidx/datastore/preferences/protobuf/i$b;->i:I

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/datastore/preferences/protobuf/i$b;->h:I

    .line 2
    iget v1, p0, Landroidx/datastore/preferences/protobuf/i$b;->k:I

    sub-int v1, v0, v1

    .line 3
    iget v2, p0, Landroidx/datastore/preferences/protobuf/i$b;->n:I

    if-le v1, v2, :cond_16

    sub-int/2addr v1, v2

    .line 4
    iput v1, p0, Landroidx/datastore/preferences/protobuf/i$b;->i:I

    sub-int/2addr v0, v1

    .line 5
    iput v0, p0, Landroidx/datastore/preferences/protobuf/i$b;->h:I

    goto :goto_19

    :cond_16
    const/4 v0, 0x0

    .line 6
    iput v0, p0, Landroidx/datastore/preferences/protobuf/i$b;->i:I

    :goto_19
    return-void
.end method

.method private P()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Landroidx/datastore/preferences/protobuf/i$b;->h:I

    iget v1, p0, Landroidx/datastore/preferences/protobuf/i$b;->j:I

    sub-int/2addr v0, v1

    const/16 v1, 0xa

    if-lt v0, v1, :cond_d

    .line 2
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/i$b;->Q()V

    goto :goto_10

    .line 3
    :cond_d
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/i$b;->R()V

    :goto_10
    return-void
.end method

.method private Q()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0xa

    if-ge v0, v1, :cond_15

    .line 1
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/i$b;->f:[B

    iget v2, p0, Landroidx/datastore/preferences/protobuf/i$b;->j:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroidx/datastore/preferences/protobuf/i$b;->j:I

    aget-byte v1, v1, v2

    if-ltz v1, :cond_12

    return-void

    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2
    :cond_15
    invoke-static {}, Landroidx/datastore/preferences/protobuf/b0;->e()Landroidx/datastore/preferences/protobuf/b0;

    move-result-object v0

    goto :goto_1b

    :goto_1a
    throw v0

    :goto_1b
    goto :goto_1a
.end method

.method private R()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0xa

    if-ge v0, v1, :cond_f

    .line 1
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/i$b;->F()B

    move-result v1

    if-ltz v1, :cond_c

    return-void

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2
    :cond_f
    invoke-static {}, Landroidx/datastore/preferences/protobuf/b0;->e()Landroidx/datastore/preferences/protobuf/b0;

    move-result-object v0

    goto :goto_15

    :goto_14
    throw v0

    :goto_15
    goto :goto_14
.end method


# virtual methods
.method public A()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/i$b;->J()I

    move-result v0

    if-lez v0, :cond_19

    .line 2
    iget v1, p0, Landroidx/datastore/preferences/protobuf/i$b;->h:I

    iget v2, p0, Landroidx/datastore/preferences/protobuf/i$b;->j:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_19

    .line 3
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/i$b;->f:[B

    invoke-static {v1, v2, v0}, Landroidx/datastore/preferences/protobuf/s1;->e([BII)Ljava/lang/String;

    move-result-object v1

    .line 4
    iget v2, p0, Landroidx/datastore/preferences/protobuf/i$b;->j:I

    add-int/2addr v2, v0

    iput v2, p0, Landroidx/datastore/preferences/protobuf/i$b;->j:I

    return-object v1

    :cond_19
    if-nez v0, :cond_1e

    const-string v0, ""

    return-object v0

    :cond_1e
    if-gtz v0, :cond_25

    .line 5
    invoke-static {}, Landroidx/datastore/preferences/protobuf/b0;->f()Landroidx/datastore/preferences/protobuf/b0;

    move-result-object v0

    throw v0

    .line 6
    :cond_25
    invoke-static {}, Landroidx/datastore/preferences/protobuf/b0;->k()Landroidx/datastore/preferences/protobuf/b0;

    move-result-object v0

    throw v0
.end method

.method public B()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/i$b;->e()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroidx/datastore/preferences/protobuf/i$b;->l:I

    return v0

    .line 3
    :cond_a
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/i$b;->J()I

    move-result v0

    iput v0, p0, Landroidx/datastore/preferences/protobuf/i$b;->l:I

    .line 4
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/t1;->a(I)I

    move-result v0

    if-eqz v0, :cond_19

    .line 5
    iget v0, p0, Landroidx/datastore/preferences/protobuf/i$b;->l:I

    return v0

    .line 6
    :cond_19
    invoke-static {}, Landroidx/datastore/preferences/protobuf/b0;->b()Landroidx/datastore/preferences/protobuf/b0;

    move-result-object v0

    throw v0
.end method

.method public C()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/i$b;->J()I

    move-result v0

    return v0
.end method

.method public D()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/i$b;->K()J

    move-result-wide v0

    return-wide v0
.end method

.method public E(I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/t1;->b(I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3d

    if-eq v0, v1, :cond_37

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2f

    const/4 v2, 0x3

    const/4 v3, 0x4

    if-eq v0, v2, :cond_20

    if-eq v0, v3, :cond_1e

    const/4 p1, 0x5

    if-ne v0, p1, :cond_19

    .line 2
    invoke-virtual {p0, v3}, Landroidx/datastore/preferences/protobuf/i$b;->O(I)V

    return v1

    .line 3
    :cond_19
    invoke-static {}, Landroidx/datastore/preferences/protobuf/b0;->d()Landroidx/datastore/preferences/protobuf/b0$a;

    move-result-object p1

    throw p1

    :cond_1e
    const/4 p1, 0x0

    return p1

    .line 4
    :cond_20
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/i$b;->N()V

    .line 5
    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/t1;->a(I)I

    move-result p1

    invoke-static {p1, v3}, Landroidx/datastore/preferences/protobuf/t1;->c(II)I

    move-result p1

    .line 6
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/i$b;->a(I)V

    return v1

    .line 7
    :cond_2f
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/i$b;->J()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/i$b;->O(I)V

    return v1

    :cond_37
    const/16 p1, 0x8

    .line 8
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/i$b;->O(I)V

    return v1

    .line 9
    :cond_3d
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/i$b;->P()V

    return v1
.end method

.method public F()B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Landroidx/datastore/preferences/protobuf/i$b;->j:I

    iget v1, p0, Landroidx/datastore/preferences/protobuf/i$b;->h:I

    if-eq v0, v1, :cond_f

    .line 2
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/i$b;->f:[B

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Landroidx/datastore/preferences/protobuf/i$b;->j:I

    aget-byte v0, v1, v0

    return v0

    .line 3
    :cond_f
    invoke-static {}, Landroidx/datastore/preferences/protobuf/b0;->k()Landroidx/datastore/preferences/protobuf/b0;

    move-result-object v0

    throw v0
.end method

.method public G(I)[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-lez p1, :cond_13

    .line 1
    iget v0, p0, Landroidx/datastore/preferences/protobuf/i$b;->h:I

    iget v1, p0, Landroidx/datastore/preferences/protobuf/i$b;->j:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_13

    add-int/2addr p1, v1

    .line 2
    iput p1, p0, Landroidx/datastore/preferences/protobuf/i$b;->j:I

    .line 3
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/i$b;->f:[B

    invoke-static {v0, v1, p1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    return-object p1

    :cond_13
    if-gtz p1, :cond_1f

    if-nez p1, :cond_1a

    .line 4
    sget-object p1, Landroidx/datastore/preferences/protobuf/a0;->c:[B

    return-object p1

    .line 5
    :cond_1a
    invoke-static {}, Landroidx/datastore/preferences/protobuf/b0;->f()Landroidx/datastore/preferences/protobuf/b0;

    move-result-object p1

    throw p1

    .line 6
    :cond_1f
    invoke-static {}, Landroidx/datastore/preferences/protobuf/b0;->k()Landroidx/datastore/preferences/protobuf/b0;

    move-result-object p1

    throw p1
.end method

.method public H()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Landroidx/datastore/preferences/protobuf/i$b;->j:I

    .line 2
    iget v1, p0, Landroidx/datastore/preferences/protobuf/i$b;->h:I

    sub-int/2addr v1, v0

    const/4 v2, 0x4

    if-lt v1, v2, :cond_2e

    .line 3
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/i$b;->f:[B

    add-int/lit8 v2, v0, 0x4

    .line 4
    iput v2, p0, Landroidx/datastore/preferences/protobuf/i$b;->j:I

    .line 5
    aget-byte v2, v1, v0

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x2

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x3

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v2

    return v0

    .line 6
    :cond_2e
    invoke-static {}, Landroidx/datastore/preferences/protobuf/b0;->k()Landroidx/datastore/preferences/protobuf/b0;

    move-result-object v0

    throw v0
.end method

.method public I()J
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Landroidx/datastore/preferences/protobuf/i$b;->j:I

    .line 2
    iget v1, p0, Landroidx/datastore/preferences/protobuf/i$b;->h:I

    sub-int/2addr v1, v0

    const/16 v2, 0x8

    if-lt v1, v2, :cond_5a

    .line 3
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/i$b;->f:[B

    add-int/lit8 v3, v0, 0x8

    .line 4
    iput v3, p0, Landroidx/datastore/preferences/protobuf/i$b;->j:I

    .line 5
    aget-byte v3, v1, v0

    int-to-long v3, v3

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    add-int/lit8 v7, v0, 0x1

    aget-byte v7, v1, v7

    int-to-long v7, v7

    and-long/2addr v7, v5

    shl-long/2addr v7, v2

    or-long/2addr v3, v7

    add-int/lit8 v2, v0, 0x2

    aget-byte v2, v1, v2

    int-to-long v7, v2

    and-long/2addr v7, v5

    const/16 v2, 0x10

    shl-long/2addr v7, v2

    or-long/2addr v3, v7

    add-int/lit8 v2, v0, 0x3

    aget-byte v2, v1, v2

    int-to-long v7, v2

    and-long/2addr v7, v5

    const/16 v2, 0x18

    shl-long/2addr v7, v2

    or-long/2addr v3, v7

    add-int/lit8 v2, v0, 0x4

    aget-byte v2, v1, v2

    int-to-long v7, v2

    and-long/2addr v7, v5

    const/16 v2, 0x20

    shl-long/2addr v7, v2

    or-long/2addr v3, v7

    add-int/lit8 v2, v0, 0x5

    aget-byte v2, v1, v2

    int-to-long v7, v2

    and-long/2addr v7, v5

    const/16 v2, 0x28

    shl-long/2addr v7, v2

    or-long/2addr v3, v7

    add-int/lit8 v2, v0, 0x6

    aget-byte v2, v1, v2

    int-to-long v7, v2

    and-long/2addr v7, v5

    const/16 v2, 0x30

    shl-long/2addr v7, v2

    or-long/2addr v3, v7

    add-int/lit8 v0, v0, 0x7

    aget-byte v0, v1, v0

    int-to-long v0, v0

    and-long/2addr v0, v5

    const/16 v2, 0x38

    shl-long/2addr v0, v2

    or-long/2addr v0, v3

    return-wide v0

    .line 6
    :cond_5a
    invoke-static {}, Landroidx/datastore/preferences/protobuf/b0;->k()Landroidx/datastore/preferences/protobuf/b0;

    move-result-object v0

    throw v0
.end method

.method public J()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Landroidx/datastore/preferences/protobuf/i$b;->j:I

    .line 2
    iget v1, p0, Landroidx/datastore/preferences/protobuf/i$b;->h:I

    if-ne v1, v0, :cond_7

    goto :goto_6a

    .line 3
    :cond_7
    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/i$b;->f:[B

    add-int/lit8 v3, v0, 0x1

    .line 4
    aget-byte v0, v2, v0

    if-ltz v0, :cond_12

    .line 5
    iput v3, p0, Landroidx/datastore/preferences/protobuf/i$b;->j:I

    return v0

    :cond_12
    sub-int/2addr v1, v3

    const/16 v4, 0x9

    if-ge v1, v4, :cond_18

    goto :goto_6a

    :cond_18
    add-int/lit8 v1, v3, 0x1

    .line 6
    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x7

    xor-int/2addr v0, v3

    if-gez v0, :cond_24

    xor-int/lit8 v0, v0, -0x80

    goto :goto_70

    :cond_24
    add-int/lit8 v3, v1, 0x1

    .line 7
    aget-byte v1, v2, v1

    shl-int/lit8 v1, v1, 0xe

    xor-int/2addr v0, v1

    if-ltz v0, :cond_31

    xor-int/lit16 v0, v0, 0x3f80

    :cond_2f
    move v1, v3

    goto :goto_70

    :cond_31
    add-int/lit8 v1, v3, 0x1

    .line 8
    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x15

    xor-int/2addr v0, v3

    if-gez v0, :cond_3f

    const v2, -0x1fc080

    xor-int/2addr v0, v2

    goto :goto_70

    :cond_3f
    add-int/lit8 v3, v1, 0x1

    .line 9
    aget-byte v1, v2, v1

    shl-int/lit8 v4, v1, 0x1c

    xor-int/2addr v0, v4

    const v4, 0xfe03f80

    xor-int/2addr v0, v4

    if-gez v1, :cond_2f

    add-int/lit8 v1, v3, 0x1

    .line 10
    aget-byte v3, v2, v3

    if-gez v3, :cond_70

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    if-gez v1, :cond_2f

    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    if-gez v3, :cond_70

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    if-gez v1, :cond_2f

    add-int/lit8 v1, v3, 0x1

    aget-byte v2, v2, v3

    if-gez v2, :cond_70

    .line 11
    :goto_6a
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/i$b;->L()J

    move-result-wide v0

    long-to-int v1, v0

    return v1

    .line 12
    :cond_70
    :goto_70
    iput v1, p0, Landroidx/datastore/preferences/protobuf/i$b;->j:I

    return v0
.end method

.method public K()J
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Landroidx/datastore/preferences/protobuf/i$b;->j:I

    .line 2
    iget v1, p0, Landroidx/datastore/preferences/protobuf/i$b;->h:I

    if-ne v1, v0, :cond_8

    goto/16 :goto_b6

    .line 3
    :cond_8
    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/i$b;->f:[B

    add-int/lit8 v3, v0, 0x1

    .line 4
    aget-byte v0, v2, v0

    if-ltz v0, :cond_14

    .line 5
    iput v3, p0, Landroidx/datastore/preferences/protobuf/i$b;->j:I

    int-to-long v0, v0

    return-wide v0

    :cond_14
    sub-int/2addr v1, v3

    const/16 v4, 0x9

    if-ge v1, v4, :cond_1b

    goto/16 :goto_b6

    :cond_1b
    add-int/lit8 v1, v3, 0x1

    .line 6
    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x7

    xor-int/2addr v0, v3

    if-gez v0, :cond_29

    xor-int/lit8 v0, v0, -0x80

    :goto_26
    int-to-long v2, v0

    goto/16 :goto_bd

    :cond_29
    add-int/lit8 v3, v1, 0x1

    .line 7
    aget-byte v1, v2, v1

    shl-int/lit8 v1, v1, 0xe

    xor-int/2addr v0, v1

    if-ltz v0, :cond_3a

    xor-int/lit16 v0, v0, 0x3f80

    int-to-long v0, v0

    move-wide v9, v0

    move v1, v3

    move-wide v2, v9

    goto/16 :goto_bd

    :cond_3a
    add-int/lit8 v1, v3, 0x1

    .line 8
    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x15

    xor-int/2addr v0, v3

    if-gez v0, :cond_48

    const v2, -0x1fc080

    xor-int/2addr v0, v2

    goto :goto_26

    :cond_48
    int-to-long v3, v0

    add-int/lit8 v0, v1, 0x1

    .line 9
    aget-byte v1, v2, v1

    int-to-long v5, v1

    const/16 v1, 0x1c

    shl-long/2addr v5, v1

    xor-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-ltz v1, :cond_5f

    const-wide/32 v1, 0xfe03f80

    :goto_5b
    xor-long/2addr v1, v3

    move-wide v2, v1

    move v1, v0

    goto :goto_bd

    :cond_5f
    add-int/lit8 v1, v0, 0x1

    .line 10
    aget-byte v0, v2, v0

    int-to-long v7, v0

    const/16 v0, 0x23

    shl-long/2addr v7, v0

    xor-long/2addr v3, v7

    cmp-long v0, v3, v5

    if-gez v0, :cond_74

    const-wide v5, -0x7f01fc080L

    :goto_71
    xor-long/2addr v3, v5

    :cond_72
    :goto_72
    move-wide v2, v3

    goto :goto_bd

    :cond_74
    add-int/lit8 v0, v1, 0x1

    .line 11
    aget-byte v1, v2, v1

    int-to-long v7, v1

    const/16 v1, 0x2a

    shl-long/2addr v7, v1

    xor-long/2addr v3, v7

    cmp-long v1, v3, v5

    if-ltz v1, :cond_87

    const-wide v1, 0x3f80fe03f80L

    goto :goto_5b

    :cond_87
    add-int/lit8 v1, v0, 0x1

    .line 12
    aget-byte v0, v2, v0

    int-to-long v7, v0

    const/16 v0, 0x31

    shl-long/2addr v7, v0

    xor-long/2addr v3, v7

    cmp-long v0, v3, v5

    if-gez v0, :cond_9a

    const-wide v5, -0x1fc07f01fc080L

    goto :goto_71

    :cond_9a
    add-int/lit8 v0, v1, 0x1

    .line 13
    aget-byte v1, v2, v1

    int-to-long v7, v1

    const/16 v1, 0x38

    shl-long/2addr v7, v1

    xor-long/2addr v3, v7

    const-wide v7, 0xfe03f80fe03f80L

    xor-long/2addr v3, v7

    cmp-long v1, v3, v5

    if-gez v1, :cond_bb

    add-int/lit8 v1, v0, 0x1

    .line 14
    aget-byte v0, v2, v0

    int-to-long v7, v0

    cmp-long v0, v7, v5

    if-gez v0, :cond_72

    .line 15
    :goto_b6
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/i$b;->L()J

    move-result-wide v0

    return-wide v0

    :cond_bb
    move v1, v0

    goto :goto_72

    .line 16
    :goto_bd
    iput v1, p0, Landroidx/datastore/preferences/protobuf/i$b;->j:I

    return-wide v2
.end method

.method L()J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_3
    const/16 v3, 0x40

    if-ge v2, v3, :cond_18

    .line 1
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/i$b;->F()B

    move-result v3

    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_15

    return-wide v0

    :cond_15
    add-int/lit8 v2, v2, 0x7

    goto :goto_3

    .line 2
    :cond_18
    invoke-static {}, Landroidx/datastore/preferences/protobuf/b0;->e()Landroidx/datastore/preferences/protobuf/b0;

    move-result-object v0

    goto :goto_1e

    :goto_1d
    throw v0

    :goto_1e
    goto :goto_1d
.end method

.method public N()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/i$b;->B()I

    move-result v0

    if-eqz v0, :cond_c

    .line 2
    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/i$b;->E(I)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_c
    return-void
.end method

.method public O(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_d

    .line 1
    iget v0, p0, Landroidx/datastore/preferences/protobuf/i$b;->h:I

    iget v1, p0, Landroidx/datastore/preferences/protobuf/i$b;->j:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_d

    add-int/2addr v1, p1

    .line 2
    iput v1, p0, Landroidx/datastore/preferences/protobuf/i$b;->j:I

    return-void

    :cond_d
    if-gez p1, :cond_14

    .line 3
    invoke-static {}, Landroidx/datastore/preferences/protobuf/b0;->f()Landroidx/datastore/preferences/protobuf/b0;

    move-result-object p1

    throw p1

    .line 4
    :cond_14
    invoke-static {}, Landroidx/datastore/preferences/protobuf/b0;->k()Landroidx/datastore/preferences/protobuf/b0;

    move-result-object p1

    throw p1
.end method

.method public a(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/datastore/preferences/protobuf/b0;
        }
    .end annotation

    .line 1
    iget v0, p0, Landroidx/datastore/preferences/protobuf/i$b;->l:I

    if-ne v0, p1, :cond_5

    return-void

    .line 2
    :cond_5
    invoke-static {}, Landroidx/datastore/preferences/protobuf/b0;->a()Landroidx/datastore/preferences/protobuf/b0;

    move-result-object p1

    throw p1
.end method

.method public d()I
    .registers 3

    .line 1
    iget v0, p0, Landroidx/datastore/preferences/protobuf/i$b;->j:I

    iget v1, p0, Landroidx/datastore/preferences/protobuf/i$b;->k:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public e()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Landroidx/datastore/preferences/protobuf/i$b;->j:I

    iget v1, p0, Landroidx/datastore/preferences/protobuf/i$b;->h:I

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public k(I)V
    .registers 2

    .line 1
    iput p1, p0, Landroidx/datastore/preferences/protobuf/i$b;->n:I

    .line 2
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/i$b;->M()V

    return-void
.end method

.method public l(I)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/datastore/preferences/protobuf/b0;
        }
    .end annotation

    if-ltz p1, :cond_16

    .line 1
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/i$b;->d()I

    move-result v0

    add-int/2addr p1, v0

    .line 2
    iget v0, p0, Landroidx/datastore/preferences/protobuf/i$b;->n:I

    if-gt p1, v0, :cond_11

    .line 3
    iput p1, p0, Landroidx/datastore/preferences/protobuf/i$b;->n:I

    .line 4
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/i$b;->M()V

    return v0

    .line 5
    :cond_11
    invoke-static {}, Landroidx/datastore/preferences/protobuf/b0;->k()Landroidx/datastore/preferences/protobuf/b0;

    move-result-object p1

    throw p1

    .line 6
    :cond_16
    invoke-static {}, Landroidx/datastore/preferences/protobuf/b0;->f()Landroidx/datastore/preferences/protobuf/b0;

    move-result-object p1

    throw p1
.end method

.method public m()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/i$b;->K()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public n()Landroidx/datastore/preferences/protobuf/h;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/i$b;->J()I

    move-result v0

    if-lez v0, :cond_28

    .line 2
    iget v1, p0, Landroidx/datastore/preferences/protobuf/i$b;->h:I

    iget v2, p0, Landroidx/datastore/preferences/protobuf/i$b;->j:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_28

    .line 3
    iget-boolean v1, p0, Landroidx/datastore/preferences/protobuf/i$b;->g:Z

    if-eqz v1, :cond_1c

    iget-boolean v1, p0, Landroidx/datastore/preferences/protobuf/i$b;->m:Z

    if-eqz v1, :cond_1c

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/i$b;->f:[B

    .line 4
    invoke-static {v1, v2, v0}, Landroidx/datastore/preferences/protobuf/h;->E([BII)Landroidx/datastore/preferences/protobuf/h;

    move-result-object v1

    goto :goto_22

    :cond_1c
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/i$b;->f:[B

    .line 5
    invoke-static {v1, v2, v0}, Landroidx/datastore/preferences/protobuf/h;->l([BII)Landroidx/datastore/preferences/protobuf/h;

    move-result-object v1

    .line 6
    :goto_22
    iget v2, p0, Landroidx/datastore/preferences/protobuf/i$b;->j:I

    add-int/2addr v2, v0

    iput v2, p0, Landroidx/datastore/preferences/protobuf/i$b;->j:I

    return-object v1

    :cond_28
    if-nez v0, :cond_2d

    .line 7
    sget-object v0, Landroidx/datastore/preferences/protobuf/h;->p:Landroidx/datastore/preferences/protobuf/h;

    return-object v0

    .line 8
    :cond_2d
    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/i$b;->G(I)[B

    move-result-object v0

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/h;->D([B)Landroidx/datastore/preferences/protobuf/h;

    move-result-object v0

    return-object v0
.end method

.method public o()D
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/i$b;->I()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public p()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/i$b;->J()I

    move-result v0

    return v0
.end method

.method public q()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/i$b;->H()I

    move-result v0

    return v0
.end method

.method public r()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/i$b;->I()J

    move-result-wide v0

    return-wide v0
.end method

.method public s()F
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/i$b;->H()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public t()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/i$b;->J()I

    move-result v0

    return v0
.end method

.method public u()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/i$b;->K()J

    move-result-wide v0

    return-wide v0
.end method

.method public v()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/i$b;->H()I

    move-result v0

    return v0
.end method

.method public w()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/i$b;->I()J

    move-result-wide v0

    return-wide v0
.end method

.method public x()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/i$b;->J()I

    move-result v0

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/i;->b(I)I

    move-result v0

    return v0
.end method

.method public y()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/i$b;->K()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/datastore/preferences/protobuf/i;->c(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public z()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/i$b;->J()I

    move-result v0

    if-lez v0, :cond_1c

    .line 2
    iget v1, p0, Landroidx/datastore/preferences/protobuf/i$b;->h:I

    iget v2, p0, Landroidx/datastore/preferences/protobuf/i$b;->j:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_1c

    .line 3
    new-instance v1, Ljava/lang/String;

    iget-object v3, p0, Landroidx/datastore/preferences/protobuf/i$b;->f:[B

    sget-object v4, Landroidx/datastore/preferences/protobuf/a0;->a:Ljava/nio/charset/Charset;

    invoke-direct {v1, v3, v2, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 4
    iget v2, p0, Landroidx/datastore/preferences/protobuf/i$b;->j:I

    add-int/2addr v2, v0

    iput v2, p0, Landroidx/datastore/preferences/protobuf/i$b;->j:I

    return-object v1

    :cond_1c
    if-nez v0, :cond_21

    const-string v0, ""

    return-object v0

    :cond_21
    if-gez v0, :cond_28

    .line 5
    invoke-static {}, Landroidx/datastore/preferences/protobuf/b0;->f()Landroidx/datastore/preferences/protobuf/b0;

    move-result-object v0

    throw v0

    .line 6
    :cond_28
    invoke-static {}, Landroidx/datastore/preferences/protobuf/b0;->k()Landroidx/datastore/preferences/protobuf/b0;

    move-result-object v0

    throw v0
.end method

###### Class androidx.datastore.preferences.protobuf.i.c (androidx.datastore.preferences.protobuf.i$c)
.class final Landroidx/datastore/preferences/protobuf/i$c;
.super Landroidx/datastore/preferences/protobuf/i;
.source "CodedInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/datastore/preferences/protobuf/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/datastore/preferences/protobuf/i$c$a;
    }
.end annotation


# instance fields
.field private final f:Ljava/io/InputStream;

.field private final g:[B

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:Landroidx/datastore/preferences/protobuf/i$c$a;


# direct methods
.method private constructor <init>(Ljava/io/InputStream;I)V
    .registers 5

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/i;-><init>(Landroidx/datastore/preferences/protobuf/i$a;)V

    const v1, 0x7fffffff

    .line 3
    iput v1, p0, Landroidx/datastore/preferences/protobuf/i$c;->m:I

    .line 4
    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/i$c;->n:Landroidx/datastore/preferences/protobuf/i$c$a;

    const-string v0, "input"

    .line 5
    invoke-static {p1, v0}, Landroidx/datastore/preferences/protobuf/a0;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/i$c;->f:Ljava/io/InputStream;

    .line 7
    new-array p1, p2, [B

    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/i$c;->g:[B

    const/4 p1, 0x0

    .line 8
    iput p1, p0, Landroidx/datastore/preferences/protobuf/i$c;->h:I

    .line 9
    iput p1, p0, Landroidx/datastore/preferences/protobuf/i$c;->j:I

    .line 10
    iput p1, p0, Landroidx/datastore/preferences/protobuf/i$c;->l:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/io/InputStream;ILandroidx/datastore/preferences/protobuf/i$a;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/i$c;-><init>(Ljava/io/InputStream;I)V

    return-void
.end method

.method private F(I)Landroidx/datastore/preferences/protobuf/h;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/i$c;->I(I)[B

    move-result-object v0

    if-eqz v0, :cond_b

    .line 2
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/h;->k([B)Landroidx/datastore/preferences/protobuf/h;

    move-result-object p1

    return-object p1

    .line 3
    :cond_b
    iget v0, p0, Landroidx/datastore/preferences/protobuf/i$c;->j:I

    .line 4
    iget v1, p0, Landroidx/datastore/preferences/protobuf/i$c;->h:I

    sub-int v2, v1, v0

    .line 5
    iget v3, p0, Landroidx/datastore/preferences/protobuf/i$c;->l:I

    add-int/2addr v3, v1

    iput v3, p0, Landroidx/datastore/preferences/protobuf/i$c;->l:I

    const/4 v1, 0x0

    .line 6
    iput v1, p0, Landroidx/datastore/preferences/protobuf/i$c;->j:I

    .line 7
    iput v1, p0, Landroidx/datastore/preferences/protobuf/i$c;->h:I

    sub-int v3, p1, v2

    .line 8
    invoke-direct {p0, v3}, Landroidx/datastore/preferences/protobuf/i$c;->J(I)Ljava/util/List;

    move-result-object v3

    .line 9
    new-array p1, p1, [B

    .line 10
    iget-object v4, p0, Landroidx/datastore/preferences/protobuf/i$c;->g:[B

    invoke-static {v4, v0, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 12
    array-length v4, v3

    invoke-static {v3, v1, p1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 13
    array-length v3, v3

    add-int/2addr v2, v3

    goto :goto_2c

    .line 14
    :cond_3f
    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/h;->D([B)Landroidx/datastore/preferences/protobuf/h;

    move-result-object p1

    return-object p1
.end method

.method private H(IZ)[B
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/i$c;->I(I)[B

    move-result-object v0

    if-eqz v0, :cond_10

    if-eqz p2, :cond_f

    .line 2
    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, [B

    :cond_f
    return-object v0

    .line 3
    :cond_10
    iget p2, p0, Landroidx/datastore/preferences/protobuf/i$c;->j:I

    .line 4
    iget v0, p0, Landroidx/datastore/preferences/protobuf/i$c;->h:I

    sub-int v1, v0, p2

    .line 5
    iget v2, p0, Landroidx/datastore/preferences/protobuf/i$c;->l:I

    add-int/2addr v2, v0

    iput v2, p0, Landroidx/datastore/preferences/protobuf/i$c;->l:I

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Landroidx/datastore/preferences/protobuf/i$c;->j:I

    .line 7
    iput v0, p0, Landroidx/datastore/preferences/protobuf/i$c;->h:I

    sub-int v2, p1, v1

    .line 8
    invoke-direct {p0, v2}, Landroidx/datastore/preferences/protobuf/i$c;->J(I)Ljava/util/List;

    move-result-object v2

    .line 9
    new-array p1, p1, [B

    .line 10
    iget-object v3, p0, Landroidx/datastore/preferences/protobuf/i$c;->g:[B

    invoke-static {v3, p2, p1, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_31
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_44

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 12
    array-length v3, v2

    invoke-static {v2, v0, p1, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 13
    array-length v2, v2

    add-int/2addr v1, v2

    goto :goto_31

    :cond_44
    return-object p1
.end method

.method private I(I)[B
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_5

    .line 1
    sget-object p1, Landroidx/datastore/preferences/protobuf/a0;->c:[B

    return-object p1

    :cond_5
    if-ltz p1, :cond_6a

    .line 2
    iget v0, p0, Landroidx/datastore/preferences/protobuf/i$c;->l:I

    iget v1, p0, Landroidx/datastore/preferences/protobuf/i$c;->j:I

    add-int v2, v0, v1

    add-int/2addr v2, p1

    .line 3
    iget v3, p0, Landroidx/datastore/preferences/protobuf/i;->c:I

    sub-int v3, v2, v3

    if-gtz v3, :cond_65

    .line 4
    iget v3, p0, Landroidx/datastore/preferences/protobuf/i$c;->m:I

    if-gt v2, v3, :cond_5b

    .line 5
    iget v0, p0, Landroidx/datastore/preferences/protobuf/i$c;->h:I

    sub-int/2addr v0, v1

    sub-int v1, p1, v0

    const/16 v2, 0x1000

    if-lt v1, v2, :cond_2c

    .line 6
    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/i$c;->f:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v2

    if-gt v1, v2, :cond_2a

    goto :goto_2c

    :cond_2a
    const/4 p1, 0x0

    return-object p1

    .line 7
    :cond_2c
    :goto_2c
    new-array v1, p1, [B

    .line 8
    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/i$c;->g:[B

    iget v3, p0, Landroidx/datastore/preferences/protobuf/i$c;->j:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9
    iget v2, p0, Landroidx/datastore/preferences/protobuf/i$c;->l:I

    iget v3, p0, Landroidx/datastore/preferences/protobuf/i$c;->h:I

    add-int/2addr v2, v3

    iput v2, p0, Landroidx/datastore/preferences/protobuf/i$c;->l:I

    .line 10
    iput v4, p0, Landroidx/datastore/preferences/protobuf/i$c;->j:I

    .line 11
    iput v4, p0, Landroidx/datastore/preferences/protobuf/i$c;->h:I

    :goto_41
    if-ge v0, p1, :cond_5a

    .line 12
    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/i$c;->f:Ljava/io/InputStream;

    sub-int v3, p1, v0

    invoke-virtual {v2, v1, v0, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_55

    .line 13
    iget v3, p0, Landroidx/datastore/preferences/protobuf/i$c;->l:I

    add-int/2addr v3, v2

    iput v3, p0, Landroidx/datastore/preferences/protobuf/i$c;->l:I

    add-int/2addr v0, v2

    goto :goto_41

    .line 14
    :cond_55
    invoke-static {}, Landroidx/datastore/preferences/protobuf/b0;->k()Landroidx/datastore/preferences/protobuf/b0;

    move-result-object p1

    throw p1

    :cond_5a
    return-object v1

    :cond_5b
    sub-int/2addr v3, v0

    sub-int/2addr v3, v1

    .line 15
    invoke-virtual {p0, v3}, Landroidx/datastore/preferences/protobuf/i$c;->S(I)V

    .line 16
    invoke-static {}, Landroidx/datastore/preferences/protobuf/b0;->k()Landroidx/datastore/preferences/protobuf/b0;

    move-result-object p1

    throw p1

    .line 17
    :cond_65
    invoke-static {}, Landroidx/datastore/preferences/protobuf/b0;->j()Landroidx/datastore/preferences/protobuf/b0;

    move-result-object p1

    throw p1

    .line 18
    :cond_6a
    invoke-static {}, Landroidx/datastore/preferences/protobuf/b0;->f()Landroidx/datastore/preferences/protobuf/b0;

    move-result-object p1

    goto :goto_70

    :goto_6f
    throw p1

    :goto_70
    goto :goto_6f
.end method

.method private J(I)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_5
    if-lez p1, :cond_2e

    const/16 v1, 0x1000

    .line 2
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    new-array v2, v1, [B

    const/4 v3, 0x0

    :goto_10
    if-ge v3, v1, :cond_29

    .line 3
    iget-object v4, p0, Landroidx/datastore/preferences/protobuf/i$c;->f:Ljava/io/InputStream;

    sub-int v5, v1, v3

    invoke-virtual {v4, v2, v3, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_24

    .line 4
    iget v5, p0, Landroidx/datastore/preferences/protobuf/i$c;->l:I

    add-int/2addr v5, v4

    iput v5, p0, Landroidx/datastore/preferences/protobuf/i$c;->l:I

    add-int/2addr v3, v4

    goto :goto_10

    .line 5
    :cond_24
    invoke-static {}, Landroidx/datastore/preferences/protobuf/b0;->k()Landroidx/datastore/preferences/protobuf/b0;

    move-result-object p1

    throw p1

    :cond_29
    sub-int/2addr p1, v1

    .line 6
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_2e
    return-object v0
.end method

.method private P()V
    .registers 4

    .line 1
    iget v0, p0, Landroidx/datastore/preferences/protobuf/i$c;->h:I

    iget v1, p0, Landroidx/datastore/preferences/protobuf/i$c;->i:I

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/datastore/preferences/protobuf/i$c;->h:I

    .line 2
    iget v1, p0, Landroidx/datastore/preferences/protobuf/i$c;->l:I

    add-int/2addr v1, v0

    .line 3
    iget v2, p0, Landroidx/datastore/preferences/protobuf/i$c;->m:I

    if-le v1, v2, :cond_15

    sub-int/2addr v1, v2

    .line 4
    iput v1, p0, Landroidx/datastore/preferences/protobuf/i$c;->i:I

    sub-int/2addr v0, v1

    .line 5
    iput v0, p0, Landroidx/datastore/preferences/protobuf/i$c;->h:I

    goto :goto_18

    :cond_15
    const/4 v0, 0x0

    .line 6
    iput v0, p0, Landroidx/datastore/preferences/protobuf/i$c;->i:I

    :goto_18
    return-void
.end method

.method private Q(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/i$c;->X(I)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 2
    iget v0, p0, Landroidx/datastore/preferences/protobuf/i;->c:I

    iget v1, p0, Landroidx/datastore/preferences/protobuf/i$c;->l:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroidx/datastore/preferences/protobuf/i$c;->j:I

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_15

    .line 3
    invoke-static {}, Landroidx/datastore/preferences/protobuf/b0;->j()Landroidx/datastore/preferences/protobuf/b0;

    move-result-object p1

    throw p1

    .line 4
    :cond_15
    invoke-static {}, Landroidx/datastore/preferences/protobuf/b0;->k()Landroidx/datastore/preferences/protobuf/b0;

    move-result-object p1

    throw p1

    :cond_1a
    return-void
.end method

.method private T(I)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_99

    .line 1
    iget v0, p0, Landroidx/datastore/preferences/protobuf/i$c;->l:I

    iget v1, p0, Landroidx/datastore/preferences/protobuf/i$c;->j:I

    add-int v2, v0, v1

    add-int/2addr v2, p1

    iget v3, p0, Landroidx/datastore/preferences/protobuf/i$c;->m:I

    if-gt v2, v3, :cond_8f

    .line 2
    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/i$c;->n:Landroidx/datastore/preferences/protobuf/i$c$a;

    const/4 v3, 0x0

    if-nez v2, :cond_71

    add-int/2addr v0, v1

    .line 3
    iput v0, p0, Landroidx/datastore/preferences/protobuf/i$c;->l:I

    .line 4
    iget v0, p0, Landroidx/datastore/preferences/protobuf/i$c;->h:I

    sub-int/2addr v0, v1

    .line 5
    iput v3, p0, Landroidx/datastore/preferences/protobuf/i$c;->h:I

    .line 6
    iput v3, p0, Landroidx/datastore/preferences/protobuf/i$c;->j:I

    move v3, v0

    :goto_1d
    if-ge v3, p1, :cond_69

    sub-int v0, p1, v3

    .line 7
    :try_start_21
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/i$c;->f:Ljava/io/InputStream;

    int-to-long v4, v0

    invoke-virtual {v1, v4, v5}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    const-wide/16 v6, 0x0

    cmp-long v2, v0, v6

    if-ltz v2, :cond_3a

    cmp-long v2, v0, v4

    if-gtz v2, :cond_3a

    cmp-long v2, v0, v6

    if-nez v2, :cond_37

    goto :goto_69

    :cond_37
    long-to-int v1, v0

    add-int/2addr v3, v1

    goto :goto_1d

    .line 8
    :cond_3a
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Landroidx/datastore/preferences/protobuf/i$c;->f:Ljava/io/InputStream;

    .line 9
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "#skip returned invalid result: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "\nThe InputStream implementation is buggy."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_5f
    .catchall {:try_start_21 .. :try_end_5f} :catchall_5f

    :catchall_5f
    move-exception p1

    .line 10
    iget v0, p0, Landroidx/datastore/preferences/protobuf/i$c;->l:I

    add-int/2addr v0, v3

    iput v0, p0, Landroidx/datastore/preferences/protobuf/i$c;->l:I

    .line 11
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/i$c;->P()V

    .line 12
    throw p1

    .line 13
    :cond_69
    :goto_69
    iget v0, p0, Landroidx/datastore/preferences/protobuf/i$c;->l:I

    add-int/2addr v0, v3

    iput v0, p0, Landroidx/datastore/preferences/protobuf/i$c;->l:I

    .line 14
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/i$c;->P()V

    :cond_71
    if-ge v3, p1, :cond_8e

    .line 15
    iget v0, p0, Landroidx/datastore/preferences/protobuf/i$c;->h:I

    iget v1, p0, Landroidx/datastore/preferences/protobuf/i$c;->j:I

    sub-int v1, v0, v1

    .line 16
    iput v0, p0, Landroidx/datastore/preferences/protobuf/i$c;->j:I

    const/4 v0, 0x1

    .line 17
    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/i$c;->Q(I)V

    :goto_7f
    sub-int v2, p1, v1

    .line 18
    iget v3, p0, Landroidx/datastore/preferences/protobuf/i$c;->h:I

    if-le v2, v3, :cond_8c

    add-int/2addr v1, v3

    .line 19
    iput v3, p0, Landroidx/datastore/preferences/protobuf/i$c;->j:I

    .line 20
    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/i$c;->Q(I)V

    goto :goto_7f

    .line 21
    :cond_8c
    iput v2, p0, Landroidx/datastore/preferences/protobuf/i$c;->j:I

    :cond_8e
    return-void

    :cond_8f
    sub-int/2addr v3, v0

    sub-int/2addr v3, v1

    .line 22
    invoke-virtual {p0, v3}, Landroidx/datastore/preferences/protobuf/i$c;->S(I)V

    .line 23
    invoke-static {}, Landroidx/datastore/preferences/protobuf/b0;->k()Landroidx/datastore/preferences/protobuf/b0;

    move-result-object p1

    throw p1

    .line 24
    :cond_99
    invoke-static {}, Landroidx/datastore/preferences/protobuf/b0;->f()Landroidx/datastore/preferences/protobuf/b0;

    move-result-object p1

    goto :goto_9f

    :goto_9e
    throw p1

    :goto_9f
    goto :goto_9e
.end method

.method private U()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Landroidx/datastore/preferences/protobuf/i$c;->h:I

    iget v1, p0, Landroidx/datastore/preferences/protobuf/i$c;->j:I

    sub-int/2addr v0, v1

    const/16 v1, 0xa

    if-lt v0, v1, :cond_d

    .line 2
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/i$c;->V()V

    goto :goto_10

    .line 3
    :cond_d
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/i$c;->W()V

    :goto_10
    return-void
.end method

.method private V()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0xa

    if-ge v0, v1, :cond_15

    .line 1
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/i$c;->g:[B

    iget v2, p0, Landroidx/datastore/preferences/protobuf/i$c;->j:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroidx/datastore/preferences/protobuf/i$c;->j:I

    aget-byte v1, v1, v2

    if-ltz v1, :cond_12

    return-void

    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2
    :cond_15
    invoke-static {}, Landroidx/datastore/preferences/protobuf/b0;->e()Landroidx/datastore/preferences/protobuf/b0;

    move-result-object v0

    goto :goto_1b

    :goto_1a
    throw v0

    :goto_1b
    goto :goto_1a
.end method

.method private W()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0xa

    if-ge v0, v1, :cond_f

    .line 1
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/i$c;->G()B

    move-result v1

    if-ltz v1, :cond_c

    return-void

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2
    :cond_f
    invoke-static {}, Landroidx/datastore/preferences/protobuf/b0;->e()Landroidx/datastore/preferences/protobuf/b0;

    move-result-object v0

    goto :goto_15

    :goto_14
    throw v0

    :goto_15
    goto :goto_14
.end method

.method private X(I)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Landroidx/datastore/preferences/protobuf/i$c;->j:I

    add-int v1, v0, p1

    iget v2, p0, Landroidx/datastore/preferences/protobuf/i$c;->h:I

    if-le v1, v2, :cond_95

    .line 2
    iget v1, p0, Landroidx/datastore/preferences/protobuf/i;->c:I

    iget v2, p0, Landroidx/datastore/preferences/protobuf/i$c;->l:I

    sub-int/2addr v1, v2

    sub-int/2addr v1, v0

    const/4 v3, 0x0

    if-le p1, v1, :cond_12

    return v3

    :cond_12
    add-int/2addr v2, v0

    add-int/2addr v2, p1

    .line 3
    iget v0, p0, Landroidx/datastore/preferences/protobuf/i$c;->m:I

    if-le v2, v0, :cond_19

    return v3

    .line 4
    :cond_19
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/i$c;->n:Landroidx/datastore/preferences/protobuf/i$c$a;

    if-eqz v0, :cond_20

    .line 5
    invoke-interface {v0}, Landroidx/datastore/preferences/protobuf/i$c$a;->a()V

    .line 6
    :cond_20
    iget v0, p0, Landroidx/datastore/preferences/protobuf/i$c;->j:I

    if-lez v0, :cond_3a

    .line 7
    iget v1, p0, Landroidx/datastore/preferences/protobuf/i$c;->h:I

    if-le v1, v0, :cond_2e

    .line 8
    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/i$c;->g:[B

    sub-int/2addr v1, v0

    invoke-static {v2, v0, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9
    :cond_2e
    iget v1, p0, Landroidx/datastore/preferences/protobuf/i$c;->l:I

    add-int/2addr v1, v0

    iput v1, p0, Landroidx/datastore/preferences/protobuf/i$c;->l:I

    .line 10
    iget v1, p0, Landroidx/datastore/preferences/protobuf/i$c;->h:I

    sub-int/2addr v1, v0

    iput v1, p0, Landroidx/datastore/preferences/protobuf/i$c;->h:I

    .line 11
    iput v3, p0, Landroidx/datastore/preferences/protobuf/i$c;->j:I

    .line 12
    :cond_3a
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/i$c;->f:Ljava/io/InputStream;

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/i$c;->g:[B

    iget v2, p0, Landroidx/datastore/preferences/protobuf/i$c;->h:I

    array-length v4, v1

    sub-int/2addr v4, v2

    iget v5, p0, Landroidx/datastore/preferences/protobuf/i;->c:I

    iget v6, p0, Landroidx/datastore/preferences/protobuf/i$c;->l:I

    sub-int/2addr v5, v6

    sub-int/2addr v5, v2

    .line 13
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 14
    invoke-virtual {v0, v1, v2, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-eqz v0, :cond_70

    const/4 v1, -0x1

    if-lt v0, v1, :cond_70

    .line 15
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/i$c;->g:[B

    array-length v1, v1

    if-gt v0, v1, :cond_70

    if-lez v0, :cond_6f

    .line 16
    iget v1, p0, Landroidx/datastore/preferences/protobuf/i$c;->h:I

    add-int/2addr v1, v0

    iput v1, p0, Landroidx/datastore/preferences/protobuf/i$c;->h:I

    .line 17
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/i$c;->P()V

    .line 18
    iget v0, p0, Landroidx/datastore/preferences/protobuf/i$c;->h:I

    if-lt v0, p1, :cond_6a

    const/4 p1, 0x1

    goto :goto_6e

    :cond_6a
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/i$c;->X(I)Z

    move-result p1

    :goto_6e
    return p1

    :cond_6f
    return v3

    .line 19
    :cond_70
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/i$c;->f:Ljava/io/InputStream;

    .line 20
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "#read(byte[]) returned invalid result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\nThe InputStream implementation is buggy."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 21
    :cond_95
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refillBuffer() called when "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bytes were already available in buffer"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public A()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/i$c;->M()I

    move-result v0

    .line 2
    iget v1, p0, Landroidx/datastore/preferences/protobuf/i$c;->j:I

    .line 3
    iget v2, p0, Landroidx/datastore/preferences/protobuf/i$c;->h:I

    sub-int v3, v2, v1

    const/4 v4, 0x0

    if-gt v0, v3, :cond_16

    if-lez v0, :cond_16

    .line 4
    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/i$c;->g:[B

    add-int v3, v1, v0

    .line 5
    iput v3, p0, Landroidx/datastore/preferences/protobuf/i$c;->j:I

    goto :goto_2c

    :cond_16
    if-nez v0, :cond_1b

    const-string v0, ""

    return-object v0

    :cond_1b
    if-gt v0, v2, :cond_27

    .line 6
    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/i$c;->Q(I)V

    .line 7
    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/i$c;->g:[B

    add-int/lit8 v1, v0, 0x0

    .line 8
    iput v1, p0, Landroidx/datastore/preferences/protobuf/i$c;->j:I

    goto :goto_2b

    .line 9
    :cond_27
    invoke-direct {p0, v0, v4}, Landroidx/datastore/preferences/protobuf/i$c;->H(IZ)[B

    move-result-object v2

    :goto_2b
    const/4 v1, 0x0

    .line 10
    :goto_2c
    invoke-static {v2, v1, v0}, Landroidx/datastore/preferences/protobuf/s1;->e([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public B()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/i$c;->e()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroidx/datastore/preferences/protobuf/i$c;->k:I

    return v0

    .line 3
    :cond_a
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/i$c;->M()I

    move-result v0

    iput v0, p0, Landroidx/datastore/preferences/protobuf/i$c;->k:I

    .line 4
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/t1;->a(I)I

    move-result v0

    if-eqz v0, :cond_19

    .line 5
    iget v0, p0, Landroidx/datastore/preferences/protobuf/i$c;->k:I

    return v0

    .line 6
    :cond_19
    invoke-static {}, Landroidx/datastore/preferences/protobuf/b0;->b()Landroidx/datastore/preferences/protobuf/b0;

    move-result-object v0

    throw v0
.end method

.method public C()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/i$c;->M()I

    move-result v0

    return v0
.end method

.method public D()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/i$c;->N()J

    move-result-wide v0

    return-wide v0
.end method

.method public E(I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/t1;->b(I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3d

    if-eq v0, v1, :cond_37

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2f

    const/4 v2, 0x3

    const/4 v3, 0x4

    if-eq v0, v2, :cond_20

    if-eq v0, v3, :cond_1e

    const/4 p1, 0x5

    if-ne v0, p1, :cond_19

    .line 2
    invoke-virtual {p0, v3}, Landroidx/datastore/preferences/protobuf/i$c;->S(I)V

    return v1

    .line 3
    :cond_19
    invoke-static {}, Landroidx/datastore/preferences/protobuf/b0;->d()Landroidx/datastore/preferences/protobuf/b0$a;

    move-result-object p1

    throw p1

    :cond_1e
    const/4 p1, 0x0

    return p1

    .line 4
    :cond_20
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/i$c;->R()V

    .line 5
    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/t1;->a(I)I

    move-result p1

    invoke-static {p1, v3}, Landroidx/datastore/preferences/protobuf/t1;->c(II)I

    move-result p1

    .line 6
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/i$c;->a(I)V

    return v1

    .line 7
    :cond_2f
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/i$c;->M()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/i$c;->S(I)V

    return v1

    :cond_37
    const/16 p1, 0x8

    .line 8
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/i$c;->S(I)V

    return v1

    .line 9
    :cond_3d
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/i$c;->U()V

    return v1
.end method

.method public G()B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Landroidx/datastore/preferences/protobuf/i$c;->j:I

    iget v1, p0, Landroidx/datastore/preferences/protobuf/i$c;->h:I

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/i$c;->Q(I)V

    .line 3
    :cond_a
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/i$c;->g:[B

    iget v1, p0, Landroidx/datastore/preferences/protobuf/i$c;->j:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/datastore/preferences/protobuf/i$c;->j:I

    aget-byte v0, v0, v1

    return v0
.end method

.method public K()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Landroidx/datastore/preferences/protobuf/i$c;->j:I

    .line 2
    iget v1, p0, Landroidx/datastore/preferences/protobuf/i$c;->h:I

    sub-int/2addr v1, v0

    const/4 v2, 0x4

    if-ge v1, v2, :cond_d

    .line 3
    invoke-direct {p0, v2}, Landroidx/datastore/preferences/protobuf/i$c;->Q(I)V

    .line 4
    iget v0, p0, Landroidx/datastore/preferences/protobuf/i$c;->j:I

    .line 5
    :cond_d
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/i$c;->g:[B

    add-int/lit8 v2, v0, 0x4

    .line 6
    iput v2, p0, Landroidx/datastore/preferences/protobuf/i$c;->j:I

    .line 7
    aget-byte v2, v1, v0

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x2

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x3

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v2

    return v0
.end method

.method public L()J
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Landroidx/datastore/preferences/protobuf/i$c;->j:I

    .line 2
    iget v1, p0, Landroidx/datastore/preferences/protobuf/i$c;->h:I

    sub-int/2addr v1, v0

    const/16 v2, 0x8

    if-ge v1, v2, :cond_e

    .line 3
    invoke-direct {p0, v2}, Landroidx/datastore/preferences/protobuf/i$c;->Q(I)V

    .line 4
    iget v0, p0, Landroidx/datastore/preferences/protobuf/i$c;->j:I

    .line 5
    :cond_e
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/i$c;->g:[B

    add-int/lit8 v3, v0, 0x8

    .line 6
    iput v3, p0, Landroidx/datastore/preferences/protobuf/i$c;->j:I

    .line 7
    aget-byte v3, v1, v0

    int-to-long v3, v3

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    add-int/lit8 v7, v0, 0x1

    aget-byte v7, v1, v7

    int-to-long v7, v7

    and-long/2addr v7, v5

    shl-long/2addr v7, v2

    or-long/2addr v3, v7

    add-int/lit8 v2, v0, 0x2

    aget-byte v2, v1, v2

    int-to-long v7, v2

    and-long/2addr v7, v5

    const/16 v2, 0x10

    shl-long/2addr v7, v2

    or-long/2addr v3, v7

    add-int/lit8 v2, v0, 0x3

    aget-byte v2, v1, v2

    int-to-long v7, v2

    and-long/2addr v7, v5

    const/16 v2, 0x18

    shl-long/2addr v7, v2

    or-long/2addr v3, v7

    add-int/lit8 v2, v0, 0x4

    aget-byte v2, v1, v2

    int-to-long v7, v2

    and-long/2addr v7, v5

    const/16 v2, 0x20

    shl-long/2addr v7, v2

    or-long/2addr v3, v7

    add-int/lit8 v2, v0, 0x5

    aget-byte v2, v1, v2

    int-to-long v7, v2

    and-long/2addr v7, v5

    const/16 v2, 0x28

    shl-long/2addr v7, v2

    or-long/2addr v3, v7

    add-int/lit8 v2, v0, 0x6

    aget-byte v2, v1, v2

    int-to-long v7, v2

    and-long/2addr v7, v5

    const/16 v2, 0x30

    shl-long/2addr v7, v2

    or-long/2addr v3, v7

    add-int/lit8 v0, v0, 0x7

    aget-byte v0, v1, v0

    int-to-long v0, v0

    and-long/2addr v0, v5

    const/16 v2, 0x38

    shl-long/2addr v0, v2

    or-long/2addr v0, v3

    return-wide v0
.end method

.method public M()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Landroidx/datastore/preferences/protobuf/i$c;->j:I

    .line 2
    iget v1, p0, Landroidx/datastore/preferences/protobuf/i$c;->h:I

    if-ne v1, v0, :cond_7

    goto :goto_6a

    .line 3
    :cond_7
    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/i$c;->g:[B

    add-int/lit8 v3, v0, 0x1

    .line 4
    aget-byte v0, v2, v0

    if-ltz v0, :cond_12

    .line 5
    iput v3, p0, Landroidx/datastore/preferences/protobuf/i$c;->j:I

    return v0

    :cond_12
    sub-int/2addr v1, v3

    const/16 v4, 0x9

    if-ge v1, v4, :cond_18

    goto :goto_6a

    :cond_18
    add-int/lit8 v1, v3, 0x1

    .line 6
    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x7

    xor-int/2addr v0, v3

    if-gez v0, :cond_24

    xor-int/lit8 v0, v0, -0x80

    goto :goto_70

    :cond_24
    add-int/lit8 v3, v1, 0x1

    .line 7
    aget-byte v1, v2, v1

    shl-int/lit8 v1, v1, 0xe

    xor-int/2addr v0, v1

    if-ltz v0, :cond_31

    xor-int/lit16 v0, v0, 0x3f80

    :cond_2f
    move v1, v3

    goto :goto_70

    :cond_31
    add-int/lit8 v1, v3, 0x1

    .line 8
    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x15

    xor-int/2addr v0, v3

    if-gez v0, :cond_3f

    const v2, -0x1fc080

    xor-int/2addr v0, v2

    goto :goto_70

    :cond_3f
    add-int/lit8 v3, v1, 0x1

    .line 9
    aget-byte v1, v2, v1

    shl-int/lit8 v4, v1, 0x1c

    xor-int/2addr v0, v4

    const v4, 0xfe03f80

    xor-int/2addr v0, v4

    if-gez v1, :cond_2f

    add-int/lit8 v1, v3, 0x1

    .line 10
    aget-byte v3, v2, v3

    if-gez v3, :cond_70

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    if-gez v1, :cond_2f

    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    if-gez v3, :cond_70

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    if-gez v1, :cond_2f

    add-int/lit8 v1, v3, 0x1

    aget-byte v2, v2, v3

    if-gez v2, :cond_70

    .line 11
    :goto_6a
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/i$c;->O()J

    move-result-wide v0

    long-to-int v1, v0

    return v1

    .line 12
    :cond_70
    :goto_70
    iput v1, p0, Landroidx/datastore/preferences/protobuf/i$c;->j:I

    return v0
.end method

.method public N()J
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Landroidx/datastore/preferences/protobuf/i$c;->j:I

    .line 2
    iget v1, p0, Landroidx/datastore/preferences/protobuf/i$c;->h:I

    if-ne v1, v0, :cond_8

    goto/16 :goto_b6

    .line 3
    :cond_8
    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/i$c;->g:[B

    add-int/lit8 v3, v0, 0x1

    .line 4
    aget-byte v0, v2, v0

    if-ltz v0, :cond_14

    .line 5
    iput v3, p0, Landroidx/datastore/preferences/protobuf/i$c;->j:I

    int-to-long v0, v0

    return-wide v0

    :cond_14
    sub-int/2addr v1, v3

    const/16 v4, 0x9

    if-ge v1, v4, :cond_1b

    goto/16 :goto_b6

    :cond_1b
    add-int/lit8 v1, v3, 0x1

    .line 6
    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x7

    xor-int/2addr v0, v3

    if-gez v0, :cond_29

    xor-int/lit8 v0, v0, -0x80

    :goto_26
    int-to-long v2, v0

    goto/16 :goto_bd

    :cond_29
    add-int/lit8 v3, v1, 0x1

    .line 7
    aget-byte v1, v2, v1

    shl-int/lit8 v1, v1, 0xe

    xor-int/2addr v0, v1

    if-ltz v0, :cond_3a

    xor-int/lit16 v0, v0, 0x3f80

    int-to-long v0, v0

    move-wide v9, v0

    move v1, v3

    move-wide v2, v9

    goto/16 :goto_bd

    :cond_3a
    add-int/lit8 v1, v3, 0x1

    .line 8
    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x15

    xor-int/2addr v0, v3

    if-gez v0, :cond_48

    const v2, -0x1fc080

    xor-int/2addr v0, v2

    goto :goto_26

    :cond_48
    int-to-long v3, v0

    add-int/lit8 v0, v1, 0x1

    .line 9
    aget-byte v1, v2, v1

    int-to-long v5, v1

    const/16 v1, 0x1c

    shl-long/2addr v5, v1

    xor-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-ltz v1, :cond_5f

    const-wide/32 v1, 0xfe03f80

    :goto_5b
    xor-long/2addr v1, v3

    move-wide v2, v1

    move v1, v0

    goto :goto_bd

    :cond_5f
    add-int/lit8 v1, v0, 0x1

    .line 10
    aget-byte v0, v2, v0

    int-to-long v7, v0

    const/16 v0, 0x23

    shl-long/2addr v7, v0

    xor-long/2addr v3, v7

    cmp-long v0, v3, v5

    if-gez v0, :cond_74

    const-wide v5, -0x7f01fc080L

    :goto_71
    xor-long/2addr v3, v5

    :cond_72
    :goto_72
    move-wide v2, v3

    goto :goto_bd

    :cond_74
    add-int/lit8 v0, v1, 0x1

    .line 11
    aget-byte v1, v2, v1

    int-to-long v7, v1

    const/16 v1, 0x2a

    shl-long/2addr v7, v1

    xor-long/2addr v3, v7

    cmp-long v1, v3, v5

    if-ltz v1, :cond_87

    const-wide v1, 0x3f80fe03f80L

    goto :goto_5b

    :cond_87
    add-int/lit8 v1, v0, 0x1

    .line 12
    aget-byte v0, v2, v0

    int-to-long v7, v0

    const/16 v0, 0x31

    shl-long/2addr v7, v0

    xor-long/2addr v3, v7

    cmp-long v0, v3, v5

    if-gez v0, :cond_9a

    const-wide v5, -0x1fc07f01fc080L

    goto :goto_71

    :cond_9a
    add-int/lit8 v0, v1, 0x1

    .line 13
    aget-byte v1, v2, v1

    int-to-long v7, v1

    const/16 v1, 0x38

    shl-long/2addr v7, v1

    xor-long/2addr v3, v7

    const-wide v7, 0xfe03f80fe03f80L

    xor-long/2addr v3, v7

    cmp-long v1, v3, v5

    if-gez v1, :cond_bb

    add-int/lit8 v1, v0, 0x1

    .line 14
    aget-byte v0, v2, v0

    int-to-long v7, v0

    cmp-long v0, v7, v5

    if-gez v0, :cond_72

    .line 15
    :goto_b6
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/i$c;->O()J

    move-result-wide v0

    return-wide v0

    :cond_bb
    move v1, v0

    goto :goto_72

    .line 16
    :goto_bd
    iput v1, p0, Landroidx/datastore/preferences/protobuf/i$c;->j:I

    return-wide v2
.end method

.method O()J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_3
    const/16 v3, 0x40

    if-ge v2, v3, :cond_18

    .line 1
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/i$c;->G()B

    move-result v3

    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_15

    return-wide v0

    :cond_15
    add-int/lit8 v2, v2, 0x7

    goto :goto_3

    .line 2
    :cond_18
    invoke-static {}, Landroidx/datastore/preferences/protobuf/b0;->e()Landroidx/datastore/preferences/protobuf/b0;

    move-result-object v0

    goto :goto_1e

    :goto_1d
    throw v0

    :goto_1e
    goto :goto_1d
.end method

.method public R()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/i$c;->B()I

    move-result v0

    if-eqz v0, :cond_c

    .line 2
    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/i$c;->E(I)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_c
    return-void
.end method

.method public S(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Landroidx/datastore/preferences/protobuf/i$c;->h:I

    iget v1, p0, Landroidx/datastore/preferences/protobuf/i$c;->j:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_d

    if-ltz p1, :cond_d

    add-int/2addr v1, p1

    .line 2
    iput v1, p0, Landroidx/datastore/preferences/protobuf/i$c;->j:I

    goto :goto_10

    .line 3
    :cond_d
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/i$c;->T(I)V

    :goto_10
    return-void
.end method

.method public a(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/datastore/preferences/protobuf/b0;
        }
    .end annotation

    .line 1
    iget v0, p0, Landroidx/datastore/preferences/protobuf/i$c;->k:I

    if-ne v0, p1, :cond_5

    return-void

    .line 2
    :cond_5
    invoke-static {}, Landroidx/datastore/preferences/protobuf/b0;->a()Landroidx/datastore/preferences/protobuf/b0;

    move-result-object p1

    throw p1
.end method

.method public d()I
    .registers 3

    .line 1
    iget v0, p0, Landroidx/datastore/preferences/protobuf/i$c;->l:I

    iget v1, p0, Landroidx/datastore/preferences/protobuf/i$c;->j:I

    add-int/2addr v0, v1

    return v0
.end method

.method public e()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Landroidx/datastore/preferences/protobuf/i$c;->j:I

    iget v1, p0, Landroidx/datastore/preferences/protobuf/i$c;->h:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_e

    invoke-direct {p0, v2}, Landroidx/datastore/preferences/protobuf/i$c;->X(I)Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_f

    :cond_e
    const/4 v2, 0x0

    :goto_f
    return v2
.end method

.method public k(I)V
    .registers 2

    .line 1
    iput p1, p0, Landroidx/datastore/preferences/protobuf/i$c;->m:I

    .line 2
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/i$c;->P()V

    return-void
.end method

.method public l(I)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/datastore/preferences/protobuf/b0;
        }
    .end annotation

    if-ltz p1, :cond_17

    .line 1
    iget v0, p0, Landroidx/datastore/preferences/protobuf/i$c;->l:I

    iget v1, p0, Landroidx/datastore/preferences/protobuf/i$c;->j:I

    add-int/2addr v0, v1

    add-int/2addr p1, v0

    .line 2
    iget v0, p0, Landroidx/datastore/preferences/protobuf/i$c;->m:I

    if-gt p1, v0, :cond_12

    .line 3
    iput p1, p0, Landroidx/datastore/preferences/protobuf/i$c;->m:I

    .line 4
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/i$c;->P()V

    return v0

    .line 5
    :cond_12
    invoke-static {}, Landroidx/datastore/preferences/protobuf/b0;->k()Landroidx/datastore/preferences/protobuf/b0;

    move-result-object p1

    throw p1

    .line 6
    :cond_17
    invoke-static {}, Landroidx/datastore/preferences/protobuf/b0;->f()Landroidx/datastore/preferences/protobuf/b0;

    move-result-object p1

    throw p1
.end method

.method public m()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/i$c;->N()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public n()Landroidx/datastore/preferences/protobuf/h;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/i$c;->M()I

    move-result v0

    .line 2
    iget v1, p0, Landroidx/datastore/preferences/protobuf/i$c;->h:I

    iget v2, p0, Landroidx/datastore/preferences/protobuf/i$c;->j:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_19

    if-lez v0, :cond_19

    .line 3
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/i$c;->g:[B

    invoke-static {v1, v2, v0}, Landroidx/datastore/preferences/protobuf/h;->l([BII)Landroidx/datastore/preferences/protobuf/h;

    move-result-object v1

    .line 4
    iget v2, p0, Landroidx/datastore/preferences/protobuf/i$c;->j:I

    add-int/2addr v2, v0

    iput v2, p0, Landroidx/datastore/preferences/protobuf/i$c;->j:I

    return-object v1

    :cond_19
    if-nez v0, :cond_1e

    .line 5
    sget-object v0, Landroidx/datastore/preferences/protobuf/h;->p:Landroidx/datastore/preferences/protobuf/h;

    return-object v0

    .line 6
    :cond_1e
    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/i$c;->F(I)Landroidx/datastore/preferences/protobuf/h;

    move-result-object v0

    return-object v0
.end method

.method public o()D
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/i$c;->L()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public p()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/i$c;->M()I

    move-result v0

    return v0
.end method

.method public q()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/i$c;->K()I

    move-result v0

    return v0
.end method

.method public r()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/i$c;->L()J

    move-result-wide v0

    return-wide v0
.end method

.method public s()F
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/i$c;->K()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public t()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/i$c;->M()I

    move-result v0

    return v0
.end method

.method public u()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/i$c;->N()J

    move-result-wide v0

    return-wide v0
.end method

.method public v()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/i$c;->K()I

    move-result v0

    return v0
.end method

.method public w()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/i$c;->L()J

    move-result-wide v0

    return-wide v0
.end method

.method public x()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/i$c;->M()I

    move-result v0

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/i;->b(I)I

    move-result v0

    return v0
.end method

.method public y()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/i$c;->N()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/datastore/preferences/protobuf/i;->c(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public z()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/i$c;->M()I

    move-result v0

    if-lez v0, :cond_1c

    .line 2
    iget v1, p0, Landroidx/datastore/preferences/protobuf/i$c;->h:I

    iget v2, p0, Landroidx/datastore/preferences/protobuf/i$c;->j:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_1c

    .line 3
    new-instance v1, Ljava/lang/String;

    iget-object v3, p0, Landroidx/datastore/preferences/protobuf/i$c;->g:[B

    sget-object v4, Landroidx/datastore/preferences/protobuf/a0;->a:Ljava/nio/charset/Charset;

    invoke-direct {v1, v3, v2, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 4
    iget v2, p0, Landroidx/datastore/preferences/protobuf/i$c;->j:I

    add-int/2addr v2, v0

    iput v2, p0, Landroidx/datastore/preferences/protobuf/i$c;->j:I

    return-object v1

    :cond_1c
    if-nez v0, :cond_21

    const-string v0, ""

    return-object v0

    .line 5
    :cond_21
    iget v1, p0, Landroidx/datastore/preferences/protobuf/i$c;->h:I

    if-gt v0, v1, :cond_39

    .line 6
    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/i$c;->Q(I)V

    .line 7
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/i$c;->g:[B

    iget v3, p0, Landroidx/datastore/preferences/protobuf/i$c;->j:I

    sget-object v4, Landroidx/datastore/preferences/protobuf/a0;->a:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 8
    iget v2, p0, Landroidx/datastore/preferences/protobuf/i$c;->j:I

    add-int/2addr v2, v0

    iput v2, p0, Landroidx/datastore/preferences/protobuf/i$c;->j:I

    return-object v1

    .line 9
    :cond_39
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Landroidx/datastore/preferences/protobuf/i$c;->H(IZ)[B

    move-result-object v0

    sget-object v2, Landroidx/datastore/preferences/protobuf/a0;->a:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1
.end method

###### Class androidx.datastore.preferences.protobuf.i.c.a (androidx.datastore.preferences.protobuf.i$c$a)
.class interface abstract Landroidx/datastore/preferences/protobuf/i$c$a;
.super Ljava/lang/Object;
.source "CodedInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/datastore/preferences/protobuf/i$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "a"
.end annotation


# virtual methods
.method public abstract a()V
.end method
