###### Class k7.f (k7.f)
.class final Lk7/f;
.super Ljava/lang/Object;
.source "State.java"


# static fields
.field static final e:Lk7/f;


# instance fields
.field private final a:I

.field private final b:Lk7/g;

.field private final c:I

.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Lk7/f;

    sget-object v1, Lk7/g;->b:Lk7/g;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v2}, Lk7/f;-><init>(Lk7/g;III)V

    sput-object v0, Lk7/f;->e:Lk7/f;

    return-void
.end method

.method private constructor <init>(Lk7/g;III)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lk7/f;->b:Lk7/g;

    .line 3
    iput p2, p0, Lk7/f;->a:I

    .line 4
    iput p3, p0, Lk7/f;->c:I

    .line 5
    iput p4, p0, Lk7/f;->d:I

    return-void
.end method


# virtual methods
.method a(I)Lk7/f;
    .registers 8

    .line 1
    iget-object v0, p0, Lk7/f;->b:Lk7/g;

    .line 2
    iget v1, p0, Lk7/f;->a:I

    .line 3
    iget v2, p0, Lk7/f;->d:I

    const/4 v3, 0x0

    const/4 v4, 0x4

    if-eq v1, v4, :cond_d

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1f

    .line 4
    :cond_d
    sget-object v4, Lk7/d;->c:[[I

    aget-object v1, v4, v1

    aget v1, v1, v3

    const v4, 0xffff

    and-int/2addr v4, v1

    shr-int/lit8 v1, v1, 0x10

    .line 5
    invoke-virtual {v0, v4, v1}, Lk7/g;->a(II)Lk7/g;

    move-result-object v0

    add-int/2addr v2, v1

    const/4 v1, 0x0

    .line 6
    :cond_1f
    iget v3, p0, Lk7/f;->c:I

    if-eqz v3, :cond_32

    const/16 v4, 0x1f

    if-ne v3, v4, :cond_28

    goto :goto_32

    :cond_28
    const/16 v4, 0x3e

    if-ne v3, v4, :cond_2f

    const/16 v4, 0x9

    goto :goto_34

    :cond_2f
    const/16 v4, 0x8

    goto :goto_34

    :cond_32
    :goto_32
    const/16 v4, 0x12

    .line 7
    :goto_34
    new-instance v5, Lk7/f;

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v4

    invoke-direct {v5, v0, v1, v3, v2}, Lk7/f;-><init>(Lk7/g;III)V

    .line 8
    iget v0, v5, Lk7/f;->c:I

    const/16 v1, 0x81e

    if-ne v0, v1, :cond_48

    add-int/lit8 p1, p1, 0x1

    .line 9
    invoke-virtual {v5, p1}, Lk7/f;->b(I)Lk7/f;

    move-result-object v5

    :cond_48
    return-object v5
.end method

.method b(I)Lk7/f;
    .registers 6

    .line 1
    iget v0, p0, Lk7/f;->c:I

    if-nez v0, :cond_5

    return-object p0

    .line 2
    :cond_5
    iget-object v1, p0, Lk7/f;->b:Lk7/g;

    sub-int/2addr p1, v0

    .line 3
    invoke-virtual {v1, p1, v0}, Lk7/g;->b(II)Lk7/g;

    move-result-object p1

    .line 4
    new-instance v0, Lk7/f;

    iget v1, p0, Lk7/f;->a:I

    const/4 v2, 0x0

    iget v3, p0, Lk7/f;->d:I

    invoke-direct {v0, p1, v1, v2, v3}, Lk7/f;-><init>(Lk7/g;III)V

    return-object v0
.end method

.method c()I
    .registers 2

    .line 1
    iget v0, p0, Lk7/f;->c:I

    return v0
.end method

.method d()I
    .registers 2

    .line 1
    iget v0, p0, Lk7/f;->d:I

    return v0
.end method

.method e()I
    .registers 2

    .line 1
    iget v0, p0, Lk7/f;->a:I

    return v0
.end method

.method f(Lk7/f;)Z
    .registers 5

    .line 1
    iget v0, p0, Lk7/f;->d:I

    sget-object v1, Lk7/d;->c:[[I

    iget v2, p0, Lk7/f;->a:I

    aget-object v1, v1, v2

    iget v2, p1, Lk7/f;->a:I

    aget v1, v1, v2

    shr-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    .line 2
    iget v1, p1, Lk7/f;->c:I

    if-lez v1, :cond_1b

    iget v2, p0, Lk7/f;->c:I

    if-eqz v2, :cond_19

    if-le v2, v1, :cond_1b

    :cond_19
    add-int/lit8 v0, v0, 0xa

    .line 3
    :cond_1b
    iget p1, p1, Lk7/f;->d:I

    if-gt v0, p1, :cond_21

    const/4 p1, 0x1

    return p1

    :cond_21
    const/4 p1, 0x0

    return p1
.end method

.method g(II)Lk7/f;
    .registers 7

    .line 1
    iget v0, p0, Lk7/f;->d:I

    .line 2
    iget-object v1, p0, Lk7/f;->b:Lk7/g;

    .line 3
    iget v2, p0, Lk7/f;->a:I

    if-eq p1, v2, :cond_19

    .line 4
    sget-object v3, Lk7/d;->c:[[I

    aget-object v2, v3, v2

    aget v2, v2, p1

    const v3, 0xffff

    and-int/2addr v3, v2

    shr-int/lit8 v2, v2, 0x10

    .line 5
    invoke-virtual {v1, v3, v2}, Lk7/g;->a(II)Lk7/g;

    move-result-object v1

    add-int/2addr v0, v2

    :cond_19
    const/4 v2, 0x2

    if-ne p1, v2, :cond_1e

    const/4 v2, 0x4

    goto :goto_1f

    :cond_1e
    const/4 v2, 0x5

    .line 6
    :goto_1f
    invoke-virtual {v1, p2, v2}, Lk7/g;->a(II)Lk7/g;

    move-result-object p2

    .line 7
    new-instance v1, Lk7/f;

    const/4 v3, 0x0

    add-int/2addr v0, v2

    invoke-direct {v1, p2, p1, v3, v0}, Lk7/f;-><init>(Lk7/g;III)V

    return-object v1
.end method

.method h(II)Lk7/f;
    .registers 8

    .line 1
    iget-object v0, p0, Lk7/f;->b:Lk7/g;

    .line 2
    iget v1, p0, Lk7/f;->a:I

    const/4 v2, 0x5

    const/4 v3, 0x2

    if-ne v1, v3, :cond_a

    const/4 v3, 0x4

    goto :goto_b

    :cond_a
    const/4 v3, 0x5

    .line 3
    :goto_b
    sget-object v4, Lk7/d;->e:[[I

    aget-object v1, v4, v1

    aget p1, v1, p1

    invoke-virtual {v0, p1, v3}, Lk7/g;->a(II)Lk7/g;

    move-result-object p1

    .line 4
    invoke-virtual {p1, p2, v2}, Lk7/g;->a(II)Lk7/g;

    move-result-object p1

    .line 5
    new-instance p2, Lk7/f;

    iget v0, p0, Lk7/f;->a:I

    const/4 v1, 0x0

    iget v4, p0, Lk7/f;->d:I

    add-int/2addr v4, v3

    add-int/2addr v4, v2

    invoke-direct {p2, p1, v0, v1, v4}, Lk7/f;-><init>(Lk7/g;III)V

    return-object p2
.end method

.method i([B)Ll7/a;
    .registers 5

    .line 1
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 2
    array-length v1, p1

    invoke-virtual {p0, v1}, Lk7/f;->b(I)Lk7/f;

    move-result-object v1

    iget-object v1, v1, Lk7/f;->b:Lk7/g;

    :goto_c
    if-eqz v1, :cond_16

    .line 3
    invoke-interface {v0, v1}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {v1}, Lk7/g;->d()Lk7/g;

    move-result-object v1

    goto :goto_c

    .line 5
    :cond_16
    new-instance v1, Ll7/a;

    invoke-direct {v1}, Ll7/a;-><init>()V

    .line 6
    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lk7/g;

    .line 7
    invoke-virtual {v2, v1, p1}, Lk7/g;->c(Ll7/a;[B)V

    goto :goto_1f

    :cond_2f
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    sget-object v1, Lk7/d;->b:[Ljava/lang/String;

    iget v2, p0, Lk7/f;->a:I

    aget-object v1, v1, v2

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lk7/f;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lk7/f;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "%s bits=%d bytes=%d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
