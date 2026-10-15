###### Class k7.d (k7.d)
.class public final Lk7/d;
.super Ljava/lang/Object;
.source "HighLevelEncoder.java"


# static fields
.field static final b:[Ljava/lang/String;

.field static final c:[[I

.field private static final d:[[I

.field static final e:[[I


# instance fields
.field private final a:[B


# direct methods
.method static constructor <clinit>()V
    .registers 12

    .line 1
    const-class v0, I

    const-string v1, "UPPER"

    const-string v2, "LOWER"

    const-string v3, "DIGIT"

    const-string v4, "MIXED"

    const-string v5, "PUNCT"

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lk7/d;->b:[Ljava/lang/String;

    const/4 v1, 0x5

    new-array v2, v1, [[I

    new-array v3, v1, [I

    .line 2
    fill-array-data v3, :array_10c

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v3, v1, [I

    fill-array-data v3, :array_11a

    const/4 v5, 0x1

    aput-object v3, v2, v5

    new-array v3, v1, [I

    fill-array-data v3, :array_128

    const/4 v6, 0x2

    aput-object v3, v2, v6

    new-array v3, v1, [I

    fill-array-data v3, :array_136

    const/4 v7, 0x3

    aput-object v3, v2, v7

    new-array v1, v1, [I

    fill-array-data v1, :array_144

    const/4 v3, 0x4

    aput-object v1, v2, v3

    sput-object v2, Lk7/d;->c:[[I

    new-array v1, v6, [I

    .line 3
    fill-array-data v1, :array_152

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    .line 4
    sput-object v1, Lk7/d;->d:[[I

    aget-object v1, v1, v4

    const/16 v2, 0x20

    aput v5, v1, v2

    const/16 v1, 0x41

    :goto_54
    const/16 v8, 0x5a

    if-gt v1, v8, :cond_64

    .line 5
    sget-object v8, Lk7/d;->d:[[I

    aget-object v8, v8, v4

    add-int/lit8 v9, v1, -0x41

    add-int/2addr v9, v6

    aput v9, v8, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_54

    .line 6
    :cond_64
    sget-object v1, Lk7/d;->d:[[I

    aget-object v1, v1, v5

    aput v5, v1, v2

    const/16 v1, 0x61

    :goto_6c
    const/16 v8, 0x7a

    if-gt v1, v8, :cond_7c

    .line 7
    sget-object v8, Lk7/d;->d:[[I

    aget-object v8, v8, v5

    add-int/lit8 v9, v1, -0x61

    add-int/2addr v9, v6

    aput v9, v8, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_6c

    .line 8
    :cond_7c
    sget-object v1, Lk7/d;->d:[[I

    aget-object v1, v1, v6

    aput v5, v1, v2

    const/16 v1, 0x30

    :goto_84
    const/16 v2, 0x39

    if-gt v1, v2, :cond_94

    .line 9
    sget-object v2, Lk7/d;->d:[[I

    aget-object v2, v2, v6

    add-int/lit8 v8, v1, -0x30

    add-int/2addr v8, v6

    aput v8, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_84

    .line 10
    :cond_94
    sget-object v1, Lk7/d;->d:[[I

    aget-object v2, v1, v6

    const/16 v8, 0x2c

    const/16 v9, 0xc

    aput v9, v2, v8

    .line 11
    aget-object v1, v1, v6

    const/16 v2, 0x2e

    const/16 v8, 0xd

    aput v8, v1, v2

    const/16 v1, 0x1c

    new-array v2, v1, [I

    .line 12
    fill-array-data v2, :array_15a

    const/4 v8, 0x0

    :goto_ae
    if-ge v8, v1, :cond_bb

    .line 13
    sget-object v9, Lk7/d;->d:[[I

    aget-object v9, v9, v7

    aget v10, v2, v8

    aput v8, v9, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_ae

    :cond_bb
    const/16 v2, 0x1f

    new-array v8, v2, [I

    .line 14
    fill-array-data v8, :array_196

    const/4 v9, 0x0

    :goto_c3
    if-ge v9, v2, :cond_d4

    .line 15
    aget v10, v8, v9

    if-lez v10, :cond_d1

    .line 16
    sget-object v10, Lk7/d;->d:[[I

    aget-object v10, v10, v3

    aget v11, v8, v9

    aput v9, v10, v11

    :cond_d1
    add-int/lit8 v9, v9, 0x1

    goto :goto_c3

    :cond_d4
    new-array v2, v6, [I

    .line 17
    fill-array-data v2, :array_1d8

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    .line 18
    sput-object v0, Lk7/d;->e:[[I

    array-length v2, v0

    const/4 v8, 0x0

    :goto_e3
    if-ge v8, v2, :cond_ee

    aget-object v9, v0, v8

    const/4 v10, -0x1

    .line 19
    invoke-static {v9, v10}, Ljava/util/Arrays;->fill([II)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_e3

    .line 20
    :cond_ee
    sget-object v0, Lk7/d;->e:[[I

    aget-object v2, v0, v4

    aput v4, v2, v3

    .line 21
    aget-object v2, v0, v5

    aput v4, v2, v3

    .line 22
    aget-object v2, v0, v5

    aput v1, v2, v4

    .line 23
    aget-object v1, v0, v7

    aput v4, v1, v3

    .line 24
    aget-object v1, v0, v6

    aput v4, v1, v3

    .line 25
    aget-object v0, v0, v6

    const/16 v1, 0xf

    aput v1, v0, v4

    return-void

    nop

    :array_10c
    .array-data 4
        0x0
        0x5001c
        0x5001e
        0x5001d
        0xa03be
    .end array-data

    :array_11a
    .array-data 4
        0x901ee
        0x0
        0x5001e
        0x5001d
        0xa03be
    .end array-data

    :array_128
    .array-data 4
        0x4000e
        0x901dc
        0x0
        0x901dd
        0xe3bbe
    .end array-data

    :array_136
    .array-data 4
        0x5001d
        0x5001c
        0xa03be
        0x0
        0x5001e
    .end array-data

    :array_144
    .array-data 4
        0x5001f
        0xa03fc
        0xa03fe
        0xa03fd
        0x0
    .end array-data

    :array_152
    .array-data 4
        0x5
        0x100
    .end array-data

    :array_15a
    .array-data 4
        0x0
        0x20
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x40
        0x5c
        0x5e
        0x5f
        0x60
        0x7c
        0x7e
        0x7f
    .end array-data

    :array_196
    .array-data 4
        0x0
        0xd
        0x0
        0x0
        0x0
        0x0
        0x21
        0x27
        0x23
        0x24
        0x25
        0x26
        0x27
        0x28
        0x29
        0x2a
        0x2b
        0x2c
        0x2d
        0x2e
        0x2f
        0x3a
        0x3b
        0x3c
        0x3d
        0x3e
        0x3f
        0x5b
        0x5d
        0x7b
        0x7d
    .end array-data

    :array_1d8
    .array-data 4
        0x6
        0x6
    .end array-data
.end method

.method public constructor <init>([B)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lk7/d;->a:[B

    return-void
.end method

.method private static b(Ljava/lang/Iterable;)Ljava/util/Collection;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lk7/f;",
            ">;)",
            "Ljava/util/Collection<",
            "Lk7/f;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 2
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_9
    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk7/f;

    const/4 v2, 0x1

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1a
    :goto_1a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_38

    .line 4
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lk7/f;

    .line 5
    invoke-virtual {v4, v1}, Lk7/f;->f(Lk7/f;)Z

    move-result v5

    if-eqz v5, :cond_2e

    const/4 v2, 0x0

    goto :goto_38

    .line 6
    :cond_2e
    invoke-virtual {v1, v4}, Lk7/f;->f(Lk7/f;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 7
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_1a

    :cond_38
    :goto_38
    if-eqz v2, :cond_9

    .line 8
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_3e
    return-object v0
.end method

.method private c(Lk7/f;ILjava/util/Collection;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk7/f;",
            "I",
            "Ljava/util/Collection<",
            "Lk7/f;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lk7/d;->a:[B

    aget-byte v0, v0, p2

    and-int/lit16 v0, v0, 0xff

    int-to-char v0, v0

    .line 2
    sget-object v1, Lk7/d;->d:[[I

    invoke-virtual {p1}, Lk7/f;->e()I

    move-result v2

    aget-object v1, v1, v2

    aget v1, v1, v0

    const/4 v2, 0x0

    if-lez v1, :cond_16

    const/4 v1, 0x1

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    :goto_17
    const/4 v3, 0x0

    :goto_18
    const/4 v4, 0x4

    if-gt v2, v4, :cond_53

    .line 3
    sget-object v4, Lk7/d;->d:[[I

    aget-object v4, v4, v2

    aget v4, v4, v0

    if-lez v4, :cond_50

    if-nez v3, :cond_29

    .line 4
    invoke-virtual {p1, p2}, Lk7/f;->b(I)Lk7/f;

    move-result-object v3

    :cond_29
    if-eqz v1, :cond_34

    .line 5
    invoke-virtual {p1}, Lk7/f;->e()I

    move-result v5

    if-eq v2, v5, :cond_34

    const/4 v5, 0x2

    if-ne v2, v5, :cond_3b

    .line 6
    :cond_34
    invoke-virtual {v3, v2, v4}, Lk7/f;->g(II)Lk7/f;

    move-result-object v5

    .line 7
    invoke-interface {p3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_3b
    if-nez v1, :cond_50

    .line 8
    sget-object v5, Lk7/d;->e:[[I

    invoke-virtual {p1}, Lk7/f;->e()I

    move-result v6

    aget-object v5, v5, v6

    aget v5, v5, v2

    if-ltz v5, :cond_50

    .line 9
    invoke-virtual {v3, v2, v4}, Lk7/f;->h(II)Lk7/f;

    move-result-object v4

    .line 10
    invoke-interface {p3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_50
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 11
    :cond_53
    invoke-virtual {p1}, Lk7/f;->c()I

    move-result v1

    if-gtz v1, :cond_65

    sget-object v1, Lk7/d;->d:[[I

    invoke-virtual {p1}, Lk7/f;->e()I

    move-result v2

    aget-object v1, v1, v2

    aget v0, v1, v0

    if-nez v0, :cond_6c

    .line 12
    :cond_65
    invoke-virtual {p1, p2}, Lk7/f;->a(I)Lk7/f;

    move-result-object p1

    .line 13
    invoke-interface {p3, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_6c
    return-void
.end method

.method private static d(Lk7/f;IILjava/util/Collection;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk7/f;",
            "II",
            "Ljava/util/Collection<",
            "Lk7/f;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lk7/f;->b(I)Lk7/f;

    move-result-object v0

    const/4 v1, 0x4

    .line 2
    invoke-virtual {v0, v1, p2}, Lk7/f;->g(II)Lk7/f;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-virtual {p0}, Lk7/f;->e()I

    move-result v2

    if-eq v2, v1, :cond_19

    .line 4
    invoke-virtual {v0, v1, p2}, Lk7/f;->h(II)Lk7/f;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_19
    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eq p2, v2, :cond_1f

    if-ne p2, v1, :cond_2d

    :cond_1f
    rsub-int/lit8 p2, p2, 0x10

    const/4 v1, 0x2

    .line 5
    invoke-virtual {v0, v1, p2}, Lk7/f;->g(II)Lk7/f;

    move-result-object p2

    .line 6
    invoke-virtual {p2, v1, v3}, Lk7/f;->g(II)Lk7/f;

    move-result-object p2

    .line 7
    invoke-interface {p3, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 8
    :cond_2d
    invoke-virtual {p0}, Lk7/f;->c()I

    move-result p2

    if-lez p2, :cond_3f

    .line 9
    invoke-virtual {p0, p1}, Lk7/f;->a(I)Lk7/f;

    move-result-object p0

    add-int/2addr p1, v3

    invoke-virtual {p0, p1}, Lk7/f;->a(I)Lk7/f;

    move-result-object p0

    .line 10
    invoke-interface {p3, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_3f
    return-void
.end method

.method private e(Ljava/lang/Iterable;I)Ljava/util/Collection;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lk7/f;",
            ">;I)",
            "Ljava/util/Collection<",
            "Lk7/f;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk7/f;

    .line 3
    invoke-direct {p0, v1, p2, v0}, Lk7/d;->c(Lk7/f;ILjava/util/Collection;)V

    goto :goto_9

    .line 4
    :cond_19
    invoke-static {v0}, Lk7/d;->b(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method private static f(Ljava/lang/Iterable;II)Ljava/util/Collection;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lk7/f;",
            ">;II)",
            "Ljava/util/Collection<",
            "Lk7/f;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 2
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk7/f;

    .line 3
    invoke-static {v1, p1, p2, v0}, Lk7/d;->d(Lk7/f;IILjava/util/Collection;)V

    goto :goto_9

    .line 4
    :cond_19
    invoke-static {v0}, Lk7/d;->b(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a()Ll7/a;
    .registers 9

    .line 1
    sget-object v0, Lk7/f;->e:Lk7/f;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :goto_8
    iget-object v3, p0, Lk7/d;->a:[B

    array-length v4, v3

    if-ge v2, v4, :cond_4c

    add-int/lit8 v4, v2, 0x1

    .line 3
    array-length v5, v3

    if-ge v4, v5, :cond_15

    aget-byte v5, v3, v4

    goto :goto_16

    :cond_15
    const/4 v5, 0x0

    .line 4
    :goto_16
    aget-byte v3, v3, v2

    const/16 v6, 0xd

    if-eq v3, v6, :cond_38

    const/16 v6, 0x2c

    const/16 v7, 0x20

    if-eq v3, v6, :cond_34

    const/16 v6, 0x2e

    if-eq v3, v6, :cond_30

    const/16 v6, 0x3a

    if-eq v3, v6, :cond_2c

    :cond_2a
    const/4 v3, 0x0

    goto :goto_3d

    :cond_2c
    if-ne v5, v7, :cond_2a

    const/4 v3, 0x5

    goto :goto_3d

    :cond_30
    if-ne v5, v7, :cond_2a

    const/4 v3, 0x3

    goto :goto_3d

    :cond_34
    if-ne v5, v7, :cond_2a

    const/4 v3, 0x4

    goto :goto_3d

    :cond_38
    const/16 v3, 0xa

    if-ne v5, v3, :cond_2a

    const/4 v3, 0x2

    :goto_3d
    if-lez v3, :cond_45

    .line 5
    invoke-static {v0, v2, v3}, Lk7/d;->f(Ljava/lang/Iterable;II)Ljava/util/Collection;

    move-result-object v0

    move v2, v4

    goto :goto_49

    .line 6
    :cond_45
    invoke-direct {p0, v0, v2}, Lk7/d;->e(Ljava/lang/Iterable;I)Ljava/util/Collection;

    move-result-object v0

    :goto_49
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 7
    :cond_4c
    new-instance v1, Lk7/d$a;

    invoke-direct {v1, p0}, Lk7/d$a;-><init>(Lk7/d;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->min(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk7/f;

    .line 8
    iget-object v1, p0, Lk7/d;->a:[B

    invoke-virtual {v0, v1}, Lk7/f;->i([B)Ll7/a;

    move-result-object v0

    return-object v0
.end method

###### Class k7.d.a (k7.d$a)
.class Lk7/d$a;
.super Ljava/lang/Object;
.source "HighLevelEncoder.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lk7/d;->a()Ll7/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lk7/f;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic o:Lk7/d;


# direct methods
.method constructor <init>(Lk7/d;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lk7/d$a;->o:Lk7/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lk7/f;Lk7/f;)I
    .registers 3

    .line 1
    invoke-virtual {p1}, Lk7/f;->d()I

    move-result p1

    invoke-virtual {p2}, Lk7/f;->d()I

    move-result p2

    sub-int/2addr p1, p2

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 1
    check-cast p1, Lk7/f;

    check-cast p2, Lk7/f;

    invoke-virtual {p0, p1, p2}, Lk7/d$a;->a(Lk7/f;Lk7/f;)I

    move-result p1

    return p1
.end method
