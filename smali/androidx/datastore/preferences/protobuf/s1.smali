###### Class androidx.datastore.preferences.protobuf.s1 (androidx.datastore.preferences.protobuf.s1)
.class final Landroidx/datastore/preferences/protobuf/s1;
.super Ljava/lang/Object;
.source "Utf8.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/datastore/preferences/protobuf/s1$a;,
        Landroidx/datastore/preferences/protobuf/s1$e;,
        Landroidx/datastore/preferences/protobuf/s1$c;,
        Landroidx/datastore/preferences/protobuf/s1$b;,
        Landroidx/datastore/preferences/protobuf/s1$d;
    }
.end annotation


# static fields
.field private static final a:Landroidx/datastore/preferences/protobuf/s1$b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    invoke-static {}, Landroidx/datastore/preferences/protobuf/s1$e;->e()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-static {}, Landroidx/datastore/preferences/protobuf/d;->c()Z

    move-result v0

    if-nez v0, :cond_12

    new-instance v0, Landroidx/datastore/preferences/protobuf/s1$e;

    invoke-direct {v0}, Landroidx/datastore/preferences/protobuf/s1$e;-><init>()V

    goto :goto_17

    :cond_12
    new-instance v0, Landroidx/datastore/preferences/protobuf/s1$c;

    invoke-direct {v0}, Landroidx/datastore/preferences/protobuf/s1$c;-><init>()V

    :goto_17
    sput-object v0, Landroidx/datastore/preferences/protobuf/s1;->a:Landroidx/datastore/preferences/protobuf/s1$b;

    return-void
.end method

.method static synthetic a(II)I
    .registers 2

    .line 1
    invoke-static {p0, p1}, Landroidx/datastore/preferences/protobuf/s1;->j(II)I

    move-result p0

    return p0
.end method

.method static synthetic b(III)I
    .registers 3

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/s1;->k(III)I

    move-result p0

    return p0
.end method

.method static synthetic c([BII)I
    .registers 3

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/s1;->l([BII)I

    move-result p0

    return p0
.end method

.method static synthetic d(I)I
    .registers 1

    .line 1
    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/s1;->i(I)I

    move-result p0

    return p0
.end method

.method static e([BII)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/datastore/preferences/protobuf/b0;
        }
    .end annotation

    .line 1
    sget-object v0, Landroidx/datastore/preferences/protobuf/s1;->a:Landroidx/datastore/preferences/protobuf/s1$b;

    invoke-virtual {v0, p0, p1, p2}, Landroidx/datastore/preferences/protobuf/s1$b;->a([BII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static f(Ljava/lang/CharSequence;[BII)I
    .registers 5

    .line 1
    sget-object v0, Landroidx/datastore/preferences/protobuf/s1;->a:Landroidx/datastore/preferences/protobuf/s1$b;

    invoke-virtual {v0, p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/s1$b;->b(Ljava/lang/CharSequence;[BII)I

    move-result p0

    return p0
.end method

.method static g(Ljava/lang/CharSequence;)I
    .registers 6

    .line 1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_12

    .line 2
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x80

    if-ge v2, v3, :cond_12

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_12
    move v2, v0

    :goto_13
    if-ge v1, v0, :cond_2a

    .line 3
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x800

    if-ge v3, v4, :cond_25

    rsub-int/lit8 v3, v3, 0x7f

    ushr-int/lit8 v3, v3, 0x1f

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 4
    :cond_25
    invoke-static {p0, v1}, Landroidx/datastore/preferences/protobuf/s1;->h(Ljava/lang/CharSequence;I)I

    move-result p0

    add-int/2addr v2, p0

    :cond_2a
    if-lt v2, v0, :cond_2d

    return v2

    .line 5
    :cond_2d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UTF-8 length does not fit in int: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-long v1, v2

    const-wide v3, 0x100000000L

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_4c

    :goto_4b
    throw p0

    :goto_4c
    goto :goto_4b
.end method

.method private static h(Ljava/lang/CharSequence;I)I
    .registers 6

    .line 1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge p1, v0, :cond_35

    .line 2
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x800

    if-ge v2, v3, :cond_15

    rsub-int/lit8 v2, v2, 0x7f

    ushr-int/lit8 v2, v2, 0x1f

    add-int/2addr v1, v2

    goto :goto_32

    :cond_15
    add-int/lit8 v1, v1, 0x2

    const v3, 0xd800

    if-gt v3, v2, :cond_32

    const v3, 0xdfff

    if-gt v2, v3, :cond_32

    .line 3
    invoke-static {p0, p1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v2

    const/high16 v3, 0x10000

    if-lt v2, v3, :cond_2c

    add-int/lit8 p1, p1, 0x1

    goto :goto_32

    .line 4
    :cond_2c
    new-instance p0, Landroidx/datastore/preferences/protobuf/s1$d;

    invoke-direct {p0, p1, v0}, Landroidx/datastore/preferences/protobuf/s1$d;-><init>(II)V

    throw p0

    :cond_32
    :goto_32
    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    :cond_35
    return v1
.end method

.method private static i(I)I
    .registers 2

    const/16 v0, -0xc

    if-le p0, v0, :cond_5

    const/4 p0, -0x1

    :cond_5
    return p0
.end method

.method private static j(II)I
    .registers 3

    const/16 v0, -0xc

    if-gt p0, v0, :cond_d

    const/16 v0, -0x41

    if-le p1, v0, :cond_9

    goto :goto_d

    :cond_9
    shl-int/lit8 p1, p1, 0x8

    xor-int/2addr p0, p1

    goto :goto_e

    :cond_d
    :goto_d
    const/4 p0, -0x1

    :goto_e
    return p0
.end method

.method private static k(III)I
    .registers 4

    const/16 v0, -0xc

    if-gt p0, v0, :cond_12

    const/16 v0, -0x41

    if-gt p1, v0, :cond_12

    if-le p2, v0, :cond_b

    goto :goto_12

    :cond_b
    shl-int/lit8 p1, p1, 0x8

    xor-int/2addr p0, p1

    shl-int/lit8 p1, p2, 0x10

    xor-int/2addr p0, p1

    goto :goto_13

    :cond_12
    :goto_12
    const/4 p0, -0x1

    :goto_13
    return p0
.end method

.method private static l([BII)I
    .registers 6

    add-int/lit8 v0, p1, -0x1

    .line 1
    aget-byte v0, p0, v0

    sub-int/2addr p2, p1

    if-eqz p2, :cond_24

    const/4 v1, 0x1

    if-eq p2, v1, :cond_1d

    const/4 v2, 0x2

    if-ne p2, v2, :cond_17

    .line 2
    aget-byte p2, p0, p1

    add-int/2addr p1, v1

    aget-byte p0, p0, p1

    invoke-static {v0, p2, p0}, Landroidx/datastore/preferences/protobuf/s1;->k(III)I

    move-result p0

    return p0

    .line 3
    :cond_17
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 4
    :cond_1d
    aget-byte p0, p0, p1

    invoke-static {v0, p0}, Landroidx/datastore/preferences/protobuf/s1;->j(II)I

    move-result p0

    return p0

    .line 5
    :cond_24
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/s1;->i(I)I

    move-result p0

    return p0
.end method

.method public static m([B)Z
    .registers 4

    .line 1
    sget-object v0, Landroidx/datastore/preferences/protobuf/s1;->a:Landroidx/datastore/preferences/protobuf/s1$b;

    array-length v1, p0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Landroidx/datastore/preferences/protobuf/s1$b;->c([BII)Z

    move-result p0

    return p0
.end method

.method public static n([BII)Z
    .registers 4

    .line 1
    sget-object v0, Landroidx/datastore/preferences/protobuf/s1;->a:Landroidx/datastore/preferences/protobuf/s1$b;

    invoke-virtual {v0, p0, p1, p2}, Landroidx/datastore/preferences/protobuf/s1$b;->c([BII)Z

    move-result p0

    return p0
.end method

###### Class androidx.datastore.preferences.protobuf.s1.a (androidx.datastore.preferences.protobuf.s1$a)
.class Landroidx/datastore/preferences/protobuf/s1$a;
.super Ljava/lang/Object;
.source "Utf8.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/datastore/preferences/protobuf/s1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# direct methods
.method static synthetic a(BBBB[CI)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/datastore/preferences/protobuf/b0;
        }
    .end annotation

    .line 1
    invoke-static/range {p0 .. p5}, Landroidx/datastore/preferences/protobuf/s1$a;->h(BBBB[CI)V

    return-void
.end method

.method static synthetic b(B)Z
    .registers 1

    .line 1
    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/s1$a;->n(B)Z

    move-result p0

    return p0
.end method

.method static synthetic c(B[CI)V
    .registers 3

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/s1$a;->i(B[CI)V

    return-void
.end method

.method static synthetic d(B)Z
    .registers 1

    .line 1
    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/s1$a;->p(B)Z

    move-result p0

    return p0
.end method

.method static synthetic e(BB[CI)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/datastore/preferences/protobuf/b0;
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/s1$a;->k(BB[CI)V

    return-void
.end method

.method static synthetic f(B)Z
    .registers 1

    .line 1
    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/s1$a;->o(B)Z

    move-result p0

    return p0
.end method

.method static synthetic g(BBB[CI)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/datastore/preferences/protobuf/b0;
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/datastore/preferences/protobuf/s1$a;->j(BBB[CI)V

    return-void
.end method

.method private static h(BBBB[CI)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/datastore/preferences/protobuf/b0;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/s1$a;->m(B)Z

    move-result v0

    if-nez v0, :cond_41

    shl-int/lit8 v0, p0, 0x1c

    add-int/lit8 v1, p1, 0x70

    add-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x1e

    if-nez v0, :cond_41

    .line 2
    invoke-static {p2}, Landroidx/datastore/preferences/protobuf/s1$a;->m(B)Z

    move-result v0

    if-nez v0, :cond_41

    .line 3
    invoke-static {p3}, Landroidx/datastore/preferences/protobuf/s1$a;->m(B)Z

    move-result v0

    if-nez v0, :cond_41

    and-int/lit8 p0, p0, 0x7

    shl-int/lit8 p0, p0, 0x12

    .line 4
    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/s1$a;->r(B)I

    move-result p1

    shl-int/lit8 p1, p1, 0xc

    or-int/2addr p0, p1

    .line 5
    invoke-static {p2}, Landroidx/datastore/preferences/protobuf/s1$a;->r(B)I

    move-result p1

    shl-int/lit8 p1, p1, 0x6

    or-int/2addr p0, p1

    .line 6
    invoke-static {p3}, Landroidx/datastore/preferences/protobuf/s1$a;->r(B)I

    move-result p1

    or-int/2addr p0, p1

    .line 7
    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/s1$a;->l(I)C

    move-result p1

    aput-char p1, p4, p5

    add-int/lit8 p5, p5, 0x1

    .line 8
    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/s1$a;->q(I)C

    move-result p0

    aput-char p0, p4, p5

    return-void

    .line 9
    :cond_41
    invoke-static {}, Landroidx/datastore/preferences/protobuf/b0;->c()Landroidx/datastore/preferences/protobuf/b0;

    move-result-object p0

    throw p0
.end method

.method private static i(B[CI)V
    .registers 3

    int-to-char p0, p0

    .line 1
    aput-char p0, p1, p2

    return-void
.end method

.method private static j(BBB[CI)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/datastore/preferences/protobuf/b0;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/s1$a;->m(B)Z

    move-result v0

    if-nez v0, :cond_2e

    const/16 v0, -0x20

    const/16 v1, -0x60

    if-ne p0, v0, :cond_e

    if-lt p1, v1, :cond_2e

    :cond_e
    const/16 v0, -0x13

    if-ne p0, v0, :cond_14

    if-ge p1, v1, :cond_2e

    .line 2
    :cond_14
    invoke-static {p2}, Landroidx/datastore/preferences/protobuf/s1$a;->m(B)Z

    move-result v0

    if-nez v0, :cond_2e

    and-int/lit8 p0, p0, 0xf

    shl-int/lit8 p0, p0, 0xc

    .line 3
    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/s1$a;->r(B)I

    move-result p1

    shl-int/lit8 p1, p1, 0x6

    or-int/2addr p0, p1

    invoke-static {p2}, Landroidx/datastore/preferences/protobuf/s1$a;->r(B)I

    move-result p1

    or-int/2addr p0, p1

    int-to-char p0, p0

    aput-char p0, p3, p4

    return-void

    .line 4
    :cond_2e
    invoke-static {}, Landroidx/datastore/preferences/protobuf/b0;->c()Landroidx/datastore/preferences/protobuf/b0;

    move-result-object p0

    throw p0
.end method

.method private static k(BB[CI)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/datastore/preferences/protobuf/b0;
        }
    .end annotation

    const/16 v0, -0x3e

    if-lt p0, v0, :cond_17

    .line 1
    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/s1$a;->m(B)Z

    move-result v0

    if-nez v0, :cond_17

    and-int/lit8 p0, p0, 0x1f

    shl-int/lit8 p0, p0, 0x6

    .line 2
    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/s1$a;->r(B)I

    move-result p1

    or-int/2addr p0, p1

    int-to-char p0, p0

    aput-char p0, p2, p3

    return-void

    .line 3
    :cond_17
    invoke-static {}, Landroidx/datastore/preferences/protobuf/b0;->c()Landroidx/datastore/preferences/protobuf/b0;

    move-result-object p0

    throw p0
.end method

.method private static l(I)C
    .registers 2

    ushr-int/lit8 p0, p0, 0xa

    const v0, 0xd7c0

    add-int/2addr p0, v0

    int-to-char p0, p0

    return p0
.end method

.method private static m(B)Z
    .registers 2

    const/16 v0, -0x41

    if-le p0, v0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method private static n(B)Z
    .registers 1

    if-ltz p0, :cond_4

    const/4 p0, 0x1

    goto :goto_5

    :cond_4
    const/4 p0, 0x0

    :goto_5
    return p0
.end method

.method private static o(B)Z
    .registers 2

    const/16 v0, -0x10

    if-ge p0, v0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method private static p(B)Z
    .registers 2

    const/16 v0, -0x20

    if-ge p0, v0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method private static q(I)C
    .registers 2

    and-int/lit16 p0, p0, 0x3ff

    const v0, 0xdc00

    add-int/2addr p0, v0

    int-to-char p0, p0

    return p0
.end method

.method private static r(B)I
    .registers 1

    and-int/lit8 p0, p0, 0x3f

    return p0
.end method

###### Class androidx.datastore.preferences.protobuf.s1.b (androidx.datastore.preferences.protobuf.s1$b)
.class abstract Landroidx/datastore/preferences/protobuf/s1$b;
.super Ljava/lang/Object;
.source "Utf8.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/datastore/preferences/protobuf/s1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "b"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract a([BII)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/datastore/preferences/protobuf/b0;
        }
    .end annotation
.end method

.method abstract b(Ljava/lang/CharSequence;[BII)I
.end method

.method final c([BII)Z
    .registers 5

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/s1$b;->d(I[BII)I

    move-result p1

    if-nez p1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method abstract d(I[BII)I
.end method

###### Class androidx.datastore.preferences.protobuf.s1.c (androidx.datastore.preferences.protobuf.s1$c)
.class final Landroidx/datastore/preferences/protobuf/s1$c;
.super Landroidx/datastore/preferences/protobuf/s1$b;
.source "Utf8.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/datastore/preferences/protobuf/s1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/s1$b;-><init>()V

    return-void
.end method

.method private static e([BII)I
    .registers 4

    :goto_0
    if-ge p1, p2, :cond_9

    .line 1
    aget-byte v0, p0, p1

    if-ltz v0, :cond_9

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_9
    if-lt p1, p2, :cond_d

    const/4 p0, 0x0

    goto :goto_11

    .line 2
    :cond_d
    invoke-static {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/s1$c;->f([BII)I

    move-result p0

    :goto_11
    return p0
.end method

.method private static f([BII)I
    .registers 9

    :cond_0
    :goto_0
    if-lt p1, p2, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    add-int/lit8 v0, p1, 0x1

    .line 1
    aget-byte p1, p0, p1

    if-gez p1, :cond_6a

    const/16 v1, -0x20

    const/4 v2, -0x1

    const/16 v3, -0x41

    if-ge p1, v1, :cond_1f

    if-lt v0, p2, :cond_14

    return p1

    :cond_14
    const/16 v1, -0x3e

    if-lt p1, v1, :cond_1e

    add-int/lit8 p1, v0, 0x1

    .line 2
    aget-byte v0, p0, v0

    if-le v0, v3, :cond_0

    :cond_1e
    return v2

    :cond_1f
    const/16 v4, -0x10

    if-ge p1, v4, :cond_45

    add-int/lit8 v4, p2, -0x1

    if-lt v0, v4, :cond_2c

    .line 3
    invoke-static {p0, v0, p2}, Landroidx/datastore/preferences/protobuf/s1;->c([BII)I

    move-result p0

    return p0

    :cond_2c
    add-int/lit8 v4, v0, 0x1

    .line 4
    aget-byte v0, p0, v0

    if-gt v0, v3, :cond_44

    const/16 v5, -0x60

    if-ne p1, v1, :cond_38

    if-lt v0, v5, :cond_44

    :cond_38
    const/16 v1, -0x13

    if-ne p1, v1, :cond_3e

    if-ge v0, v5, :cond_44

    :cond_3e
    add-int/lit8 p1, v4, 0x1

    aget-byte v0, p0, v4

    if-le v0, v3, :cond_0

    :cond_44
    return v2

    :cond_45
    add-int/lit8 v1, p2, -0x2

    if-lt v0, v1, :cond_4e

    .line 5
    invoke-static {p0, v0, p2}, Landroidx/datastore/preferences/protobuf/s1;->c([BII)I

    move-result p0

    return p0

    :cond_4e
    add-int/lit8 v1, v0, 0x1

    .line 6
    aget-byte v0, p0, v0

    if-gt v0, v3, :cond_69

    shl-int/lit8 p1, p1, 0x1c

    add-int/lit8 v0, v0, 0x70

    add-int/2addr p1, v0

    shr-int/lit8 p1, p1, 0x1e

    if-nez p1, :cond_69

    add-int/lit8 p1, v1, 0x1

    aget-byte v0, p0, v1

    if-gt v0, v3, :cond_69

    add-int/lit8 v0, p1, 0x1

    aget-byte p1, p0, p1

    if-le p1, v3, :cond_6a

    :cond_69
    return v2

    :cond_6a
    move p1, v0

    goto :goto_0
.end method


# virtual methods
.method a([BII)Ljava/lang/String;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/datastore/preferences/protobuf/b0;
        }
    .end annotation

    or-int v0, p2, p3

    .line 1
    array-length v1, p1

    sub-int/2addr v1, p2

    sub-int/2addr v1, p3

    or-int/2addr v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v0, :cond_ad

    add-int v0, p2, p3

    .line 2
    new-array p3, p3, [C

    const/4 v3, 0x0

    :goto_f
    if-ge p2, v0, :cond_23

    .line 3
    aget-byte v4, p1, p2

    .line 4
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/s1$a;->b(B)Z

    move-result v5

    if-nez v5, :cond_1a

    goto :goto_23

    :cond_1a
    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v5, v3, 0x1

    .line 5
    invoke-static {v4, p3, v3}, Landroidx/datastore/preferences/protobuf/s1$a;->c(B[CI)V

    move v3, v5

    goto :goto_f

    :cond_23
    :goto_23
    move v8, v3

    :goto_24
    if-ge p2, v0, :cond_a7

    add-int/lit8 v3, p2, 0x1

    .line 6
    aget-byte p2, p1, p2

    .line 7
    invoke-static {p2}, Landroidx/datastore/preferences/protobuf/s1$a;->b(B)Z

    move-result v4

    if-eqz v4, :cond_4c

    add-int/lit8 v4, v8, 0x1

    .line 8
    invoke-static {p2, p3, v8}, Landroidx/datastore/preferences/protobuf/s1$a;->c(B[CI)V

    :goto_35
    if-ge v3, v0, :cond_49

    .line 9
    aget-byte p2, p1, v3

    .line 10
    invoke-static {p2}, Landroidx/datastore/preferences/protobuf/s1$a;->b(B)Z

    move-result v5

    if-nez v5, :cond_40

    goto :goto_49

    :cond_40
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v5, v4, 0x1

    .line 11
    invoke-static {p2, p3, v4}, Landroidx/datastore/preferences/protobuf/s1$a;->c(B[CI)V

    move v4, v5

    goto :goto_35

    :cond_49
    :goto_49
    move p2, v3

    move v8, v4

    goto :goto_24

    .line 12
    :cond_4c
    invoke-static {p2}, Landroidx/datastore/preferences/protobuf/s1$a;->d(B)Z

    move-result v4

    if-eqz v4, :cond_65

    if-ge v3, v0, :cond_60

    add-int/lit8 v4, v3, 0x1

    .line 13
    aget-byte v3, p1, v3

    add-int/lit8 v5, v8, 0x1

    invoke-static {p2, v3, p3, v8}, Landroidx/datastore/preferences/protobuf/s1$a;->e(BB[CI)V

    move p2, v4

    move v8, v5

    goto :goto_24

    .line 14
    :cond_60
    invoke-static {}, Landroidx/datastore/preferences/protobuf/b0;->c()Landroidx/datastore/preferences/protobuf/b0;

    move-result-object p1

    throw p1

    .line 15
    :cond_65
    invoke-static {p2}, Landroidx/datastore/preferences/protobuf/s1$a;->f(B)Z

    move-result v4

    if-eqz v4, :cond_84

    add-int/lit8 v4, v0, -0x1

    if-ge v3, v4, :cond_7f

    add-int/lit8 v4, v3, 0x1

    .line 16
    aget-byte v3, p1, v3

    add-int/lit8 v5, v4, 0x1

    aget-byte v4, p1, v4

    add-int/lit8 v6, v8, 0x1

    invoke-static {p2, v3, v4, p3, v8}, Landroidx/datastore/preferences/protobuf/s1$a;->g(BBB[CI)V

    move p2, v5

    move v8, v6

    goto :goto_24

    .line 17
    :cond_7f
    invoke-static {}, Landroidx/datastore/preferences/protobuf/b0;->c()Landroidx/datastore/preferences/protobuf/b0;

    move-result-object p1

    throw p1

    :cond_84
    add-int/lit8 v4, v0, -0x2

    if-ge v3, v4, :cond_a2

    add-int/lit8 v4, v3, 0x1

    .line 18
    aget-byte v5, p1, v3

    add-int/lit8 v3, v4, 0x1

    aget-byte v6, p1, v4

    add-int/lit8 v9, v3, 0x1

    aget-byte v7, p1, v3

    add-int/lit8 v10, v8, 0x1

    move v3, p2

    move v4, v5

    move v5, v6

    move v6, v7

    move-object v7, p3

    invoke-static/range {v3 .. v8}, Landroidx/datastore/preferences/protobuf/s1$a;->a(BBBB[CI)V

    add-int/2addr v10, v2

    move p2, v9

    move v8, v10

    goto :goto_24

    .line 19
    :cond_a2
    invoke-static {}, Landroidx/datastore/preferences/protobuf/b0;->c()Landroidx/datastore/preferences/protobuf/b0;

    move-result-object p1

    throw p1

    .line 20
    :cond_a7
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p3, v1, v8}, Ljava/lang/String;-><init>([CII)V

    return-object p1

    .line 21
    :cond_ad
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    array-length p1, p1

    .line 22
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v3, p2

    const-string p1, "buffer length=%d, index=%d, size=%d"

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    goto :goto_d1

    :goto_d0
    throw v0

    :goto_d1
    goto :goto_d0
.end method

.method b(Ljava/lang/CharSequence;[BII)I
    .registers 12

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/2addr p4, p3

    const/4 v1, 0x0

    :goto_6
    const/16 v2, 0x80

    if-ge v1, v0, :cond_1a

    add-int v3, v1, p3

    if-ge v3, p4, :cond_1a

    .line 2
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-ge v4, v2, :cond_1a

    int-to-byte v2, v4

    .line 3
    aput-byte v2, p2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_1a
    if-ne v1, v0, :cond_1e

    add-int/2addr p3, v0

    return p3

    :cond_1e
    add-int/2addr p3, v1

    :goto_1f
    if-ge v1, v0, :cond_fd

    .line 4
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-ge v3, v2, :cond_31

    if-ge p3, p4, :cond_31

    add-int/lit8 v4, p3, 0x1

    int-to-byte v3, v3

    .line 5
    aput-byte v3, p2, p3

    :goto_2e
    move p3, v4

    goto/16 :goto_b5

    :cond_31
    const/16 v4, 0x800

    if-ge v3, v4, :cond_4b

    add-int/lit8 v4, p4, -0x2

    if-gt p3, v4, :cond_4b

    add-int/lit8 v4, p3, 0x1

    ushr-int/lit8 v5, v3, 0x6

    or-int/lit16 v5, v5, 0x3c0

    int-to-byte v5, v5

    .line 6
    aput-byte v5, p2, p3

    add-int/lit8 p3, v4, 0x1

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v3, v2

    int-to-byte v3, v3

    .line 7
    aput-byte v3, p2, v4

    goto :goto_b5

    :cond_4b
    const v4, 0xdfff

    const v5, 0xd800

    if-lt v3, v5, :cond_55

    if-ge v4, v3, :cond_75

    :cond_55
    add-int/lit8 v6, p4, -0x3

    if-gt p3, v6, :cond_75

    add-int/lit8 v4, p3, 0x1

    ushr-int/lit8 v5, v3, 0xc

    or-int/lit16 v5, v5, 0x1e0

    int-to-byte v5, v5

    .line 8
    aput-byte v5, p2, p3

    add-int/lit8 p3, v4, 0x1

    ushr-int/lit8 v5, v3, 0x6

    and-int/lit8 v5, v5, 0x3f

    or-int/2addr v5, v2

    int-to-byte v5, v5

    .line 9
    aput-byte v5, p2, v4

    add-int/lit8 v4, p3, 0x1

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v3, v2

    int-to-byte v3, v3

    .line 10
    aput-byte v3, p2, p3

    goto :goto_2e

    :cond_75
    add-int/lit8 v6, p4, -0x4

    if-gt p3, v6, :cond_c2

    add-int/lit8 v4, v1, 0x1

    .line 11
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-eq v4, v5, :cond_ba

    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v5

    if-eqz v5, :cond_b9

    .line 12
    invoke-static {v3, v1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v1

    add-int/lit8 v3, p3, 0x1

    ushr-int/lit8 v5, v1, 0x12

    or-int/lit16 v5, v5, 0xf0

    int-to-byte v5, v5

    .line 13
    aput-byte v5, p2, p3

    add-int/lit8 p3, v3, 0x1

    ushr-int/lit8 v5, v1, 0xc

    and-int/lit8 v5, v5, 0x3f

    or-int/2addr v5, v2

    int-to-byte v5, v5

    .line 14
    aput-byte v5, p2, v3

    add-int/lit8 v3, p3, 0x1

    ushr-int/lit8 v5, v1, 0x6

    and-int/lit8 v5, v5, 0x3f

    or-int/2addr v5, v2

    int-to-byte v5, v5

    .line 15
    aput-byte v5, p2, p3

    add-int/lit8 p3, v3, 0x1

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v1, v2

    int-to-byte v1, v1

    .line 16
    aput-byte v1, p2, v3

    move v1, v4

    :goto_b5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1f

    :cond_b9
    move v1, v4

    .line 17
    :cond_ba
    new-instance p1, Landroidx/datastore/preferences/protobuf/s1$d;

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p1, v1, v0}, Landroidx/datastore/preferences/protobuf/s1$d;-><init>(II)V

    throw p1

    :cond_c2
    if-gt v5, v3, :cond_de

    if-gt v3, v4, :cond_de

    add-int/lit8 p2, v1, 0x1

    .line 18
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p4

    if-eq p2, p4, :cond_d8

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    invoke-static {v3, p1}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result p1

    if-nez p1, :cond_de

    .line 19
    :cond_d8
    new-instance p1, Landroidx/datastore/preferences/protobuf/s1$d;

    invoke-direct {p1, v1, v0}, Landroidx/datastore/preferences/protobuf/s1$d;-><init>(II)V

    throw p1

    .line 20
    :cond_de
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Failed writing "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p4, " at index "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_fd
    return p3
.end method

.method d(I[BII)I
    .registers 11

    if-eqz p1, :cond_82

    if-lt p3, p4, :cond_5

    return p1

    :cond_5
    int-to-byte v0, p1

    const/16 v1, -0x20

    const/4 v2, -0x1

    const/16 v3, -0x41

    if-ge v0, v1, :cond_1c

    const/16 p1, -0x3e

    if-lt v0, p1, :cond_1b

    add-int/lit8 p1, p3, 0x1

    .line 1
    aget-byte p3, p2, p3

    if-le p3, v3, :cond_18

    goto :goto_1b

    :cond_18
    move p3, p1

    goto/16 :goto_82

    :cond_1b
    :goto_1b
    return v2

    :cond_1c
    const/16 v4, -0x10

    if-ge v0, v4, :cond_49

    shr-int/lit8 p1, p1, 0x8

    xor-int/2addr p1, v2

    int-to-byte p1, p1

    if-nez p1, :cond_34

    add-int/lit8 p1, p3, 0x1

    .line 2
    aget-byte p3, p2, p3

    if-lt p1, p4, :cond_31

    .line 3
    invoke-static {v0, p3}, Landroidx/datastore/preferences/protobuf/s1;->a(II)I

    move-result p1

    return p1

    :cond_31
    move v5, p3

    move p3, p1

    move p1, v5

    :cond_34
    if-gt p1, v3, :cond_48

    const/16 v4, -0x60

    if-ne v0, v1, :cond_3c

    if-lt p1, v4, :cond_48

    :cond_3c
    const/16 v1, -0x13

    if-ne v0, v1, :cond_42

    if-ge p1, v4, :cond_48

    :cond_42
    add-int/lit8 p1, p3, 0x1

    .line 4
    aget-byte p3, p2, p3

    if-le p3, v3, :cond_18

    :cond_48
    return v2

    :cond_49
    shr-int/lit8 v1, p1, 0x8

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    const/4 v4, 0x0

    if-nez v1, :cond_5d

    add-int/lit8 p1, p3, 0x1

    .line 5
    aget-byte v1, p2, p3

    if-lt p1, p4, :cond_5b

    .line 6
    invoke-static {v0, v1}, Landroidx/datastore/preferences/protobuf/s1;->a(II)I

    move-result p1

    return p1

    :cond_5b
    move p3, p1

    goto :goto_60

    :cond_5d
    shr-int/lit8 p1, p1, 0x10

    int-to-byte v4, p1

    :goto_60
    if-nez v4, :cond_6e

    add-int/lit8 p1, p3, 0x1

    .line 7
    aget-byte v4, p2, p3

    if-lt p1, p4, :cond_6d

    .line 8
    invoke-static {v0, v1, v4}, Landroidx/datastore/preferences/protobuf/s1;->b(III)I

    move-result p1

    return p1

    :cond_6d
    move p3, p1

    :cond_6e
    if-gt v1, v3, :cond_81

    shl-int/lit8 p1, v0, 0x1c

    add-int/lit8 v1, v1, 0x70

    add-int/2addr p1, v1

    shr-int/lit8 p1, p1, 0x1e

    if-nez p1, :cond_81

    if-gt v4, v3, :cond_81

    add-int/lit8 p1, p3, 0x1

    .line 9
    aget-byte p3, p2, p3

    if-le p3, v3, :cond_18

    :cond_81
    return v2

    .line 10
    :cond_82
    :goto_82
    invoke-static {p2, p3, p4}, Landroidx/datastore/preferences/protobuf/s1$c;->e([BII)I

    move-result p1

    return p1
.end method

###### Class androidx.datastore.preferences.protobuf.s1.d (androidx.datastore.preferences.protobuf.s1$d)
.class Landroidx/datastore/preferences/protobuf/s1$d;
.super Ljava/lang/IllegalArgumentException;
.source "Utf8.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/datastore/preferences/protobuf/s1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation


# direct methods
.method constructor <init>(II)V
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unpaired surrogate at index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " of "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-void
.end method

###### Class androidx.datastore.preferences.protobuf.s1.e (androidx.datastore.preferences.protobuf.s1$e)
.class final Landroidx/datastore/preferences/protobuf/s1$e;
.super Landroidx/datastore/preferences/protobuf/s1$b;
.source "Utf8.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/datastore/preferences/protobuf/s1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "e"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/s1$b;-><init>()V

    return-void
.end method

.method static e()Z
    .registers 1

    .line 1
    invoke-static {}, Landroidx/datastore/preferences/protobuf/r1;->C()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {}, Landroidx/datastore/preferences/protobuf/r1;->D()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private static f([BJI)I
    .registers 12

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/s1$e;->g([BJI)I

    move-result v0

    sub-int/2addr p3, v0

    int-to-long v0, v0

    add-long/2addr p1, v0

    :goto_7
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_9
    const-wide/16 v2, 0x1

    if-lez p3, :cond_1a

    add-long v4, p1, v2

    .line 2
    invoke-static {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/r1;->s([BJ)B

    move-result v1

    if-ltz v1, :cond_19

    add-int/lit8 p3, p3, -0x1

    move-wide p1, v4

    goto :goto_9

    :cond_19
    move-wide p1, v4

    :cond_1a
    if-nez p3, :cond_1d

    return v0

    :cond_1d
    add-int/lit8 p3, p3, -0x1

    const/16 v0, -0x20

    const/16 v4, -0x41

    const/4 v5, -0x1

    if-ge v1, v0, :cond_3a

    if-nez p3, :cond_29

    return v1

    :cond_29
    add-int/lit8 p3, p3, -0x1

    const/16 v0, -0x3e

    if-lt v1, v0, :cond_39

    add-long/2addr v2, p1

    .line 3
    invoke-static {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/r1;->s([BJ)B

    move-result p1

    if-le p1, v4, :cond_37

    goto :goto_39

    :cond_37
    move-wide p1, v2

    goto :goto_7

    :cond_39
    :goto_39
    return v5

    :cond_3a
    const/16 v6, -0x10

    if-ge v1, v6, :cond_64

    const/4 v6, 0x2

    if-ge p3, v6, :cond_46

    .line 4
    invoke-static {p0, v1, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/s1$e;->h([BIJI)I

    move-result p0

    return p0

    :cond_46
    add-int/lit8 p3, p3, -0x2

    add-long v6, p1, v2

    .line 5
    invoke-static {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/r1;->s([BJ)B

    move-result p1

    if-gt p1, v4, :cond_63

    const/16 p2, -0x60

    if-ne v1, v0, :cond_56

    if-lt p1, p2, :cond_63

    :cond_56
    const/16 v0, -0x13

    if-ne v1, v0, :cond_5c

    if-ge p1, p2, :cond_63

    :cond_5c
    add-long/2addr v2, v6

    .line 6
    invoke-static {p0, v6, v7}, Landroidx/datastore/preferences/protobuf/r1;->s([BJ)B

    move-result p1

    if-le p1, v4, :cond_37

    :cond_63
    return v5

    :cond_64
    const/4 v0, 0x3

    if-ge p3, v0, :cond_6c

    .line 7
    invoke-static {p0, v1, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/s1$e;->h([BIJI)I

    move-result p0

    return p0

    :cond_6c
    add-int/lit8 p3, p3, -0x3

    add-long v6, p1, v2

    .line 8
    invoke-static {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/r1;->s([BJ)B

    move-result p1

    if-gt p1, v4, :cond_8e

    shl-int/lit8 p2, v1, 0x1c

    add-int/lit8 p1, p1, 0x70

    add-int/2addr p2, p1

    shr-int/lit8 p1, p2, 0x1e

    if-nez p1, :cond_8e

    add-long p1, v6, v2

    .line 9
    invoke-static {p0, v6, v7}, Landroidx/datastore/preferences/protobuf/r1;->s([BJ)B

    move-result v0

    if-gt v0, v4, :cond_8e

    add-long/2addr v2, p1

    .line 10
    invoke-static {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/r1;->s([BJ)B

    move-result p1

    if-le p1, v4, :cond_37

    :cond_8e
    return v5
.end method

.method private static g([BJI)I
    .registers 7

    const/4 v0, 0x0

    const/16 v1, 0x10

    if-ge p3, v1, :cond_6

    return v0

    :cond_6
    :goto_6
    if-ge v0, p3, :cond_16

    const-wide/16 v1, 0x1

    add-long/2addr v1, p1

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/r1;->s([BJ)B

    move-result p1

    if-gez p1, :cond_12

    return v0

    :cond_12
    add-int/lit8 v0, v0, 0x1

    move-wide p1, v1

    goto :goto_6

    :cond_16
    return p3
.end method

.method private static h([BIJI)I
    .registers 7

    if-eqz p4, :cond_27

    const/4 v0, 0x1

    if-eq p4, v0, :cond_1e

    const/4 v0, 0x2

    if-ne p4, v0, :cond_18

    .line 1
    invoke-static {p0, p2, p3}, Landroidx/datastore/preferences/protobuf/r1;->s([BJ)B

    move-result p4

    const-wide/16 v0, 0x1

    add-long/2addr p2, v0

    invoke-static {p0, p2, p3}, Landroidx/datastore/preferences/protobuf/r1;->s([BJ)B

    move-result p0

    .line 2
    invoke-static {p1, p4, p0}, Landroidx/datastore/preferences/protobuf/s1;->b(III)I

    move-result p0

    return p0

    .line 3
    :cond_18
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 4
    :cond_1e
    invoke-static {p0, p2, p3}, Landroidx/datastore/preferences/protobuf/r1;->s([BJ)B

    move-result p0

    invoke-static {p1, p0}, Landroidx/datastore/preferences/protobuf/s1;->a(II)I

    move-result p0

    return p0

    .line 5
    :cond_27
    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/s1;->d(I)I

    move-result p0

    return p0
.end method


# virtual methods
.method a([BII)Ljava/lang/String;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/datastore/preferences/protobuf/b0;
        }
    .end annotation

    or-int v0, p2, p3

    .line 1
    array-length v1, p1

    sub-int/2addr v1, p2

    sub-int/2addr v1, p3

    or-int/2addr v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v0, :cond_c9

    add-int v0, p2, p3

    .line 2
    new-array p3, p3, [C

    const/4 v3, 0x0

    :goto_f
    if-ge p2, v0, :cond_26

    int-to-long v4, p2

    .line 3
    invoke-static {p1, v4, v5}, Landroidx/datastore/preferences/protobuf/r1;->s([BJ)B

    move-result v4

    .line 4
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/s1$a;->b(B)Z

    move-result v5

    if-nez v5, :cond_1d

    goto :goto_26

    :cond_1d
    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v5, v3, 0x1

    .line 5
    invoke-static {v4, p3, v3}, Landroidx/datastore/preferences/protobuf/s1$a;->c(B[CI)V

    move v3, v5

    goto :goto_f

    :cond_26
    :goto_26
    move v8, v3

    :goto_27
    if-ge p2, v0, :cond_c3

    add-int/lit8 v3, p2, 0x1

    int-to-long v4, p2

    .line 6
    invoke-static {p1, v4, v5}, Landroidx/datastore/preferences/protobuf/r1;->s([BJ)B

    move-result p2

    .line 7
    invoke-static {p2}, Landroidx/datastore/preferences/protobuf/s1$a;->b(B)Z

    move-result v4

    if-eqz v4, :cond_55

    add-int/lit8 v4, v8, 0x1

    .line 8
    invoke-static {p2, p3, v8}, Landroidx/datastore/preferences/protobuf/s1$a;->c(B[CI)V

    :goto_3b
    if-ge v3, v0, :cond_52

    int-to-long v5, v3

    .line 9
    invoke-static {p1, v5, v6}, Landroidx/datastore/preferences/protobuf/r1;->s([BJ)B

    move-result p2

    .line 10
    invoke-static {p2}, Landroidx/datastore/preferences/protobuf/s1$a;->b(B)Z

    move-result v5

    if-nez v5, :cond_49

    goto :goto_52

    :cond_49
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v5, v4, 0x1

    .line 11
    invoke-static {p2, p3, v4}, Landroidx/datastore/preferences/protobuf/s1$a;->c(B[CI)V

    move v4, v5

    goto :goto_3b

    :cond_52
    :goto_52
    move p2, v3

    move v8, v4

    goto :goto_27

    .line 12
    :cond_55
    invoke-static {p2}, Landroidx/datastore/preferences/protobuf/s1$a;->d(B)Z

    move-result v4

    if-eqz v4, :cond_71

    if-ge v3, v0, :cond_6c

    add-int/lit8 v4, v3, 0x1

    int-to-long v5, v3

    .line 13
    invoke-static {p1, v5, v6}, Landroidx/datastore/preferences/protobuf/r1;->s([BJ)B

    move-result v3

    add-int/lit8 v5, v8, 0x1

    .line 14
    invoke-static {p2, v3, p3, v8}, Landroidx/datastore/preferences/protobuf/s1$a;->e(BB[CI)V

    move p2, v4

    move v8, v5

    goto :goto_27

    .line 15
    :cond_6c
    invoke-static {}, Landroidx/datastore/preferences/protobuf/b0;->c()Landroidx/datastore/preferences/protobuf/b0;

    move-result-object p1

    throw p1

    .line 16
    :cond_71
    invoke-static {p2}, Landroidx/datastore/preferences/protobuf/s1$a;->f(B)Z

    move-result v4

    if-eqz v4, :cond_96

    add-int/lit8 v4, v0, -0x1

    if-ge v3, v4, :cond_91

    add-int/lit8 v4, v3, 0x1

    int-to-long v5, v3

    .line 17
    invoke-static {p1, v5, v6}, Landroidx/datastore/preferences/protobuf/r1;->s([BJ)B

    move-result v3

    add-int/lit8 v5, v4, 0x1

    int-to-long v6, v4

    .line 18
    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/r1;->s([BJ)B

    move-result v4

    add-int/lit8 v6, v8, 0x1

    .line 19
    invoke-static {p2, v3, v4, p3, v8}, Landroidx/datastore/preferences/protobuf/s1$a;->g(BBB[CI)V

    move p2, v5

    move v8, v6

    goto :goto_27

    .line 20
    :cond_91
    invoke-static {}, Landroidx/datastore/preferences/protobuf/b0;->c()Landroidx/datastore/preferences/protobuf/b0;

    move-result-object p1

    throw p1

    :cond_96
    add-int/lit8 v4, v0, -0x2

    if-ge v3, v4, :cond_be

    add-int/lit8 v4, v3, 0x1

    int-to-long v5, v3

    .line 21
    invoke-static {p1, v5, v6}, Landroidx/datastore/preferences/protobuf/r1;->s([BJ)B

    move-result v5

    add-int/lit8 v3, v4, 0x1

    int-to-long v6, v4

    .line 22
    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/r1;->s([BJ)B

    move-result v6

    add-int/lit8 v9, v3, 0x1

    int-to-long v3, v3

    .line 23
    invoke-static {p1, v3, v4}, Landroidx/datastore/preferences/protobuf/r1;->s([BJ)B

    move-result v7

    add-int/lit8 v10, v8, 0x1

    move v3, p2

    move v4, v5

    move v5, v6

    move v6, v7

    move-object v7, p3

    .line 24
    invoke-static/range {v3 .. v8}, Landroidx/datastore/preferences/protobuf/s1$a;->a(BBBB[CI)V

    add-int/2addr v10, v2

    move p2, v9

    move v8, v10

    goto/16 :goto_27

    .line 25
    :cond_be
    invoke-static {}, Landroidx/datastore/preferences/protobuf/b0;->c()Landroidx/datastore/preferences/protobuf/b0;

    move-result-object p1

    throw p1

    .line 26
    :cond_c3
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p3, v1, v8}, Ljava/lang/String;-><init>([CII)V

    return-object p1

    .line 27
    :cond_c9
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    array-length p1, p1

    .line 28
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v3, p2

    const-string p1, "buffer length=%d, index=%d, size=%d"

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    goto :goto_ed

    :goto_ec
    throw v0

    :goto_ed
    goto :goto_ec
.end method

.method b(Ljava/lang/CharSequence;[BII)I
    .registers 27

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    int-to-long v4, v2

    int-to-long v6, v3

    add-long/2addr v6, v4

    .line 1
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    const-string v9, " at index "

    const-string v10, "Failed writing "

    if-gt v8, v3, :cond_144

    .line 2
    array-length v11, v1

    sub-int/2addr v11, v3

    if-lt v11, v2, :cond_144

    const/4 v2, 0x0

    :goto_1a
    const/16 v3, 0x80

    const-wide/16 v11, 0x1

    if-ge v2, v8, :cond_2f

    .line 3
    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    if-ge v13, v3, :cond_2f

    add-long/2addr v11, v4

    int-to-byte v3, v13

    .line 4
    invoke-static {v1, v4, v5, v3}, Landroidx/datastore/preferences/protobuf/r1;->H([BJB)V

    add-int/lit8 v2, v2, 0x1

    move-wide v4, v11

    goto :goto_1a

    :cond_2f
    if-ne v2, v8, :cond_33

    long-to-int v0, v4

    return v0

    :cond_33
    :goto_33
    if-ge v2, v8, :cond_142

    .line 5
    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    if-ge v13, v3, :cond_4b

    cmp-long v14, v4, v6

    if-gez v14, :cond_4b

    add-long v14, v4, v11

    int-to-byte v13, v13

    .line 6
    invoke-static {v1, v4, v5, v13}, Landroidx/datastore/preferences/protobuf/r1;->H([BJB)V

    move-wide v4, v11

    move-wide v12, v14

    :goto_47
    const/16 v11, 0x80

    goto/16 :goto_fb

    :cond_4b
    const/16 v14, 0x800

    if-ge v13, v14, :cond_75

    const-wide/16 v14, 0x2

    sub-long v14, v6, v14

    cmp-long v16, v4, v14

    if-gtz v16, :cond_75

    add-long v14, v4, v11

    ushr-int/lit8 v3, v13, 0x6

    or-int/lit16 v3, v3, 0x3c0

    int-to-byte v3, v3

    .line 7
    invoke-static {v1, v4, v5, v3}, Landroidx/datastore/preferences/protobuf/r1;->H([BJB)V

    add-long v3, v14, v11

    and-int/lit8 v5, v13, 0x3f

    const/16 v13, 0x80

    or-int/2addr v5, v13

    int-to-byte v5, v5

    .line 8
    invoke-static {v1, v14, v15, v5}, Landroidx/datastore/preferences/protobuf/r1;->H([BJB)V

    move-wide/from16 v20, v11

    const/16 v11, 0x80

    move-wide v12, v3

    move-wide/from16 v4, v20

    goto/16 :goto_fb

    :cond_75
    const v3, 0xdfff

    const v14, 0xd800

    if-lt v13, v14, :cond_7f

    if-ge v3, v13, :cond_ae

    :cond_7f
    const-wide/16 v15, 0x3

    sub-long v15, v6, v15

    cmp-long v17, v4, v15

    if-gtz v17, :cond_ae

    add-long v14, v4, v11

    ushr-int/lit8 v3, v13, 0xc

    or-int/lit16 v3, v3, 0x1e0

    int-to-byte v3, v3

    .line 9
    invoke-static {v1, v4, v5, v3}, Landroidx/datastore/preferences/protobuf/r1;->H([BJB)V

    add-long v3, v14, v11

    ushr-int/lit8 v5, v13, 0x6

    and-int/lit8 v5, v5, 0x3f

    const/16 v11, 0x80

    or-int/2addr v5, v11

    int-to-byte v5, v5

    .line 10
    invoke-static {v1, v14, v15, v5}, Landroidx/datastore/preferences/protobuf/r1;->H([BJB)V

    const-wide/16 v14, 0x1

    add-long v18, v3, v14

    and-int/lit8 v5, v13, 0x3f

    or-int/2addr v5, v11

    int-to-byte v5, v5

    .line 11
    invoke-static {v1, v3, v4, v5}, Landroidx/datastore/preferences/protobuf/r1;->H([BJB)V

    move-wide/from16 v12, v18

    const-wide/16 v4, 0x1

    goto :goto_47

    :cond_ae
    const-wide/16 v11, 0x4

    sub-long v11, v6, v11

    cmp-long v15, v4, v11

    if-gtz v15, :cond_10f

    add-int/lit8 v3, v2, 0x1

    if-eq v3, v8, :cond_107

    .line 12
    invoke-interface {v0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v13, v2}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v11

    if-eqz v11, :cond_106

    .line 13
    invoke-static {v13, v2}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2

    const-wide/16 v11, 0x1

    add-long v13, v4, v11

    ushr-int/lit8 v15, v2, 0x12

    or-int/lit16 v15, v15, 0xf0

    int-to-byte v15, v15

    .line 14
    invoke-static {v1, v4, v5, v15}, Landroidx/datastore/preferences/protobuf/r1;->H([BJB)V

    add-long v4, v13, v11

    ushr-int/lit8 v15, v2, 0xc

    and-int/lit8 v15, v15, 0x3f

    const/16 v11, 0x80

    or-int/lit16 v12, v15, 0x80

    int-to-byte v12, v12

    .line 15
    invoke-static {v1, v13, v14, v12}, Landroidx/datastore/preferences/protobuf/r1;->H([BJB)V

    const-wide/16 v12, 0x1

    add-long v14, v4, v12

    ushr-int/lit8 v16, v2, 0x6

    and-int/lit8 v12, v16, 0x3f

    or-int/2addr v12, v11

    int-to-byte v12, v12

    .line 16
    invoke-static {v1, v4, v5, v12}, Landroidx/datastore/preferences/protobuf/r1;->H([BJB)V

    const-wide/16 v4, 0x1

    add-long v12, v14, v4

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v2, v11

    int-to-byte v2, v2

    .line 17
    invoke-static {v1, v14, v15, v2}, Landroidx/datastore/preferences/protobuf/r1;->H([BJB)V

    move v2, v3

    :goto_fb
    add-int/lit8 v2, v2, 0x1

    const/16 v3, 0x80

    move-wide/from16 v20, v4

    move-wide v4, v12

    move-wide/from16 v11, v20

    goto/16 :goto_33

    :cond_106
    move v2, v3

    .line 18
    :cond_107
    new-instance v0, Landroidx/datastore/preferences/protobuf/s1$d;

    add-int/lit8 v2, v2, -0x1

    invoke-direct {v0, v2, v8}, Landroidx/datastore/preferences/protobuf/s1$d;-><init>(II)V

    throw v0

    :cond_10f
    if-gt v14, v13, :cond_127

    if-gt v13, v3, :cond_127

    add-int/lit8 v1, v2, 0x1

    if-eq v1, v8, :cond_121

    .line 19
    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v13, v0}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v0

    if-nez v0, :cond_127

    .line 20
    :cond_121
    new-instance v0, Landroidx/datastore/preferences/protobuf/s1$d;

    invoke-direct {v0, v2, v8}, Landroidx/datastore/preferences/protobuf/s1$d;-><init>(II)V

    throw v0

    .line 21
    :cond_127
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_142
    long-to-int v0, v4

    return v0

    .line 22
    :cond_144
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, -0x1

    .line 23
    invoke-interface {v0, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int v0, v2, v3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    goto :goto_168

    :goto_167
    throw v1

    :goto_168
    goto :goto_167
.end method

.method d(I[BII)I
    .registers 16

    or-int v0, p3, p4

    .line 1
    array-length v1, p2

    sub-int/2addr v1, p4

    or-int/2addr v0, v1

    const/4 v1, 0x0

    if-ltz v0, :cond_a8

    int-to-long v2, p3

    int-to-long p3, p4

    if-eqz p1, :cond_a1

    cmp-long v0, v2, p3

    if-ltz v0, :cond_11

    return p1

    :cond_11
    int-to-byte v0, p1

    const/16 v4, -0x20

    const/4 v5, -0x1

    const/16 v6, -0x41

    const-wide/16 v7, 0x1

    if-ge v0, v4, :cond_2b

    const/16 p1, -0x3e

    if-lt v0, p1, :cond_2a

    add-long/2addr v7, v2

    .line 2
    invoke-static {p2, v2, v3}, Landroidx/datastore/preferences/protobuf/r1;->s([BJ)B

    move-result p1

    if-le p1, v6, :cond_27

    goto :goto_2a

    :cond_27
    move-wide v2, v7

    goto/16 :goto_a1

    :cond_2a
    :goto_2a
    return v5

    :cond_2b
    const/16 v9, -0x10

    if-ge v0, v9, :cond_5f

    shr-int/lit8 p1, p1, 0x8

    xor-int/2addr p1, v5

    int-to-byte p1, p1

    if-nez p1, :cond_45

    add-long v9, v2, v7

    .line 3
    invoke-static {p2, v2, v3}, Landroidx/datastore/preferences/protobuf/r1;->s([BJ)B

    move-result p1

    cmp-long v1, v9, p3

    if-ltz v1, :cond_44

    .line 4
    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/s1;->a(II)I

    move-result p1

    return p1

    :cond_44
    move-wide v2, v9

    :cond_45
    if-gt p1, v6, :cond_5e

    const/16 v1, -0x60

    if-ne v0, v4, :cond_4d

    if-lt p1, v1, :cond_5e

    :cond_4d
    const/16 v4, -0x13

    if-ne v0, v4, :cond_53

    if-ge p1, v1, :cond_5e

    :cond_53
    add-long v0, v2, v7

    .line 5
    invoke-static {p2, v2, v3}, Landroidx/datastore/preferences/protobuf/r1;->s([BJ)B

    move-result p1

    if-le p1, v6, :cond_5c

    goto :goto_5e

    :cond_5c
    move-wide v2, v0

    goto :goto_a1

    :cond_5e
    :goto_5e
    return v5

    :cond_5f
    shr-int/lit8 v4, p1, 0x8

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    if-nez v4, :cond_76

    add-long v9, v2, v7

    .line 6
    invoke-static {p2, v2, v3}, Landroidx/datastore/preferences/protobuf/r1;->s([BJ)B

    move-result v4

    cmp-long p1, v9, p3

    if-ltz p1, :cond_74

    .line 7
    invoke-static {v0, v4}, Landroidx/datastore/preferences/protobuf/s1;->a(II)I

    move-result p1

    return p1

    :cond_74
    move-wide v2, v9

    goto :goto_79

    :cond_76
    shr-int/lit8 p1, p1, 0x10

    int-to-byte v1, p1

    :goto_79
    if-nez v1, :cond_8b

    add-long v9, v2, v7

    .line 8
    invoke-static {p2, v2, v3}, Landroidx/datastore/preferences/protobuf/r1;->s([BJ)B

    move-result v1

    cmp-long p1, v9, p3

    if-ltz p1, :cond_8a

    .line 9
    invoke-static {v0, v4, v1}, Landroidx/datastore/preferences/protobuf/s1;->b(III)I

    move-result p1

    return p1

    :cond_8a
    move-wide v2, v9

    :cond_8b
    if-gt v4, v6, :cond_a0

    shl-int/lit8 p1, v0, 0x1c

    add-int/lit8 v4, v4, 0x70

    add-int/2addr p1, v4

    shr-int/lit8 p1, p1, 0x1e

    if-nez p1, :cond_a0

    if-gt v1, v6, :cond_a0

    add-long v0, v2, v7

    .line 10
    invoke-static {p2, v2, v3}, Landroidx/datastore/preferences/protobuf/r1;->s([BJ)B

    move-result p1

    if-le p1, v6, :cond_5c

    :cond_a0
    return v5

    :cond_a1
    :goto_a1
    sub-long/2addr p3, v2

    long-to-int p1, p3

    .line 11
    invoke-static {p2, v2, v3, p1}, Landroidx/datastore/preferences/protobuf/s1$e;->f([BJI)I

    move-result p1

    return p1

    .line 12
    :cond_a8
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    array-length p2, p2

    .line 13
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v1

    const/4 p2, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v0, p2

    const/4 p2, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v0, p2

    const-string p2, "Array length=%d, index=%d, limit=%d"

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    goto :goto_cd

    :goto_cc
    throw p1

    :goto_cd
    goto :goto_cc
.end method
