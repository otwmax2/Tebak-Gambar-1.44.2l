###### Class androidx.databinding.c (androidx.databinding.c)
.class public Landroidx/databinding/c;
.super Ljava/lang/Object;
.source "CallbackRegistry.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/databinding/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        "A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TC;>;"
        }
    .end annotation
.end field

.field private p:J

.field private q:[J

.field private r:I

.field private final s:Landroidx/databinding/c$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/databinding/c$a<",
            "TC;TT;TA;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/databinding/c$a;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/databinding/c$a<",
            "TC;TT;TA;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/databinding/c;->o:Ljava/util/List;

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Landroidx/databinding/c;->p:J

    .line 4
    iput-object p1, p0, Landroidx/databinding/c;->s:Landroidx/databinding/c$a;

    return-void
.end method

.method private d(I)Z
    .registers 12

    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x1

    const/4 v4, 0x1

    const/16 v5, 0x40

    const/4 v6, 0x0

    if-ge p1, v5, :cond_15

    shl-long/2addr v2, p1

    .line 1
    iget-wide v7, p0, Landroidx/databinding/c;->p:J

    and-long/2addr v2, v7

    cmp-long p1, v2, v0

    if-eqz p1, :cond_13

    goto :goto_14

    :cond_13
    const/4 v4, 0x0

    :goto_14
    return v4

    .line 2
    :cond_15
    iget-object v7, p0, Landroidx/databinding/c;->q:[J

    if-nez v7, :cond_1a

    return v6

    .line 3
    :cond_1a
    div-int/lit8 v8, p1, 0x40

    sub-int/2addr v8, v4

    .line 4
    array-length v9, v7

    if-lt v8, v9, :cond_21

    return v6

    .line 5
    :cond_21
    aget-wide v8, v7, v8

    .line 6
    rem-int/2addr p1, v5

    shl-long/2addr v2, p1

    and-long/2addr v2, v8

    cmp-long p1, v2, v0

    if-eqz p1, :cond_2b

    goto :goto_2c

    :cond_2b
    const/4 v4, 0x0

    :goto_2c
    return v4
.end method

.method private g(Ljava/lang/Object;ILjava/lang/Object;IIJ)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;ITA;IIJ)V"
        }
    .end annotation

    const-wide/16 v0, 0x1

    :goto_2
    if-ge p4, p5, :cond_1c

    and-long v2, p6, v0

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_17

    .line 1
    iget-object v2, p0, Landroidx/databinding/c;->s:Landroidx/databinding/c$a;

    iget-object v3, p0, Landroidx/databinding/c;->o:Ljava/util/List;

    invoke-interface {v3, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3, p1, p2, p3}, Landroidx/databinding/c$a;->a(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)V

    :cond_17
    const/4 v2, 0x1

    shl-long/2addr v0, v2

    add-int/lit8 p4, p4, 0x1

    goto :goto_2

    :cond_1c
    return-void
.end method

.method private h(Ljava/lang/Object;ILjava/lang/Object;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;ITA;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/databinding/c;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x40

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 2
    iget-wide v8, p0, Landroidx/databinding/c;->p:J

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v2 .. v9}, Landroidx/databinding/c;->g(Ljava/lang/Object;ILjava/lang/Object;IIJ)V

    return-void
.end method

.method private i(Ljava/lang/Object;ILjava/lang/Object;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;ITA;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/databinding/c;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    .line 2
    iget-object v0, p0, Landroidx/databinding/c;->q:[J

    if-nez v0, :cond_c

    const/4 v0, -0x1

    goto :goto_f

    :cond_c
    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .line 3
    :goto_f
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/databinding/c;->j(Ljava/lang/Object;ILjava/lang/Object;I)V

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v5, v0, 0x40

    const-wide/16 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    .line 4
    invoke-direct/range {v1 .. v8}, Landroidx/databinding/c;->g(Ljava/lang/Object;ILjava/lang/Object;IIJ)V

    return-void
.end method

.method private j(Ljava/lang/Object;ILjava/lang/Object;I)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;ITA;I)V"
        }
    .end annotation

    if-gez p4, :cond_6

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/c;->h(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_26

    .line 2
    :cond_6
    iget-object v0, p0, Landroidx/databinding/c;->q:[J

    aget-wide v7, v0, p4

    add-int/lit8 v0, p4, 0x1

    mul-int/lit8 v5, v0, 0x40

    .line 3
    iget-object v0, p0, Landroidx/databinding/c;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, v5, 0x40

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    add-int/lit8 p4, p4, -0x1

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/databinding/c;->j(Ljava/lang/Object;ILjava/lang/Object;I)V

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    .line 5
    invoke-direct/range {v1 .. v8}, Landroidx/databinding/c;->g(Ljava/lang/Object;ILjava/lang/Object;IIJ)V

    :goto_26
    return-void
.end method

.method private l(IJ)V
    .registers 13

    add-int/lit8 v0, p1, 0x40

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const-wide/high16 v2, -0x8000000000000000L

    :goto_6
    if-lt v0, p1, :cond_19

    and-long v4, p2, v2

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-eqz v8, :cond_15

    .line 1
    iget-object v4, p0, Landroidx/databinding/c;->o:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_15
    ushr-long/2addr v2, v1

    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_19
    return-void
.end method

.method private m(I)V
    .registers 10

    const-wide/16 v0, 0x1

    const/16 v2, 0x40

    if-ge p1, v2, :cond_d

    shl-long/2addr v0, p1

    .line 1
    iget-wide v2, p0, Landroidx/databinding/c;->p:J

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroidx/databinding/c;->p:J

    goto :goto_3f

    .line 2
    :cond_d
    div-int/lit8 v3, p1, 0x40

    add-int/lit8 v3, v3, -0x1

    .line 3
    iget-object v4, p0, Landroidx/databinding/c;->q:[J

    if-nez v4, :cond_21

    .line 4
    iget-object v4, p0, Landroidx/databinding/c;->o:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    div-int/2addr v4, v2

    new-array v4, v4, [J

    iput-object v4, p0, Landroidx/databinding/c;->q:[J

    goto :goto_36

    .line 5
    :cond_21
    array-length v4, v4

    if-gt v4, v3, :cond_36

    .line 6
    iget-object v4, p0, Landroidx/databinding/c;->o:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    div-int/2addr v4, v2

    new-array v4, v4, [J

    .line 7
    iget-object v5, p0, Landroidx/databinding/c;->q:[J

    array-length v6, v5

    const/4 v7, 0x0

    invoke-static {v5, v7, v4, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    iput-object v4, p0, Landroidx/databinding/c;->q:[J

    .line 9
    :cond_36
    :goto_36
    rem-int/2addr p1, v2

    shl-long/2addr v0, p1

    .line 10
    iget-object p1, p0, Landroidx/databinding/c;->q:[J

    aget-wide v4, p1, v3

    or-long/2addr v0, v4

    aput-wide v0, p1, v3

    :goto_3f
    return-void
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)V"
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_1a

    .line 1
    :try_start_3
    iget-object v0, p0, Landroidx/databinding/c;->o:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_11

    .line 2
    invoke-direct {p0, v0}, Landroidx/databinding/c;->d(I)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 3
    :cond_11
    iget-object v0, p0, Landroidx/databinding/c;->o:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_18

    .line 4
    :cond_16
    monitor-exit p0

    return-void

    :catchall_18
    move-exception p1

    goto :goto_22

    .line 5
    :cond_1a
    :try_start_1a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "callback cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_22
    .catchall {:try_start_1a .. :try_end_22} :catchall_18

    :goto_22
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b()Landroidx/databinding/c;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/databinding/c<",
            "TC;TT;TA;>;"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_2
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/databinding/c;
    :try_end_8
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_2 .. :try_end_8} :catch_38
    .catchall {:try_start_2 .. :try_end_8} :catchall_36

    const-wide/16 v2, 0x0

    .line 2
    :try_start_a
    iput-wide v2, v1, Landroidx/databinding/c;->p:J

    .line 3
    iput-object v0, v1, Landroidx/databinding/c;->q:[J

    const/4 v0, 0x0

    .line 4
    iput v0, v1, Landroidx/databinding/c;->r:I

    .line 5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Landroidx/databinding/c;->o:Ljava/util/List;

    .line 6
    iget-object v2, p0, Landroidx/databinding/c;->o:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    :goto_1e
    if-ge v0, v2, :cond_3f

    .line 7
    invoke-direct {p0, v0}, Landroidx/databinding/c;->d(I)Z

    move-result v3

    if-nez v3, :cond_31

    .line 8
    iget-object v3, v1, Landroidx/databinding/c;->o:Ljava/util/List;

    iget-object v4, p0, Landroidx/databinding/c;->o:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_31
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_a .. :try_end_31} :catch_34
    .catchall {:try_start_a .. :try_end_31} :catchall_36

    :cond_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    :catch_34
    move-exception v0

    goto :goto_3c

    :catchall_36
    move-exception v0

    goto :goto_41

    :catch_38
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    .line 9
    :goto_3c
    :try_start_3c
    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_36

    .line 10
    :cond_3f
    monitor-exit p0

    return-object v1

    :goto_41
    monitor-exit p0

    goto :goto_44

    :goto_43
    throw v0

    :goto_44
    goto :goto_43
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/databinding/c;->b()Landroidx/databinding/c;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized f(Ljava/lang/Object;ILjava/lang/Object;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;ITA;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_1
    iget v0, p0, Landroidx/databinding/c;->r:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/databinding/c;->r:I

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/c;->i(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 3
    iget p1, p0, Landroidx/databinding/c;->r:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroidx/databinding/c;->r:I

    if-nez p1, :cond_3f

    .line 4
    iget-object p1, p0, Landroidx/databinding/c;->q:[J

    const-wide/16 p2, 0x0

    if-eqz p1, :cond_33

    .line 5
    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    :goto_1b
    if-ltz p1, :cond_33

    .line 6
    iget-object v0, p0, Landroidx/databinding/c;->q:[J

    aget-wide v1, v0, p1

    cmp-long v0, v1, p2

    if-eqz v0, :cond_30

    add-int/lit8 v0, p1, 0x1

    mul-int/lit8 v0, v0, 0x40

    .line 7
    invoke-direct {p0, v0, v1, v2}, Landroidx/databinding/c;->l(IJ)V

    .line 8
    iget-object v0, p0, Landroidx/databinding/c;->q:[J

    aput-wide p2, v0, p1

    :cond_30
    add-int/lit8 p1, p1, -0x1

    goto :goto_1b

    .line 9
    :cond_33
    iget-wide v0, p0, Landroidx/databinding/c;->p:J

    cmp-long p1, v0, p2

    if-eqz p1, :cond_3f

    const/4 p1, 0x0

    .line 10
    invoke-direct {p0, p1, v0, v1}, Landroidx/databinding/c;->l(IJ)V

    .line 11
    iput-wide p2, p0, Landroidx/databinding/c;->p:J
    :try_end_3f
    .catchall {:try_start_1 .. :try_end_3f} :catchall_41

    .line 12
    :cond_3f
    monitor-exit p0

    return-void

    :catchall_41
    move-exception p1

    monitor-exit p0

    goto :goto_45

    :goto_44
    throw p1

    :goto_45
    goto :goto_44
.end method

.method public declared-synchronized k(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_1
    iget v0, p0, Landroidx/databinding/c;->r:I

    if-nez v0, :cond_b

    .line 2
    iget-object v0, p0, Landroidx/databinding/c;->o:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_16

    .line 3
    :cond_b
    iget-object v0, p0, Landroidx/databinding/c;->o:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_16

    .line 4
    invoke-direct {p0, p1}, Landroidx/databinding/c;->m(I)V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    .line 5
    :cond_16
    :goto_16
    monitor-exit p0

    return-void

    :catchall_18
    move-exception p1

    monitor-exit p0

    throw p1
.end method

###### Class androidx.databinding.c.a (androidx.databinding.c$a)
.class public abstract Landroidx/databinding/c$a;
.super Ljava/lang/Object;
.source "CallbackRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/databinding/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        "A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
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
.method public abstract a(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;TT;ITA;)V"
        }
    .end annotation
.end method
