###### Class androidx.datastore.preferences.protobuf.u0 (androidx.datastore.preferences.protobuf.u0)
.class final Landroidx/datastore/preferences/protobuf/u0;
.super Ljava/lang/Object;
.source "MessageSchema.java"

# interfaces
.implements Landroidx/datastore/preferences/protobuf/g1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/datastore/preferences/protobuf/g1<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final r:[I

.field private static final s:Lsun/misc/Unsafe;


# instance fields
.field private final a:[I

.field private final b:[Ljava/lang/Object;

.field private final c:I

.field private final d:I

.field private final e:Landroidx/datastore/preferences/protobuf/r0;

.field private final f:Z

.field private final g:Z

.field private final h:Z

.field private final i:Z

.field private final j:[I

.field private final k:I

.field private final l:I

.field private final m:Landroidx/datastore/preferences/protobuf/w0;

.field private final n:Landroidx/datastore/preferences/protobuf/h0;

.field private final o:Landroidx/datastore/preferences/protobuf/n1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/protobuf/n1<",
            "**>;"
        }
    .end annotation
.end field

.field private final p:Landroidx/datastore/preferences/protobuf/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/protobuf/q<",
            "*>;"
        }
    .end annotation
.end field

.field private final q:Landroidx/datastore/preferences/protobuf/m0;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    .line 1
    sput-object v0, Landroidx/datastore/preferences/protobuf/u0;->r:[I

    .line 2
    invoke-static {}, Landroidx/datastore/preferences/protobuf/r1;->B()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Landroidx/datastore/preferences/protobuf/u0;->s:Lsun/misc/Unsafe;

    return-void
.end method

.method private constructor <init>([I[Ljava/lang/Object;IILandroidx/datastore/preferences/protobuf/r0;ZZ[IIILandroidx/datastore/preferences/protobuf/w0;Landroidx/datastore/preferences/protobuf/h0;Landroidx/datastore/preferences/protobuf/n1;Landroidx/datastore/preferences/protobuf/q;Landroidx/datastore/preferences/protobuf/m0;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I[",
            "Ljava/lang/Object;",
            "II",
            "Landroidx/datastore/preferences/protobuf/r0;",
            "ZZ[III",
            "Landroidx/datastore/preferences/protobuf/w0;",
            "Landroidx/datastore/preferences/protobuf/h0;",
            "Landroidx/datastore/preferences/protobuf/n1<",
            "**>;",
            "Landroidx/datastore/preferences/protobuf/q<",
            "*>;",
            "Landroidx/datastore/preferences/protobuf/m0;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/u0;->a:[I

    .line 3
    iput-object p2, p0, Landroidx/datastore/preferences/protobuf/u0;->b:[Ljava/lang/Object;

    .line 4
    iput p3, p0, Landroidx/datastore/preferences/protobuf/u0;->c:I

    .line 5
    iput p4, p0, Landroidx/datastore/preferences/protobuf/u0;->d:I

    .line 6
    instance-of p1, p5, Landroidx/datastore/preferences/protobuf/y;

    iput-boolean p1, p0, Landroidx/datastore/preferences/protobuf/u0;->g:Z

    .line 7
    iput-boolean p6, p0, Landroidx/datastore/preferences/protobuf/u0;->h:Z

    if-eqz p14, :cond_1b

    .line 8
    invoke-virtual {p14, p5}, Landroidx/datastore/preferences/protobuf/q;->e(Landroidx/datastore/preferences/protobuf/r0;)Z

    move-result p1

    if-eqz p1, :cond_1b

    const/4 p1, 0x1

    goto :goto_1c

    :cond_1b
    const/4 p1, 0x0

    :goto_1c
    iput-boolean p1, p0, Landroidx/datastore/preferences/protobuf/u0;->f:Z

    .line 9
    iput-boolean p7, p0, Landroidx/datastore/preferences/protobuf/u0;->i:Z

    .line 10
    iput-object p8, p0, Landroidx/datastore/preferences/protobuf/u0;->j:[I

    .line 11
    iput p9, p0, Landroidx/datastore/preferences/protobuf/u0;->k:I

    .line 12
    iput p10, p0, Landroidx/datastore/preferences/protobuf/u0;->l:I

    .line 13
    iput-object p11, p0, Landroidx/datastore/preferences/protobuf/u0;->m:Landroidx/datastore/preferences/protobuf/w0;

    .line 14
    iput-object p12, p0, Landroidx/datastore/preferences/protobuf/u0;->n:Landroidx/datastore/preferences/protobuf/h0;

    .line 15
    iput-object p13, p0, Landroidx/datastore/preferences/protobuf/u0;->o:Landroidx/datastore/preferences/protobuf/n1;

    .line 16
    iput-object p14, p0, Landroidx/datastore/preferences/protobuf/u0;->p:Landroidx/datastore/preferences/protobuf/q;

    .line 17
    iput-object p5, p0, Landroidx/datastore/preferences/protobuf/u0;->e:Landroidx/datastore/preferences/protobuf/r0;

    .line 18
    iput-object p15, p0, Landroidx/datastore/preferences/protobuf/u0;->q:Landroidx/datastore/preferences/protobuf/m0;

    return-void
.end method

.method private static A(Ljava/lang/Object;ILandroidx/datastore/preferences/protobuf/g1;)Z
    .registers 5

    .line 1
    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Landroidx/datastore/preferences/protobuf/r1;->A(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    .line 2
    invoke-interface {p2, p0}, Landroidx/datastore/preferences/protobuf/g1;->g(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private B(Ljava/lang/Object;II)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "II)Z"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Landroidx/datastore/preferences/protobuf/r1;->A(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 2
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_12

    return v0

    .line 3
    :cond_12
    invoke-direct {p0, p3}, Landroidx/datastore/preferences/protobuf/u0;->s(I)Landroidx/datastore/preferences/protobuf/g1;

    move-result-object p2

    const/4 p3, 0x0

    const/4 v1, 0x0

    .line 4
    :goto_18
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2c

    .line 5
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 6
    invoke-interface {p2, v2}, Landroidx/datastore/preferences/protobuf/g1;->g(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    return p3

    :cond_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_2c
    return v0
.end method

.method private C(Ljava/lang/Object;II)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/u0;->q:Landroidx/datastore/preferences/protobuf/m0;

    invoke-static {p2}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v1

    invoke-static {p1, v1, v2}, Landroidx/datastore/preferences/protobuf/r1;->A(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Landroidx/datastore/preferences/protobuf/m0;->h(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    .line 2
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_16

    return v0

    .line 3
    :cond_16
    invoke-direct {p0, p3}, Landroidx/datastore/preferences/protobuf/u0;->r(I)Ljava/lang/Object;

    move-result-object p2

    .line 4
    iget-object p3, p0, Landroidx/datastore/preferences/protobuf/u0;->q:Landroidx/datastore/preferences/protobuf/m0;

    invoke-interface {p3, p2}, Landroidx/datastore/preferences/protobuf/m0;->c(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/k0$a;

    move-result-object p2

    .line 5
    iget-object p2, p2, Landroidx/datastore/preferences/protobuf/k0$a;->c:Landroidx/datastore/preferences/protobuf/t1$b;

    invoke-virtual {p2}, Landroidx/datastore/preferences/protobuf/t1$b;->c()Landroidx/datastore/preferences/protobuf/t1$c;

    move-result-object p2

    sget-object p3, Landroidx/datastore/preferences/protobuf/t1$c;->x:Landroidx/datastore/preferences/protobuf/t1$c;

    if-eq p2, p3, :cond_2b

    return v0

    :cond_2b
    const/4 p2, 0x0

    .line 6
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_34
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_54

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    if-nez p2, :cond_4c

    .line 7
    invoke-static {}, Landroidx/datastore/preferences/protobuf/c1;->a()Landroidx/datastore/preferences/protobuf/c1;

    move-result-object p2

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroidx/datastore/preferences/protobuf/c1;->d(Ljava/lang/Class;)Landroidx/datastore/preferences/protobuf/g1;

    move-result-object p2

    .line 8
    :cond_4c
    invoke-interface {p2, p3}, Landroidx/datastore/preferences/protobuf/g1;->g(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_34

    const/4 p1, 0x0

    return p1

    :cond_54
    return v0
.end method

.method private D(Ljava/lang/Object;Ljava/lang/Object;I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)Z"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p3}, Landroidx/datastore/preferences/protobuf/u0;->Y(I)I

    move-result p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    .line 2
    invoke-static {p1, v0, v1}, Landroidx/datastore/preferences/protobuf/r1;->x(Ljava/lang/Object;J)I

    move-result p1

    .line 3
    invoke-static {p2, v0, v1}, Landroidx/datastore/preferences/protobuf/r1;->x(Ljava/lang/Object;J)I

    move-result p2

    if-ne p1, p2, :cond_15

    const/4 p1, 0x1

    goto :goto_16

    :cond_15
    const/4 p1, 0x0

    :goto_16
    return p1
.end method

.method private E(Ljava/lang/Object;II)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)Z"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p3}, Landroidx/datastore/preferences/protobuf/u0;->Y(I)I

    move-result p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    .line 2
    invoke-static {p1, v0, v1}, Landroidx/datastore/preferences/protobuf/r1;->x(Ljava/lang/Object;J)I

    move-result p1

    if-ne p1, p2, :cond_11

    const/4 p1, 0x1

    goto :goto_12

    :cond_11
    const/4 p1, 0x0

    :goto_12
    return p1
.end method

.method private static F(I)Z
    .registers 2

    const/high16 v0, 0x10000000

    and-int/2addr p0, v0

    if-eqz p0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method private static G(Ljava/lang/Object;J)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "J)",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/r1;->A(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private static H(Ljava/lang/Object;J)J
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)J"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/r1;->y(Ljava/lang/Object;J)J

    move-result-wide p0

    return-wide p0
.end method

.method private I(Landroidx/datastore/preferences/protobuf/n1;Landroidx/datastore/preferences/protobuf/q;Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/f1;Landroidx/datastore/preferences/protobuf/p;)V
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            "ET::",
            "Landroidx/datastore/preferences/protobuf/u$b<",
            "TET;>;>(",
            "Landroidx/datastore/preferences/protobuf/n1<",
            "TUT;TUB;>;",
            "Landroidx/datastore/preferences/protobuf/q<",
            "TET;>;TT;",
            "Landroidx/datastore/preferences/protobuf/f1;",
            "Landroidx/datastore/preferences/protobuf/p;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p3

    move-object/from16 v0, p4

    move-object/from16 v11, p5

    const/4 v12, 0x0

    move-object v13, v12

    move-object v14, v13

    .line 1
    :cond_d
    :goto_d
    :try_start_d
    invoke-interface/range {p4 .. p4}, Landroidx/datastore/preferences/protobuf/f1;->A()I

    move-result v1

    .line 2
    invoke-direct {v8, v1}, Landroidx/datastore/preferences/protobuf/u0;->X(I)I

    move-result v3
    :try_end_15
    .catchall {:try_start_d .. :try_end_15} :catchall_612

    if-gez v3, :cond_8e

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_33

    .line 3
    iget v0, v8, Landroidx/datastore/preferences/protobuf/u0;->k:I

    :goto_1e
    iget v1, v8, Landroidx/datastore/preferences/protobuf/u0;->l:I

    if-ge v0, v1, :cond_2d

    .line 4
    iget-object v1, v8, Landroidx/datastore/preferences/protobuf/u0;->j:[I

    aget v1, v1, v0

    .line 5
    invoke-direct {v8, v10, v1, v13, v9}, Landroidx/datastore/preferences/protobuf/u0;->n(Ljava/lang/Object;ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/n1;)Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    :cond_2d
    if-eqz v13, :cond_32

    .line 6
    invoke-virtual {v9, v10, v13}, Landroidx/datastore/preferences/protobuf/n1;->o(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_32
    return-void

    .line 7
    :cond_33
    :try_start_33
    iget-boolean v2, v8, Landroidx/datastore/preferences/protobuf/u0;->f:Z

    if-nez v2, :cond_3b

    move-object/from16 v15, p2

    move-object v3, v12

    goto :goto_44

    :cond_3b
    iget-object v2, v8, Landroidx/datastore/preferences/protobuf/u0;->e:Landroidx/datastore/preferences/protobuf/r0;

    move-object/from16 v15, p2

    .line 8
    invoke-virtual {v15, v11, v2, v1}, Landroidx/datastore/preferences/protobuf/q;->b(Landroidx/datastore/preferences/protobuf/p;Landroidx/datastore/preferences/protobuf/r0;I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    :goto_44
    if-eqz v3, :cond_5c

    if-nez v14, :cond_4d

    .line 9
    invoke-virtual/range {p2 .. p3}, Landroidx/datastore/preferences/protobuf/q;->d(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/u;

    move-result-object v1

    move-object v14, v1

    :cond_4d
    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move-object/from16 v4, p5

    move-object v5, v14

    move-object v6, v13

    move-object/from16 v7, p1

    .line 10
    invoke-virtual/range {v1 .. v7}, Landroidx/datastore/preferences/protobuf/q;->g(Landroidx/datastore/preferences/protobuf/f1;Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/p;Landroidx/datastore/preferences/protobuf/u;Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/n1;)Ljava/lang/Object;

    move-result-object v13

    goto :goto_d

    .line 11
    :cond_5c
    invoke-virtual {v9, v0}, Landroidx/datastore/preferences/protobuf/n1;->q(Landroidx/datastore/preferences/protobuf/f1;)Z

    move-result v1

    if-eqz v1, :cond_69

    .line 12
    invoke-interface/range {p4 .. p4}, Landroidx/datastore/preferences/protobuf/f1;->H()Z

    move-result v1

    if-eqz v1, :cond_77

    goto :goto_d

    :cond_69
    if-nez v13, :cond_70

    .line 13
    invoke-virtual {v9, v10}, Landroidx/datastore/preferences/protobuf/n1;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    .line 14
    :cond_70
    invoke-virtual {v9, v13, v0}, Landroidx/datastore/preferences/protobuf/n1;->m(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/f1;)Z

    move-result v1
    :try_end_74
    .catchall {:try_start_33 .. :try_end_74} :catchall_612

    if-eqz v1, :cond_77

    goto :goto_d

    .line 15
    :cond_77
    iget v0, v8, Landroidx/datastore/preferences/protobuf/u0;->k:I

    :goto_79
    iget v1, v8, Landroidx/datastore/preferences/protobuf/u0;->l:I

    if-ge v0, v1, :cond_88

    .line 16
    iget-object v1, v8, Landroidx/datastore/preferences/protobuf/u0;->j:[I

    aget v1, v1, v0

    .line 17
    invoke-direct {v8, v10, v1, v13, v9}, Landroidx/datastore/preferences/protobuf/u0;->n(Ljava/lang/Object;ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/n1;)Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v0, v0, 0x1

    goto :goto_79

    :cond_88
    if-eqz v13, :cond_8d

    .line 18
    invoke-virtual {v9, v10, v13}, Landroidx/datastore/preferences/protobuf/n1;->o(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_8d
    return-void

    :cond_8e
    move-object/from16 v15, p2

    .line 19
    :try_start_90
    invoke-direct {v8, v3}, Landroidx/datastore/preferences/protobuf/u0;->i0(I)I

    move-result v4
    :try_end_94
    .catchall {:try_start_90 .. :try_end_94} :catchall_612

    .line 20
    :try_start_94
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/u0;->h0(I)I

    move-result v2

    packed-switch v2, :pswitch_data_62c

    if-nez v13, :cond_5ae

    .line 21
    invoke-virtual/range {p1 .. p1}, Landroidx/datastore/preferences/protobuf/n1;->n()Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_5ad

    .line 22
    :pswitch_a3
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v4

    .line 23
    invoke-direct {v8, v3}, Landroidx/datastore/preferences/protobuf/u0;->s(I)Landroidx/datastore/preferences/protobuf/g1;

    move-result-object v2

    invoke-interface {v0, v2, v11}, Landroidx/datastore/preferences/protobuf/f1;->P(Landroidx/datastore/preferences/protobuf/g1;Landroidx/datastore/preferences/protobuf/p;)Ljava/lang/Object;

    move-result-object v2

    .line 24
    invoke-static {v10, v4, v5, v2}, Landroidx/datastore/preferences/protobuf/r1;->O(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 25
    invoke-direct {v8, v10, v1, v3}, Landroidx/datastore/preferences/protobuf/u0;->f0(Ljava/lang/Object;II)V

    goto/16 :goto_d

    .line 26
    :pswitch_b7
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v4

    invoke-interface/range {p4 .. p4}, Landroidx/datastore/preferences/protobuf/f1;->x()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 27
    invoke-static {v10, v4, v5, v2}, Landroidx/datastore/preferences/protobuf/r1;->O(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 28
    invoke-direct {v8, v10, v1, v3}, Landroidx/datastore/preferences/protobuf/u0;->f0(Ljava/lang/Object;II)V

    goto/16 :goto_d

    .line 29
    :pswitch_cb
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v4

    invoke-interface/range {p4 .. p4}, Landroidx/datastore/preferences/protobuf/f1;->w()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 30
    invoke-static {v10, v4, v5, v2}, Landroidx/datastore/preferences/protobuf/r1;->O(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 31
    invoke-direct {v8, v10, v1, v3}, Landroidx/datastore/preferences/protobuf/u0;->f0(Ljava/lang/Object;II)V

    goto/16 :goto_d

    .line 32
    :pswitch_df
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v4

    invoke-interface/range {p4 .. p4}, Landroidx/datastore/preferences/protobuf/f1;->k()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 33
    invoke-static {v10, v4, v5, v2}, Landroidx/datastore/preferences/protobuf/r1;->O(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 34
    invoke-direct {v8, v10, v1, v3}, Landroidx/datastore/preferences/protobuf/u0;->f0(Ljava/lang/Object;II)V

    goto/16 :goto_d

    .line 35
    :pswitch_f3
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v4

    invoke-interface/range {p4 .. p4}, Landroidx/datastore/preferences/protobuf/f1;->I()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 36
    invoke-static {v10, v4, v5, v2}, Landroidx/datastore/preferences/protobuf/r1;->O(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 37
    invoke-direct {v8, v10, v1, v3}, Landroidx/datastore/preferences/protobuf/u0;->f0(Ljava/lang/Object;II)V

    goto/16 :goto_d

    .line 38
    :pswitch_107
    invoke-interface/range {p4 .. p4}, Landroidx/datastore/preferences/protobuf/f1;->t()I

    move-result v2

    .line 39
    invoke-direct {v8, v3}, Landroidx/datastore/preferences/protobuf/u0;->q(I)Landroidx/datastore/preferences/protobuf/a0$e;

    move-result-object v5

    if-eqz v5, :cond_11e

    .line 40
    invoke-interface {v5, v2}, Landroidx/datastore/preferences/protobuf/a0$e;->a(I)Z

    move-result v5

    if-eqz v5, :cond_118

    goto :goto_11e

    .line 41
    :cond_118
    invoke-static {v1, v2, v13, v9}, Landroidx/datastore/preferences/protobuf/i1;->L(IILjava/lang/Object;Landroidx/datastore/preferences/protobuf/n1;)Ljava/lang/Object;

    move-result-object v13

    goto/16 :goto_d

    .line 42
    :cond_11e
    :goto_11e
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v10, v4, v5, v2}, Landroidx/datastore/preferences/protobuf/r1;->O(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 43
    invoke-direct {v8, v10, v1, v3}, Landroidx/datastore/preferences/protobuf/u0;->f0(Ljava/lang/Object;II)V

    goto/16 :goto_d

    .line 44
    :pswitch_12e
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v4

    invoke-interface/range {p4 .. p4}, Landroidx/datastore/preferences/protobuf/f1;->n()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 45
    invoke-static {v10, v4, v5, v2}, Landroidx/datastore/preferences/protobuf/r1;->O(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 46
    invoke-direct {v8, v10, v1, v3}, Landroidx/datastore/preferences/protobuf/u0;->f0(Ljava/lang/Object;II)V

    goto/16 :goto_d

    .line 47
    :pswitch_142
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v4

    invoke-interface/range {p4 .. p4}, Landroidx/datastore/preferences/protobuf/f1;->D()Landroidx/datastore/preferences/protobuf/h;

    move-result-object v2

    invoke-static {v10, v4, v5, v2}, Landroidx/datastore/preferences/protobuf/r1;->O(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 48
    invoke-direct {v8, v10, v1, v3}, Landroidx/datastore/preferences/protobuf/u0;->f0(Ljava/lang/Object;II)V

    goto/16 :goto_d

    .line 49
    :pswitch_152
    invoke-direct {v8, v10, v1, v3}, Landroidx/datastore/preferences/protobuf/u0;->E(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_174

    .line 50
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v5

    invoke-static {v10, v5, v6}, Landroidx/datastore/preferences/protobuf/r1;->A(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    .line 51
    invoke-direct {v8, v3}, Landroidx/datastore/preferences/protobuf/u0;->s(I)Landroidx/datastore/preferences/protobuf/g1;

    move-result-object v5

    .line 52
    invoke-interface {v0, v5, v11}, Landroidx/datastore/preferences/protobuf/f1;->a(Landroidx/datastore/preferences/protobuf/g1;Landroidx/datastore/preferences/protobuf/p;)Ljava/lang/Object;

    move-result-object v5

    .line 53
    invoke-static {v2, v5}, Landroidx/datastore/preferences/protobuf/a0;->h(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 54
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v4

    invoke-static {v10, v4, v5, v2}, Landroidx/datastore/preferences/protobuf/r1;->O(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_186

    .line 55
    :cond_174
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v4

    .line 56
    invoke-direct {v8, v3}, Landroidx/datastore/preferences/protobuf/u0;->s(I)Landroidx/datastore/preferences/protobuf/g1;

    move-result-object v2

    .line 57
    invoke-interface {v0, v2, v11}, Landroidx/datastore/preferences/protobuf/f1;->a(Landroidx/datastore/preferences/protobuf/g1;Landroidx/datastore/preferences/protobuf/p;)Ljava/lang/Object;

    move-result-object v2

    .line 58
    invoke-static {v10, v4, v5, v2}, Landroidx/datastore/preferences/protobuf/r1;->O(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 59
    invoke-direct {v8, v10, v3}, Landroidx/datastore/preferences/protobuf/u0;->e0(Ljava/lang/Object;I)V

    .line 60
    :goto_186
    invoke-direct {v8, v10, v1, v3}, Landroidx/datastore/preferences/protobuf/u0;->f0(Ljava/lang/Object;II)V

    goto/16 :goto_d

    .line 61
    :pswitch_18b
    invoke-direct {v8, v10, v4, v0}, Landroidx/datastore/preferences/protobuf/u0;->b0(Ljava/lang/Object;ILandroidx/datastore/preferences/protobuf/f1;)V

    .line 62
    invoke-direct {v8, v10, v1, v3}, Landroidx/datastore/preferences/protobuf/u0;->f0(Ljava/lang/Object;II)V

    goto/16 :goto_d

    .line 63
    :pswitch_193
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v4

    invoke-interface/range {p4 .. p4}, Landroidx/datastore/preferences/protobuf/f1;->j()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 64
    invoke-static {v10, v4, v5, v2}, Landroidx/datastore/preferences/protobuf/r1;->O(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 65
    invoke-direct {v8, v10, v1, v3}, Landroidx/datastore/preferences/protobuf/u0;->f0(Ljava/lang/Object;II)V

    goto/16 :goto_d

    .line 66
    :pswitch_1a7
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v4

    invoke-interface/range {p4 .. p4}, Landroidx/datastore/preferences/protobuf/f1;->i()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 67
    invoke-static {v10, v4, v5, v2}, Landroidx/datastore/preferences/protobuf/r1;->O(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 68
    invoke-direct {v8, v10, v1, v3}, Landroidx/datastore/preferences/protobuf/u0;->f0(Ljava/lang/Object;II)V

    goto/16 :goto_d

    .line 69
    :pswitch_1bb
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v4

    invoke-interface/range {p4 .. p4}, Landroidx/datastore/preferences/protobuf/f1;->d()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 70
    invoke-static {v10, v4, v5, v2}, Landroidx/datastore/preferences/protobuf/r1;->O(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 71
    invoke-direct {v8, v10, v1, v3}, Landroidx/datastore/preferences/protobuf/u0;->f0(Ljava/lang/Object;II)V

    goto/16 :goto_d

    .line 72
    :pswitch_1cf
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v4

    invoke-interface/range {p4 .. p4}, Landroidx/datastore/preferences/protobuf/f1;->F()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 73
    invoke-static {v10, v4, v5, v2}, Landroidx/datastore/preferences/protobuf/r1;->O(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 74
    invoke-direct {v8, v10, v1, v3}, Landroidx/datastore/preferences/protobuf/u0;->f0(Ljava/lang/Object;II)V

    goto/16 :goto_d

    .line 75
    :pswitch_1e3
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v4

    invoke-interface/range {p4 .. p4}, Landroidx/datastore/preferences/protobuf/f1;->c()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 76
    invoke-static {v10, v4, v5, v2}, Landroidx/datastore/preferences/protobuf/r1;->O(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 77
    invoke-direct {v8, v10, v1, v3}, Landroidx/datastore/preferences/protobuf/u0;->f0(Ljava/lang/Object;II)V

    goto/16 :goto_d

    .line 78
    :pswitch_1f7
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v4

    invoke-interface/range {p4 .. p4}, Landroidx/datastore/preferences/protobuf/f1;->M()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 79
    invoke-static {v10, v4, v5, v2}, Landroidx/datastore/preferences/protobuf/r1;->O(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 80
    invoke-direct {v8, v10, v1, v3}, Landroidx/datastore/preferences/protobuf/u0;->f0(Ljava/lang/Object;II)V

    goto/16 :goto_d

    .line 81
    :pswitch_20b
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v4

    invoke-interface/range {p4 .. p4}, Landroidx/datastore/preferences/protobuf/f1;->readFloat()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 82
    invoke-static {v10, v4, v5, v2}, Landroidx/datastore/preferences/protobuf/r1;->O(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 83
    invoke-direct {v8, v10, v1, v3}, Landroidx/datastore/preferences/protobuf/u0;->f0(Ljava/lang/Object;II)V

    goto/16 :goto_d

    .line 84
    :pswitch_21f
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v4

    invoke-interface/range {p4 .. p4}, Landroidx/datastore/preferences/protobuf/f1;->readDouble()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    .line 85
    invoke-static {v10, v4, v5, v2}, Landroidx/datastore/preferences/protobuf/r1;->O(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 86
    invoke-direct {v8, v10, v1, v3}, Landroidx/datastore/preferences/protobuf/u0;->f0(Ljava/lang/Object;II)V

    goto/16 :goto_d

    .line 87
    :pswitch_233
    invoke-direct {v8, v3}, Landroidx/datastore/preferences/protobuf/u0;->r(I)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p4

    invoke-direct/range {v1 .. v6}, Landroidx/datastore/preferences/protobuf/u0;->J(Ljava/lang/Object;ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/p;Landroidx/datastore/preferences/protobuf/f1;)V

    goto/16 :goto_d

    .line 88
    :pswitch_244
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v4

    .line 89
    invoke-direct {v8, v3}, Landroidx/datastore/preferences/protobuf/u0;->s(I)Landroidx/datastore/preferences/protobuf/g1;

    move-result-object v6

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-wide v3, v4

    move-object/from16 v5, p4

    move-object/from16 v7, p5

    .line 90
    invoke-direct/range {v1 .. v7}, Landroidx/datastore/preferences/protobuf/u0;->Z(Ljava/lang/Object;JLandroidx/datastore/preferences/protobuf/f1;Landroidx/datastore/preferences/protobuf/g1;Landroidx/datastore/preferences/protobuf/p;)V

    goto/16 :goto_d

    .line 91
    :pswitch_25a
    iget-object v1, v8, Landroidx/datastore/preferences/protobuf/u0;->n:Landroidx/datastore/preferences/protobuf/h0;

    .line 92
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Landroidx/datastore/preferences/protobuf/h0;->e(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 93
    invoke-interface {v0, v1}, Landroidx/datastore/preferences/protobuf/f1;->g(Ljava/util/List;)V

    goto/16 :goto_d

    .line 94
    :pswitch_269
    iget-object v1, v8, Landroidx/datastore/preferences/protobuf/u0;->n:Landroidx/datastore/preferences/protobuf/h0;

    .line 95
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Landroidx/datastore/preferences/protobuf/h0;->e(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 96
    invoke-interface {v0, v1}, Landroidx/datastore/preferences/protobuf/f1;->b(Ljava/util/List;)V

    goto/16 :goto_d

    .line 97
    :pswitch_278
    iget-object v1, v8, Landroidx/datastore/preferences/protobuf/u0;->n:Landroidx/datastore/preferences/protobuf/h0;

    .line 98
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Landroidx/datastore/preferences/protobuf/h0;->e(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 99
    invoke-interface {v0, v1}, Landroidx/datastore/preferences/protobuf/f1;->p(Ljava/util/List;)V

    goto/16 :goto_d

    .line 100
    :pswitch_287
    iget-object v1, v8, Landroidx/datastore/preferences/protobuf/u0;->n:Landroidx/datastore/preferences/protobuf/h0;

    .line 101
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Landroidx/datastore/preferences/protobuf/h0;->e(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 102
    invoke-interface {v0, v1}, Landroidx/datastore/preferences/protobuf/f1;->f(Ljava/util/List;)V

    goto/16 :goto_d

    .line 103
    :pswitch_296
    iget-object v2, v8, Landroidx/datastore/preferences/protobuf/u0;->n:Landroidx/datastore/preferences/protobuf/h0;

    .line 104
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v4

    invoke-virtual {v2, v10, v4, v5}, Landroidx/datastore/preferences/protobuf/h0;->e(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 105
    invoke-interface {v0, v2}, Landroidx/datastore/preferences/protobuf/f1;->r(Ljava/util/List;)V

    .line 106
    invoke-direct {v8, v3}, Landroidx/datastore/preferences/protobuf/u0;->q(I)Landroidx/datastore/preferences/protobuf/a0$e;

    move-result-object v3

    .line 107
    invoke-static {v1, v2, v3, v13, v9}, Landroidx/datastore/preferences/protobuf/i1;->A(ILjava/util/List;Landroidx/datastore/preferences/protobuf/a0$e;Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/n1;)Ljava/lang/Object;

    move-result-object v13

    goto/16 :goto_d

    .line 108
    :pswitch_2ad
    iget-object v1, v8, Landroidx/datastore/preferences/protobuf/u0;->n:Landroidx/datastore/preferences/protobuf/h0;

    .line 109
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Landroidx/datastore/preferences/protobuf/h0;->e(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 110
    invoke-interface {v0, v1}, Landroidx/datastore/preferences/protobuf/f1;->h(Ljava/util/List;)V

    goto/16 :goto_d

    .line 111
    :pswitch_2bc
    iget-object v1, v8, Landroidx/datastore/preferences/protobuf/u0;->n:Landroidx/datastore/preferences/protobuf/h0;

    .line 112
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Landroidx/datastore/preferences/protobuf/h0;->e(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 113
    invoke-interface {v0, v1}, Landroidx/datastore/preferences/protobuf/f1;->y(Ljava/util/List;)V

    goto/16 :goto_d

    .line 114
    :pswitch_2cb
    iget-object v1, v8, Landroidx/datastore/preferences/protobuf/u0;->n:Landroidx/datastore/preferences/protobuf/h0;

    .line 115
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Landroidx/datastore/preferences/protobuf/h0;->e(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 116
    invoke-interface {v0, v1}, Landroidx/datastore/preferences/protobuf/f1;->v(Ljava/util/List;)V

    goto/16 :goto_d

    .line 117
    :pswitch_2da
    iget-object v1, v8, Landroidx/datastore/preferences/protobuf/u0;->n:Landroidx/datastore/preferences/protobuf/h0;

    .line 118
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Landroidx/datastore/preferences/protobuf/h0;->e(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 119
    invoke-interface {v0, v1}, Landroidx/datastore/preferences/protobuf/f1;->O(Ljava/util/List;)V

    goto/16 :goto_d

    .line 120
    :pswitch_2e9
    iget-object v1, v8, Landroidx/datastore/preferences/protobuf/u0;->n:Landroidx/datastore/preferences/protobuf/h0;

    .line 121
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Landroidx/datastore/preferences/protobuf/h0;->e(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 122
    invoke-interface {v0, v1}, Landroidx/datastore/preferences/protobuf/f1;->q(Ljava/util/List;)V

    goto/16 :goto_d

    .line 123
    :pswitch_2f8
    iget-object v1, v8, Landroidx/datastore/preferences/protobuf/u0;->n:Landroidx/datastore/preferences/protobuf/h0;

    .line 124
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Landroidx/datastore/preferences/protobuf/h0;->e(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 125
    invoke-interface {v0, v1}, Landroidx/datastore/preferences/protobuf/f1;->l(Ljava/util/List;)V

    goto/16 :goto_d

    .line 126
    :pswitch_307
    iget-object v1, v8, Landroidx/datastore/preferences/protobuf/u0;->n:Landroidx/datastore/preferences/protobuf/h0;

    .line 127
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Landroidx/datastore/preferences/protobuf/h0;->e(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 128
    invoke-interface {v0, v1}, Landroidx/datastore/preferences/protobuf/f1;->o(Ljava/util/List;)V

    goto/16 :goto_d

    .line 129
    :pswitch_316
    iget-object v1, v8, Landroidx/datastore/preferences/protobuf/u0;->n:Landroidx/datastore/preferences/protobuf/h0;

    .line 130
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Landroidx/datastore/preferences/protobuf/h0;->e(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 131
    invoke-interface {v0, v1}, Landroidx/datastore/preferences/protobuf/f1;->E(Ljava/util/List;)V

    goto/16 :goto_d

    .line 132
    :pswitch_325
    iget-object v1, v8, Landroidx/datastore/preferences/protobuf/u0;->n:Landroidx/datastore/preferences/protobuf/h0;

    .line 133
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Landroidx/datastore/preferences/protobuf/h0;->e(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 134
    invoke-interface {v0, v1}, Landroidx/datastore/preferences/protobuf/f1;->K(Ljava/util/List;)V

    goto/16 :goto_d

    .line 135
    :pswitch_334
    iget-object v1, v8, Landroidx/datastore/preferences/protobuf/u0;->n:Landroidx/datastore/preferences/protobuf/h0;

    .line 136
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Landroidx/datastore/preferences/protobuf/h0;->e(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 137
    invoke-interface {v0, v1}, Landroidx/datastore/preferences/protobuf/f1;->g(Ljava/util/List;)V

    goto/16 :goto_d

    .line 138
    :pswitch_343
    iget-object v1, v8, Landroidx/datastore/preferences/protobuf/u0;->n:Landroidx/datastore/preferences/protobuf/h0;

    .line 139
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Landroidx/datastore/preferences/protobuf/h0;->e(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 140
    invoke-interface {v0, v1}, Landroidx/datastore/preferences/protobuf/f1;->b(Ljava/util/List;)V

    goto/16 :goto_d

    .line 141
    :pswitch_352
    iget-object v1, v8, Landroidx/datastore/preferences/protobuf/u0;->n:Landroidx/datastore/preferences/protobuf/h0;

    .line 142
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Landroidx/datastore/preferences/protobuf/h0;->e(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 143
    invoke-interface {v0, v1}, Landroidx/datastore/preferences/protobuf/f1;->p(Ljava/util/List;)V

    goto/16 :goto_d

    .line 144
    :pswitch_361
    iget-object v1, v8, Landroidx/datastore/preferences/protobuf/u0;->n:Landroidx/datastore/preferences/protobuf/h0;

    .line 145
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Landroidx/datastore/preferences/protobuf/h0;->e(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 146
    invoke-interface {v0, v1}, Landroidx/datastore/preferences/protobuf/f1;->f(Ljava/util/List;)V

    goto/16 :goto_d

    .line 147
    :pswitch_370
    iget-object v2, v8, Landroidx/datastore/preferences/protobuf/u0;->n:Landroidx/datastore/preferences/protobuf/h0;

    .line 148
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v4

    invoke-virtual {v2, v10, v4, v5}, Landroidx/datastore/preferences/protobuf/h0;->e(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 149
    invoke-interface {v0, v2}, Landroidx/datastore/preferences/protobuf/f1;->r(Ljava/util/List;)V

    .line 150
    invoke-direct {v8, v3}, Landroidx/datastore/preferences/protobuf/u0;->q(I)Landroidx/datastore/preferences/protobuf/a0$e;

    move-result-object v3

    .line 151
    invoke-static {v1, v2, v3, v13, v9}, Landroidx/datastore/preferences/protobuf/i1;->A(ILjava/util/List;Landroidx/datastore/preferences/protobuf/a0$e;Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/n1;)Ljava/lang/Object;

    move-result-object v13

    goto/16 :goto_d

    .line 152
    :pswitch_387
    iget-object v1, v8, Landroidx/datastore/preferences/protobuf/u0;->n:Landroidx/datastore/preferences/protobuf/h0;

    .line 153
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Landroidx/datastore/preferences/protobuf/h0;->e(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 154
    invoke-interface {v0, v1}, Landroidx/datastore/preferences/protobuf/f1;->h(Ljava/util/List;)V

    goto/16 :goto_d

    .line 155
    :pswitch_396
    iget-object v1, v8, Landroidx/datastore/preferences/protobuf/u0;->n:Landroidx/datastore/preferences/protobuf/h0;

    .line 156
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Landroidx/datastore/preferences/protobuf/h0;->e(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 157
    invoke-interface {v0, v1}, Landroidx/datastore/preferences/protobuf/f1;->J(Ljava/util/List;)V

    goto/16 :goto_d

    .line 158
    :pswitch_3a5
    invoke-direct {v8, v3}, Landroidx/datastore/preferences/protobuf/u0;->s(I)Landroidx/datastore/preferences/protobuf/g1;

    move-result-object v5

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move v3, v4

    move-object/from16 v4, p4

    move-object/from16 v6, p5

    .line 159
    invoke-direct/range {v1 .. v6}, Landroidx/datastore/preferences/protobuf/u0;->a0(Ljava/lang/Object;ILandroidx/datastore/preferences/protobuf/f1;Landroidx/datastore/preferences/protobuf/g1;Landroidx/datastore/preferences/protobuf/p;)V

    goto/16 :goto_d

    .line 160
    :pswitch_3b7
    invoke-direct {v8, v10, v4, v0}, Landroidx/datastore/preferences/protobuf/u0;->c0(Ljava/lang/Object;ILandroidx/datastore/preferences/protobuf/f1;)V

    goto/16 :goto_d

    .line 161
    :pswitch_3bc
    iget-object v1, v8, Landroidx/datastore/preferences/protobuf/u0;->n:Landroidx/datastore/preferences/protobuf/h0;

    .line 162
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Landroidx/datastore/preferences/protobuf/h0;->e(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 163
    invoke-interface {v0, v1}, Landroidx/datastore/preferences/protobuf/f1;->y(Ljava/util/List;)V

    goto/16 :goto_d

    .line 164
    :pswitch_3cb
    iget-object v1, v8, Landroidx/datastore/preferences/protobuf/u0;->n:Landroidx/datastore/preferences/protobuf/h0;

    .line 165
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Landroidx/datastore/preferences/protobuf/h0;->e(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 166
    invoke-interface {v0, v1}, Landroidx/datastore/preferences/protobuf/f1;->v(Ljava/util/List;)V

    goto/16 :goto_d

    .line 167
    :pswitch_3da
    iget-object v1, v8, Landroidx/datastore/preferences/protobuf/u0;->n:Landroidx/datastore/preferences/protobuf/h0;

    .line 168
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Landroidx/datastore/preferences/protobuf/h0;->e(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 169
    invoke-interface {v0, v1}, Landroidx/datastore/preferences/protobuf/f1;->O(Ljava/util/List;)V

    goto/16 :goto_d

    .line 170
    :pswitch_3e9
    iget-object v1, v8, Landroidx/datastore/preferences/protobuf/u0;->n:Landroidx/datastore/preferences/protobuf/h0;

    .line 171
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Landroidx/datastore/preferences/protobuf/h0;->e(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 172
    invoke-interface {v0, v1}, Landroidx/datastore/preferences/protobuf/f1;->q(Ljava/util/List;)V

    goto/16 :goto_d

    .line 173
    :pswitch_3f8
    iget-object v1, v8, Landroidx/datastore/preferences/protobuf/u0;->n:Landroidx/datastore/preferences/protobuf/h0;

    .line 174
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Landroidx/datastore/preferences/protobuf/h0;->e(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 175
    invoke-interface {v0, v1}, Landroidx/datastore/preferences/protobuf/f1;->l(Ljava/util/List;)V

    goto/16 :goto_d

    .line 176
    :pswitch_407
    iget-object v1, v8, Landroidx/datastore/preferences/protobuf/u0;->n:Landroidx/datastore/preferences/protobuf/h0;

    .line 177
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Landroidx/datastore/preferences/protobuf/h0;->e(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 178
    invoke-interface {v0, v1}, Landroidx/datastore/preferences/protobuf/f1;->o(Ljava/util/List;)V

    goto/16 :goto_d

    .line 179
    :pswitch_416
    iget-object v1, v8, Landroidx/datastore/preferences/protobuf/u0;->n:Landroidx/datastore/preferences/protobuf/h0;

    .line 180
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Landroidx/datastore/preferences/protobuf/h0;->e(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 181
    invoke-interface {v0, v1}, Landroidx/datastore/preferences/protobuf/f1;->E(Ljava/util/List;)V

    goto/16 :goto_d

    .line 182
    :pswitch_425
    iget-object v1, v8, Landroidx/datastore/preferences/protobuf/u0;->n:Landroidx/datastore/preferences/protobuf/h0;

    .line 183
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v2

    invoke-virtual {v1, v10, v2, v3}, Landroidx/datastore/preferences/protobuf/h0;->e(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 184
    invoke-interface {v0, v1}, Landroidx/datastore/preferences/protobuf/f1;->K(Ljava/util/List;)V

    goto/16 :goto_d

    .line 185
    :pswitch_434
    invoke-direct {v8, v10, v3}, Landroidx/datastore/preferences/protobuf/u0;->y(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_457

    .line 186
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v1

    invoke-static {v10, v1, v2}, Landroidx/datastore/preferences/protobuf/r1;->A(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    .line 187
    invoke-direct {v8, v3}, Landroidx/datastore/preferences/protobuf/u0;->s(I)Landroidx/datastore/preferences/protobuf/g1;

    move-result-object v2

    .line 188
    invoke-interface {v0, v2, v11}, Landroidx/datastore/preferences/protobuf/f1;->P(Landroidx/datastore/preferences/protobuf/g1;Landroidx/datastore/preferences/protobuf/p;)Ljava/lang/Object;

    move-result-object v2

    .line 189
    invoke-static {v1, v2}, Landroidx/datastore/preferences/protobuf/a0;->h(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 190
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v2

    invoke-static {v10, v2, v3, v1}, Landroidx/datastore/preferences/protobuf/r1;->O(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_d

    .line 191
    :cond_457
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v1

    .line 192
    invoke-direct {v8, v3}, Landroidx/datastore/preferences/protobuf/u0;->s(I)Landroidx/datastore/preferences/protobuf/g1;

    move-result-object v4

    .line 193
    invoke-interface {v0, v4, v11}, Landroidx/datastore/preferences/protobuf/f1;->P(Landroidx/datastore/preferences/protobuf/g1;Landroidx/datastore/preferences/protobuf/p;)Ljava/lang/Object;

    move-result-object v4

    .line 194
    invoke-static {v10, v1, v2, v4}, Landroidx/datastore/preferences/protobuf/r1;->O(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 195
    invoke-direct {v8, v10, v3}, Landroidx/datastore/preferences/protobuf/u0;->e0(Ljava/lang/Object;I)V

    goto/16 :goto_d

    .line 196
    :pswitch_46b
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Landroidx/datastore/preferences/protobuf/f1;->x()J

    move-result-wide v4

    invoke-static {v10, v1, v2, v4, v5}, Landroidx/datastore/preferences/protobuf/r1;->N(Ljava/lang/Object;JJ)V

    .line 197
    invoke-direct {v8, v10, v3}, Landroidx/datastore/preferences/protobuf/u0;->e0(Ljava/lang/Object;I)V

    goto/16 :goto_d

    .line 198
    :pswitch_47b
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Landroidx/datastore/preferences/protobuf/f1;->w()I

    move-result v4

    invoke-static {v10, v1, v2, v4}, Landroidx/datastore/preferences/protobuf/r1;->M(Ljava/lang/Object;JI)V

    .line 199
    invoke-direct {v8, v10, v3}, Landroidx/datastore/preferences/protobuf/u0;->e0(Ljava/lang/Object;I)V

    goto/16 :goto_d

    .line 200
    :pswitch_48b
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Landroidx/datastore/preferences/protobuf/f1;->k()J

    move-result-wide v4

    invoke-static {v10, v1, v2, v4, v5}, Landroidx/datastore/preferences/protobuf/r1;->N(Ljava/lang/Object;JJ)V

    .line 201
    invoke-direct {v8, v10, v3}, Landroidx/datastore/preferences/protobuf/u0;->e0(Ljava/lang/Object;I)V

    goto/16 :goto_d

    .line 202
    :pswitch_49b
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Landroidx/datastore/preferences/protobuf/f1;->I()I

    move-result v4

    invoke-static {v10, v1, v2, v4}, Landroidx/datastore/preferences/protobuf/r1;->M(Ljava/lang/Object;JI)V

    .line 203
    invoke-direct {v8, v10, v3}, Landroidx/datastore/preferences/protobuf/u0;->e0(Ljava/lang/Object;I)V

    goto/16 :goto_d

    .line 204
    :pswitch_4ab
    invoke-interface/range {p4 .. p4}, Landroidx/datastore/preferences/protobuf/f1;->t()I

    move-result v2

    .line 205
    invoke-direct {v8, v3}, Landroidx/datastore/preferences/protobuf/u0;->q(I)Landroidx/datastore/preferences/protobuf/a0$e;

    move-result-object v5

    if-eqz v5, :cond_4c2

    .line 206
    invoke-interface {v5, v2}, Landroidx/datastore/preferences/protobuf/a0$e;->a(I)Z

    move-result v5

    if-eqz v5, :cond_4bc

    goto :goto_4c2

    .line 207
    :cond_4bc
    invoke-static {v1, v2, v13, v9}, Landroidx/datastore/preferences/protobuf/i1;->L(IILjava/lang/Object;Landroidx/datastore/preferences/protobuf/n1;)Ljava/lang/Object;

    move-result-object v13

    goto/16 :goto_d

    .line 208
    :cond_4c2
    :goto_4c2
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v4

    invoke-static {v10, v4, v5, v2}, Landroidx/datastore/preferences/protobuf/r1;->M(Ljava/lang/Object;JI)V

    .line 209
    invoke-direct {v8, v10, v3}, Landroidx/datastore/preferences/protobuf/u0;->e0(Ljava/lang/Object;I)V

    goto/16 :goto_d

    .line 210
    :pswitch_4ce
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Landroidx/datastore/preferences/protobuf/f1;->n()I

    move-result v4

    invoke-static {v10, v1, v2, v4}, Landroidx/datastore/preferences/protobuf/r1;->M(Ljava/lang/Object;JI)V

    .line 211
    invoke-direct {v8, v10, v3}, Landroidx/datastore/preferences/protobuf/u0;->e0(Ljava/lang/Object;I)V

    goto/16 :goto_d

    .line 212
    :pswitch_4de
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Landroidx/datastore/preferences/protobuf/f1;->D()Landroidx/datastore/preferences/protobuf/h;

    move-result-object v4

    invoke-static {v10, v1, v2, v4}, Landroidx/datastore/preferences/protobuf/r1;->O(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 213
    invoke-direct {v8, v10, v3}, Landroidx/datastore/preferences/protobuf/u0;->e0(Ljava/lang/Object;I)V

    goto/16 :goto_d

    .line 214
    :pswitch_4ee
    invoke-direct {v8, v10, v3}, Landroidx/datastore/preferences/protobuf/u0;->y(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_511

    .line 215
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v1

    invoke-static {v10, v1, v2}, Landroidx/datastore/preferences/protobuf/r1;->A(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    .line 216
    invoke-direct {v8, v3}, Landroidx/datastore/preferences/protobuf/u0;->s(I)Landroidx/datastore/preferences/protobuf/g1;

    move-result-object v2

    .line 217
    invoke-interface {v0, v2, v11}, Landroidx/datastore/preferences/protobuf/f1;->a(Landroidx/datastore/preferences/protobuf/g1;Landroidx/datastore/preferences/protobuf/p;)Ljava/lang/Object;

    move-result-object v2

    .line 218
    invoke-static {v1, v2}, Landroidx/datastore/preferences/protobuf/a0;->h(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 219
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v2

    invoke-static {v10, v2, v3, v1}, Landroidx/datastore/preferences/protobuf/r1;->O(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_d

    .line 220
    :cond_511
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v1

    .line 221
    invoke-direct {v8, v3}, Landroidx/datastore/preferences/protobuf/u0;->s(I)Landroidx/datastore/preferences/protobuf/g1;

    move-result-object v4

    .line 222
    invoke-interface {v0, v4, v11}, Landroidx/datastore/preferences/protobuf/f1;->a(Landroidx/datastore/preferences/protobuf/g1;Landroidx/datastore/preferences/protobuf/p;)Ljava/lang/Object;

    move-result-object v4

    .line 223
    invoke-static {v10, v1, v2, v4}, Landroidx/datastore/preferences/protobuf/r1;->O(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 224
    invoke-direct {v8, v10, v3}, Landroidx/datastore/preferences/protobuf/u0;->e0(Ljava/lang/Object;I)V

    goto/16 :goto_d

    .line 225
    :pswitch_525
    invoke-direct {v8, v10, v4, v0}, Landroidx/datastore/preferences/protobuf/u0;->b0(Ljava/lang/Object;ILandroidx/datastore/preferences/protobuf/f1;)V

    .line 226
    invoke-direct {v8, v10, v3}, Landroidx/datastore/preferences/protobuf/u0;->e0(Ljava/lang/Object;I)V

    goto/16 :goto_d

    .line 227
    :pswitch_52d
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Landroidx/datastore/preferences/protobuf/f1;->j()Z

    move-result v4

    invoke-static {v10, v1, v2, v4}, Landroidx/datastore/preferences/protobuf/r1;->E(Ljava/lang/Object;JZ)V

    .line 228
    invoke-direct {v8, v10, v3}, Landroidx/datastore/preferences/protobuf/u0;->e0(Ljava/lang/Object;I)V

    goto/16 :goto_d

    .line 229
    :pswitch_53d
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Landroidx/datastore/preferences/protobuf/f1;->i()I

    move-result v4

    invoke-static {v10, v1, v2, v4}, Landroidx/datastore/preferences/protobuf/r1;->M(Ljava/lang/Object;JI)V

    .line 230
    invoke-direct {v8, v10, v3}, Landroidx/datastore/preferences/protobuf/u0;->e0(Ljava/lang/Object;I)V

    goto/16 :goto_d

    .line 231
    :pswitch_54d
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Landroidx/datastore/preferences/protobuf/f1;->d()J

    move-result-wide v4

    invoke-static {v10, v1, v2, v4, v5}, Landroidx/datastore/preferences/protobuf/r1;->N(Ljava/lang/Object;JJ)V

    .line 232
    invoke-direct {v8, v10, v3}, Landroidx/datastore/preferences/protobuf/u0;->e0(Ljava/lang/Object;I)V

    goto/16 :goto_d

    .line 233
    :pswitch_55d
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Landroidx/datastore/preferences/protobuf/f1;->F()I

    move-result v4

    invoke-static {v10, v1, v2, v4}, Landroidx/datastore/preferences/protobuf/r1;->M(Ljava/lang/Object;JI)V

    .line 234
    invoke-direct {v8, v10, v3}, Landroidx/datastore/preferences/protobuf/u0;->e0(Ljava/lang/Object;I)V

    goto/16 :goto_d

    .line 235
    :pswitch_56d
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Landroidx/datastore/preferences/protobuf/f1;->c()J

    move-result-wide v4

    invoke-static {v10, v1, v2, v4, v5}, Landroidx/datastore/preferences/protobuf/r1;->N(Ljava/lang/Object;JJ)V

    .line 236
    invoke-direct {v8, v10, v3}, Landroidx/datastore/preferences/protobuf/u0;->e0(Ljava/lang/Object;I)V

    goto/16 :goto_d

    .line 237
    :pswitch_57d
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Landroidx/datastore/preferences/protobuf/f1;->M()J

    move-result-wide v4

    invoke-static {v10, v1, v2, v4, v5}, Landroidx/datastore/preferences/protobuf/r1;->N(Ljava/lang/Object;JJ)V

    .line 238
    invoke-direct {v8, v10, v3}, Landroidx/datastore/preferences/protobuf/u0;->e0(Ljava/lang/Object;I)V

    goto/16 :goto_d

    .line 239
    :pswitch_58d
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Landroidx/datastore/preferences/protobuf/f1;->readFloat()F

    move-result v4

    invoke-static {v10, v1, v2, v4}, Landroidx/datastore/preferences/protobuf/r1;->L(Ljava/lang/Object;JF)V

    .line 240
    invoke-direct {v8, v10, v3}, Landroidx/datastore/preferences/protobuf/u0;->e0(Ljava/lang/Object;I)V

    goto/16 :goto_d

    .line 241
    :pswitch_59d
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v1

    invoke-interface/range {p4 .. p4}, Landroidx/datastore/preferences/protobuf/f1;->readDouble()D

    move-result-wide v4

    invoke-static {v10, v1, v2, v4, v5}, Landroidx/datastore/preferences/protobuf/r1;->K(Ljava/lang/Object;JD)V

    .line 242
    invoke-direct {v8, v10, v3}, Landroidx/datastore/preferences/protobuf/u0;->e0(Ljava/lang/Object;I)V

    goto/16 :goto_d

    :goto_5ad
    move-object v13, v1

    .line 243
    :cond_5ae
    invoke-virtual {v9, v13, v0}, Landroidx/datastore/preferences/protobuf/n1;->m(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/f1;)Z

    move-result v1
    :try_end_5b2
    .catch Landroidx/datastore/preferences/protobuf/b0$a; {:try_start_94 .. :try_end_5b2} :catch_5cb
    .catchall {:try_start_94 .. :try_end_5b2} :catchall_612

    if-nez v1, :cond_d

    .line 244
    iget v0, v8, Landroidx/datastore/preferences/protobuf/u0;->k:I

    :goto_5b6
    iget v1, v8, Landroidx/datastore/preferences/protobuf/u0;->l:I

    if-ge v0, v1, :cond_5c5

    .line 245
    iget-object v1, v8, Landroidx/datastore/preferences/protobuf/u0;->j:[I

    aget v1, v1, v0

    .line 246
    invoke-direct {v8, v10, v1, v13, v9}, Landroidx/datastore/preferences/protobuf/u0;->n(Ljava/lang/Object;ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/n1;)Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v0, v0, 0x1

    goto :goto_5b6

    :cond_5c5
    if-eqz v13, :cond_5ca

    .line 247
    invoke-virtual {v9, v10, v13}, Landroidx/datastore/preferences/protobuf/n1;->o(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5ca
    return-void

    .line 248
    :catch_5cb
    :try_start_5cb
    invoke-virtual {v9, v0}, Landroidx/datastore/preferences/protobuf/n1;->q(Landroidx/datastore/preferences/protobuf/f1;)Z

    move-result v1

    if-eqz v1, :cond_5ee

    .line 249
    invoke-interface/range {p4 .. p4}, Landroidx/datastore/preferences/protobuf/f1;->H()Z

    move-result v1
    :try_end_5d5
    .catchall {:try_start_5cb .. :try_end_5d5} :catchall_612

    if-nez v1, :cond_d

    .line 250
    iget v0, v8, Landroidx/datastore/preferences/protobuf/u0;->k:I

    :goto_5d9
    iget v1, v8, Landroidx/datastore/preferences/protobuf/u0;->l:I

    if-ge v0, v1, :cond_5e8

    .line 251
    iget-object v1, v8, Landroidx/datastore/preferences/protobuf/u0;->j:[I

    aget v1, v1, v0

    .line 252
    invoke-direct {v8, v10, v1, v13, v9}, Landroidx/datastore/preferences/protobuf/u0;->n(Ljava/lang/Object;ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/n1;)Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v0, v0, 0x1

    goto :goto_5d9

    :cond_5e8
    if-eqz v13, :cond_5ed

    .line 253
    invoke-virtual {v9, v10, v13}, Landroidx/datastore/preferences/protobuf/n1;->o(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5ed
    return-void

    :cond_5ee
    if-nez v13, :cond_5f5

    .line 254
    :try_start_5f0
    invoke-virtual {v9, v10}, Landroidx/datastore/preferences/protobuf/n1;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    .line 255
    :cond_5f5
    invoke-virtual {v9, v13, v0}, Landroidx/datastore/preferences/protobuf/n1;->m(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/f1;)Z

    move-result v1
    :try_end_5f9
    .catchall {:try_start_5f0 .. :try_end_5f9} :catchall_612

    if-nez v1, :cond_d

    .line 256
    iget v0, v8, Landroidx/datastore/preferences/protobuf/u0;->k:I

    :goto_5fd
    iget v1, v8, Landroidx/datastore/preferences/protobuf/u0;->l:I

    if-ge v0, v1, :cond_60c

    .line 257
    iget-object v1, v8, Landroidx/datastore/preferences/protobuf/u0;->j:[I

    aget v1, v1, v0

    .line 258
    invoke-direct {v8, v10, v1, v13, v9}, Landroidx/datastore/preferences/protobuf/u0;->n(Ljava/lang/Object;ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/n1;)Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v0, v0, 0x1

    goto :goto_5fd

    :cond_60c
    if-eqz v13, :cond_611

    .line 259
    invoke-virtual {v9, v10, v13}, Landroidx/datastore/preferences/protobuf/n1;->o(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_611
    return-void

    :catchall_612
    move-exception v0

    .line 260
    iget v1, v8, Landroidx/datastore/preferences/protobuf/u0;->k:I

    :goto_615
    iget v2, v8, Landroidx/datastore/preferences/protobuf/u0;->l:I

    if-ge v1, v2, :cond_624

    .line 261
    iget-object v2, v8, Landroidx/datastore/preferences/protobuf/u0;->j:[I

    aget v2, v2, v1

    .line 262
    invoke-direct {v8, v10, v2, v13, v9}, Landroidx/datastore/preferences/protobuf/u0;->n(Ljava/lang/Object;ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/n1;)Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v1, v1, 0x1

    goto :goto_615

    :cond_624
    if-eqz v13, :cond_629

    .line 263
    invoke-virtual {v9, v10, v13}, Landroidx/datastore/preferences/protobuf/n1;->o(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 264
    :cond_629
    goto :goto_62b

    :goto_62a
    throw v0

    :goto_62b
    goto :goto_62a

    :pswitch_data_62c
    .packed-switch 0x0
        :pswitch_59d
        :pswitch_58d
        :pswitch_57d
        :pswitch_56d
        :pswitch_55d
        :pswitch_54d
        :pswitch_53d
        :pswitch_52d
        :pswitch_525
        :pswitch_4ee
        :pswitch_4de
        :pswitch_4ce
        :pswitch_4ab
        :pswitch_49b
        :pswitch_48b
        :pswitch_47b
        :pswitch_46b
        :pswitch_434
        :pswitch_425
        :pswitch_416
        :pswitch_407
        :pswitch_3f8
        :pswitch_3e9
        :pswitch_3da
        :pswitch_3cb
        :pswitch_3bc
        :pswitch_3b7
        :pswitch_3a5
        :pswitch_396
        :pswitch_387
        :pswitch_370
        :pswitch_361
        :pswitch_352
        :pswitch_343
        :pswitch_334
        :pswitch_325
        :pswitch_316
        :pswitch_307
        :pswitch_2f8
        :pswitch_2e9
        :pswitch_2da
        :pswitch_2cb
        :pswitch_2bc
        :pswitch_2ad
        :pswitch_296
        :pswitch_287
        :pswitch_278
        :pswitch_269
        :pswitch_25a
        :pswitch_244
        :pswitch_233
        :pswitch_21f
        :pswitch_20b
        :pswitch_1f7
        :pswitch_1e3
        :pswitch_1cf
        :pswitch_1bb
        :pswitch_1a7
        :pswitch_193
        :pswitch_18b
        :pswitch_152
        :pswitch_142
        :pswitch_12e
        :pswitch_107
        :pswitch_f3
        :pswitch_df
        :pswitch_cb
        :pswitch_b7
        :pswitch_a3
    .end packed-switch
.end method

.method private final J(Ljava/lang/Object;ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/p;Landroidx/datastore/preferences/protobuf/f1;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "I",
            "Ljava/lang/Object;",
            "Landroidx/datastore/preferences/protobuf/p;",
            "Landroidx/datastore/preferences/protobuf/f1;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Landroidx/datastore/preferences/protobuf/u0;->i0(I)I

    move-result p2

    invoke-static {p2}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v0

    .line 2
    invoke-static {p1, v0, v1}, Landroidx/datastore/preferences/protobuf/r1;->A(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_18

    .line 3
    iget-object p2, p0, Landroidx/datastore/preferences/protobuf/u0;->q:Landroidx/datastore/preferences/protobuf/m0;

    invoke-interface {p2, p3}, Landroidx/datastore/preferences/protobuf/m0;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 4
    invoke-static {p1, v0, v1, p2}, Landroidx/datastore/preferences/protobuf/r1;->O(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_2f

    .line 5
    :cond_18
    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/u0;->q:Landroidx/datastore/preferences/protobuf/m0;

    invoke-interface {v2, p2}, Landroidx/datastore/preferences/protobuf/m0;->g(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 6
    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/u0;->q:Landroidx/datastore/preferences/protobuf/m0;

    invoke-interface {v2, p3}, Landroidx/datastore/preferences/protobuf/m0;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 7
    iget-object v3, p0, Landroidx/datastore/preferences/protobuf/u0;->q:Landroidx/datastore/preferences/protobuf/m0;

    invoke-interface {v3, v2, p2}, Landroidx/datastore/preferences/protobuf/m0;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-static {p1, v0, v1, v2}, Landroidx/datastore/preferences/protobuf/r1;->O(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object p2, v2

    .line 9
    :cond_2f
    :goto_2f
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/u0;->q:Landroidx/datastore/preferences/protobuf/m0;

    .line 10
    invoke-interface {p1, p2}, Landroidx/datastore/preferences/protobuf/m0;->d(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    iget-object p2, p0, Landroidx/datastore/preferences/protobuf/u0;->q:Landroidx/datastore/preferences/protobuf/m0;

    .line 11
    invoke-interface {p2, p3}, Landroidx/datastore/preferences/protobuf/m0;->c(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/k0$a;

    move-result-object p2

    .line 12
    invoke-interface {p5, p1, p2, p4}, Landroidx/datastore/preferences/protobuf/f1;->s(Ljava/util/Map;Landroidx/datastore/preferences/protobuf/k0$a;Landroidx/datastore/preferences/protobuf/p;)V

    return-void
.end method

.method private K(Ljava/lang/Object;Ljava/lang/Object;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p3}, Landroidx/datastore/preferences/protobuf/u0;->i0(I)I

    move-result v0

    .line 2
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v0

    .line 3
    invoke-direct {p0, p2, p3}, Landroidx/datastore/preferences/protobuf/u0;->y(Ljava/lang/Object;I)Z

    move-result v2

    if-nez v2, :cond_f

    return-void

    .line 4
    :cond_f
    invoke-static {p1, v0, v1}, Landroidx/datastore/preferences/protobuf/r1;->A(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    .line 5
    invoke-static {p2, v0, v1}, Landroidx/datastore/preferences/protobuf/r1;->A(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    if-eqz v2, :cond_26

    if-eqz p2, :cond_26

    .line 6
    invoke-static {v2, p2}, Landroidx/datastore/preferences/protobuf/a0;->h(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 7
    invoke-static {p1, v0, v1, p2}, Landroidx/datastore/preferences/protobuf/r1;->O(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 8
    invoke-direct {p0, p1, p3}, Landroidx/datastore/preferences/protobuf/u0;->e0(Ljava/lang/Object;I)V

    goto :goto_2e

    :cond_26
    if-eqz p2, :cond_2e

    .line 9
    invoke-static {p1, v0, v1, p2}, Landroidx/datastore/preferences/protobuf/r1;->O(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 10
    invoke-direct {p0, p1, p3}, Landroidx/datastore/preferences/protobuf/u0;->e0(Ljava/lang/Object;I)V

    :cond_2e
    :goto_2e
    return-void
.end method

.method private L(Ljava/lang/Object;Ljava/lang/Object;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p3}, Landroidx/datastore/preferences/protobuf/u0;->i0(I)I

    move-result v0

    .line 2
    invoke-direct {p0, p3}, Landroidx/datastore/preferences/protobuf/u0;->Q(I)I

    move-result v1

    .line 3
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v2

    .line 4
    invoke-direct {p0, p2, v1, p3}, Landroidx/datastore/preferences/protobuf/u0;->E(Ljava/lang/Object;II)Z

    move-result v0

    if-nez v0, :cond_13

    return-void

    .line 5
    :cond_13
    invoke-static {p1, v2, v3}, Landroidx/datastore/preferences/protobuf/r1;->A(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 6
    invoke-static {p2, v2, v3}, Landroidx/datastore/preferences/protobuf/r1;->A(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    if-eqz v0, :cond_2a

    if-eqz p2, :cond_2a

    .line 7
    invoke-static {v0, p2}, Landroidx/datastore/preferences/protobuf/a0;->h(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 8
    invoke-static {p1, v2, v3, p2}, Landroidx/datastore/preferences/protobuf/r1;->O(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 9
    invoke-direct {p0, p1, v1, p3}, Landroidx/datastore/preferences/protobuf/u0;->f0(Ljava/lang/Object;II)V

    goto :goto_32

    :cond_2a
    if-eqz p2, :cond_32

    .line 10
    invoke-static {p1, v2, v3, p2}, Landroidx/datastore/preferences/protobuf/r1;->O(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 11
    invoke-direct {p0, p1, v1, p3}, Landroidx/datastore/preferences/protobuf/u0;->f0(Ljava/lang/Object;II)V

    :cond_32
    :goto_32
    return-void
.end method

.method private M(Ljava/lang/Object;Ljava/lang/Object;I)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p3}, Landroidx/datastore/preferences/protobuf/u0;->i0(I)I

    move-result v0

    .line 2
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v1

    .line 3
    invoke-direct {p0, p3}, Landroidx/datastore/preferences/protobuf/u0;->Q(I)I

    move-result v3

    .line 4
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/u0;->h0(I)I

    move-result v0

    packed-switch v0, :pswitch_data_174

    goto/16 :goto_173

    .line 5
    :pswitch_15
    invoke-direct {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/u0;->L(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_173

    .line 6
    :pswitch_1a
    invoke-direct {p0, p2, v3, p3}, Landroidx/datastore/preferences/protobuf/u0;->E(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_173

    .line 7
    invoke-static {p2, v1, v2}, Landroidx/datastore/preferences/protobuf/r1;->A(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, v1, v2, p2}, Landroidx/datastore/preferences/protobuf/r1;->O(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 8
    invoke-direct {p0, p1, v3, p3}, Landroidx/datastore/preferences/protobuf/u0;->f0(Ljava/lang/Object;II)V

    goto/16 :goto_173

    .line 9
    :pswitch_2c
    invoke-direct {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/u0;->L(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_173

    .line 10
    :pswitch_31
    invoke-direct {p0, p2, v3, p3}, Landroidx/datastore/preferences/protobuf/u0;->E(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_173

    .line 11
    invoke-static {p2, v1, v2}, Landroidx/datastore/preferences/protobuf/r1;->A(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, v1, v2, p2}, Landroidx/datastore/preferences/protobuf/r1;->O(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 12
    invoke-direct {p0, p1, v3, p3}, Landroidx/datastore/preferences/protobuf/u0;->f0(Ljava/lang/Object;II)V

    goto/16 :goto_173

    .line 13
    :pswitch_43
    iget-object p3, p0, Landroidx/datastore/preferences/protobuf/u0;->q:Landroidx/datastore/preferences/protobuf/m0;

    invoke-static {p3, p1, p2, v1, v2}, Landroidx/datastore/preferences/protobuf/i1;->F(Landroidx/datastore/preferences/protobuf/m0;Ljava/lang/Object;Ljava/lang/Object;J)V

    goto/16 :goto_173

    .line 14
    :pswitch_4a
    iget-object p3, p0, Landroidx/datastore/preferences/protobuf/u0;->n:Landroidx/datastore/preferences/protobuf/h0;

    invoke-virtual {p3, p1, p2, v1, v2}, Landroidx/datastore/preferences/protobuf/h0;->d(Ljava/lang/Object;Ljava/lang/Object;J)V

    goto/16 :goto_173

    .line 15
    :pswitch_51
    invoke-direct {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/u0;->K(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_173

    .line 16
    :pswitch_56
    invoke-direct {p0, p2, p3}, Landroidx/datastore/preferences/protobuf/u0;->y(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_173

    .line 17
    invoke-static {p2, v1, v2}, Landroidx/datastore/preferences/protobuf/r1;->y(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {p1, v1, v2, v3, v4}, Landroidx/datastore/preferences/protobuf/r1;->N(Ljava/lang/Object;JJ)V

    .line 18
    invoke-direct {p0, p1, p3}, Landroidx/datastore/preferences/protobuf/u0;->e0(Ljava/lang/Object;I)V

    goto/16 :goto_173

    .line 19
    :pswitch_68
    invoke-direct {p0, p2, p3}, Landroidx/datastore/preferences/protobuf/u0;->y(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_173

    .line 20
    invoke-static {p2, v1, v2}, Landroidx/datastore/preferences/protobuf/r1;->x(Ljava/lang/Object;J)I

    move-result p2

    invoke-static {p1, v1, v2, p2}, Landroidx/datastore/preferences/protobuf/r1;->M(Ljava/lang/Object;JI)V

    .line 21
    invoke-direct {p0, p1, p3}, Landroidx/datastore/preferences/protobuf/u0;->e0(Ljava/lang/Object;I)V

    goto/16 :goto_173

    .line 22
    :pswitch_7a
    invoke-direct {p0, p2, p3}, Landroidx/datastore/preferences/protobuf/u0;->y(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_173

    .line 23
    invoke-static {p2, v1, v2}, Landroidx/datastore/preferences/protobuf/r1;->y(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {p1, v1, v2, v3, v4}, Landroidx/datastore/preferences/protobuf/r1;->N(Ljava/lang/Object;JJ)V

    .line 24
    invoke-direct {p0, p1, p3}, Landroidx/datastore/preferences/protobuf/u0;->e0(Ljava/lang/Object;I)V

    goto/16 :goto_173

    .line 25
    :pswitch_8c
    invoke-direct {p0, p2, p3}, Landroidx/datastore/preferences/protobuf/u0;->y(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_173

    .line 26
    invoke-static {p2, v1, v2}, Landroidx/datastore/preferences/protobuf/r1;->x(Ljava/lang/Object;J)I

    move-result p2

    invoke-static {p1, v1, v2, p2}, Landroidx/datastore/preferences/protobuf/r1;->M(Ljava/lang/Object;JI)V

    .line 27
    invoke-direct {p0, p1, p3}, Landroidx/datastore/preferences/protobuf/u0;->e0(Ljava/lang/Object;I)V

    goto/16 :goto_173

    .line 28
    :pswitch_9e
    invoke-direct {p0, p2, p3}, Landroidx/datastore/preferences/protobuf/u0;->y(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_173

    .line 29
    invoke-static {p2, v1, v2}, Landroidx/datastore/preferences/protobuf/r1;->x(Ljava/lang/Object;J)I

    move-result p2

    invoke-static {p1, v1, v2, p2}, Landroidx/datastore/preferences/protobuf/r1;->M(Ljava/lang/Object;JI)V

    .line 30
    invoke-direct {p0, p1, p3}, Landroidx/datastore/preferences/protobuf/u0;->e0(Ljava/lang/Object;I)V

    goto/16 :goto_173

    .line 31
    :pswitch_b0
    invoke-direct {p0, p2, p3}, Landroidx/datastore/preferences/protobuf/u0;->y(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_173

    .line 32
    invoke-static {p2, v1, v2}, Landroidx/datastore/preferences/protobuf/r1;->x(Ljava/lang/Object;J)I

    move-result p2

    invoke-static {p1, v1, v2, p2}, Landroidx/datastore/preferences/protobuf/r1;->M(Ljava/lang/Object;JI)V

    .line 33
    invoke-direct {p0, p1, p3}, Landroidx/datastore/preferences/protobuf/u0;->e0(Ljava/lang/Object;I)V

    goto/16 :goto_173

    .line 34
    :pswitch_c2
    invoke-direct {p0, p2, p3}, Landroidx/datastore/preferences/protobuf/u0;->y(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_173

    .line 35
    invoke-static {p2, v1, v2}, Landroidx/datastore/preferences/protobuf/r1;->A(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, v1, v2, p2}, Landroidx/datastore/preferences/protobuf/r1;->O(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 36
    invoke-direct {p0, p1, p3}, Landroidx/datastore/preferences/protobuf/u0;->e0(Ljava/lang/Object;I)V

    goto/16 :goto_173

    .line 37
    :pswitch_d4
    invoke-direct {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/u0;->K(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_173

    .line 38
    :pswitch_d9
    invoke-direct {p0, p2, p3}, Landroidx/datastore/preferences/protobuf/u0;->y(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_173

    .line 39
    invoke-static {p2, v1, v2}, Landroidx/datastore/preferences/protobuf/r1;->A(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, v1, v2, p2}, Landroidx/datastore/preferences/protobuf/r1;->O(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 40
    invoke-direct {p0, p1, p3}, Landroidx/datastore/preferences/protobuf/u0;->e0(Ljava/lang/Object;I)V

    goto/16 :goto_173

    .line 41
    :pswitch_eb
    invoke-direct {p0, p2, p3}, Landroidx/datastore/preferences/protobuf/u0;->y(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_173

    .line 42
    invoke-static {p2, v1, v2}, Landroidx/datastore/preferences/protobuf/r1;->p(Ljava/lang/Object;J)Z

    move-result p2

    invoke-static {p1, v1, v2, p2}, Landroidx/datastore/preferences/protobuf/r1;->E(Ljava/lang/Object;JZ)V

    .line 43
    invoke-direct {p0, p1, p3}, Landroidx/datastore/preferences/protobuf/u0;->e0(Ljava/lang/Object;I)V

    goto/16 :goto_173

    .line 44
    :pswitch_fd
    invoke-direct {p0, p2, p3}, Landroidx/datastore/preferences/protobuf/u0;->y(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_173

    .line 45
    invoke-static {p2, v1, v2}, Landroidx/datastore/preferences/protobuf/r1;->x(Ljava/lang/Object;J)I

    move-result p2

    invoke-static {p1, v1, v2, p2}, Landroidx/datastore/preferences/protobuf/r1;->M(Ljava/lang/Object;JI)V

    .line 46
    invoke-direct {p0, p1, p3}, Landroidx/datastore/preferences/protobuf/u0;->e0(Ljava/lang/Object;I)V

    goto :goto_173

    .line 47
    :pswitch_10e
    invoke-direct {p0, p2, p3}, Landroidx/datastore/preferences/protobuf/u0;->y(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_173

    .line 48
    invoke-static {p2, v1, v2}, Landroidx/datastore/preferences/protobuf/r1;->y(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {p1, v1, v2, v3, v4}, Landroidx/datastore/preferences/protobuf/r1;->N(Ljava/lang/Object;JJ)V

    .line 49
    invoke-direct {p0, p1, p3}, Landroidx/datastore/preferences/protobuf/u0;->e0(Ljava/lang/Object;I)V

    goto :goto_173

    .line 50
    :pswitch_11f
    invoke-direct {p0, p2, p3}, Landroidx/datastore/preferences/protobuf/u0;->y(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_173

    .line 51
    invoke-static {p2, v1, v2}, Landroidx/datastore/preferences/protobuf/r1;->x(Ljava/lang/Object;J)I

    move-result p2

    invoke-static {p1, v1, v2, p2}, Landroidx/datastore/preferences/protobuf/r1;->M(Ljava/lang/Object;JI)V

    .line 52
    invoke-direct {p0, p1, p3}, Landroidx/datastore/preferences/protobuf/u0;->e0(Ljava/lang/Object;I)V

    goto :goto_173

    .line 53
    :pswitch_130
    invoke-direct {p0, p2, p3}, Landroidx/datastore/preferences/protobuf/u0;->y(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_173

    .line 54
    invoke-static {p2, v1, v2}, Landroidx/datastore/preferences/protobuf/r1;->y(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {p1, v1, v2, v3, v4}, Landroidx/datastore/preferences/protobuf/r1;->N(Ljava/lang/Object;JJ)V

    .line 55
    invoke-direct {p0, p1, p3}, Landroidx/datastore/preferences/protobuf/u0;->e0(Ljava/lang/Object;I)V

    goto :goto_173

    .line 56
    :pswitch_141
    invoke-direct {p0, p2, p3}, Landroidx/datastore/preferences/protobuf/u0;->y(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_173

    .line 57
    invoke-static {p2, v1, v2}, Landroidx/datastore/preferences/protobuf/r1;->y(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {p1, v1, v2, v3, v4}, Landroidx/datastore/preferences/protobuf/r1;->N(Ljava/lang/Object;JJ)V

    .line 58
    invoke-direct {p0, p1, p3}, Landroidx/datastore/preferences/protobuf/u0;->e0(Ljava/lang/Object;I)V

    goto :goto_173

    .line 59
    :pswitch_152
    invoke-direct {p0, p2, p3}, Landroidx/datastore/preferences/protobuf/u0;->y(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_173

    .line 60
    invoke-static {p2, v1, v2}, Landroidx/datastore/preferences/protobuf/r1;->w(Ljava/lang/Object;J)F

    move-result p2

    invoke-static {p1, v1, v2, p2}, Landroidx/datastore/preferences/protobuf/r1;->L(Ljava/lang/Object;JF)V

    .line 61
    invoke-direct {p0, p1, p3}, Landroidx/datastore/preferences/protobuf/u0;->e0(Ljava/lang/Object;I)V

    goto :goto_173

    .line 62
    :pswitch_163
    invoke-direct {p0, p2, p3}, Landroidx/datastore/preferences/protobuf/u0;->y(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_173

    .line 63
    invoke-static {p2, v1, v2}, Landroidx/datastore/preferences/protobuf/r1;->v(Ljava/lang/Object;J)D

    move-result-wide v3

    invoke-static {p1, v1, v2, v3, v4}, Landroidx/datastore/preferences/protobuf/r1;->K(Ljava/lang/Object;JD)V

    .line 64
    invoke-direct {p0, p1, p3}, Landroidx/datastore/preferences/protobuf/u0;->e0(Ljava/lang/Object;I)V

    :cond_173
    :goto_173
    return-void

    :pswitch_data_174
    .packed-switch 0x0
        :pswitch_163
        :pswitch_152
        :pswitch_141
        :pswitch_130
        :pswitch_11f
        :pswitch_10e
        :pswitch_fd
        :pswitch_eb
        :pswitch_d9
        :pswitch_d4
        :pswitch_c2
        :pswitch_b0
        :pswitch_9e
        :pswitch_8c
        :pswitch_7a
        :pswitch_68
        :pswitch_56
        :pswitch_51
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_43
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_2c
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_15
    .end packed-switch
.end method

.method static N(Ljava/lang/Class;Landroidx/datastore/preferences/protobuf/p0;Landroidx/datastore/preferences/protobuf/w0;Landroidx/datastore/preferences/protobuf/h0;Landroidx/datastore/preferences/protobuf/n1;Landroidx/datastore/preferences/protobuf/q;Landroidx/datastore/preferences/protobuf/m0;)Landroidx/datastore/preferences/protobuf/u0;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Landroidx/datastore/preferences/protobuf/p0;",
            "Landroidx/datastore/preferences/protobuf/w0;",
            "Landroidx/datastore/preferences/protobuf/h0;",
            "Landroidx/datastore/preferences/protobuf/n1<",
            "**>;",
            "Landroidx/datastore/preferences/protobuf/q<",
            "*>;",
            "Landroidx/datastore/preferences/protobuf/m0;",
            ")",
            "Landroidx/datastore/preferences/protobuf/u0<",
            "TT;>;"
        }
    .end annotation

    .line 1
    instance-of p0, p1, Landroidx/datastore/preferences/protobuf/e1;

    if-eqz p0, :cond_11

    .line 2
    move-object v0, p1

    check-cast v0, Landroidx/datastore/preferences/protobuf/e1;

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-static/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/u0;->P(Landroidx/datastore/preferences/protobuf/e1;Landroidx/datastore/preferences/protobuf/w0;Landroidx/datastore/preferences/protobuf/h0;Landroidx/datastore/preferences/protobuf/n1;Landroidx/datastore/preferences/protobuf/q;Landroidx/datastore/preferences/protobuf/m0;)Landroidx/datastore/preferences/protobuf/u0;

    move-result-object p0

    return-object p0

    .line 3
    :cond_11
    move-object v0, p1

    check-cast v0, Landroidx/datastore/preferences/protobuf/k1;

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-static/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/u0;->O(Landroidx/datastore/preferences/protobuf/k1;Landroidx/datastore/preferences/protobuf/w0;Landroidx/datastore/preferences/protobuf/h0;Landroidx/datastore/preferences/protobuf/n1;Landroidx/datastore/preferences/protobuf/q;Landroidx/datastore/preferences/protobuf/m0;)Landroidx/datastore/preferences/protobuf/u0;

    move-result-object p0

    return-object p0
.end method

.method static O(Landroidx/datastore/preferences/protobuf/k1;Landroidx/datastore/preferences/protobuf/w0;Landroidx/datastore/preferences/protobuf/h0;Landroidx/datastore/preferences/protobuf/n1;Landroidx/datastore/preferences/protobuf/q;Landroidx/datastore/preferences/protobuf/m0;)Landroidx/datastore/preferences/protobuf/u0;
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/datastore/preferences/protobuf/k1;",
            "Landroidx/datastore/preferences/protobuf/w0;",
            "Landroidx/datastore/preferences/protobuf/h0;",
            "Landroidx/datastore/preferences/protobuf/n1<",
            "**>;",
            "Landroidx/datastore/preferences/protobuf/q<",
            "*>;",
            "Landroidx/datastore/preferences/protobuf/m0;",
            ")",
            "Landroidx/datastore/preferences/protobuf/u0<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual/range {p0 .. p0}, Landroidx/datastore/preferences/protobuf/k1;->c()Landroidx/datastore/preferences/protobuf/b1;

    move-result-object v0

    sget-object v1, Landroidx/datastore/preferences/protobuf/b1;->p:Landroidx/datastore/preferences/protobuf/b1;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    const/4 v9, 0x1

    goto :goto_d

    :cond_c
    const/4 v9, 0x0

    .line 2
    :goto_d
    invoke-virtual/range {p0 .. p0}, Landroidx/datastore/preferences/protobuf/k1;->e()[Landroidx/datastore/preferences/protobuf/t;

    move-result-object v0

    .line 3
    array-length v1, v0

    const/4 v3, 0x0

    if-nez v1, :cond_6a

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 4
    array-length v1, v0

    mul-int/lit8 v4, v1, 0x3

    .line 5
    new-array v4, v4, [I

    mul-int/lit8 v1, v1, 0x2

    .line 6
    new-array v5, v1, [Ljava/lang/Object;

    .line 7
    array-length v1, v0

    if-gtz v1, :cond_67

    .line 8
    invoke-virtual/range {p0 .. p0}, Landroidx/datastore/preferences/protobuf/k1;->d()[I

    move-result-object v1

    if-nez v1, :cond_2b

    .line 9
    sget-object v1, Landroidx/datastore/preferences/protobuf/u0;->r:[I

    .line 10
    :cond_2b
    array-length v8, v0

    if-gtz v8, :cond_64

    .line 11
    sget-object v0, Landroidx/datastore/preferences/protobuf/u0;->r:[I

    .line 12
    sget-object v3, Landroidx/datastore/preferences/protobuf/u0;->r:[I

    .line 13
    array-length v8, v1

    array-length v10, v0

    add-int/2addr v8, v10

    array-length v10, v3

    add-int/2addr v8, v10

    new-array v11, v8, [I

    .line 14
    array-length v8, v1

    invoke-static {v1, v2, v11, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 15
    array-length v8, v1

    array-length v10, v0

    invoke-static {v0, v2, v11, v8, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 16
    array-length v8, v1

    array-length v10, v0

    add-int/2addr v8, v10

    array-length v10, v3

    invoke-static {v3, v2, v11, v8, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 17
    new-instance v2, Landroidx/datastore/preferences/protobuf/u0;

    .line 18
    invoke-virtual/range {p0 .. p0}, Landroidx/datastore/preferences/protobuf/k1;->b()Landroidx/datastore/preferences/protobuf/r0;

    move-result-object v8

    const/4 v10, 0x1

    array-length v12, v1

    array-length v1, v1

    array-length v0, v0

    add-int v13, v1, v0

    move-object v3, v2

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    move-object/from16 v16, p3

    move-object/from16 v17, p4

    move-object/from16 v18, p5

    invoke-direct/range {v3 .. v18}, Landroidx/datastore/preferences/protobuf/u0;-><init>([I[Ljava/lang/Object;IILandroidx/datastore/preferences/protobuf/r0;ZZ[IIILandroidx/datastore/preferences/protobuf/w0;Landroidx/datastore/preferences/protobuf/h0;Landroidx/datastore/preferences/protobuf/n1;Landroidx/datastore/preferences/protobuf/q;Landroidx/datastore/preferences/protobuf/m0;)V

    return-object v2

    .line 19
    :cond_64
    aget-object v0, v0, v2

    .line 20
    throw v3

    .line 21
    :cond_67
    aget-object v0, v0, v2

    .line 22
    throw v3

    .line 23
    :cond_6a
    aget-object v0, v0, v2

    throw v3
.end method

.method static P(Landroidx/datastore/preferences/protobuf/e1;Landroidx/datastore/preferences/protobuf/w0;Landroidx/datastore/preferences/protobuf/h0;Landroidx/datastore/preferences/protobuf/n1;Landroidx/datastore/preferences/protobuf/q;Landroidx/datastore/preferences/protobuf/m0;)Landroidx/datastore/preferences/protobuf/u0;
    .registers 42
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/datastore/preferences/protobuf/e1;",
            "Landroidx/datastore/preferences/protobuf/w0;",
            "Landroidx/datastore/preferences/protobuf/h0;",
            "Landroidx/datastore/preferences/protobuf/n1<",
            "**>;",
            "Landroidx/datastore/preferences/protobuf/q<",
            "*>;",
            "Landroidx/datastore/preferences/protobuf/m0;",
            ")",
            "Landroidx/datastore/preferences/protobuf/u0<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual/range {p0 .. p0}, Landroidx/datastore/preferences/protobuf/e1;->c()Landroidx/datastore/preferences/protobuf/b1;

    move-result-object v0

    sget-object v1, Landroidx/datastore/preferences/protobuf/b1;->p:Landroidx/datastore/preferences/protobuf/b1;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_b

    const/4 v10, 0x1

    goto :goto_c

    :cond_b
    const/4 v10, 0x0

    .line 2
    :goto_c
    invoke-virtual/range {p0 .. p0}, Landroidx/datastore/preferences/protobuf/e1;->e()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const v6, 0xd800

    if-lt v4, v6, :cond_35

    and-int/lit16 v4, v4, 0x1fff

    const/4 v7, 0x1

    const/16 v8, 0xd

    :goto_22
    add-int/lit8 v9, v7, 0x1

    .line 5
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_32

    and-int/lit16 v7, v7, 0x1fff

    shl-int/2addr v7, v8

    or-int/2addr v4, v7

    add-int/lit8 v8, v8, 0xd

    move v7, v9

    goto :goto_22

    :cond_32
    shl-int/2addr v7, v8

    or-int/2addr v4, v7

    goto :goto_36

    :cond_35
    const/4 v9, 0x1

    :goto_36
    add-int/lit8 v7, v9, 0x1

    .line 6
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v6, :cond_55

    and-int/lit16 v8, v8, 0x1fff

    const/16 v9, 0xd

    :goto_42
    add-int/lit8 v11, v7, 0x1

    .line 7
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_52

    and-int/lit16 v7, v7, 0x1fff

    shl-int/2addr v7, v9

    or-int/2addr v8, v7

    add-int/lit8 v9, v9, 0xd

    move v7, v11

    goto :goto_42

    :cond_52
    shl-int/2addr v7, v9

    or-int/2addr v8, v7

    move v7, v11

    :cond_55
    if-nez v8, :cond_62

    .line 8
    sget-object v8, Landroidx/datastore/preferences/protobuf/u0;->r:[I

    move-object v13, v8

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    goto/16 :goto_177

    :cond_62
    add-int/lit8 v8, v7, 0x1

    .line 9
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_81

    and-int/lit16 v7, v7, 0x1fff

    const/16 v9, 0xd

    :goto_6e
    add-int/lit8 v11, v8, 0x1

    .line 10
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v6, :cond_7e

    and-int/lit16 v8, v8, 0x1fff

    shl-int/2addr v8, v9

    or-int/2addr v7, v8

    add-int/lit8 v9, v9, 0xd

    move v8, v11

    goto :goto_6e

    :cond_7e
    shl-int/2addr v8, v9

    or-int/2addr v7, v8

    move v8, v11

    :cond_81
    add-int/lit8 v9, v8, 0x1

    .line 11
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v6, :cond_a0

    and-int/lit16 v8, v8, 0x1fff

    const/16 v11, 0xd

    :goto_8d
    add-int/lit8 v12, v9, 0x1

    .line 12
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v6, :cond_9d

    and-int/lit16 v9, v9, 0x1fff

    shl-int/2addr v9, v11

    or-int/2addr v8, v9

    add-int/lit8 v11, v11, 0xd

    move v9, v12

    goto :goto_8d

    :cond_9d
    shl-int/2addr v9, v11

    or-int/2addr v8, v9

    move v9, v12

    :cond_a0
    add-int/lit8 v11, v9, 0x1

    .line 13
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v6, :cond_bf

    and-int/lit16 v9, v9, 0x1fff

    const/16 v12, 0xd

    :goto_ac
    add-int/lit8 v13, v11, 0x1

    .line 14
    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v6, :cond_bc

    and-int/lit16 v11, v11, 0x1fff

    shl-int/2addr v11, v12

    or-int/2addr v9, v11

    add-int/lit8 v12, v12, 0xd

    move v11, v13

    goto :goto_ac

    :cond_bc
    shl-int/2addr v11, v12

    or-int/2addr v9, v11

    move v11, v13

    :cond_bf
    add-int/lit8 v12, v11, 0x1

    .line 15
    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v6, :cond_de

    and-int/lit16 v11, v11, 0x1fff

    const/16 v13, 0xd

    :goto_cb
    add-int/lit8 v14, v12, 0x1

    .line 16
    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v6, :cond_db

    and-int/lit16 v12, v12, 0x1fff

    shl-int/2addr v12, v13

    or-int/2addr v11, v12

    add-int/lit8 v13, v13, 0xd

    move v12, v14

    goto :goto_cb

    :cond_db
    shl-int/2addr v12, v13

    or-int/2addr v11, v12

    move v12, v14

    :cond_de
    add-int/lit8 v13, v12, 0x1

    .line 17
    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v6, :cond_fd

    and-int/lit16 v12, v12, 0x1fff

    const/16 v14, 0xd

    :goto_ea
    add-int/lit8 v15, v13, 0x1

    .line 18
    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v6, :cond_fa

    and-int/lit16 v13, v13, 0x1fff

    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    add-int/lit8 v14, v14, 0xd

    move v13, v15

    goto :goto_ea

    :cond_fa
    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    move v13, v15

    :cond_fd
    add-int/lit8 v14, v13, 0x1

    .line 19
    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v6, :cond_11e

    and-int/lit16 v13, v13, 0x1fff

    const/16 v15, 0xd

    :goto_109
    add-int/lit8 v16, v14, 0x1

    .line 20
    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v6, :cond_11a

    and-int/lit16 v14, v14, 0x1fff

    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    add-int/lit8 v15, v15, 0xd

    move/from16 v14, v16

    goto :goto_109

    :cond_11a
    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    move/from16 v14, v16

    :cond_11e
    add-int/lit8 v15, v14, 0x1

    .line 21
    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v6, :cond_141

    and-int/lit16 v14, v14, 0x1fff

    const/16 v16, 0xd

    :goto_12a
    add-int/lit8 v17, v15, 0x1

    .line 22
    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v6, :cond_13c

    and-int/lit16 v15, v15, 0x1fff

    shl-int v15, v15, v16

    or-int/2addr v14, v15

    add-int/lit8 v16, v16, 0xd

    move/from16 v15, v17

    goto :goto_12a

    :cond_13c
    shl-int v15, v15, v16

    or-int/2addr v14, v15

    move/from16 v15, v17

    :cond_141
    add-int/lit8 v16, v15, 0x1

    .line 23
    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v6, :cond_166

    and-int/lit16 v15, v15, 0x1fff

    move/from16 v2, v16

    const/16 v16, 0xd

    :goto_14f
    add-int/lit8 v18, v2, 0x1

    .line 24
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-lt v2, v6, :cond_161

    and-int/lit16 v2, v2, 0x1fff

    shl-int v2, v2, v16

    or-int/2addr v15, v2

    add-int/lit8 v16, v16, 0xd

    move/from16 v2, v18

    goto :goto_14f

    :cond_161
    shl-int v2, v2, v16

    or-int/2addr v15, v2

    move/from16 v16, v18

    :cond_166
    add-int v2, v15, v13

    add-int/2addr v2, v14

    .line 25
    new-array v2, v2, [I

    mul-int/lit8 v14, v7, 0x2

    add-int/2addr v14, v8

    move v8, v7

    move/from16 v7, v16

    move/from16 v35, v13

    move-object v13, v2

    move v2, v9

    move/from16 v9, v35

    .line 26
    :goto_177
    sget-object v5, Landroidx/datastore/preferences/protobuf/u0;->s:Lsun/misc/Unsafe;

    .line 27
    invoke-virtual/range {p0 .. p0}, Landroidx/datastore/preferences/protobuf/e1;->d()[Ljava/lang/Object;

    move-result-object v18

    .line 28
    invoke-virtual/range {p0 .. p0}, Landroidx/datastore/preferences/protobuf/e1;->b()Landroidx/datastore/preferences/protobuf/r0;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    mul-int/lit8 v6, v12, 0x3

    .line 29
    new-array v6, v6, [I

    mul-int/lit8 v12, v12, 0x2

    .line 30
    new-array v12, v12, [Ljava/lang/Object;

    add-int v21, v15, v9

    move/from16 v23, v15

    move/from16 v24, v21

    const/4 v9, 0x0

    const/16 v22, 0x0

    :goto_196
    if-ge v7, v1, :cond_3e6

    add-int/lit8 v25, v7, 0x1

    .line 31
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    move/from16 v26, v1

    const v1, 0xd800

    if-lt v7, v1, :cond_1ca

    and-int/lit16 v7, v7, 0x1fff

    move/from16 v1, v25

    const/16 v25, 0xd

    :goto_1ab
    add-int/lit8 v27, v1, 0x1

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    move/from16 v28, v15

    const v15, 0xd800

    if-lt v1, v15, :cond_1c4

    and-int/lit16 v1, v1, 0x1fff

    shl-int v1, v1, v25

    or-int/2addr v7, v1

    add-int/lit8 v25, v25, 0xd

    move/from16 v1, v27

    move/from16 v15, v28

    goto :goto_1ab

    :cond_1c4
    shl-int v1, v1, v25

    or-int/2addr v7, v1

    move/from16 v1, v27

    goto :goto_1ce

    :cond_1ca
    move/from16 v28, v15

    move/from16 v1, v25

    :goto_1ce
    add-int/lit8 v15, v1, 0x1

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    move/from16 v25, v15

    const v15, 0xd800

    if-lt v1, v15, :cond_200

    and-int/lit16 v1, v1, 0x1fff

    move/from16 v15, v25

    const/16 v25, 0xd

    :goto_1e1
    add-int/lit8 v27, v15, 0x1

    .line 34
    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    move/from16 v29, v10

    const v10, 0xd800

    if-lt v15, v10, :cond_1fa

    and-int/lit16 v10, v15, 0x1fff

    shl-int v10, v10, v25

    or-int/2addr v1, v10

    add-int/lit8 v25, v25, 0xd

    move/from16 v15, v27

    move/from16 v10, v29

    goto :goto_1e1

    :cond_1fa
    shl-int v10, v15, v25

    or-int/2addr v1, v10

    move/from16 v15, v27

    goto :goto_204

    :cond_200
    move/from16 v29, v10

    move/from16 v15, v25

    :goto_204
    and-int/lit16 v10, v1, 0xff

    move/from16 v25, v11

    and-int/lit16 v11, v1, 0x400

    if-eqz v11, :cond_211

    add-int/lit8 v11, v9, 0x1

    .line 35
    aput v22, v13, v9

    move v9, v11

    :cond_211
    const/16 v11, 0x33

    move/from16 v31, v9

    if-lt v10, v11, :cond_2b1

    add-int/lit8 v11, v15, 0x1

    .line 36
    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const v9, 0xd800

    if-lt v15, v9, :cond_240

    and-int/lit16 v15, v15, 0x1fff

    const/16 v33, 0xd

    :goto_226
    add-int/lit8 v34, v11, 0x1

    .line 37
    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v9, :cond_23b

    and-int/lit16 v9, v11, 0x1fff

    shl-int v9, v9, v33

    or-int/2addr v15, v9

    add-int/lit8 v33, v33, 0xd

    move/from16 v11, v34

    const v9, 0xd800

    goto :goto_226

    :cond_23b
    shl-int v9, v11, v33

    or-int/2addr v15, v9

    move/from16 v11, v34

    :cond_240
    add-int/lit8 v9, v10, -0x33

    move/from16 v33, v11

    const/16 v11, 0x9

    if-eq v9, v11, :cond_262

    const/16 v11, 0x11

    if-ne v9, v11, :cond_24d

    goto :goto_262

    :cond_24d
    const/16 v11, 0xc

    if-ne v9, v11, :cond_26f

    and-int/lit8 v9, v4, 0x1

    const/4 v11, 0x1

    if-ne v9, v11, :cond_26f

    .line 38
    div-int/lit8 v9, v22, 0x3

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v9, v11

    add-int/lit8 v11, v14, 0x1

    aget-object v14, v18, v14

    aput-object v14, v12, v9

    goto :goto_26e

    .line 39
    :cond_262
    :goto_262
    div-int/lit8 v9, v22, 0x3

    mul-int/lit8 v9, v9, 0x2

    const/4 v11, 0x1

    add-int/2addr v9, v11

    add-int/lit8 v11, v14, 0x1

    aget-object v14, v18, v14

    aput-object v14, v12, v9

    :goto_26e
    move v14, v11

    :cond_26f
    mul-int/lit8 v15, v15, 0x2

    .line 40
    aget-object v9, v18, v15

    .line 41
    instance-of v11, v9, Ljava/lang/reflect/Field;

    if-eqz v11, :cond_27a

    .line 42
    check-cast v9, Ljava/lang/reflect/Field;

    goto :goto_282

    .line 43
    :cond_27a
    check-cast v9, Ljava/lang/String;

    invoke-static {v3, v9}, Landroidx/datastore/preferences/protobuf/u0;->d0(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    .line 44
    aput-object v9, v18, v15

    :goto_282
    move-object v11, v6

    move/from16 v34, v7

    .line 45
    invoke-virtual {v5, v9}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v6

    long-to-int v7, v6

    add-int/lit8 v15, v15, 0x1

    .line 46
    aget-object v6, v18, v15

    .line 47
    instance-of v9, v6, Ljava/lang/reflect/Field;

    if-eqz v9, :cond_295

    .line 48
    check-cast v6, Ljava/lang/reflect/Field;

    goto :goto_29d

    .line 49
    :cond_295
    check-cast v6, Ljava/lang/String;

    invoke-static {v3, v6}, Landroidx/datastore/preferences/protobuf/u0;->d0(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 50
    aput-object v6, v18, v15

    :goto_29d
    move v9, v7

    .line 51
    invoke-virtual {v5, v6}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v6

    long-to-int v7, v6

    move-object/from16 v32, v0

    move-object/from16 v19, v3

    move v0, v4

    move v4, v7

    move v7, v9

    move v9, v10

    move v6, v14

    move/from16 v14, v33

    const/4 v15, 0x0

    goto/16 :goto_3a9

    :cond_2b1
    move-object v11, v6

    move/from16 v34, v7

    add-int/lit8 v6, v14, 0x1

    .line 52
    aget-object v7, v18, v14

    check-cast v7, Ljava/lang/String;

    invoke-static {v3, v7}, Landroidx/datastore/preferences/protobuf/u0;->d0(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    const/16 v9, 0x31

    const/16 v14, 0x9

    if-eq v10, v14, :cond_326

    const/16 v14, 0x11

    if-ne v10, v14, :cond_2c9

    goto :goto_326

    :cond_2c9
    const/16 v14, 0x1b

    if-eq v10, v14, :cond_316

    if-ne v10, v9, :cond_2d0

    goto :goto_316

    :cond_2d0
    const/16 v14, 0xc

    if-eq v10, v14, :cond_305

    const/16 v14, 0x1e

    if-eq v10, v14, :cond_305

    const/16 v14, 0x2c

    if-ne v10, v14, :cond_2dd

    goto :goto_305

    :cond_2dd
    const/16 v14, 0x32

    if-ne v10, v14, :cond_303

    add-int/lit8 v14, v23, 0x1

    .line 53
    aput v22, v13, v23

    .line 54
    div-int/lit8 v23, v22, 0x3

    mul-int/lit8 v23, v23, 0x2

    add-int/lit8 v27, v6, 0x1

    aget-object v6, v18, v6

    aput-object v6, v12, v23

    and-int/lit16 v6, v1, 0x800

    if-eqz v6, :cond_2fe

    add-int/lit8 v23, v23, 0x1

    add-int/lit8 v6, v27, 0x1

    .line 55
    aget-object v27, v18, v27

    aput-object v27, v12, v23

    move/from16 v23, v14

    goto :goto_332

    :cond_2fe
    move/from16 v23, v14

    move/from16 v6, v27

    goto :goto_332

    :cond_303
    const/4 v9, 0x1

    goto :goto_332

    :cond_305
    :goto_305
    and-int/lit8 v14, v4, 0x1

    const/4 v9, 0x1

    if-ne v14, v9, :cond_332

    .line 56
    div-int/lit8 v14, v22, 0x3

    mul-int/lit8 v14, v14, 0x2

    add-int/2addr v14, v9

    add-int/lit8 v20, v6, 0x1

    aget-object v6, v18, v6

    aput-object v6, v12, v14

    goto :goto_322

    :cond_316
    :goto_316
    const/4 v9, 0x1

    .line 57
    div-int/lit8 v14, v22, 0x3

    mul-int/lit8 v14, v14, 0x2

    add-int/2addr v14, v9

    add-int/lit8 v20, v6, 0x1

    aget-object v6, v18, v6

    aput-object v6, v12, v14

    :goto_322
    move v14, v10

    move/from16 v6, v20

    goto :goto_333

    :cond_326
    :goto_326
    const/4 v9, 0x1

    .line 58
    div-int/lit8 v14, v22, 0x3

    mul-int/lit8 v14, v14, 0x2

    add-int/2addr v14, v9

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v20

    aput-object v20, v12, v14

    :cond_332
    :goto_332
    move v14, v10

    .line 59
    :goto_333
    invoke-virtual {v5, v7}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v9

    long-to-int v7, v9

    and-int/lit8 v9, v4, 0x1

    const/4 v10, 0x1

    if-ne v9, v10, :cond_392

    move v9, v14

    const/16 v14, 0x11

    if-gt v9, v14, :cond_38c

    add-int/lit8 v14, v15, 0x1

    .line 60
    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const v10, 0xd800

    if-lt v15, v10, :cond_368

    and-int/lit16 v15, v15, 0x1fff

    const/16 v19, 0xd

    :goto_351
    add-int/lit8 v30, v14, 0x1

    .line 61
    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v10, :cond_363

    and-int/lit16 v14, v14, 0x1fff

    shl-int v14, v14, v19

    or-int/2addr v15, v14

    add-int/lit8 v19, v19, 0xd

    move/from16 v14, v30

    goto :goto_351

    :cond_363
    shl-int v14, v14, v19

    or-int/2addr v15, v14

    move/from16 v14, v30

    :cond_368
    mul-int/lit8 v19, v8, 0x2

    .line 62
    div-int/lit8 v30, v15, 0x20

    add-int v19, v19, v30

    .line 63
    aget-object v10, v18, v19

    move-object/from16 v32, v0

    .line 64
    instance-of v0, v10, Ljava/lang/reflect/Field;

    if-eqz v0, :cond_379

    .line 65
    check-cast v10, Ljava/lang/reflect/Field;

    goto :goto_381

    .line 66
    :cond_379
    check-cast v10, Ljava/lang/String;

    invoke-static {v3, v10}, Landroidx/datastore/preferences/protobuf/u0;->d0(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v10

    .line 67
    aput-object v10, v18, v19

    :goto_381
    move-object/from16 v19, v3

    move v0, v4

    .line 68
    invoke-virtual {v5, v10}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v3

    long-to-int v4, v3

    .line 69
    rem-int/lit8 v15, v15, 0x20

    goto :goto_39b

    :cond_38c
    move-object/from16 v32, v0

    move-object/from16 v19, v3

    move v0, v4

    goto :goto_398

    :cond_392
    move-object/from16 v32, v0

    move-object/from16 v19, v3

    move v0, v4

    move v9, v14

    :goto_398
    move v14, v15

    const/4 v4, 0x0

    const/4 v15, 0x0

    :goto_39b
    const/16 v3, 0x12

    if-lt v9, v3, :cond_3a9

    const/16 v3, 0x31

    if-gt v9, v3, :cond_3a9

    add-int/lit8 v3, v24, 0x1

    .line 70
    aput v7, v13, v24

    move/from16 v24, v3

    :cond_3a9
    :goto_3a9
    add-int/lit8 v3, v22, 0x1

    .line 71
    aput v34, v11, v22

    add-int/lit8 v10, v3, 0x1

    move/from16 v22, v0

    and-int/lit16 v0, v1, 0x200

    if-eqz v0, :cond_3b8

    const/high16 v0, 0x20000000

    goto :goto_3b9

    :cond_3b8
    const/4 v0, 0x0

    :goto_3b9
    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_3c0

    const/high16 v1, 0x10000000

    goto :goto_3c1

    :cond_3c0
    const/4 v1, 0x0

    :goto_3c1
    or-int/2addr v0, v1

    shl-int/lit8 v1, v9, 0x14

    or-int/2addr v0, v1

    or-int/2addr v0, v7

    .line 72
    aput v0, v11, v3

    add-int/lit8 v0, v10, 0x1

    shl-int/lit8 v1, v15, 0x14

    or-int/2addr v1, v4

    .line 73
    aput v1, v11, v10

    move v7, v14

    move-object/from16 v3, v19

    move/from16 v4, v22

    move/from16 v1, v26

    move/from16 v15, v28

    move/from16 v10, v29

    move/from16 v9, v31

    move/from16 v22, v0

    move v14, v6

    move-object v6, v11

    move/from16 v11, v25

    move-object/from16 v0, v32

    goto/16 :goto_196

    :cond_3e6
    move/from16 v29, v10

    move/from16 v25, v11

    move/from16 v28, v15

    move-object v11, v6

    .line 74
    new-instance v0, Landroidx/datastore/preferences/protobuf/u0;

    .line 75
    invoke-virtual/range {p0 .. p0}, Landroidx/datastore/preferences/protobuf/e1;->b()Landroidx/datastore/preferences/protobuf/r0;

    move-result-object v9

    const/4 v1, 0x0

    move-object v4, v0

    move-object v5, v11

    move-object v6, v12

    move v7, v2

    move/from16 v8, v25

    move v11, v1

    move-object v12, v13

    move/from16 v13, v28

    move/from16 v14, v21

    move-object/from16 v15, p1

    move-object/from16 v16, p2

    move-object/from16 v17, p3

    move-object/from16 v18, p4

    move-object/from16 v19, p5

    invoke-direct/range {v4 .. v19}, Landroidx/datastore/preferences/protobuf/u0;-><init>([I[Ljava/lang/Object;IILandroidx/datastore/preferences/protobuf/r0;ZZ[IIILandroidx/datastore/preferences/protobuf/w0;Landroidx/datastore/preferences/protobuf/h0;Landroidx/datastore/preferences/protobuf/n1;Landroidx/datastore/preferences/protobuf/q;Landroidx/datastore/preferences/protobuf/m0;)V

    return-object v0
.end method

.method private Q(I)I
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/u0;->a:[I

    aget p1, v0, p1

    return p1
.end method

.method private static R(I)J
    .registers 3

    const v0, 0xfffff

    and-int/2addr p0, v0

    int-to-long v0, p0

    return-wide v0
.end method

.method private static S(Ljava/lang/Object;J)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)Z"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/r1;->A(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static T(Ljava/lang/Object;J)D
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)D"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/r1;->A(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    return-wide p0
.end method

.method private static U(Ljava/lang/Object;J)F
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)F"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/r1;->A(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method private static V(Ljava/lang/Object;J)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)I"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/r1;->A(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private static W(Ljava/lang/Object;J)J
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)J"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/r1;->A(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method private X(I)I
    .registers 3

    .line 1
    iget v0, p0, Landroidx/datastore/preferences/protobuf/u0;->c:I

    if-lt p1, v0, :cond_e

    iget v0, p0, Landroidx/datastore/preferences/protobuf/u0;->d:I

    if-gt p1, v0, :cond_e

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Landroidx/datastore/preferences/protobuf/u0;->g0(II)I

    move-result p1

    return p1

    :cond_e
    const/4 p1, -0x1

    return p1
.end method

.method private Y(I)I
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/u0;->a:[I

    add-int/lit8 p1, p1, 0x2

    aget p1, v0, p1

    return p1
.end method

.method private Z(Ljava/lang/Object;JLandroidx/datastore/preferences/protobuf/f1;Landroidx/datastore/preferences/protobuf/g1;Landroidx/datastore/preferences/protobuf/p;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "J",
            "Landroidx/datastore/preferences/protobuf/f1;",
            "Landroidx/datastore/preferences/protobuf/g1<",
            "TE;>;",
            "Landroidx/datastore/preferences/protobuf/p;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/u0;->n:Landroidx/datastore/preferences/protobuf/h0;

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/h0;->e(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object p1

    .line 3
    invoke-interface {p4, p1, p5, p6}, Landroidx/datastore/preferences/protobuf/f1;->G(Ljava/util/List;Landroidx/datastore/preferences/protobuf/g1;Landroidx/datastore/preferences/protobuf/p;)V

    return-void
.end method

.method private a0(Ljava/lang/Object;ILandroidx/datastore/preferences/protobuf/f1;Landroidx/datastore/preferences/protobuf/g1;Landroidx/datastore/preferences/protobuf/p;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "I",
            "Landroidx/datastore/preferences/protobuf/f1;",
            "Landroidx/datastore/preferences/protobuf/g1<",
            "TE;>;",
            "Landroidx/datastore/preferences/protobuf/p;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p2}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v0

    .line 2
    iget-object p2, p0, Landroidx/datastore/preferences/protobuf/u0;->n:Landroidx/datastore/preferences/protobuf/h0;

    .line 3
    invoke-virtual {p2, p1, v0, v1}, Landroidx/datastore/preferences/protobuf/h0;->e(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object p1

    .line 4
    invoke-interface {p3, p1, p4, p5}, Landroidx/datastore/preferences/protobuf/f1;->L(Ljava/util/List;Landroidx/datastore/preferences/protobuf/g1;Landroidx/datastore/preferences/protobuf/p;)V

    return-void
.end method

.method private b(Ljava/lang/Object;Ljava/lang/Object;I)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)Z"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p3}, Landroidx/datastore/preferences/protobuf/u0;->y(Ljava/lang/Object;I)Z

    move-result p1

    invoke-direct {p0, p2, p3}, Landroidx/datastore/preferences/protobuf/u0;->y(Ljava/lang/Object;I)Z

    move-result p2

    if-ne p1, p2, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return p1
.end method

.method private b0(Ljava/lang/Object;ILandroidx/datastore/preferences/protobuf/f1;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p2}, Landroidx/datastore/preferences/protobuf/u0;->x(I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2
    invoke-static {p2}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v0

    invoke-interface {p3}, Landroidx/datastore/preferences/protobuf/f1;->N()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, v1, p2}, Landroidx/datastore/preferences/protobuf/r1;->O(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_2d

    .line 3
    :cond_12
    iget-boolean v0, p0, Landroidx/datastore/preferences/protobuf/u0;->g:Z

    if-eqz v0, :cond_22

    .line 4
    invoke-static {p2}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v0

    invoke-interface {p3}, Landroidx/datastore/preferences/protobuf/f1;->z()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, v1, p2}, Landroidx/datastore/preferences/protobuf/r1;->O(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_2d

    .line 5
    :cond_22
    invoke-static {p2}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v0

    invoke-interface {p3}, Landroidx/datastore/preferences/protobuf/f1;->D()Landroidx/datastore/preferences/protobuf/h;

    move-result-object p2

    invoke-static {p1, v0, v1, p2}, Landroidx/datastore/preferences/protobuf/r1;->O(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_2d
    return-void
.end method

.method private c0(Ljava/lang/Object;ILandroidx/datastore/preferences/protobuf/f1;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p2}, Landroidx/datastore/preferences/protobuf/u0;->x(I)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/u0;->n:Landroidx/datastore/preferences/protobuf/h0;

    .line 3
    invoke-static {p2}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Landroidx/datastore/preferences/protobuf/h0;->e(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object p1

    .line 4
    invoke-interface {p3, p1}, Landroidx/datastore/preferences/protobuf/f1;->C(Ljava/util/List;)V

    goto :goto_21

    .line 5
    :cond_14
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/u0;->n:Landroidx/datastore/preferences/protobuf/h0;

    invoke-static {p2}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Landroidx/datastore/preferences/protobuf/h0;->e(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object p1

    invoke-interface {p3, p1}, Landroidx/datastore/preferences/protobuf/f1;->B(Ljava/util/List;)V

    :goto_21
    return-void
.end method

.method private static d0(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    .line 2
    :catch_5
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 3
    array-length v1, v0

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v1, :cond_1d

    aget-object v3, v0, v2

    .line 4
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    return-object v3

    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 5
    :cond_1d
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Field "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not found. Known fields are "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_4d

    :goto_4c
    throw v1

    :goto_4d
    goto :goto_4c
.end method

.method private e0(Ljava/lang/Object;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Landroidx/datastore/preferences/protobuf/u0;->h:Z

    if-eqz v0, :cond_5

    return-void

    .line 2
    :cond_5
    invoke-direct {p0, p2}, Landroidx/datastore/preferences/protobuf/u0;->Y(I)I

    move-result p2

    const/4 v0, 0x1

    ushr-int/lit8 v1, p2, 0x14

    shl-int/2addr v0, v1

    const v1, 0xfffff

    and-int/2addr p2, v1

    int-to-long v1, p2

    .line 3
    invoke-static {p1, v1, v2}, Landroidx/datastore/preferences/protobuf/r1;->x(Ljava/lang/Object;J)I

    move-result p2

    or-int/2addr p2, v0

    .line 4
    invoke-static {p1, v1, v2, p2}, Landroidx/datastore/preferences/protobuf/r1;->M(Ljava/lang/Object;JI)V

    return-void
.end method

.method private f0(Ljava/lang/Object;II)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p3}, Landroidx/datastore/preferences/protobuf/u0;->Y(I)I

    move-result p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    .line 2
    invoke-static {p1, v0, v1, p2}, Landroidx/datastore/preferences/protobuf/r1;->M(Ljava/lang/Object;JI)V

    return-void
.end method

.method private g0(II)I
    .registers 7

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/u0;->a:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, -0x1

    :goto_7
    if-gt p2, v0, :cond_20

    add-int v1, v0, p2

    ushr-int/lit8 v1, v1, 0x1

    mul-int/lit8 v2, v1, 0x3

    .line 2
    invoke-direct {p0, v2}, Landroidx/datastore/preferences/protobuf/u0;->Q(I)I

    move-result v3

    if-ne p1, v3, :cond_16

    return v2

    :cond_16
    if-ge p1, v3, :cond_1c

    add-int/lit8 v1, v1, -0x1

    move v0, v1

    goto :goto_7

    :cond_1c
    add-int/lit8 v1, v1, 0x1

    move p2, v1

    goto :goto_7

    :cond_20
    const/4 p1, -0x1

    return p1
.end method

.method private static h0(I)I
    .registers 2

    const/high16 v0, 0xff00000

    and-int/2addr p0, v0

    ushr-int/lit8 p0, p0, 0x14

    return p0
.end method

.method private i0(I)I
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/u0;->a:[I

    add-int/lit8 p1, p1, 0x1

    aget p1, v0, p1

    return p1
.end method

.method private j0(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/u1;)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroidx/datastore/preferences/protobuf/u1;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    iget-boolean v3, v0, Landroidx/datastore/preferences/protobuf/u0;->f:Z

    if-eqz v3, :cond_21

    .line 2
    iget-object v3, v0, Landroidx/datastore/preferences/protobuf/u0;->p:Landroidx/datastore/preferences/protobuf/q;

    invoke-virtual {v3, v1}, Landroidx/datastore/preferences/protobuf/q;->c(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/u;

    move-result-object v3

    .line 3
    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/u;->n()Z

    move-result v5

    if-nez v5, :cond_21

    .line 4
    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/u;->s()Ljava/util/Iterator;

    move-result-object v3

    .line 5
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    goto :goto_23

    :cond_21
    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_23
    const/4 v6, -0x1

    .line 6
    iget-object v7, v0, Landroidx/datastore/preferences/protobuf/u0;->a:[I

    array-length v7, v7

    .line 7
    sget-object v8, Landroidx/datastore/preferences/protobuf/u0;->s:Lsun/misc/Unsafe;

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_2b
    if-ge v10, v7, :cond_49a

    .line 8
    invoke-direct {v0, v10}, Landroidx/datastore/preferences/protobuf/u0;->i0(I)I

    move-result v12

    .line 9
    invoke-direct {v0, v10}, Landroidx/datastore/preferences/protobuf/u0;->Q(I)I

    move-result v13

    .line 10
    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/u0;->h0(I)I

    move-result v14

    .line 11
    iget-boolean v15, v0, Landroidx/datastore/preferences/protobuf/u0;->h:Z

    if-nez v15, :cond_5e

    const/16 v15, 0x11

    if-gt v14, v15, :cond_5e

    .line 12
    iget-object v15, v0, Landroidx/datastore/preferences/protobuf/u0;->a:[I

    add-int/lit8 v16, v10, 0x2

    aget v15, v15, v16

    const v16, 0xfffff

    and-int v9, v15, v16

    move-object/from16 v16, v5

    if-eq v9, v6, :cond_56

    int-to-long v4, v9

    .line 13
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v11

    move v6, v9

    :cond_56
    ushr-int/lit8 v4, v15, 0x14

    const/4 v5, 0x1

    shl-int v4, v5, v4

    move-object/from16 v5, v16

    goto :goto_63

    :cond_5e
    move-object/from16 v16, v5

    move-object/from16 v5, v16

    const/4 v4, 0x0

    :goto_63
    if-eqz v5, :cond_81

    .line 14
    iget-object v9, v0, Landroidx/datastore/preferences/protobuf/u0;->p:Landroidx/datastore/preferences/protobuf/q;

    invoke-virtual {v9, v5}, Landroidx/datastore/preferences/protobuf/q;->a(Ljava/util/Map$Entry;)I

    move-result v9

    if-gt v9, v13, :cond_81

    .line 15
    iget-object v9, v0, Landroidx/datastore/preferences/protobuf/u0;->p:Landroidx/datastore/preferences/protobuf/q;

    invoke-virtual {v9, v2, v5}, Landroidx/datastore/preferences/protobuf/q;->j(Landroidx/datastore/preferences/protobuf/u1;Ljava/util/Map$Entry;)V

    .line 16
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    goto :goto_63

    :cond_7f
    const/4 v5, 0x0

    goto :goto_63

    :cond_81
    move-object v15, v5

    move v9, v6

    .line 17
    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v5

    packed-switch v14, :pswitch_data_4ba

    :cond_8a
    :goto_8a
    const/4 v12, 0x0

    goto/16 :goto_494

    .line 18
    :pswitch_8d
    invoke-direct {v0, v1, v13, v10}, Landroidx/datastore/preferences/protobuf/u0;->E(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_8a

    .line 19
    invoke-virtual {v8, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v10}, Landroidx/datastore/preferences/protobuf/u0;->s(I)Landroidx/datastore/preferences/protobuf/g1;

    move-result-object v5

    .line 20
    invoke-interface {v2, v13, v4, v5}, Landroidx/datastore/preferences/protobuf/u1;->O(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/g1;)V

    goto :goto_8a

    .line 21
    :pswitch_9f
    invoke-direct {v0, v1, v13, v10}, Landroidx/datastore/preferences/protobuf/u0;->E(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_8a

    .line 22
    invoke-static {v1, v5, v6}, Landroidx/datastore/preferences/protobuf/u0;->W(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-interface {v2, v13, v4, v5}, Landroidx/datastore/preferences/protobuf/u1;->D(IJ)V

    goto :goto_8a

    .line 23
    :pswitch_ad
    invoke-direct {v0, v1, v13, v10}, Landroidx/datastore/preferences/protobuf/u0;->E(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_8a

    .line 24
    invoke-static {v1, v5, v6}, Landroidx/datastore/preferences/protobuf/u0;->V(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v13, v4}, Landroidx/datastore/preferences/protobuf/u1;->M(II)V

    goto :goto_8a

    .line 25
    :pswitch_bb
    invoke-direct {v0, v1, v13, v10}, Landroidx/datastore/preferences/protobuf/u0;->E(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_8a

    .line 26
    invoke-static {v1, v5, v6}, Landroidx/datastore/preferences/protobuf/u0;->W(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-interface {v2, v13, v4, v5}, Landroidx/datastore/preferences/protobuf/u1;->x(IJ)V

    goto :goto_8a

    .line 27
    :pswitch_c9
    invoke-direct {v0, v1, v13, v10}, Landroidx/datastore/preferences/protobuf/u0;->E(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_8a

    .line 28
    invoke-static {v1, v5, v6}, Landroidx/datastore/preferences/protobuf/u0;->V(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v13, v4}, Landroidx/datastore/preferences/protobuf/u1;->r(II)V

    goto :goto_8a

    .line 29
    :pswitch_d7
    invoke-direct {v0, v1, v13, v10}, Landroidx/datastore/preferences/protobuf/u0;->E(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_8a

    .line 30
    invoke-static {v1, v5, v6}, Landroidx/datastore/preferences/protobuf/u0;->V(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v13, v4}, Landroidx/datastore/preferences/protobuf/u1;->H(II)V

    goto :goto_8a

    .line 31
    :pswitch_e5
    invoke-direct {v0, v1, v13, v10}, Landroidx/datastore/preferences/protobuf/u0;->E(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_8a

    .line 32
    invoke-static {v1, v5, v6}, Landroidx/datastore/preferences/protobuf/u0;->V(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v13, v4}, Landroidx/datastore/preferences/protobuf/u1;->b(II)V

    goto :goto_8a

    .line 33
    :pswitch_f3
    invoke-direct {v0, v1, v13, v10}, Landroidx/datastore/preferences/protobuf/u0;->E(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_8a

    .line 34
    invoke-virtual {v8, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/datastore/preferences/protobuf/h;

    invoke-interface {v2, v13, v4}, Landroidx/datastore/preferences/protobuf/u1;->w(ILandroidx/datastore/preferences/protobuf/h;)V

    goto :goto_8a

    .line 35
    :pswitch_103
    invoke-direct {v0, v1, v13, v10}, Landroidx/datastore/preferences/protobuf/u0;->E(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_8a

    .line 36
    invoke-virtual {v8, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 37
    invoke-direct {v0, v10}, Landroidx/datastore/preferences/protobuf/u0;->s(I)Landroidx/datastore/preferences/protobuf/g1;

    move-result-object v5

    invoke-interface {v2, v13, v4, v5}, Landroidx/datastore/preferences/protobuf/u1;->z(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/g1;)V

    goto/16 :goto_8a

    .line 38
    :pswitch_116
    invoke-direct {v0, v1, v13, v10}, Landroidx/datastore/preferences/protobuf/u0;->E(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_8a

    .line 39
    invoke-virtual {v8, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v13, v4, v2}, Landroidx/datastore/preferences/protobuf/u0;->n0(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/u1;)V

    goto/16 :goto_8a

    .line 40
    :pswitch_125
    invoke-direct {v0, v1, v13, v10}, Landroidx/datastore/preferences/protobuf/u0;->E(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_8a

    .line 41
    invoke-static {v1, v5, v6}, Landroidx/datastore/preferences/protobuf/u0;->S(Ljava/lang/Object;J)Z

    move-result v4

    invoke-interface {v2, v13, v4}, Landroidx/datastore/preferences/protobuf/u1;->q(IZ)V

    goto/16 :goto_8a

    .line 42
    :pswitch_134
    invoke-direct {v0, v1, v13, v10}, Landroidx/datastore/preferences/protobuf/u0;->E(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_8a

    .line 43
    invoke-static {v1, v5, v6}, Landroidx/datastore/preferences/protobuf/u0;->V(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v13, v4}, Landroidx/datastore/preferences/protobuf/u1;->d(II)V

    goto/16 :goto_8a

    .line 44
    :pswitch_143
    invoke-direct {v0, v1, v13, v10}, Landroidx/datastore/preferences/protobuf/u0;->E(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_8a

    .line 45
    invoke-static {v1, v5, v6}, Landroidx/datastore/preferences/protobuf/u0;->W(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-interface {v2, v13, v4, v5}, Landroidx/datastore/preferences/protobuf/u1;->h(IJ)V

    goto/16 :goto_8a

    .line 46
    :pswitch_152
    invoke-direct {v0, v1, v13, v10}, Landroidx/datastore/preferences/protobuf/u0;->E(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_8a

    .line 47
    invoke-static {v1, v5, v6}, Landroidx/datastore/preferences/protobuf/u0;->V(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v13, v4}, Landroidx/datastore/preferences/protobuf/u1;->t(II)V

    goto/16 :goto_8a

    .line 48
    :pswitch_161
    invoke-direct {v0, v1, v13, v10}, Landroidx/datastore/preferences/protobuf/u0;->E(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_8a

    .line 49
    invoke-static {v1, v5, v6}, Landroidx/datastore/preferences/protobuf/u0;->W(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-interface {v2, v13, v4, v5}, Landroidx/datastore/preferences/protobuf/u1;->n(IJ)V

    goto/16 :goto_8a

    .line 50
    :pswitch_170
    invoke-direct {v0, v1, v13, v10}, Landroidx/datastore/preferences/protobuf/u0;->E(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_8a

    .line 51
    invoke-static {v1, v5, v6}, Landroidx/datastore/preferences/protobuf/u0;->W(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-interface {v2, v13, v4, v5}, Landroidx/datastore/preferences/protobuf/u1;->p(IJ)V

    goto/16 :goto_8a

    .line 52
    :pswitch_17f
    invoke-direct {v0, v1, v13, v10}, Landroidx/datastore/preferences/protobuf/u0;->E(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_8a

    .line 53
    invoke-static {v1, v5, v6}, Landroidx/datastore/preferences/protobuf/u0;->U(Ljava/lang/Object;J)F

    move-result v4

    invoke-interface {v2, v13, v4}, Landroidx/datastore/preferences/protobuf/u1;->E(IF)V

    goto/16 :goto_8a

    .line 54
    :pswitch_18e
    invoke-direct {v0, v1, v13, v10}, Landroidx/datastore/preferences/protobuf/u0;->E(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_8a

    .line 55
    invoke-static {v1, v5, v6}, Landroidx/datastore/preferences/protobuf/u0;->T(Ljava/lang/Object;J)D

    move-result-wide v4

    invoke-interface {v2, v13, v4, v5}, Landroidx/datastore/preferences/protobuf/u1;->e(ID)V

    goto/16 :goto_8a

    .line 56
    :pswitch_19d
    invoke-virtual {v8, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v2, v13, v4, v10}, Landroidx/datastore/preferences/protobuf/u0;->m0(Landroidx/datastore/preferences/protobuf/u1;ILjava/lang/Object;I)V

    goto/16 :goto_8a

    .line 57
    :pswitch_1a6
    invoke-direct {v0, v10}, Landroidx/datastore/preferences/protobuf/u0;->Q(I)I

    move-result v4

    .line 58
    invoke-virtual {v8, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 59
    invoke-direct {v0, v10}, Landroidx/datastore/preferences/protobuf/u0;->s(I)Landroidx/datastore/preferences/protobuf/g1;

    move-result-object v6

    .line 60
    invoke-static {v4, v5, v2, v6}, Landroidx/datastore/preferences/protobuf/i1;->U(ILjava/util/List;Landroidx/datastore/preferences/protobuf/u1;Landroidx/datastore/preferences/protobuf/g1;)V

    goto/16 :goto_8a

    .line 61
    :pswitch_1b9
    invoke-direct {v0, v10}, Landroidx/datastore/preferences/protobuf/u0;->Q(I)I

    move-result v4

    invoke-virtual {v8, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    const/4 v12, 0x1

    .line 62
    invoke-static {v4, v5, v2, v12}, Landroidx/datastore/preferences/protobuf/i1;->b0(ILjava/util/List;Landroidx/datastore/preferences/protobuf/u1;Z)V

    goto/16 :goto_8a

    :pswitch_1c9
    const/4 v12, 0x1

    .line 63
    invoke-direct {v0, v10}, Landroidx/datastore/preferences/protobuf/u0;->Q(I)I

    move-result v4

    invoke-virtual {v8, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 64
    invoke-static {v4, v5, v2, v12}, Landroidx/datastore/preferences/protobuf/i1;->a0(ILjava/util/List;Landroidx/datastore/preferences/protobuf/u1;Z)V

    goto/16 :goto_8a

    :pswitch_1d9
    const/4 v12, 0x1

    .line 65
    invoke-direct {v0, v10}, Landroidx/datastore/preferences/protobuf/u0;->Q(I)I

    move-result v4

    invoke-virtual {v8, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 66
    invoke-static {v4, v5, v2, v12}, Landroidx/datastore/preferences/protobuf/i1;->Z(ILjava/util/List;Landroidx/datastore/preferences/protobuf/u1;Z)V

    goto/16 :goto_8a

    :pswitch_1e9
    const/4 v12, 0x1

    .line 67
    invoke-direct {v0, v10}, Landroidx/datastore/preferences/protobuf/u0;->Q(I)I

    move-result v4

    invoke-virtual {v8, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 68
    invoke-static {v4, v5, v2, v12}, Landroidx/datastore/preferences/protobuf/i1;->Y(ILjava/util/List;Landroidx/datastore/preferences/protobuf/u1;Z)V

    goto/16 :goto_8a

    :pswitch_1f9
    const/4 v12, 0x1

    .line 69
    invoke-direct {v0, v10}, Landroidx/datastore/preferences/protobuf/u0;->Q(I)I

    move-result v4

    invoke-virtual {v8, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 70
    invoke-static {v4, v5, v2, v12}, Landroidx/datastore/preferences/protobuf/i1;->Q(ILjava/util/List;Landroidx/datastore/preferences/protobuf/u1;Z)V

    goto/16 :goto_8a

    :pswitch_209
    const/4 v12, 0x1

    .line 71
    invoke-direct {v0, v10}, Landroidx/datastore/preferences/protobuf/u0;->Q(I)I

    move-result v4

    invoke-virtual {v8, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 72
    invoke-static {v4, v5, v2, v12}, Landroidx/datastore/preferences/protobuf/i1;->d0(ILjava/util/List;Landroidx/datastore/preferences/protobuf/u1;Z)V

    goto/16 :goto_8a

    :pswitch_219
    const/4 v12, 0x1

    .line 73
    invoke-direct {v0, v10}, Landroidx/datastore/preferences/protobuf/u0;->Q(I)I

    move-result v4

    invoke-virtual {v8, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 74
    invoke-static {v4, v5, v2, v12}, Landroidx/datastore/preferences/protobuf/i1;->N(ILjava/util/List;Landroidx/datastore/preferences/protobuf/u1;Z)V

    goto/16 :goto_8a

    :pswitch_229
    const/4 v12, 0x1

    .line 75
    invoke-direct {v0, v10}, Landroidx/datastore/preferences/protobuf/u0;->Q(I)I

    move-result v4

    invoke-virtual {v8, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 76
    invoke-static {v4, v5, v2, v12}, Landroidx/datastore/preferences/protobuf/i1;->R(ILjava/util/List;Landroidx/datastore/preferences/protobuf/u1;Z)V

    goto/16 :goto_8a

    :pswitch_239
    const/4 v12, 0x1

    .line 77
    invoke-direct {v0, v10}, Landroidx/datastore/preferences/protobuf/u0;->Q(I)I

    move-result v4

    invoke-virtual {v8, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 78
    invoke-static {v4, v5, v2, v12}, Landroidx/datastore/preferences/protobuf/i1;->S(ILjava/util/List;Landroidx/datastore/preferences/protobuf/u1;Z)V

    goto/16 :goto_8a

    :pswitch_249
    const/4 v12, 0x1

    .line 79
    invoke-direct {v0, v10}, Landroidx/datastore/preferences/protobuf/u0;->Q(I)I

    move-result v4

    invoke-virtual {v8, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 80
    invoke-static {v4, v5, v2, v12}, Landroidx/datastore/preferences/protobuf/i1;->V(ILjava/util/List;Landroidx/datastore/preferences/protobuf/u1;Z)V

    goto/16 :goto_8a

    :pswitch_259
    const/4 v12, 0x1

    .line 81
    invoke-direct {v0, v10}, Landroidx/datastore/preferences/protobuf/u0;->Q(I)I

    move-result v4

    invoke-virtual {v8, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 82
    invoke-static {v4, v5, v2, v12}, Landroidx/datastore/preferences/protobuf/i1;->e0(ILjava/util/List;Landroidx/datastore/preferences/protobuf/u1;Z)V

    goto/16 :goto_8a

    :pswitch_269
    const/4 v12, 0x1

    .line 83
    invoke-direct {v0, v10}, Landroidx/datastore/preferences/protobuf/u0;->Q(I)I

    move-result v4

    invoke-virtual {v8, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 84
    invoke-static {v4, v5, v2, v12}, Landroidx/datastore/preferences/protobuf/i1;->W(ILjava/util/List;Landroidx/datastore/preferences/protobuf/u1;Z)V

    goto/16 :goto_8a

    :pswitch_279
    const/4 v12, 0x1

    .line 85
    invoke-direct {v0, v10}, Landroidx/datastore/preferences/protobuf/u0;->Q(I)I

    move-result v4

    invoke-virtual {v8, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 86
    invoke-static {v4, v5, v2, v12}, Landroidx/datastore/preferences/protobuf/i1;->T(ILjava/util/List;Landroidx/datastore/preferences/protobuf/u1;Z)V

    goto/16 :goto_8a

    :pswitch_289
    const/4 v12, 0x1

    .line 87
    invoke-direct {v0, v10}, Landroidx/datastore/preferences/protobuf/u0;->Q(I)I

    move-result v4

    invoke-virtual {v8, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 88
    invoke-static {v4, v5, v2, v12}, Landroidx/datastore/preferences/protobuf/i1;->P(ILjava/util/List;Landroidx/datastore/preferences/protobuf/u1;Z)V

    goto/16 :goto_8a

    .line 89
    :pswitch_299
    invoke-direct {v0, v10}, Landroidx/datastore/preferences/protobuf/u0;->Q(I)I

    move-result v4

    invoke-virtual {v8, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    const/4 v12, 0x0

    .line 90
    invoke-static {v4, v5, v2, v12}, Landroidx/datastore/preferences/protobuf/i1;->b0(ILjava/util/List;Landroidx/datastore/preferences/protobuf/u1;Z)V

    goto/16 :goto_494

    :pswitch_2a9
    const/4 v12, 0x0

    .line 91
    invoke-direct {v0, v10}, Landroidx/datastore/preferences/protobuf/u0;->Q(I)I

    move-result v4

    invoke-virtual {v8, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 92
    invoke-static {v4, v5, v2, v12}, Landroidx/datastore/preferences/protobuf/i1;->a0(ILjava/util/List;Landroidx/datastore/preferences/protobuf/u1;Z)V

    goto/16 :goto_494

    :pswitch_2b9
    const/4 v12, 0x0

    .line 93
    invoke-direct {v0, v10}, Landroidx/datastore/preferences/protobuf/u0;->Q(I)I

    move-result v4

    invoke-virtual {v8, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 94
    invoke-static {v4, v5, v2, v12}, Landroidx/datastore/preferences/protobuf/i1;->Z(ILjava/util/List;Landroidx/datastore/preferences/protobuf/u1;Z)V

    goto/16 :goto_494

    :pswitch_2c9
    const/4 v12, 0x0

    .line 95
    invoke-direct {v0, v10}, Landroidx/datastore/preferences/protobuf/u0;->Q(I)I

    move-result v4

    invoke-virtual {v8, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 96
    invoke-static {v4, v5, v2, v12}, Landroidx/datastore/preferences/protobuf/i1;->Y(ILjava/util/List;Landroidx/datastore/preferences/protobuf/u1;Z)V

    goto/16 :goto_494

    :pswitch_2d9
    const/4 v12, 0x0

    .line 97
    invoke-direct {v0, v10}, Landroidx/datastore/preferences/protobuf/u0;->Q(I)I

    move-result v4

    invoke-virtual {v8, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 98
    invoke-static {v4, v5, v2, v12}, Landroidx/datastore/preferences/protobuf/i1;->Q(ILjava/util/List;Landroidx/datastore/preferences/protobuf/u1;Z)V

    goto/16 :goto_494

    :pswitch_2e9
    const/4 v12, 0x0

    .line 99
    invoke-direct {v0, v10}, Landroidx/datastore/preferences/protobuf/u0;->Q(I)I

    move-result v4

    invoke-virtual {v8, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 100
    invoke-static {v4, v5, v2, v12}, Landroidx/datastore/preferences/protobuf/i1;->d0(ILjava/util/List;Landroidx/datastore/preferences/protobuf/u1;Z)V

    goto/16 :goto_494

    .line 101
    :pswitch_2f9
    invoke-direct {v0, v10}, Landroidx/datastore/preferences/protobuf/u0;->Q(I)I

    move-result v4

    invoke-virtual {v8, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 102
    invoke-static {v4, v5, v2}, Landroidx/datastore/preferences/protobuf/i1;->O(ILjava/util/List;Landroidx/datastore/preferences/protobuf/u1;)V

    goto/16 :goto_8a

    .line 103
    :pswitch_308
    invoke-direct {v0, v10}, Landroidx/datastore/preferences/protobuf/u0;->Q(I)I

    move-result v4

    .line 104
    invoke-virtual {v8, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 105
    invoke-direct {v0, v10}, Landroidx/datastore/preferences/protobuf/u0;->s(I)Landroidx/datastore/preferences/protobuf/g1;

    move-result-object v6

    .line 106
    invoke-static {v4, v5, v2, v6}, Landroidx/datastore/preferences/protobuf/i1;->X(ILjava/util/List;Landroidx/datastore/preferences/protobuf/u1;Landroidx/datastore/preferences/protobuf/g1;)V

    goto/16 :goto_8a

    .line 107
    :pswitch_31b
    invoke-direct {v0, v10}, Landroidx/datastore/preferences/protobuf/u0;->Q(I)I

    move-result v4

    invoke-virtual {v8, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 108
    invoke-static {v4, v5, v2}, Landroidx/datastore/preferences/protobuf/i1;->c0(ILjava/util/List;Landroidx/datastore/preferences/protobuf/u1;)V

    goto/16 :goto_8a

    .line 109
    :pswitch_32a
    invoke-direct {v0, v10}, Landroidx/datastore/preferences/protobuf/u0;->Q(I)I

    move-result v4

    invoke-virtual {v8, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    const/4 v12, 0x0

    .line 110
    invoke-static {v4, v5, v2, v12}, Landroidx/datastore/preferences/protobuf/i1;->N(ILjava/util/List;Landroidx/datastore/preferences/protobuf/u1;Z)V

    goto/16 :goto_494

    :pswitch_33a
    const/4 v12, 0x0

    .line 111
    invoke-direct {v0, v10}, Landroidx/datastore/preferences/protobuf/u0;->Q(I)I

    move-result v4

    invoke-virtual {v8, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 112
    invoke-static {v4, v5, v2, v12}, Landroidx/datastore/preferences/protobuf/i1;->R(ILjava/util/List;Landroidx/datastore/preferences/protobuf/u1;Z)V

    goto/16 :goto_494

    :pswitch_34a
    const/4 v12, 0x0

    .line 113
    invoke-direct {v0, v10}, Landroidx/datastore/preferences/protobuf/u0;->Q(I)I

    move-result v4

    invoke-virtual {v8, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 114
    invoke-static {v4, v5, v2, v12}, Landroidx/datastore/preferences/protobuf/i1;->S(ILjava/util/List;Landroidx/datastore/preferences/protobuf/u1;Z)V

    goto/16 :goto_494

    :pswitch_35a
    const/4 v12, 0x0

    .line 115
    invoke-direct {v0, v10}, Landroidx/datastore/preferences/protobuf/u0;->Q(I)I

    move-result v4

    invoke-virtual {v8, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 116
    invoke-static {v4, v5, v2, v12}, Landroidx/datastore/preferences/protobuf/i1;->V(ILjava/util/List;Landroidx/datastore/preferences/protobuf/u1;Z)V

    goto/16 :goto_494

    :pswitch_36a
    const/4 v12, 0x0

    .line 117
    invoke-direct {v0, v10}, Landroidx/datastore/preferences/protobuf/u0;->Q(I)I

    move-result v4

    invoke-virtual {v8, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 118
    invoke-static {v4, v5, v2, v12}, Landroidx/datastore/preferences/protobuf/i1;->e0(ILjava/util/List;Landroidx/datastore/preferences/protobuf/u1;Z)V

    goto/16 :goto_494

    :pswitch_37a
    const/4 v12, 0x0

    .line 119
    invoke-direct {v0, v10}, Landroidx/datastore/preferences/protobuf/u0;->Q(I)I

    move-result v4

    invoke-virtual {v8, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 120
    invoke-static {v4, v5, v2, v12}, Landroidx/datastore/preferences/protobuf/i1;->W(ILjava/util/List;Landroidx/datastore/preferences/protobuf/u1;Z)V

    goto/16 :goto_494

    :pswitch_38a
    const/4 v12, 0x0

    .line 121
    invoke-direct {v0, v10}, Landroidx/datastore/preferences/protobuf/u0;->Q(I)I

    move-result v4

    invoke-virtual {v8, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 122
    invoke-static {v4, v5, v2, v12}, Landroidx/datastore/preferences/protobuf/i1;->T(ILjava/util/List;Landroidx/datastore/preferences/protobuf/u1;Z)V

    goto/16 :goto_494

    :pswitch_39a
    const/4 v12, 0x0

    .line 123
    invoke-direct {v0, v10}, Landroidx/datastore/preferences/protobuf/u0;->Q(I)I

    move-result v4

    invoke-virtual {v8, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 124
    invoke-static {v4, v5, v2, v12}, Landroidx/datastore/preferences/protobuf/i1;->P(ILjava/util/List;Landroidx/datastore/preferences/protobuf/u1;Z)V

    goto/16 :goto_494

    :pswitch_3aa
    const/4 v12, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_494

    .line 125
    invoke-virtual {v8, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v10}, Landroidx/datastore/preferences/protobuf/u0;->s(I)Landroidx/datastore/preferences/protobuf/g1;

    move-result-object v5

    .line 126
    invoke-interface {v2, v13, v4, v5}, Landroidx/datastore/preferences/protobuf/u1;->O(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/g1;)V

    goto/16 :goto_494

    :pswitch_3bb
    const/4 v12, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_494

    .line 127
    invoke-virtual {v8, v1, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-interface {v2, v13, v4, v5}, Landroidx/datastore/preferences/protobuf/u1;->D(IJ)V

    goto/16 :goto_494

    :pswitch_3c8
    const/4 v12, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_494

    .line 128
    invoke-virtual {v8, v1, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v13, v4}, Landroidx/datastore/preferences/protobuf/u1;->M(II)V

    goto/16 :goto_494

    :pswitch_3d5
    const/4 v12, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_494

    .line 129
    invoke-virtual {v8, v1, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-interface {v2, v13, v4, v5}, Landroidx/datastore/preferences/protobuf/u1;->x(IJ)V

    goto/16 :goto_494

    :pswitch_3e2
    const/4 v12, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_494

    .line 130
    invoke-virtual {v8, v1, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v13, v4}, Landroidx/datastore/preferences/protobuf/u1;->r(II)V

    goto/16 :goto_494

    :pswitch_3ef
    const/4 v12, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_494

    .line 131
    invoke-virtual {v8, v1, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v13, v4}, Landroidx/datastore/preferences/protobuf/u1;->H(II)V

    goto/16 :goto_494

    :pswitch_3fc
    const/4 v12, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_494

    .line 132
    invoke-virtual {v8, v1, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v13, v4}, Landroidx/datastore/preferences/protobuf/u1;->b(II)V

    goto/16 :goto_494

    :pswitch_409
    const/4 v12, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_494

    .line 133
    invoke-virtual {v8, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/datastore/preferences/protobuf/h;

    invoke-interface {v2, v13, v4}, Landroidx/datastore/preferences/protobuf/u1;->w(ILandroidx/datastore/preferences/protobuf/h;)V

    goto/16 :goto_494

    :pswitch_418
    const/4 v12, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_494

    .line 134
    invoke-virtual {v8, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 135
    invoke-direct {v0, v10}, Landroidx/datastore/preferences/protobuf/u0;->s(I)Landroidx/datastore/preferences/protobuf/g1;

    move-result-object v5

    invoke-interface {v2, v13, v4, v5}, Landroidx/datastore/preferences/protobuf/u1;->z(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/g1;)V

    goto/16 :goto_494

    :pswitch_429
    const/4 v12, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_494

    .line 136
    invoke-virtual {v8, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v13, v4, v2}, Landroidx/datastore/preferences/protobuf/u0;->n0(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/u1;)V

    goto :goto_494

    :pswitch_435
    const/4 v12, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_494

    .line 137
    invoke-static {v1, v5, v6}, Landroidx/datastore/preferences/protobuf/u0;->k(Ljava/lang/Object;J)Z

    move-result v4

    invoke-interface {v2, v13, v4}, Landroidx/datastore/preferences/protobuf/u1;->q(IZ)V

    goto :goto_494

    :pswitch_441
    const/4 v12, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_494

    .line 138
    invoke-virtual {v8, v1, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v13, v4}, Landroidx/datastore/preferences/protobuf/u1;->d(II)V

    goto :goto_494

    :pswitch_44d
    const/4 v12, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_494

    .line 139
    invoke-virtual {v8, v1, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-interface {v2, v13, v4, v5}, Landroidx/datastore/preferences/protobuf/u1;->h(IJ)V

    goto :goto_494

    :pswitch_459
    const/4 v12, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_494

    .line 140
    invoke-virtual {v8, v1, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v13, v4}, Landroidx/datastore/preferences/protobuf/u1;->t(II)V

    goto :goto_494

    :pswitch_465
    const/4 v12, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_494

    .line 141
    invoke-virtual {v8, v1, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-interface {v2, v13, v4, v5}, Landroidx/datastore/preferences/protobuf/u1;->n(IJ)V

    goto :goto_494

    :pswitch_471
    const/4 v12, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_494

    .line 142
    invoke-virtual {v8, v1, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-interface {v2, v13, v4, v5}, Landroidx/datastore/preferences/protobuf/u1;->p(IJ)V

    goto :goto_494

    :pswitch_47d
    const/4 v12, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_494

    .line 143
    invoke-static {v1, v5, v6}, Landroidx/datastore/preferences/protobuf/u0;->p(Ljava/lang/Object;J)F

    move-result v4

    invoke-interface {v2, v13, v4}, Landroidx/datastore/preferences/protobuf/u1;->E(IF)V

    goto :goto_494

    :pswitch_489
    const/4 v12, 0x0

    and-int/2addr v4, v11

    if-eqz v4, :cond_494

    .line 144
    invoke-static {v1, v5, v6}, Landroidx/datastore/preferences/protobuf/u0;->l(Ljava/lang/Object;J)D

    move-result-wide v4

    invoke-interface {v2, v13, v4, v5}, Landroidx/datastore/preferences/protobuf/u1;->e(ID)V

    :cond_494
    :goto_494
    add-int/lit8 v10, v10, 0x3

    move v6, v9

    move-object v5, v15

    goto/16 :goto_2b

    :cond_49a
    move-object/from16 v16, v5

    :goto_49c
    if-eqz v5, :cond_4b3

    .line 145
    iget-object v4, v0, Landroidx/datastore/preferences/protobuf/u0;->p:Landroidx/datastore/preferences/protobuf/q;

    invoke-virtual {v4, v2, v5}, Landroidx/datastore/preferences/protobuf/q;->j(Landroidx/datastore/preferences/protobuf/u1;Ljava/util/Map$Entry;)V

    .line 146
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4b1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    move-object v5, v4

    goto :goto_49c

    :cond_4b1
    const/4 v5, 0x0

    goto :goto_49c

    .line 147
    :cond_4b3
    iget-object v3, v0, Landroidx/datastore/preferences/protobuf/u0;->o:Landroidx/datastore/preferences/protobuf/n1;

    invoke-direct {v0, v3, v1, v2}, Landroidx/datastore/preferences/protobuf/u0;->o0(Landroidx/datastore/preferences/protobuf/n1;Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/u1;)V

    return-void

    nop

    :pswitch_data_4ba
    .packed-switch 0x0
        :pswitch_489
        :pswitch_47d
        :pswitch_471
        :pswitch_465
        :pswitch_459
        :pswitch_44d
        :pswitch_441
        :pswitch_435
        :pswitch_429
        :pswitch_418
        :pswitch_409
        :pswitch_3fc
        :pswitch_3ef
        :pswitch_3e2
        :pswitch_3d5
        :pswitch_3c8
        :pswitch_3bb
        :pswitch_3aa
        :pswitch_39a
        :pswitch_38a
        :pswitch_37a
        :pswitch_36a
        :pswitch_35a
        :pswitch_34a
        :pswitch_33a
        :pswitch_32a
        :pswitch_31b
        :pswitch_308
        :pswitch_2f9
        :pswitch_2e9
        :pswitch_2d9
        :pswitch_2c9
        :pswitch_2b9
        :pswitch_2a9
        :pswitch_299
        :pswitch_289
        :pswitch_279
        :pswitch_269
        :pswitch_259
        :pswitch_249
        :pswitch_239
        :pswitch_229
        :pswitch_219
        :pswitch_209
        :pswitch_1f9
        :pswitch_1e9
        :pswitch_1d9
        :pswitch_1c9
        :pswitch_1b9
        :pswitch_1a6
        :pswitch_19d
        :pswitch_18e
        :pswitch_17f
        :pswitch_170
        :pswitch_161
        :pswitch_152
        :pswitch_143
        :pswitch_134
        :pswitch_125
        :pswitch_116
        :pswitch_103
        :pswitch_f3
        :pswitch_e5
        :pswitch_d7
        :pswitch_c9
        :pswitch_bb
        :pswitch_ad
        :pswitch_9f
        :pswitch_8d
    .end packed-switch
.end method

.method private static k(Ljava/lang/Object;J)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)Z"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/r1;->p(Ljava/lang/Object;J)Z

    move-result p0

    return p0
.end method

.method private k0(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/u1;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroidx/datastore/preferences/protobuf/u1;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Landroidx/datastore/preferences/protobuf/u0;->f:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    .line 2
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/u0;->p:Landroidx/datastore/preferences/protobuf/q;

    invoke-virtual {v0, p1}, Landroidx/datastore/preferences/protobuf/q;->c(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/u;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/u;->n()Z

    move-result v2

    if-nez v2, :cond_1c

    .line 4
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/u;->s()Ljava/util/Iterator;

    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    goto :goto_1e

    :cond_1c
    move-object v0, v1

    move-object v2, v0

    .line 6
    :goto_1e
    iget-object v3, p0, Landroidx/datastore/preferences/protobuf/u0;->a:[I

    array-length v3, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_23
    if-ge v5, v3, :cond_586

    .line 7
    invoke-direct {p0, v5}, Landroidx/datastore/preferences/protobuf/u0;->i0(I)I

    move-result v6

    .line 8
    invoke-direct {p0, v5}, Landroidx/datastore/preferences/protobuf/u0;->Q(I)I

    move-result v7

    :goto_2d
    if-eqz v2, :cond_4b

    .line 9
    iget-object v8, p0, Landroidx/datastore/preferences/protobuf/u0;->p:Landroidx/datastore/preferences/protobuf/q;

    invoke-virtual {v8, v2}, Landroidx/datastore/preferences/protobuf/q;->a(Ljava/util/Map$Entry;)I

    move-result v8

    if-gt v8, v7, :cond_4b

    .line 10
    iget-object v8, p0, Landroidx/datastore/preferences/protobuf/u0;->p:Landroidx/datastore/preferences/protobuf/q;

    invoke-virtual {v8, p2, v2}, Landroidx/datastore/preferences/protobuf/q;->j(Landroidx/datastore/preferences/protobuf/u1;Ljava/util/Map$Entry;)V

    .line 11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_49

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    goto :goto_2d

    :cond_49
    move-object v2, v1

    goto :goto_2d

    .line 12
    :cond_4b
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/u0;->h0(I)I

    move-result v8

    const/4 v9, 0x1

    packed-switch v8, :pswitch_data_5a2

    goto/16 :goto_582

    .line 13
    :pswitch_55
    invoke-direct {p0, p1, v7, v5}, Landroidx/datastore/preferences/protobuf/u0;->E(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_582

    .line 14
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/r1;->A(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    .line 15
    invoke-direct {p0, v5}, Landroidx/datastore/preferences/protobuf/u0;->s(I)Landroidx/datastore/preferences/protobuf/g1;

    move-result-object v8

    .line 16
    invoke-interface {p2, v7, v6, v8}, Landroidx/datastore/preferences/protobuf/u1;->O(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/g1;)V

    goto/16 :goto_582

    .line 17
    :pswitch_6c
    invoke-direct {p0, p1, v7, v5}, Landroidx/datastore/preferences/protobuf/u0;->E(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_582

    .line 18
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/u0;->W(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v7, v8, v9}, Landroidx/datastore/preferences/protobuf/u1;->D(IJ)V

    goto/16 :goto_582

    .line 19
    :pswitch_7f
    invoke-direct {p0, p1, v7, v5}, Landroidx/datastore/preferences/protobuf/u0;->E(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_582

    .line 20
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/u0;->V(Ljava/lang/Object;J)I

    move-result v6

    invoke-interface {p2, v7, v6}, Landroidx/datastore/preferences/protobuf/u1;->M(II)V

    goto/16 :goto_582

    .line 21
    :pswitch_92
    invoke-direct {p0, p1, v7, v5}, Landroidx/datastore/preferences/protobuf/u0;->E(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_582

    .line 22
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/u0;->W(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v7, v8, v9}, Landroidx/datastore/preferences/protobuf/u1;->x(IJ)V

    goto/16 :goto_582

    .line 23
    :pswitch_a5
    invoke-direct {p0, p1, v7, v5}, Landroidx/datastore/preferences/protobuf/u0;->E(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_582

    .line 24
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/u0;->V(Ljava/lang/Object;J)I

    move-result v6

    invoke-interface {p2, v7, v6}, Landroidx/datastore/preferences/protobuf/u1;->r(II)V

    goto/16 :goto_582

    .line 25
    :pswitch_b8
    invoke-direct {p0, p1, v7, v5}, Landroidx/datastore/preferences/protobuf/u0;->E(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_582

    .line 26
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/u0;->V(Ljava/lang/Object;J)I

    move-result v6

    invoke-interface {p2, v7, v6}, Landroidx/datastore/preferences/protobuf/u1;->H(II)V

    goto/16 :goto_582

    .line 27
    :pswitch_cb
    invoke-direct {p0, p1, v7, v5}, Landroidx/datastore/preferences/protobuf/u0;->E(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_582

    .line 28
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/u0;->V(Ljava/lang/Object;J)I

    move-result v6

    invoke-interface {p2, v7, v6}, Landroidx/datastore/preferences/protobuf/u1;->b(II)V

    goto/16 :goto_582

    .line 29
    :pswitch_de
    invoke-direct {p0, p1, v7, v5}, Landroidx/datastore/preferences/protobuf/u0;->E(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_582

    .line 30
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/r1;->A(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/datastore/preferences/protobuf/h;

    .line 31
    invoke-interface {p2, v7, v6}, Landroidx/datastore/preferences/protobuf/u1;->w(ILandroidx/datastore/preferences/protobuf/h;)V

    goto/16 :goto_582

    .line 32
    :pswitch_f3
    invoke-direct {p0, p1, v7, v5}, Landroidx/datastore/preferences/protobuf/u0;->E(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_582

    .line 33
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/r1;->A(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    .line 34
    invoke-direct {p0, v5}, Landroidx/datastore/preferences/protobuf/u0;->s(I)Landroidx/datastore/preferences/protobuf/g1;

    move-result-object v8

    invoke-interface {p2, v7, v6, v8}, Landroidx/datastore/preferences/protobuf/u1;->z(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/g1;)V

    goto/16 :goto_582

    .line 35
    :pswitch_10a
    invoke-direct {p0, p1, v7, v5}, Landroidx/datastore/preferences/protobuf/u0;->E(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_582

    .line 36
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/r1;->A(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {p0, v7, v6, p2}, Landroidx/datastore/preferences/protobuf/u0;->n0(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/u1;)V

    goto/16 :goto_582

    .line 37
    :pswitch_11d
    invoke-direct {p0, p1, v7, v5}, Landroidx/datastore/preferences/protobuf/u0;->E(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_582

    .line 38
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/u0;->S(Ljava/lang/Object;J)Z

    move-result v6

    invoke-interface {p2, v7, v6}, Landroidx/datastore/preferences/protobuf/u1;->q(IZ)V

    goto/16 :goto_582

    .line 39
    :pswitch_130
    invoke-direct {p0, p1, v7, v5}, Landroidx/datastore/preferences/protobuf/u0;->E(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_582

    .line 40
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/u0;->V(Ljava/lang/Object;J)I

    move-result v6

    invoke-interface {p2, v7, v6}, Landroidx/datastore/preferences/protobuf/u1;->d(II)V

    goto/16 :goto_582

    .line 41
    :pswitch_143
    invoke-direct {p0, p1, v7, v5}, Landroidx/datastore/preferences/protobuf/u0;->E(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_582

    .line 42
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/u0;->W(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v7, v8, v9}, Landroidx/datastore/preferences/protobuf/u1;->h(IJ)V

    goto/16 :goto_582

    .line 43
    :pswitch_156
    invoke-direct {p0, p1, v7, v5}, Landroidx/datastore/preferences/protobuf/u0;->E(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_582

    .line 44
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/u0;->V(Ljava/lang/Object;J)I

    move-result v6

    invoke-interface {p2, v7, v6}, Landroidx/datastore/preferences/protobuf/u1;->t(II)V

    goto/16 :goto_582

    .line 45
    :pswitch_169
    invoke-direct {p0, p1, v7, v5}, Landroidx/datastore/preferences/protobuf/u0;->E(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_582

    .line 46
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/u0;->W(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v7, v8, v9}, Landroidx/datastore/preferences/protobuf/u1;->n(IJ)V

    goto/16 :goto_582

    .line 47
    :pswitch_17c
    invoke-direct {p0, p1, v7, v5}, Landroidx/datastore/preferences/protobuf/u0;->E(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_582

    .line 48
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/u0;->W(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v7, v8, v9}, Landroidx/datastore/preferences/protobuf/u1;->p(IJ)V

    goto/16 :goto_582

    .line 49
    :pswitch_18f
    invoke-direct {p0, p1, v7, v5}, Landroidx/datastore/preferences/protobuf/u0;->E(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_582

    .line 50
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/u0;->U(Ljava/lang/Object;J)F

    move-result v6

    invoke-interface {p2, v7, v6}, Landroidx/datastore/preferences/protobuf/u1;->E(IF)V

    goto/16 :goto_582

    .line 51
    :pswitch_1a2
    invoke-direct {p0, p1, v7, v5}, Landroidx/datastore/preferences/protobuf/u0;->E(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_582

    .line 52
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/u0;->T(Ljava/lang/Object;J)D

    move-result-wide v8

    invoke-interface {p2, v7, v8, v9}, Landroidx/datastore/preferences/protobuf/u1;->e(ID)V

    goto/16 :goto_582

    .line 53
    :pswitch_1b5
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/r1;->A(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {p0, p2, v7, v6, v5}, Landroidx/datastore/preferences/protobuf/u0;->m0(Landroidx/datastore/preferences/protobuf/u1;ILjava/lang/Object;I)V

    goto/16 :goto_582

    .line 54
    :pswitch_1c2
    invoke-direct {p0, v5}, Landroidx/datastore/preferences/protobuf/u0;->Q(I)I

    move-result v7

    .line 55
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/r1;->A(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 56
    invoke-direct {p0, v5}, Landroidx/datastore/preferences/protobuf/u0;->s(I)Landroidx/datastore/preferences/protobuf/g1;

    move-result-object v8

    .line 57
    invoke-static {v7, v6, p2, v8}, Landroidx/datastore/preferences/protobuf/i1;->U(ILjava/util/List;Landroidx/datastore/preferences/protobuf/u1;Landroidx/datastore/preferences/protobuf/g1;)V

    goto/16 :goto_582

    .line 58
    :pswitch_1d9
    invoke-direct {p0, v5}, Landroidx/datastore/preferences/protobuf/u0;->Q(I)I

    move-result v7

    .line 59
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Landroidx/datastore/preferences/protobuf/r1;->A(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 60
    invoke-static {v7, v6, p2, v9}, Landroidx/datastore/preferences/protobuf/i1;->b0(ILjava/util/List;Landroidx/datastore/preferences/protobuf/u1;Z)V

    goto/16 :goto_582

    .line 61
    :pswitch_1ec
    invoke-direct {p0, v5}, Landroidx/datastore/preferences/protobuf/u0;->Q(I)I

    move-result v7

    .line 62
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Landroidx/datastore/preferences/protobuf/r1;->A(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 63
    invoke-static {v7, v6, p2, v9}, Landroidx/datastore/preferences/protobuf/i1;->a0(ILjava/util/List;Landroidx/datastore/preferences/protobuf/u1;Z)V

    goto/16 :goto_582

    .line 64
    :pswitch_1ff
    invoke-direct {p0, v5}, Landroidx/datastore/preferences/protobuf/u0;->Q(I)I

    move-result v7

    .line 65
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Landroidx/datastore/preferences/protobuf/r1;->A(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 66
    invoke-static {v7, v6, p2, v9}, Landroidx/datastore/preferences/protobuf/i1;->Z(ILjava/util/List;Landroidx/datastore/preferences/protobuf/u1;Z)V

    goto/16 :goto_582

    .line 67
    :pswitch_212
    invoke-direct {p0, v5}, Landroidx/datastore/preferences/protobuf/u0;->Q(I)I

    move-result v7

    .line 68
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Landroidx/datastore/preferences/protobuf/r1;->A(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 69
    invoke-static {v7, v6, p2, v9}, Landroidx/datastore/preferences/protobuf/i1;->Y(ILjava/util/List;Landroidx/datastore/preferences/protobuf/u1;Z)V

    goto/16 :goto_582

    .line 70
    :pswitch_225
    invoke-direct {p0, v5}, Landroidx/datastore/preferences/protobuf/u0;->Q(I)I

    move-result v7

    .line 71
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Landroidx/datastore/preferences/protobuf/r1;->A(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 72
    invoke-static {v7, v6, p2, v9}, Landroidx/datastore/preferences/protobuf/i1;->Q(ILjava/util/List;Landroidx/datastore/preferences/protobuf/u1;Z)V

    goto/16 :goto_582

    .line 73
    :pswitch_238
    invoke-direct {p0, v5}, Landroidx/datastore/preferences/protobuf/u0;->Q(I)I

    move-result v7

    .line 74
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Landroidx/datastore/preferences/protobuf/r1;->A(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 75
    invoke-static {v7, v6, p2, v9}, Landroidx/datastore/preferences/protobuf/i1;->d0(ILjava/util/List;Landroidx/datastore/preferences/protobuf/u1;Z)V

    goto/16 :goto_582

    .line 76
    :pswitch_24b
    invoke-direct {p0, v5}, Landroidx/datastore/preferences/protobuf/u0;->Q(I)I

    move-result v7

    .line 77
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Landroidx/datastore/preferences/protobuf/r1;->A(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 78
    invoke-static {v7, v6, p2, v9}, Landroidx/datastore/preferences/protobuf/i1;->N(ILjava/util/List;Landroidx/datastore/preferences/protobuf/u1;Z)V

    goto/16 :goto_582

    .line 79
    :pswitch_25e
    invoke-direct {p0, v5}, Landroidx/datastore/preferences/protobuf/u0;->Q(I)I

    move-result v7

    .line 80
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Landroidx/datastore/preferences/protobuf/r1;->A(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 81
    invoke-static {v7, v6, p2, v9}, Landroidx/datastore/preferences/protobuf/i1;->R(ILjava/util/List;Landroidx/datastore/preferences/protobuf/u1;Z)V

    goto/16 :goto_582

    .line 82
    :pswitch_271
    invoke-direct {p0, v5}, Landroidx/datastore/preferences/protobuf/u0;->Q(I)I

    move-result v7

    .line 83
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Landroidx/datastore/preferences/protobuf/r1;->A(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 84
    invoke-static {v7, v6, p2, v9}, Landroidx/datastore/preferences/protobuf/i1;->S(ILjava/util/List;Landroidx/datastore/preferences/protobuf/u1;Z)V

    goto/16 :goto_582

    .line 85
    :pswitch_284
    invoke-direct {p0, v5}, Landroidx/datastore/preferences/protobuf/u0;->Q(I)I

    move-result v7

    .line 86
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Landroidx/datastore/preferences/protobuf/r1;->A(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 87
    invoke-static {v7, v6, p2, v9}, Landroidx/datastore/preferences/protobuf/i1;->V(ILjava/util/List;Landroidx/datastore/preferences/protobuf/u1;Z)V

    goto/16 :goto_582

    .line 88
    :pswitch_297
    invoke-direct {p0, v5}, Landroidx/datastore/preferences/protobuf/u0;->Q(I)I

    move-result v7

    .line 89
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Landroidx/datastore/preferences/protobuf/r1;->A(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 90
    invoke-static {v7, v6, p2, v9}, Landroidx/datastore/preferences/protobuf/i1;->e0(ILjava/util/List;Landroidx/datastore/preferences/protobuf/u1;Z)V

    goto/16 :goto_582

    .line 91
    :pswitch_2aa
    invoke-direct {p0, v5}, Landroidx/datastore/preferences/protobuf/u0;->Q(I)I

    move-result v7

    .line 92
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Landroidx/datastore/preferences/protobuf/r1;->A(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 93
    invoke-static {v7, v6, p2, v9}, Landroidx/datastore/preferences/protobuf/i1;->W(ILjava/util/List;Landroidx/datastore/preferences/protobuf/u1;Z)V

    goto/16 :goto_582

    .line 94
    :pswitch_2bd
    invoke-direct {p0, v5}, Landroidx/datastore/preferences/protobuf/u0;->Q(I)I

    move-result v7

    .line 95
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Landroidx/datastore/preferences/protobuf/r1;->A(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 96
    invoke-static {v7, v6, p2, v9}, Landroidx/datastore/preferences/protobuf/i1;->T(ILjava/util/List;Landroidx/datastore/preferences/protobuf/u1;Z)V

    goto/16 :goto_582

    .line 97
    :pswitch_2d0
    invoke-direct {p0, v5}, Landroidx/datastore/preferences/protobuf/u0;->Q(I)I

    move-result v7

    .line 98
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Landroidx/datastore/preferences/protobuf/r1;->A(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 99
    invoke-static {v7, v6, p2, v9}, Landroidx/datastore/preferences/protobuf/i1;->P(ILjava/util/List;Landroidx/datastore/preferences/protobuf/u1;Z)V

    goto/16 :goto_582

    .line 100
    :pswitch_2e3
    invoke-direct {p0, v5}, Landroidx/datastore/preferences/protobuf/u0;->Q(I)I

    move-result v7

    .line 101
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/r1;->A(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 102
    invoke-static {v7, v6, p2, v4}, Landroidx/datastore/preferences/protobuf/i1;->b0(ILjava/util/List;Landroidx/datastore/preferences/protobuf/u1;Z)V

    goto/16 :goto_582

    .line 103
    :pswitch_2f6
    invoke-direct {p0, v5}, Landroidx/datastore/preferences/protobuf/u0;->Q(I)I

    move-result v7

    .line 104
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/r1;->A(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 105
    invoke-static {v7, v6, p2, v4}, Landroidx/datastore/preferences/protobuf/i1;->a0(ILjava/util/List;Landroidx/datastore/preferences/protobuf/u1;Z)V

    goto/16 :goto_582

    .line 106
    :pswitch_309
    invoke-direct {p0, v5}, Landroidx/datastore/preferences/protobuf/u0;->Q(I)I

    move-result v7

    .line 107
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/r1;->A(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 108
    invoke-static {v7, v6, p2, v4}, Landroidx/datastore/preferences/protobuf/i1;->Z(ILjava/util/List;Landroidx/datastore/preferences/protobuf/u1;Z)V

    goto/16 :goto_582

    .line 109
    :pswitch_31c
    invoke-direct {p0, v5}, Landroidx/datastore/preferences/protobuf/u0;->Q(I)I

    move-result v7

    .line 110
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/r1;->A(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 111
    invoke-static {v7, v6, p2, v4}, Landroidx/datastore/preferences/protobuf/i1;->Y(ILjava/util/List;Landroidx/datastore/preferences/protobuf/u1;Z)V

    goto/16 :goto_582

    .line 112
    :pswitch_32f
    invoke-direct {p0, v5}, Landroidx/datastore/preferences/protobuf/u0;->Q(I)I

    move-result v7

    .line 113
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/r1;->A(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 114
    invoke-static {v7, v6, p2, v4}, Landroidx/datastore/preferences/protobuf/i1;->Q(ILjava/util/List;Landroidx/datastore/preferences/protobuf/u1;Z)V

    goto/16 :goto_582

    .line 115
    :pswitch_342
    invoke-direct {p0, v5}, Landroidx/datastore/preferences/protobuf/u0;->Q(I)I

    move-result v7

    .line 116
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/r1;->A(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 117
    invoke-static {v7, v6, p2, v4}, Landroidx/datastore/preferences/protobuf/i1;->d0(ILjava/util/List;Landroidx/datastore/preferences/protobuf/u1;Z)V

    goto/16 :goto_582

    .line 118
    :pswitch_355
    invoke-direct {p0, v5}, Landroidx/datastore/preferences/protobuf/u0;->Q(I)I

    move-result v7

    .line 119
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/r1;->A(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 120
    invoke-static {v7, v6, p2}, Landroidx/datastore/preferences/protobuf/i1;->O(ILjava/util/List;Landroidx/datastore/preferences/protobuf/u1;)V

    goto/16 :goto_582

    .line 121
    :pswitch_368
    invoke-direct {p0, v5}, Landroidx/datastore/preferences/protobuf/u0;->Q(I)I

    move-result v7

    .line 122
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/r1;->A(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 123
    invoke-direct {p0, v5}, Landroidx/datastore/preferences/protobuf/u0;->s(I)Landroidx/datastore/preferences/protobuf/g1;

    move-result-object v8

    .line 124
    invoke-static {v7, v6, p2, v8}, Landroidx/datastore/preferences/protobuf/i1;->X(ILjava/util/List;Landroidx/datastore/preferences/protobuf/u1;Landroidx/datastore/preferences/protobuf/g1;)V

    goto/16 :goto_582

    .line 125
    :pswitch_37f
    invoke-direct {p0, v5}, Landroidx/datastore/preferences/protobuf/u0;->Q(I)I

    move-result v7

    .line 126
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/r1;->A(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 127
    invoke-static {v7, v6, p2}, Landroidx/datastore/preferences/protobuf/i1;->c0(ILjava/util/List;Landroidx/datastore/preferences/protobuf/u1;)V

    goto/16 :goto_582

    .line 128
    :pswitch_392
    invoke-direct {p0, v5}, Landroidx/datastore/preferences/protobuf/u0;->Q(I)I

    move-result v7

    .line 129
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/r1;->A(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 130
    invoke-static {v7, v6, p2, v4}, Landroidx/datastore/preferences/protobuf/i1;->N(ILjava/util/List;Landroidx/datastore/preferences/protobuf/u1;Z)V

    goto/16 :goto_582

    .line 131
    :pswitch_3a5
    invoke-direct {p0, v5}, Landroidx/datastore/preferences/protobuf/u0;->Q(I)I

    move-result v7

    .line 132
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/r1;->A(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 133
    invoke-static {v7, v6, p2, v4}, Landroidx/datastore/preferences/protobuf/i1;->R(ILjava/util/List;Landroidx/datastore/preferences/protobuf/u1;Z)V

    goto/16 :goto_582

    .line 134
    :pswitch_3b8
    invoke-direct {p0, v5}, Landroidx/datastore/preferences/protobuf/u0;->Q(I)I

    move-result v7

    .line 135
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/r1;->A(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 136
    invoke-static {v7, v6, p2, v4}, Landroidx/datastore/preferences/protobuf/i1;->S(ILjava/util/List;Landroidx/datastore/preferences/protobuf/u1;Z)V

    goto/16 :goto_582

    .line 137
    :pswitch_3cb
    invoke-direct {p0, v5}, Landroidx/datastore/preferences/protobuf/u0;->Q(I)I

    move-result v7

    .line 138
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/r1;->A(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 139
    invoke-static {v7, v6, p2, v4}, Landroidx/datastore/preferences/protobuf/i1;->V(ILjava/util/List;Landroidx/datastore/preferences/protobuf/u1;Z)V

    goto/16 :goto_582

    .line 140
    :pswitch_3de
    invoke-direct {p0, v5}, Landroidx/datastore/preferences/protobuf/u0;->Q(I)I

    move-result v7

    .line 141
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/r1;->A(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 142
    invoke-static {v7, v6, p2, v4}, Landroidx/datastore/preferences/protobuf/i1;->e0(ILjava/util/List;Landroidx/datastore/preferences/protobuf/u1;Z)V

    goto/16 :goto_582

    .line 143
    :pswitch_3f1
    invoke-direct {p0, v5}, Landroidx/datastore/preferences/protobuf/u0;->Q(I)I

    move-result v7

    .line 144
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/r1;->A(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 145
    invoke-static {v7, v6, p2, v4}, Landroidx/datastore/preferences/protobuf/i1;->W(ILjava/util/List;Landroidx/datastore/preferences/protobuf/u1;Z)V

    goto/16 :goto_582

    .line 146
    :pswitch_404
    invoke-direct {p0, v5}, Landroidx/datastore/preferences/protobuf/u0;->Q(I)I

    move-result v7

    .line 147
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/r1;->A(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 148
    invoke-static {v7, v6, p2, v4}, Landroidx/datastore/preferences/protobuf/i1;->T(ILjava/util/List;Landroidx/datastore/preferences/protobuf/u1;Z)V

    goto/16 :goto_582

    .line 149
    :pswitch_417
    invoke-direct {p0, v5}, Landroidx/datastore/preferences/protobuf/u0;->Q(I)I

    move-result v7

    .line 150
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/r1;->A(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 151
    invoke-static {v7, v6, p2, v4}, Landroidx/datastore/preferences/protobuf/i1;->P(ILjava/util/List;Landroidx/datastore/preferences/protobuf/u1;Z)V

    goto/16 :goto_582

    .line 152
    :pswitch_42a
    invoke-direct {p0, p1, v5}, Landroidx/datastore/preferences/protobuf/u0;->y(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_582

    .line 153
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/r1;->A(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    .line 154
    invoke-direct {p0, v5}, Landroidx/datastore/preferences/protobuf/u0;->s(I)Landroidx/datastore/preferences/protobuf/g1;

    move-result-object v8

    .line 155
    invoke-interface {p2, v7, v6, v8}, Landroidx/datastore/preferences/protobuf/u1;->O(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/g1;)V

    goto/16 :goto_582

    .line 156
    :pswitch_441
    invoke-direct {p0, p1, v5}, Landroidx/datastore/preferences/protobuf/u0;->y(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_582

    .line 157
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/u0;->H(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v7, v8, v9}, Landroidx/datastore/preferences/protobuf/u1;->D(IJ)V

    goto/16 :goto_582

    .line 158
    :pswitch_454
    invoke-direct {p0, p1, v5}, Landroidx/datastore/preferences/protobuf/u0;->y(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_582

    .line 159
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/u0;->w(Ljava/lang/Object;J)I

    move-result v6

    invoke-interface {p2, v7, v6}, Landroidx/datastore/preferences/protobuf/u1;->M(II)V

    goto/16 :goto_582

    .line 160
    :pswitch_467
    invoke-direct {p0, p1, v5}, Landroidx/datastore/preferences/protobuf/u0;->y(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_582

    .line 161
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/u0;->H(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v7, v8, v9}, Landroidx/datastore/preferences/protobuf/u1;->x(IJ)V

    goto/16 :goto_582

    .line 162
    :pswitch_47a
    invoke-direct {p0, p1, v5}, Landroidx/datastore/preferences/protobuf/u0;->y(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_582

    .line 163
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/u0;->w(Ljava/lang/Object;J)I

    move-result v6

    invoke-interface {p2, v7, v6}, Landroidx/datastore/preferences/protobuf/u1;->r(II)V

    goto/16 :goto_582

    .line 164
    :pswitch_48d
    invoke-direct {p0, p1, v5}, Landroidx/datastore/preferences/protobuf/u0;->y(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_582

    .line 165
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/u0;->w(Ljava/lang/Object;J)I

    move-result v6

    invoke-interface {p2, v7, v6}, Landroidx/datastore/preferences/protobuf/u1;->H(II)V

    goto/16 :goto_582

    .line 166
    :pswitch_4a0
    invoke-direct {p0, p1, v5}, Landroidx/datastore/preferences/protobuf/u0;->y(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_582

    .line 167
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/u0;->w(Ljava/lang/Object;J)I

    move-result v6

    invoke-interface {p2, v7, v6}, Landroidx/datastore/preferences/protobuf/u1;->b(II)V

    goto/16 :goto_582

    .line 168
    :pswitch_4b3
    invoke-direct {p0, p1, v5}, Landroidx/datastore/preferences/protobuf/u0;->y(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_582

    .line 169
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/r1;->A(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/datastore/preferences/protobuf/h;

    .line 170
    invoke-interface {p2, v7, v6}, Landroidx/datastore/preferences/protobuf/u1;->w(ILandroidx/datastore/preferences/protobuf/h;)V

    goto/16 :goto_582

    .line 171
    :pswitch_4c8
    invoke-direct {p0, p1, v5}, Landroidx/datastore/preferences/protobuf/u0;->y(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_582

    .line 172
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/r1;->A(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    .line 173
    invoke-direct {p0, v5}, Landroidx/datastore/preferences/protobuf/u0;->s(I)Landroidx/datastore/preferences/protobuf/g1;

    move-result-object v8

    invoke-interface {p2, v7, v6, v8}, Landroidx/datastore/preferences/protobuf/u1;->z(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/g1;)V

    goto/16 :goto_582

    .line 174
    :pswitch_4df
    invoke-direct {p0, p1, v5}, Landroidx/datastore/preferences/protobuf/u0;->y(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_582

    .line 175
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/r1;->A(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {p0, v7, v6, p2}, Landroidx/datastore/preferences/protobuf/u0;->n0(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/u1;)V

    goto/16 :goto_582

    .line 176
    :pswitch_4f2
    invoke-direct {p0, p1, v5}, Landroidx/datastore/preferences/protobuf/u0;->y(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_582

    .line 177
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/u0;->k(Ljava/lang/Object;J)Z

    move-result v6

    invoke-interface {p2, v7, v6}, Landroidx/datastore/preferences/protobuf/u1;->q(IZ)V

    goto/16 :goto_582

    .line 178
    :pswitch_505
    invoke-direct {p0, p1, v5}, Landroidx/datastore/preferences/protobuf/u0;->y(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_582

    .line 179
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/u0;->w(Ljava/lang/Object;J)I

    move-result v6

    invoke-interface {p2, v7, v6}, Landroidx/datastore/preferences/protobuf/u1;->d(II)V

    goto :goto_582

    .line 180
    :pswitch_517
    invoke-direct {p0, p1, v5}, Landroidx/datastore/preferences/protobuf/u0;->y(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_582

    .line 181
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/u0;->H(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v7, v8, v9}, Landroidx/datastore/preferences/protobuf/u1;->h(IJ)V

    goto :goto_582

    .line 182
    :pswitch_529
    invoke-direct {p0, p1, v5}, Landroidx/datastore/preferences/protobuf/u0;->y(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_582

    .line 183
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/u0;->w(Ljava/lang/Object;J)I

    move-result v6

    invoke-interface {p2, v7, v6}, Landroidx/datastore/preferences/protobuf/u1;->t(II)V

    goto :goto_582

    .line 184
    :pswitch_53b
    invoke-direct {p0, p1, v5}, Landroidx/datastore/preferences/protobuf/u0;->y(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_582

    .line 185
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/u0;->H(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v7, v8, v9}, Landroidx/datastore/preferences/protobuf/u1;->n(IJ)V

    goto :goto_582

    .line 186
    :pswitch_54d
    invoke-direct {p0, p1, v5}, Landroidx/datastore/preferences/protobuf/u0;->y(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_582

    .line 187
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/u0;->H(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v7, v8, v9}, Landroidx/datastore/preferences/protobuf/u1;->p(IJ)V

    goto :goto_582

    .line 188
    :pswitch_55f
    invoke-direct {p0, p1, v5}, Landroidx/datastore/preferences/protobuf/u0;->y(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_582

    .line 189
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/u0;->p(Ljava/lang/Object;J)F

    move-result v6

    invoke-interface {p2, v7, v6}, Landroidx/datastore/preferences/protobuf/u1;->E(IF)V

    goto :goto_582

    .line 190
    :pswitch_571
    invoke-direct {p0, p1, v5}, Landroidx/datastore/preferences/protobuf/u0;->y(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_582

    .line 191
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/u0;->l(Ljava/lang/Object;J)D

    move-result-wide v8

    invoke-interface {p2, v7, v8, v9}, Landroidx/datastore/preferences/protobuf/u1;->e(ID)V

    :cond_582
    :goto_582
    add-int/lit8 v5, v5, 0x3

    goto/16 :goto_23

    :cond_586
    :goto_586
    if-eqz v2, :cond_59c

    .line 192
    iget-object v3, p0, Landroidx/datastore/preferences/protobuf/u0;->p:Landroidx/datastore/preferences/protobuf/q;

    invoke-virtual {v3, p2, v2}, Landroidx/datastore/preferences/protobuf/q;->j(Landroidx/datastore/preferences/protobuf/u1;Ljava/util/Map$Entry;)V

    .line 193
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_59a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    goto :goto_586

    :cond_59a
    move-object v2, v1

    goto :goto_586

    .line 194
    :cond_59c
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/u0;->o:Landroidx/datastore/preferences/protobuf/n1;

    invoke-direct {p0, v0, p1, p2}, Landroidx/datastore/preferences/protobuf/u0;->o0(Landroidx/datastore/preferences/protobuf/n1;Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/u1;)V

    return-void

    :pswitch_data_5a2
    .packed-switch 0x0
        :pswitch_571
        :pswitch_55f
        :pswitch_54d
        :pswitch_53b
        :pswitch_529
        :pswitch_517
        :pswitch_505
        :pswitch_4f2
        :pswitch_4df
        :pswitch_4c8
        :pswitch_4b3
        :pswitch_4a0
        :pswitch_48d
        :pswitch_47a
        :pswitch_467
        :pswitch_454
        :pswitch_441
        :pswitch_42a
        :pswitch_417
        :pswitch_404
        :pswitch_3f1
        :pswitch_3de
        :pswitch_3cb
        :pswitch_3b8
        :pswitch_3a5
        :pswitch_392
        :pswitch_37f
        :pswitch_368
        :pswitch_355
        :pswitch_342
        :pswitch_32f
        :pswitch_31c
        :pswitch_309
        :pswitch_2f6
        :pswitch_2e3
        :pswitch_2d0
        :pswitch_2bd
        :pswitch_2aa
        :pswitch_297
        :pswitch_284
        :pswitch_271
        :pswitch_25e
        :pswitch_24b
        :pswitch_238
        :pswitch_225
        :pswitch_212
        :pswitch_1ff
        :pswitch_1ec
        :pswitch_1d9
        :pswitch_1c2
        :pswitch_1b5
        :pswitch_1a2
        :pswitch_18f
        :pswitch_17c
        :pswitch_169
        :pswitch_156
        :pswitch_143
        :pswitch_130
        :pswitch_11d
        :pswitch_10a
        :pswitch_f3
        :pswitch_de
        :pswitch_cb
        :pswitch_b8
        :pswitch_a5
        :pswitch_92
        :pswitch_7f
        :pswitch_6c
        :pswitch_55
    .end packed-switch
.end method

.method private static l(Ljava/lang/Object;J)D
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)D"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/r1;->v(Ljava/lang/Object;J)D

    move-result-wide p0

    return-wide p0
.end method

.method private l0(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/u1;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroidx/datastore/preferences/protobuf/u1;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/u0;->o:Landroidx/datastore/preferences/protobuf/n1;

    invoke-direct {p0, v0, p1, p2}, Landroidx/datastore/preferences/protobuf/u0;->o0(Landroidx/datastore/preferences/protobuf/n1;Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/u1;)V

    .line 2
    iget-boolean v0, p0, Landroidx/datastore/preferences/protobuf/u0;->f:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_21

    .line 3
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/u0;->p:Landroidx/datastore/preferences/protobuf/q;

    invoke-virtual {v0, p1}, Landroidx/datastore/preferences/protobuf/q;->c(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/u;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/u;->n()Z

    move-result v2

    if-nez v2, :cond_21

    .line 5
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/u;->g()Ljava/util/Iterator;

    move-result-object v0

    .line 6
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    goto :goto_23

    :cond_21
    move-object v0, v1

    move-object v2, v0

    .line 7
    :goto_23
    iget-object v3, p0, Landroidx/datastore/preferences/protobuf/u0;->a:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x3

    :goto_28
    if-ltz v3, :cond_58c

    .line 8
    invoke-direct {p0, v3}, Landroidx/datastore/preferences/protobuf/u0;->i0(I)I

    move-result v4

    .line 9
    invoke-direct {p0, v3}, Landroidx/datastore/preferences/protobuf/u0;->Q(I)I

    move-result v5

    :goto_32
    if-eqz v2, :cond_50

    .line 10
    iget-object v6, p0, Landroidx/datastore/preferences/protobuf/u0;->p:Landroidx/datastore/preferences/protobuf/q;

    invoke-virtual {v6, v2}, Landroidx/datastore/preferences/protobuf/q;->a(Ljava/util/Map$Entry;)I

    move-result v6

    if-le v6, v5, :cond_50

    .line 11
    iget-object v6, p0, Landroidx/datastore/preferences/protobuf/u0;->p:Landroidx/datastore/preferences/protobuf/q;

    invoke-virtual {v6, p2, v2}, Landroidx/datastore/preferences/protobuf/q;->j(Landroidx/datastore/preferences/protobuf/u1;Ljava/util/Map$Entry;)V

    .line 12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    goto :goto_32

    :cond_4e
    move-object v2, v1

    goto :goto_32

    .line 13
    :cond_50
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/u0;->h0(I)I

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    packed-switch v6, :pswitch_data_5a4

    goto/16 :goto_588

    .line 14
    :pswitch_5b
    invoke-direct {p0, p1, v5, v3}, Landroidx/datastore/preferences/protobuf/u0;->E(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_588

    .line 15
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/r1;->A(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 16
    invoke-direct {p0, v3}, Landroidx/datastore/preferences/protobuf/u0;->s(I)Landroidx/datastore/preferences/protobuf/g1;

    move-result-object v6

    .line 17
    invoke-interface {p2, v5, v4, v6}, Landroidx/datastore/preferences/protobuf/u1;->O(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/g1;)V

    goto/16 :goto_588

    .line 18
    :pswitch_72
    invoke-direct {p0, p1, v5, v3}, Landroidx/datastore/preferences/protobuf/u0;->E(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_588

    .line 19
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/u0;->W(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Landroidx/datastore/preferences/protobuf/u1;->D(IJ)V

    goto/16 :goto_588

    .line 20
    :pswitch_85
    invoke-direct {p0, p1, v5, v3}, Landroidx/datastore/preferences/protobuf/u0;->E(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_588

    .line 21
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/u0;->V(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v5, v4}, Landroidx/datastore/preferences/protobuf/u1;->M(II)V

    goto/16 :goto_588

    .line 22
    :pswitch_98
    invoke-direct {p0, p1, v5, v3}, Landroidx/datastore/preferences/protobuf/u0;->E(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_588

    .line 23
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/u0;->W(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Landroidx/datastore/preferences/protobuf/u1;->x(IJ)V

    goto/16 :goto_588

    .line 24
    :pswitch_ab
    invoke-direct {p0, p1, v5, v3}, Landroidx/datastore/preferences/protobuf/u0;->E(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_588

    .line 25
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/u0;->V(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v5, v4}, Landroidx/datastore/preferences/protobuf/u1;->r(II)V

    goto/16 :goto_588

    .line 26
    :pswitch_be
    invoke-direct {p0, p1, v5, v3}, Landroidx/datastore/preferences/protobuf/u0;->E(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_588

    .line 27
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/u0;->V(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v5, v4}, Landroidx/datastore/preferences/protobuf/u1;->H(II)V

    goto/16 :goto_588

    .line 28
    :pswitch_d1
    invoke-direct {p0, p1, v5, v3}, Landroidx/datastore/preferences/protobuf/u0;->E(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_588

    .line 29
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/u0;->V(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v5, v4}, Landroidx/datastore/preferences/protobuf/u1;->b(II)V

    goto/16 :goto_588

    .line 30
    :pswitch_e4
    invoke-direct {p0, p1, v5, v3}, Landroidx/datastore/preferences/protobuf/u0;->E(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_588

    .line 31
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/r1;->A(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/datastore/preferences/protobuf/h;

    .line 32
    invoke-interface {p2, v5, v4}, Landroidx/datastore/preferences/protobuf/u1;->w(ILandroidx/datastore/preferences/protobuf/h;)V

    goto/16 :goto_588

    .line 33
    :pswitch_f9
    invoke-direct {p0, p1, v5, v3}, Landroidx/datastore/preferences/protobuf/u0;->E(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_588

    .line 34
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/r1;->A(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 35
    invoke-direct {p0, v3}, Landroidx/datastore/preferences/protobuf/u0;->s(I)Landroidx/datastore/preferences/protobuf/g1;

    move-result-object v6

    invoke-interface {p2, v5, v4, v6}, Landroidx/datastore/preferences/protobuf/u1;->z(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/g1;)V

    goto/16 :goto_588

    .line 36
    :pswitch_110
    invoke-direct {p0, p1, v5, v3}, Landroidx/datastore/preferences/protobuf/u0;->E(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_588

    .line 37
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/r1;->A(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v5, v4, p2}, Landroidx/datastore/preferences/protobuf/u0;->n0(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/u1;)V

    goto/16 :goto_588

    .line 38
    :pswitch_123
    invoke-direct {p0, p1, v5, v3}, Landroidx/datastore/preferences/protobuf/u0;->E(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_588

    .line 39
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/u0;->S(Ljava/lang/Object;J)Z

    move-result v4

    invoke-interface {p2, v5, v4}, Landroidx/datastore/preferences/protobuf/u1;->q(IZ)V

    goto/16 :goto_588

    .line 40
    :pswitch_136
    invoke-direct {p0, p1, v5, v3}, Landroidx/datastore/preferences/protobuf/u0;->E(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_588

    .line 41
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/u0;->V(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v5, v4}, Landroidx/datastore/preferences/protobuf/u1;->d(II)V

    goto/16 :goto_588

    .line 42
    :pswitch_149
    invoke-direct {p0, p1, v5, v3}, Landroidx/datastore/preferences/protobuf/u0;->E(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_588

    .line 43
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/u0;->W(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Landroidx/datastore/preferences/protobuf/u1;->h(IJ)V

    goto/16 :goto_588

    .line 44
    :pswitch_15c
    invoke-direct {p0, p1, v5, v3}, Landroidx/datastore/preferences/protobuf/u0;->E(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_588

    .line 45
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/u0;->V(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v5, v4}, Landroidx/datastore/preferences/protobuf/u1;->t(II)V

    goto/16 :goto_588

    .line 46
    :pswitch_16f
    invoke-direct {p0, p1, v5, v3}, Landroidx/datastore/preferences/protobuf/u0;->E(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_588

    .line 47
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/u0;->W(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Landroidx/datastore/preferences/protobuf/u1;->n(IJ)V

    goto/16 :goto_588

    .line 48
    :pswitch_182
    invoke-direct {p0, p1, v5, v3}, Landroidx/datastore/preferences/protobuf/u0;->E(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_588

    .line 49
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/u0;->W(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Landroidx/datastore/preferences/protobuf/u1;->p(IJ)V

    goto/16 :goto_588

    .line 50
    :pswitch_195
    invoke-direct {p0, p1, v5, v3}, Landroidx/datastore/preferences/protobuf/u0;->E(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_588

    .line 51
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/u0;->U(Ljava/lang/Object;J)F

    move-result v4

    invoke-interface {p2, v5, v4}, Landroidx/datastore/preferences/protobuf/u1;->E(IF)V

    goto/16 :goto_588

    .line 52
    :pswitch_1a8
    invoke-direct {p0, p1, v5, v3}, Landroidx/datastore/preferences/protobuf/u0;->E(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_588

    .line 53
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/u0;->T(Ljava/lang/Object;J)D

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Landroidx/datastore/preferences/protobuf/u1;->e(ID)V

    goto/16 :goto_588

    .line 54
    :pswitch_1bb
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/r1;->A(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, p2, v5, v4, v3}, Landroidx/datastore/preferences/protobuf/u0;->m0(Landroidx/datastore/preferences/protobuf/u1;ILjava/lang/Object;I)V

    goto/16 :goto_588

    .line 55
    :pswitch_1c8
    invoke-direct {p0, v3}, Landroidx/datastore/preferences/protobuf/u0;->Q(I)I

    move-result v5

    .line 56
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/r1;->A(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 57
    invoke-direct {p0, v3}, Landroidx/datastore/preferences/protobuf/u0;->s(I)Landroidx/datastore/preferences/protobuf/g1;

    move-result-object v6

    .line 58
    invoke-static {v5, v4, p2, v6}, Landroidx/datastore/preferences/protobuf/i1;->U(ILjava/util/List;Landroidx/datastore/preferences/protobuf/u1;Landroidx/datastore/preferences/protobuf/g1;)V

    goto/16 :goto_588

    .line 59
    :pswitch_1df
    invoke-direct {p0, v3}, Landroidx/datastore/preferences/protobuf/u0;->Q(I)I

    move-result v5

    .line 60
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/r1;->A(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 61
    invoke-static {v5, v4, p2, v7}, Landroidx/datastore/preferences/protobuf/i1;->b0(ILjava/util/List;Landroidx/datastore/preferences/protobuf/u1;Z)V

    goto/16 :goto_588

    .line 62
    :pswitch_1f2
    invoke-direct {p0, v3}, Landroidx/datastore/preferences/protobuf/u0;->Q(I)I

    move-result v5

    .line 63
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/r1;->A(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 64
    invoke-static {v5, v4, p2, v7}, Landroidx/datastore/preferences/protobuf/i1;->a0(ILjava/util/List;Landroidx/datastore/preferences/protobuf/u1;Z)V

    goto/16 :goto_588

    .line 65
    :pswitch_205
    invoke-direct {p0, v3}, Landroidx/datastore/preferences/protobuf/u0;->Q(I)I

    move-result v5

    .line 66
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/r1;->A(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 67
    invoke-static {v5, v4, p2, v7}, Landroidx/datastore/preferences/protobuf/i1;->Z(ILjava/util/List;Landroidx/datastore/preferences/protobuf/u1;Z)V

    goto/16 :goto_588

    .line 68
    :pswitch_218
    invoke-direct {p0, v3}, Landroidx/datastore/preferences/protobuf/u0;->Q(I)I

    move-result v5

    .line 69
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/r1;->A(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 70
    invoke-static {v5, v4, p2, v7}, Landroidx/datastore/preferences/protobuf/i1;->Y(ILjava/util/List;Landroidx/datastore/preferences/protobuf/u1;Z)V

    goto/16 :goto_588

    .line 71
    :pswitch_22b
    invoke-direct {p0, v3}, Landroidx/datastore/preferences/protobuf/u0;->Q(I)I

    move-result v5

    .line 72
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/r1;->A(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 73
    invoke-static {v5, v4, p2, v7}, Landroidx/datastore/preferences/protobuf/i1;->Q(ILjava/util/List;Landroidx/datastore/preferences/protobuf/u1;Z)V

    goto/16 :goto_588

    .line 74
    :pswitch_23e
    invoke-direct {p0, v3}, Landroidx/datastore/preferences/protobuf/u0;->Q(I)I

    move-result v5

    .line 75
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/r1;->A(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 76
    invoke-static {v5, v4, p2, v7}, Landroidx/datastore/preferences/protobuf/i1;->d0(ILjava/util/List;Landroidx/datastore/preferences/protobuf/u1;Z)V

    goto/16 :goto_588

    .line 77
    :pswitch_251
    invoke-direct {p0, v3}, Landroidx/datastore/preferences/protobuf/u0;->Q(I)I

    move-result v5

    .line 78
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/r1;->A(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 79
    invoke-static {v5, v4, p2, v7}, Landroidx/datastore/preferences/protobuf/i1;->N(ILjava/util/List;Landroidx/datastore/preferences/protobuf/u1;Z)V

    goto/16 :goto_588

    .line 80
    :pswitch_264
    invoke-direct {p0, v3}, Landroidx/datastore/preferences/protobuf/u0;->Q(I)I

    move-result v5

    .line 81
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/r1;->A(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 82
    invoke-static {v5, v4, p2, v7}, Landroidx/datastore/preferences/protobuf/i1;->R(ILjava/util/List;Landroidx/datastore/preferences/protobuf/u1;Z)V

    goto/16 :goto_588

    .line 83
    :pswitch_277
    invoke-direct {p0, v3}, Landroidx/datastore/preferences/protobuf/u0;->Q(I)I

    move-result v5

    .line 84
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/r1;->A(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 85
    invoke-static {v5, v4, p2, v7}, Landroidx/datastore/preferences/protobuf/i1;->S(ILjava/util/List;Landroidx/datastore/preferences/protobuf/u1;Z)V

    goto/16 :goto_588

    .line 86
    :pswitch_28a
    invoke-direct {p0, v3}, Landroidx/datastore/preferences/protobuf/u0;->Q(I)I

    move-result v5

    .line 87
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/r1;->A(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 88
    invoke-static {v5, v4, p2, v7}, Landroidx/datastore/preferences/protobuf/i1;->V(ILjava/util/List;Landroidx/datastore/preferences/protobuf/u1;Z)V

    goto/16 :goto_588

    .line 89
    :pswitch_29d
    invoke-direct {p0, v3}, Landroidx/datastore/preferences/protobuf/u0;->Q(I)I

    move-result v5

    .line 90
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/r1;->A(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 91
    invoke-static {v5, v4, p2, v7}, Landroidx/datastore/preferences/protobuf/i1;->e0(ILjava/util/List;Landroidx/datastore/preferences/protobuf/u1;Z)V

    goto/16 :goto_588

    .line 92
    :pswitch_2b0
    invoke-direct {p0, v3}, Landroidx/datastore/preferences/protobuf/u0;->Q(I)I

    move-result v5

    .line 93
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/r1;->A(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 94
    invoke-static {v5, v4, p2, v7}, Landroidx/datastore/preferences/protobuf/i1;->W(ILjava/util/List;Landroidx/datastore/preferences/protobuf/u1;Z)V

    goto/16 :goto_588

    .line 95
    :pswitch_2c3
    invoke-direct {p0, v3}, Landroidx/datastore/preferences/protobuf/u0;->Q(I)I

    move-result v5

    .line 96
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/r1;->A(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 97
    invoke-static {v5, v4, p2, v7}, Landroidx/datastore/preferences/protobuf/i1;->T(ILjava/util/List;Landroidx/datastore/preferences/protobuf/u1;Z)V

    goto/16 :goto_588

    .line 98
    :pswitch_2d6
    invoke-direct {p0, v3}, Landroidx/datastore/preferences/protobuf/u0;->Q(I)I

    move-result v5

    .line 99
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Landroidx/datastore/preferences/protobuf/r1;->A(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 100
    invoke-static {v5, v4, p2, v7}, Landroidx/datastore/preferences/protobuf/i1;->P(ILjava/util/List;Landroidx/datastore/preferences/protobuf/u1;Z)V

    goto/16 :goto_588

    .line 101
    :pswitch_2e9
    invoke-direct {p0, v3}, Landroidx/datastore/preferences/protobuf/u0;->Q(I)I

    move-result v5

    .line 102
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/r1;->A(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 103
    invoke-static {v5, v4, p2, v8}, Landroidx/datastore/preferences/protobuf/i1;->b0(ILjava/util/List;Landroidx/datastore/preferences/protobuf/u1;Z)V

    goto/16 :goto_588

    .line 104
    :pswitch_2fc
    invoke-direct {p0, v3}, Landroidx/datastore/preferences/protobuf/u0;->Q(I)I

    move-result v5

    .line 105
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/r1;->A(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 106
    invoke-static {v5, v4, p2, v8}, Landroidx/datastore/preferences/protobuf/i1;->a0(ILjava/util/List;Landroidx/datastore/preferences/protobuf/u1;Z)V

    goto/16 :goto_588

    .line 107
    :pswitch_30f
    invoke-direct {p0, v3}, Landroidx/datastore/preferences/protobuf/u0;->Q(I)I

    move-result v5

    .line 108
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/r1;->A(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 109
    invoke-static {v5, v4, p2, v8}, Landroidx/datastore/preferences/protobuf/i1;->Z(ILjava/util/List;Landroidx/datastore/preferences/protobuf/u1;Z)V

    goto/16 :goto_588

    .line 110
    :pswitch_322
    invoke-direct {p0, v3}, Landroidx/datastore/preferences/protobuf/u0;->Q(I)I

    move-result v5

    .line 111
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/r1;->A(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 112
    invoke-static {v5, v4, p2, v8}, Landroidx/datastore/preferences/protobuf/i1;->Y(ILjava/util/List;Landroidx/datastore/preferences/protobuf/u1;Z)V

    goto/16 :goto_588

    .line 113
    :pswitch_335
    invoke-direct {p0, v3}, Landroidx/datastore/preferences/protobuf/u0;->Q(I)I

    move-result v5

    .line 114
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/r1;->A(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 115
    invoke-static {v5, v4, p2, v8}, Landroidx/datastore/preferences/protobuf/i1;->Q(ILjava/util/List;Landroidx/datastore/preferences/protobuf/u1;Z)V

    goto/16 :goto_588

    .line 116
    :pswitch_348
    invoke-direct {p0, v3}, Landroidx/datastore/preferences/protobuf/u0;->Q(I)I

    move-result v5

    .line 117
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/r1;->A(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 118
    invoke-static {v5, v4, p2, v8}, Landroidx/datastore/preferences/protobuf/i1;->d0(ILjava/util/List;Landroidx/datastore/preferences/protobuf/u1;Z)V

    goto/16 :goto_588

    .line 119
    :pswitch_35b
    invoke-direct {p0, v3}, Landroidx/datastore/preferences/protobuf/u0;->Q(I)I

    move-result v5

    .line 120
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/r1;->A(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 121
    invoke-static {v5, v4, p2}, Landroidx/datastore/preferences/protobuf/i1;->O(ILjava/util/List;Landroidx/datastore/preferences/protobuf/u1;)V

    goto/16 :goto_588

    .line 122
    :pswitch_36e
    invoke-direct {p0, v3}, Landroidx/datastore/preferences/protobuf/u0;->Q(I)I

    move-result v5

    .line 123
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/r1;->A(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 124
    invoke-direct {p0, v3}, Landroidx/datastore/preferences/protobuf/u0;->s(I)Landroidx/datastore/preferences/protobuf/g1;

    move-result-object v6

    .line 125
    invoke-static {v5, v4, p2, v6}, Landroidx/datastore/preferences/protobuf/i1;->X(ILjava/util/List;Landroidx/datastore/preferences/protobuf/u1;Landroidx/datastore/preferences/protobuf/g1;)V

    goto/16 :goto_588

    .line 126
    :pswitch_385
    invoke-direct {p0, v3}, Landroidx/datastore/preferences/protobuf/u0;->Q(I)I

    move-result v5

    .line 127
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/r1;->A(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 128
    invoke-static {v5, v4, p2}, Landroidx/datastore/preferences/protobuf/i1;->c0(ILjava/util/List;Landroidx/datastore/preferences/protobuf/u1;)V

    goto/16 :goto_588

    .line 129
    :pswitch_398
    invoke-direct {p0, v3}, Landroidx/datastore/preferences/protobuf/u0;->Q(I)I

    move-result v5

    .line 130
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/r1;->A(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 131
    invoke-static {v5, v4, p2, v8}, Landroidx/datastore/preferences/protobuf/i1;->N(ILjava/util/List;Landroidx/datastore/preferences/protobuf/u1;Z)V

    goto/16 :goto_588

    .line 132
    :pswitch_3ab
    invoke-direct {p0, v3}, Landroidx/datastore/preferences/protobuf/u0;->Q(I)I

    move-result v5

    .line 133
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/r1;->A(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 134
    invoke-static {v5, v4, p2, v8}, Landroidx/datastore/preferences/protobuf/i1;->R(ILjava/util/List;Landroidx/datastore/preferences/protobuf/u1;Z)V

    goto/16 :goto_588

    .line 135
    :pswitch_3be
    invoke-direct {p0, v3}, Landroidx/datastore/preferences/protobuf/u0;->Q(I)I

    move-result v5

    .line 136
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/r1;->A(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 137
    invoke-static {v5, v4, p2, v8}, Landroidx/datastore/preferences/protobuf/i1;->S(ILjava/util/List;Landroidx/datastore/preferences/protobuf/u1;Z)V

    goto/16 :goto_588

    .line 138
    :pswitch_3d1
    invoke-direct {p0, v3}, Landroidx/datastore/preferences/protobuf/u0;->Q(I)I

    move-result v5

    .line 139
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/r1;->A(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 140
    invoke-static {v5, v4, p2, v8}, Landroidx/datastore/preferences/protobuf/i1;->V(ILjava/util/List;Landroidx/datastore/preferences/protobuf/u1;Z)V

    goto/16 :goto_588

    .line 141
    :pswitch_3e4
    invoke-direct {p0, v3}, Landroidx/datastore/preferences/protobuf/u0;->Q(I)I

    move-result v5

    .line 142
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/r1;->A(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 143
    invoke-static {v5, v4, p2, v8}, Landroidx/datastore/preferences/protobuf/i1;->e0(ILjava/util/List;Landroidx/datastore/preferences/protobuf/u1;Z)V

    goto/16 :goto_588

    .line 144
    :pswitch_3f7
    invoke-direct {p0, v3}, Landroidx/datastore/preferences/protobuf/u0;->Q(I)I

    move-result v5

    .line 145
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/r1;->A(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 146
    invoke-static {v5, v4, p2, v8}, Landroidx/datastore/preferences/protobuf/i1;->W(ILjava/util/List;Landroidx/datastore/preferences/protobuf/u1;Z)V

    goto/16 :goto_588

    .line 147
    :pswitch_40a
    invoke-direct {p0, v3}, Landroidx/datastore/preferences/protobuf/u0;->Q(I)I

    move-result v5

    .line 148
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/r1;->A(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 149
    invoke-static {v5, v4, p2, v8}, Landroidx/datastore/preferences/protobuf/i1;->T(ILjava/util/List;Landroidx/datastore/preferences/protobuf/u1;Z)V

    goto/16 :goto_588

    .line 150
    :pswitch_41d
    invoke-direct {p0, v3}, Landroidx/datastore/preferences/protobuf/u0;->Q(I)I

    move-result v5

    .line 151
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/r1;->A(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 152
    invoke-static {v5, v4, p2, v8}, Landroidx/datastore/preferences/protobuf/i1;->P(ILjava/util/List;Landroidx/datastore/preferences/protobuf/u1;Z)V

    goto/16 :goto_588

    .line 153
    :pswitch_430
    invoke-direct {p0, p1, v3}, Landroidx/datastore/preferences/protobuf/u0;->y(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_588

    .line 154
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/r1;->A(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 155
    invoke-direct {p0, v3}, Landroidx/datastore/preferences/protobuf/u0;->s(I)Landroidx/datastore/preferences/protobuf/g1;

    move-result-object v6

    .line 156
    invoke-interface {p2, v5, v4, v6}, Landroidx/datastore/preferences/protobuf/u1;->O(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/g1;)V

    goto/16 :goto_588

    .line 157
    :pswitch_447
    invoke-direct {p0, p1, v3}, Landroidx/datastore/preferences/protobuf/u0;->y(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_588

    .line 158
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/u0;->H(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Landroidx/datastore/preferences/protobuf/u1;->D(IJ)V

    goto/16 :goto_588

    .line 159
    :pswitch_45a
    invoke-direct {p0, p1, v3}, Landroidx/datastore/preferences/protobuf/u0;->y(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_588

    .line 160
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/u0;->w(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v5, v4}, Landroidx/datastore/preferences/protobuf/u1;->M(II)V

    goto/16 :goto_588

    .line 161
    :pswitch_46d
    invoke-direct {p0, p1, v3}, Landroidx/datastore/preferences/protobuf/u0;->y(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_588

    .line 162
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/u0;->H(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Landroidx/datastore/preferences/protobuf/u1;->x(IJ)V

    goto/16 :goto_588

    .line 163
    :pswitch_480
    invoke-direct {p0, p1, v3}, Landroidx/datastore/preferences/protobuf/u0;->y(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_588

    .line 164
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/u0;->w(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v5, v4}, Landroidx/datastore/preferences/protobuf/u1;->r(II)V

    goto/16 :goto_588

    .line 165
    :pswitch_493
    invoke-direct {p0, p1, v3}, Landroidx/datastore/preferences/protobuf/u0;->y(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_588

    .line 166
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/u0;->w(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v5, v4}, Landroidx/datastore/preferences/protobuf/u1;->H(II)V

    goto/16 :goto_588

    .line 167
    :pswitch_4a6
    invoke-direct {p0, p1, v3}, Landroidx/datastore/preferences/protobuf/u0;->y(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_588

    .line 168
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/u0;->w(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v5, v4}, Landroidx/datastore/preferences/protobuf/u1;->b(II)V

    goto/16 :goto_588

    .line 169
    :pswitch_4b9
    invoke-direct {p0, p1, v3}, Landroidx/datastore/preferences/protobuf/u0;->y(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_588

    .line 170
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/r1;->A(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/datastore/preferences/protobuf/h;

    .line 171
    invoke-interface {p2, v5, v4}, Landroidx/datastore/preferences/protobuf/u1;->w(ILandroidx/datastore/preferences/protobuf/h;)V

    goto/16 :goto_588

    .line 172
    :pswitch_4ce
    invoke-direct {p0, p1, v3}, Landroidx/datastore/preferences/protobuf/u0;->y(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_588

    .line 173
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/r1;->A(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 174
    invoke-direct {p0, v3}, Landroidx/datastore/preferences/protobuf/u0;->s(I)Landroidx/datastore/preferences/protobuf/g1;

    move-result-object v6

    invoke-interface {p2, v5, v4, v6}, Landroidx/datastore/preferences/protobuf/u1;->z(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/g1;)V

    goto/16 :goto_588

    .line 175
    :pswitch_4e5
    invoke-direct {p0, p1, v3}, Landroidx/datastore/preferences/protobuf/u0;->y(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_588

    .line 176
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/r1;->A(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v5, v4, p2}, Landroidx/datastore/preferences/protobuf/u0;->n0(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/u1;)V

    goto/16 :goto_588

    .line 177
    :pswitch_4f8
    invoke-direct {p0, p1, v3}, Landroidx/datastore/preferences/protobuf/u0;->y(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_588

    .line 178
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/u0;->k(Ljava/lang/Object;J)Z

    move-result v4

    invoke-interface {p2, v5, v4}, Landroidx/datastore/preferences/protobuf/u1;->q(IZ)V

    goto/16 :goto_588

    .line 179
    :pswitch_50b
    invoke-direct {p0, p1, v3}, Landroidx/datastore/preferences/protobuf/u0;->y(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_588

    .line 180
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/u0;->w(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v5, v4}, Landroidx/datastore/preferences/protobuf/u1;->d(II)V

    goto :goto_588

    .line 181
    :pswitch_51d
    invoke-direct {p0, p1, v3}, Landroidx/datastore/preferences/protobuf/u0;->y(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_588

    .line 182
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/u0;->H(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Landroidx/datastore/preferences/protobuf/u1;->h(IJ)V

    goto :goto_588

    .line 183
    :pswitch_52f
    invoke-direct {p0, p1, v3}, Landroidx/datastore/preferences/protobuf/u0;->y(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_588

    .line 184
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/u0;->w(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v5, v4}, Landroidx/datastore/preferences/protobuf/u1;->t(II)V

    goto :goto_588

    .line 185
    :pswitch_541
    invoke-direct {p0, p1, v3}, Landroidx/datastore/preferences/protobuf/u0;->y(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_588

    .line 186
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/u0;->H(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Landroidx/datastore/preferences/protobuf/u1;->n(IJ)V

    goto :goto_588

    .line 187
    :pswitch_553
    invoke-direct {p0, p1, v3}, Landroidx/datastore/preferences/protobuf/u0;->y(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_588

    .line 188
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/u0;->H(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Landroidx/datastore/preferences/protobuf/u1;->p(IJ)V

    goto :goto_588

    .line 189
    :pswitch_565
    invoke-direct {p0, p1, v3}, Landroidx/datastore/preferences/protobuf/u0;->y(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_588

    .line 190
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/u0;->p(Ljava/lang/Object;J)F

    move-result v4

    invoke-interface {p2, v5, v4}, Landroidx/datastore/preferences/protobuf/u1;->E(IF)V

    goto :goto_588

    .line 191
    :pswitch_577
    invoke-direct {p0, p1, v3}, Landroidx/datastore/preferences/protobuf/u0;->y(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_588

    .line 192
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/u0;->l(Ljava/lang/Object;J)D

    move-result-wide v6

    invoke-interface {p2, v5, v6, v7}, Landroidx/datastore/preferences/protobuf/u1;->e(ID)V

    :cond_588
    :goto_588
    add-int/lit8 v3, v3, -0x3

    goto/16 :goto_28

    :cond_58c
    :goto_58c
    if-eqz v2, :cond_5a3

    .line 193
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/u0;->p:Landroidx/datastore/preferences/protobuf/q;

    invoke-virtual {p1, p2, v2}, Landroidx/datastore/preferences/protobuf/q;->j(Landroidx/datastore/preferences/protobuf/u1;Ljava/util/Map$Entry;)V

    .line 194
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5a1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    move-object v2, p1

    goto :goto_58c

    :cond_5a1
    move-object v2, v1

    goto :goto_58c

    :cond_5a3
    return-void

    :pswitch_data_5a4
    .packed-switch 0x0
        :pswitch_577
        :pswitch_565
        :pswitch_553
        :pswitch_541
        :pswitch_52f
        :pswitch_51d
        :pswitch_50b
        :pswitch_4f8
        :pswitch_4e5
        :pswitch_4ce
        :pswitch_4b9
        :pswitch_4a6
        :pswitch_493
        :pswitch_480
        :pswitch_46d
        :pswitch_45a
        :pswitch_447
        :pswitch_430
        :pswitch_41d
        :pswitch_40a
        :pswitch_3f7
        :pswitch_3e4
        :pswitch_3d1
        :pswitch_3be
        :pswitch_3ab
        :pswitch_398
        :pswitch_385
        :pswitch_36e
        :pswitch_35b
        :pswitch_348
        :pswitch_335
        :pswitch_322
        :pswitch_30f
        :pswitch_2fc
        :pswitch_2e9
        :pswitch_2d6
        :pswitch_2c3
        :pswitch_2b0
        :pswitch_29d
        :pswitch_28a
        :pswitch_277
        :pswitch_264
        :pswitch_251
        :pswitch_23e
        :pswitch_22b
        :pswitch_218
        :pswitch_205
        :pswitch_1f2
        :pswitch_1df
        :pswitch_1c8
        :pswitch_1bb
        :pswitch_1a8
        :pswitch_195
        :pswitch_182
        :pswitch_16f
        :pswitch_15c
        :pswitch_149
        :pswitch_136
        :pswitch_123
        :pswitch_110
        :pswitch_f9
        :pswitch_e4
        :pswitch_d1
        :pswitch_be
        :pswitch_ab
        :pswitch_98
        :pswitch_85
        :pswitch_72
        :pswitch_5b
    .end packed-switch
.end method

.method private m(Ljava/lang/Object;Ljava/lang/Object;I)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)Z"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p3}, Landroidx/datastore/preferences/protobuf/u0;->i0(I)I

    move-result v0

    .line 2
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v1

    .line 3
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/u0;->h0(I)I

    move-result v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v0, :pswitch_data_1b2

    return v4

    .line 4
    :pswitch_12
    invoke-direct {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/u0;->D(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_27

    .line 5
    invoke-static {p1, v1, v2}, Landroidx/datastore/preferences/protobuf/r1;->A(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, v1, v2}, Landroidx/datastore/preferences/protobuf/r1;->A(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    .line 6
    invoke-static {p1, p2}, Landroidx/datastore/preferences/protobuf/i1;->K(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_27

    const/4 v3, 0x1

    :cond_27
    return v3

    .line 7
    :pswitch_28
    invoke-static {p1, v1, v2}, Landroidx/datastore/preferences/protobuf/r1;->A(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, v1, v2}, Landroidx/datastore/preferences/protobuf/r1;->A(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    .line 8
    invoke-static {p1, p2}, Landroidx/datastore/preferences/protobuf/i1;->K(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 9
    :pswitch_35
    invoke-static {p1, v1, v2}, Landroidx/datastore/preferences/protobuf/r1;->A(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, v1, v2}, Landroidx/datastore/preferences/protobuf/r1;->A(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    .line 10
    invoke-static {p1, p2}, Landroidx/datastore/preferences/protobuf/i1;->K(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 11
    :pswitch_42
    invoke-direct {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/u0;->b(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_57

    .line 12
    invoke-static {p1, v1, v2}, Landroidx/datastore/preferences/protobuf/r1;->A(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, v1, v2}, Landroidx/datastore/preferences/protobuf/r1;->A(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    .line 13
    invoke-static {p1, p2}, Landroidx/datastore/preferences/protobuf/i1;->K(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_57

    const/4 v3, 0x1

    :cond_57
    return v3

    .line 14
    :pswitch_58
    invoke-direct {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/u0;->b(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_6b

    .line 15
    invoke-static {p1, v1, v2}, Landroidx/datastore/preferences/protobuf/r1;->y(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {p2, v1, v2}, Landroidx/datastore/preferences/protobuf/r1;->y(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p3, v5, p1

    if-nez p3, :cond_6b

    const/4 v3, 0x1

    :cond_6b
    return v3

    .line 16
    :pswitch_6c
    invoke-direct {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/u0;->b(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_7d

    .line 17
    invoke-static {p1, v1, v2}, Landroidx/datastore/preferences/protobuf/r1;->x(Ljava/lang/Object;J)I

    move-result p1

    invoke-static {p2, v1, v2}, Landroidx/datastore/preferences/protobuf/r1;->x(Ljava/lang/Object;J)I

    move-result p2

    if-ne p1, p2, :cond_7d

    const/4 v3, 0x1

    :cond_7d
    return v3

    .line 18
    :pswitch_7e
    invoke-direct {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/u0;->b(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_91

    .line 19
    invoke-static {p1, v1, v2}, Landroidx/datastore/preferences/protobuf/r1;->y(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {p2, v1, v2}, Landroidx/datastore/preferences/protobuf/r1;->y(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p3, v5, p1

    if-nez p3, :cond_91

    const/4 v3, 0x1

    :cond_91
    return v3

    .line 20
    :pswitch_92
    invoke-direct {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/u0;->b(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_a3

    .line 21
    invoke-static {p1, v1, v2}, Landroidx/datastore/preferences/protobuf/r1;->x(Ljava/lang/Object;J)I

    move-result p1

    invoke-static {p2, v1, v2}, Landroidx/datastore/preferences/protobuf/r1;->x(Ljava/lang/Object;J)I

    move-result p2

    if-ne p1, p2, :cond_a3

    const/4 v3, 0x1

    :cond_a3
    return v3

    .line 22
    :pswitch_a4
    invoke-direct {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/u0;->b(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_b5

    .line 23
    invoke-static {p1, v1, v2}, Landroidx/datastore/preferences/protobuf/r1;->x(Ljava/lang/Object;J)I

    move-result p1

    invoke-static {p2, v1, v2}, Landroidx/datastore/preferences/protobuf/r1;->x(Ljava/lang/Object;J)I

    move-result p2

    if-ne p1, p2, :cond_b5

    const/4 v3, 0x1

    :cond_b5
    return v3

    .line 24
    :pswitch_b6
    invoke-direct {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/u0;->b(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_c7

    .line 25
    invoke-static {p1, v1, v2}, Landroidx/datastore/preferences/protobuf/r1;->x(Ljava/lang/Object;J)I

    move-result p1

    invoke-static {p2, v1, v2}, Landroidx/datastore/preferences/protobuf/r1;->x(Ljava/lang/Object;J)I

    move-result p2

    if-ne p1, p2, :cond_c7

    const/4 v3, 0x1

    :cond_c7
    return v3

    .line 26
    :pswitch_c8
    invoke-direct {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/u0;->b(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_dd

    .line 27
    invoke-static {p1, v1, v2}, Landroidx/datastore/preferences/protobuf/r1;->A(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, v1, v2}, Landroidx/datastore/preferences/protobuf/r1;->A(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    .line 28
    invoke-static {p1, p2}, Landroidx/datastore/preferences/protobuf/i1;->K(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_dd

    const/4 v3, 0x1

    :cond_dd
    return v3

    .line 29
    :pswitch_de
    invoke-direct {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/u0;->b(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_f3

    .line 30
    invoke-static {p1, v1, v2}, Landroidx/datastore/preferences/protobuf/r1;->A(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, v1, v2}, Landroidx/datastore/preferences/protobuf/r1;->A(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    .line 31
    invoke-static {p1, p2}, Landroidx/datastore/preferences/protobuf/i1;->K(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f3

    const/4 v3, 0x1

    :cond_f3
    return v3

    .line 32
    :pswitch_f4
    invoke-direct {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/u0;->b(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_109

    .line 33
    invoke-static {p1, v1, v2}, Landroidx/datastore/preferences/protobuf/r1;->A(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, v1, v2}, Landroidx/datastore/preferences/protobuf/r1;->A(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    .line 34
    invoke-static {p1, p2}, Landroidx/datastore/preferences/protobuf/i1;->K(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_109

    const/4 v3, 0x1

    :cond_109
    return v3

    .line 35
    :pswitch_10a
    invoke-direct {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/u0;->b(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_11b

    .line 36
    invoke-static {p1, v1, v2}, Landroidx/datastore/preferences/protobuf/r1;->p(Ljava/lang/Object;J)Z

    move-result p1

    invoke-static {p2, v1, v2}, Landroidx/datastore/preferences/protobuf/r1;->p(Ljava/lang/Object;J)Z

    move-result p2

    if-ne p1, p2, :cond_11b

    const/4 v3, 0x1

    :cond_11b
    return v3

    .line 37
    :pswitch_11c
    invoke-direct {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/u0;->b(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_12d

    .line 38
    invoke-static {p1, v1, v2}, Landroidx/datastore/preferences/protobuf/r1;->x(Ljava/lang/Object;J)I

    move-result p1

    invoke-static {p2, v1, v2}, Landroidx/datastore/preferences/protobuf/r1;->x(Ljava/lang/Object;J)I

    move-result p2

    if-ne p1, p2, :cond_12d

    const/4 v3, 0x1

    :cond_12d
    return v3

    .line 39
    :pswitch_12e
    invoke-direct {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/u0;->b(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_141

    .line 40
    invoke-static {p1, v1, v2}, Landroidx/datastore/preferences/protobuf/r1;->y(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {p2, v1, v2}, Landroidx/datastore/preferences/protobuf/r1;->y(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p3, v5, p1

    if-nez p3, :cond_141

    const/4 v3, 0x1

    :cond_141
    return v3

    .line 41
    :pswitch_142
    invoke-direct {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/u0;->b(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_153

    .line 42
    invoke-static {p1, v1, v2}, Landroidx/datastore/preferences/protobuf/r1;->x(Ljava/lang/Object;J)I

    move-result p1

    invoke-static {p2, v1, v2}, Landroidx/datastore/preferences/protobuf/r1;->x(Ljava/lang/Object;J)I

    move-result p2

    if-ne p1, p2, :cond_153

    const/4 v3, 0x1

    :cond_153
    return v3

    .line 43
    :pswitch_154
    invoke-direct {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/u0;->b(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_167

    .line 44
    invoke-static {p1, v1, v2}, Landroidx/datastore/preferences/protobuf/r1;->y(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {p2, v1, v2}, Landroidx/datastore/preferences/protobuf/r1;->y(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p3, v5, p1

    if-nez p3, :cond_167

    const/4 v3, 0x1

    :cond_167
    return v3

    .line 45
    :pswitch_168
    invoke-direct {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/u0;->b(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_17b

    .line 46
    invoke-static {p1, v1, v2}, Landroidx/datastore/preferences/protobuf/r1;->y(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {p2, v1, v2}, Landroidx/datastore/preferences/protobuf/r1;->y(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p3, v5, p1

    if-nez p3, :cond_17b

    const/4 v3, 0x1

    :cond_17b
    return v3

    .line 47
    :pswitch_17c
    invoke-direct {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/u0;->b(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_195

    .line 48
    invoke-static {p1, v1, v2}, Landroidx/datastore/preferences/protobuf/r1;->w(Ljava/lang/Object;J)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    .line 49
    invoke-static {p2, v1, v2}, Landroidx/datastore/preferences/protobuf/r1;->w(Ljava/lang/Object;J)F

    move-result p2

    invoke-static {p2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p2

    if-ne p1, p2, :cond_195

    const/4 v3, 0x1

    :cond_195
    return v3

    .line 50
    :pswitch_196
    invoke-direct {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/u0;->b(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p3

    if-eqz p3, :cond_1b1

    .line 51
    invoke-static {p1, v1, v2}, Landroidx/datastore/preferences/protobuf/r1;->v(Ljava/lang/Object;J)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    .line 52
    invoke-static {p2, v1, v2}, Landroidx/datastore/preferences/protobuf/r1;->v(Ljava/lang/Object;J)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p1

    cmp-long p3, v5, p1

    if-nez p3, :cond_1b1

    const/4 v3, 0x1

    :cond_1b1
    return v3

    :pswitch_data_1b2
    .packed-switch 0x0
        :pswitch_196
        :pswitch_17c
        :pswitch_168
        :pswitch_154
        :pswitch_142
        :pswitch_12e
        :pswitch_11c
        :pswitch_10a
        :pswitch_f4
        :pswitch_de
        :pswitch_c8
        :pswitch_b6
        :pswitch_a4
        :pswitch_92
        :pswitch_7e
        :pswitch_6c
        :pswitch_58
        :pswitch_42
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_28
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
    .end packed-switch
.end method

.method private m0(Landroidx/datastore/preferences/protobuf/u1;ILjava/lang/Object;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/datastore/preferences/protobuf/u1;",
            "I",
            "Ljava/lang/Object;",
            "I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p3, :cond_15

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/u0;->q:Landroidx/datastore/preferences/protobuf/m0;

    .line 2
    invoke-direct {p0, p4}, Landroidx/datastore/preferences/protobuf/u0;->r(I)Ljava/lang/Object;

    move-result-object p4

    invoke-interface {v0, p4}, Landroidx/datastore/preferences/protobuf/m0;->c(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/k0$a;

    move-result-object p4

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/u0;->q:Landroidx/datastore/preferences/protobuf/m0;

    .line 3
    invoke-interface {v0, p3}, Landroidx/datastore/preferences/protobuf/m0;->h(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p3

    .line 4
    invoke-interface {p1, p2, p4, p3}, Landroidx/datastore/preferences/protobuf/u1;->L(ILandroidx/datastore/preferences/protobuf/k0$a;Ljava/util/Map;)V

    :cond_15
    return-void
.end method

.method private final n(Ljava/lang/Object;ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/n1;)Ljava/lang/Object;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "ITUB;",
            "Landroidx/datastore/preferences/protobuf/n1<",
            "TUT;TUB;>;)TUB;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Landroidx/datastore/preferences/protobuf/u0;->Q(I)I

    move-result v2

    .line 2
    invoke-direct {p0, p2}, Landroidx/datastore/preferences/protobuf/u0;->i0(I)I

    move-result v0

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v0

    .line 3
    invoke-static {p1, v0, v1}, Landroidx/datastore/preferences/protobuf/r1;->A(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_13

    return-object p3

    .line 4
    :cond_13
    invoke-direct {p0, p2}, Landroidx/datastore/preferences/protobuf/u0;->q(I)Landroidx/datastore/preferences/protobuf/a0$e;

    move-result-object v4

    if-nez v4, :cond_1a

    return-object p3

    .line 5
    :cond_1a
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/u0;->q:Landroidx/datastore/preferences/protobuf/m0;

    invoke-interface {v0, p1}, Landroidx/datastore/preferences/protobuf/m0;->d(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    move-object v0, p0

    move v1, p2

    move-object v5, p3

    move-object v6, p4

    .line 6
    invoke-direct/range {v0 .. v6}, Landroidx/datastore/preferences/protobuf/u0;->o(IILjava/util/Map;Landroidx/datastore/preferences/protobuf/a0$e;Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/n1;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private n0(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/u1;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 2
    check-cast p2, Ljava/lang/String;

    invoke-interface {p3, p1, p2}, Landroidx/datastore/preferences/protobuf/u1;->m(ILjava/lang/String;)V

    goto :goto_f

    .line 3
    :cond_a
    check-cast p2, Landroidx/datastore/preferences/protobuf/h;

    invoke-interface {p3, p1, p2}, Landroidx/datastore/preferences/protobuf/u1;->w(ILandroidx/datastore/preferences/protobuf/h;)V

    :goto_f
    return-void
.end method

.method private final o(IILjava/util/Map;Landroidx/datastore/preferences/protobuf/a0$e;Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/n1;)Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Landroidx/datastore/preferences/protobuf/a0$e;",
            "TUB;",
            "Landroidx/datastore/preferences/protobuf/n1<",
            "TUT;TUB;>;)TUB;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/u0;->q:Landroidx/datastore/preferences/protobuf/m0;

    .line 2
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/u0;->r(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Landroidx/datastore/preferences/protobuf/m0;->c(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/k0$a;

    move-result-object p1

    .line 3
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_12
    :goto_12
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_65

    .line 4
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p4, v1}, Landroidx/datastore/preferences/protobuf/a0$e;->a(I)Z

    move-result v1

    if-nez v1, :cond_12

    if-nez p5, :cond_34

    .line 6
    invoke-virtual {p6}, Landroidx/datastore/preferences/protobuf/n1;->n()Ljava/lang/Object;

    move-result-object p5

    .line 7
    :cond_34
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v1, v2}, Landroidx/datastore/preferences/protobuf/k0;->b(Landroidx/datastore/preferences/protobuf/k0$a;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    .line 8
    invoke-static {v1}, Landroidx/datastore/preferences/protobuf/h;->r(I)Landroidx/datastore/preferences/protobuf/h$h;

    move-result-object v1

    .line 9
    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/h$h;->b()Landroidx/datastore/preferences/protobuf/k;

    move-result-object v2

    .line 10
    :try_start_48
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, p1, v3, v0}, Landroidx/datastore/preferences/protobuf/k0;->e(Landroidx/datastore/preferences/protobuf/k;Landroidx/datastore/preferences/protobuf/k0$a;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_53} :catch_5e

    .line 11
    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/h$h;->a()Landroidx/datastore/preferences/protobuf/h;

    move-result-object v0

    invoke-virtual {p6, p5, p2, v0}, Landroidx/datastore/preferences/protobuf/n1;->d(Ljava/lang/Object;ILandroidx/datastore/preferences/protobuf/h;)V

    .line 12
    invoke-interface {p3}, Ljava/util/Iterator;->remove()V

    goto :goto_12

    :catch_5e
    move-exception p1

    .line 13
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_65
    return-object p5
.end method

.method private o0(Landroidx/datastore/preferences/protobuf/n1;Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/u1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/datastore/preferences/protobuf/n1<",
            "TUT;TUB;>;TT;",
            "Landroidx/datastore/preferences/protobuf/u1;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p2}, Landroidx/datastore/preferences/protobuf/n1;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2, p3}, Landroidx/datastore/preferences/protobuf/n1;->t(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/u1;)V

    return-void
.end method

.method private static p(Ljava/lang/Object;J)F
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)F"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/r1;->w(Ljava/lang/Object;J)F

    move-result p0

    return p0
.end method

.method private q(I)Landroidx/datastore/preferences/protobuf/a0$e;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/u0;->b:[Ljava/lang/Object;

    div-int/lit8 p1, p1, 0x3

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    check-cast p1, Landroidx/datastore/preferences/protobuf/a0$e;

    return-object p1
.end method

.method private r(I)Ljava/lang/Object;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/u0;->b:[Ljava/lang/Object;

    div-int/lit8 p1, p1, 0x3

    mul-int/lit8 p1, p1, 0x2

    aget-object p1, v0, p1

    return-object p1
.end method

.method private s(I)Landroidx/datastore/preferences/protobuf/g1;
    .registers 5

    .line 1
    div-int/lit8 p1, p1, 0x3

    mul-int/lit8 p1, p1, 0x2

    .line 2
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/u0;->b:[Ljava/lang/Object;

    aget-object v0, v0, p1

    check-cast v0, Landroidx/datastore/preferences/protobuf/g1;

    if-eqz v0, :cond_d

    return-object v0

    .line 3
    :cond_d
    invoke-static {}, Landroidx/datastore/preferences/protobuf/c1;->a()Landroidx/datastore/preferences/protobuf/c1;

    move-result-object v0

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/u0;->b:[Ljava/lang/Object;

    add-int/lit8 v2, p1, 0x1

    aget-object v1, v1, v2

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v0, v1}, Landroidx/datastore/preferences/protobuf/c1;->d(Ljava/lang/Class;)Landroidx/datastore/preferences/protobuf/g1;

    move-result-object v0

    .line 4
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/u0;->b:[Ljava/lang/Object;

    aput-object v0, v1, p1

    return-object v0
.end method

.method private t(Ljava/lang/Object;)I
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    sget-object v2, Landroidx/datastore/preferences/protobuf/u0;->s:Lsun/misc/Unsafe;

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 2
    :goto_a
    iget-object v8, v0, Landroidx/datastore/preferences/protobuf/u0;->a:[I

    array-length v8, v8

    if-ge v5, v8, :cond_51e

    .line 3
    invoke-direct {v0, v5}, Landroidx/datastore/preferences/protobuf/u0;->i0(I)I

    move-result v8

    .line 4
    invoke-direct {v0, v5}, Landroidx/datastore/preferences/protobuf/u0;->Q(I)I

    move-result v9

    .line 5
    invoke-static {v8}, Landroidx/datastore/preferences/protobuf/u0;->h0(I)I

    move-result v10

    const/16 v11, 0x11

    const v12, 0xfffff

    const/4 v13, 0x1

    if-gt v10, v11, :cond_39

    .line 6
    iget-object v11, v0, Landroidx/datastore/preferences/protobuf/u0;->a:[I

    add-int/lit8 v14, v5, 0x2

    aget v11, v11, v14

    and-int/2addr v12, v11

    ushr-int/lit8 v14, v11, 0x14

    shl-int v14, v13, v14

    move v15, v14

    if-eq v12, v4, :cond_37

    int-to-long v13, v12

    .line 7
    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v7

    move v4, v12

    :cond_37
    move v14, v15

    goto :goto_57

    .line 8
    :cond_39
    iget-boolean v11, v0, Landroidx/datastore/preferences/protobuf/u0;->i:Z

    if-eqz v11, :cond_55

    sget-object v11, Landroidx/datastore/preferences/protobuf/v;->c0:Landroidx/datastore/preferences/protobuf/v;

    .line 9
    invoke-virtual {v11}, Landroidx/datastore/preferences/protobuf/v;->c()I

    move-result v11

    if-lt v10, v11, :cond_55

    sget-object v11, Landroidx/datastore/preferences/protobuf/v;->p0:Landroidx/datastore/preferences/protobuf/v;

    .line 10
    invoke-virtual {v11}, Landroidx/datastore/preferences/protobuf/v;->c()I

    move-result v11

    if-gt v10, v11, :cond_55

    .line 11
    iget-object v11, v0, Landroidx/datastore/preferences/protobuf/u0;->a:[I

    add-int/lit8 v13, v5, 0x2

    aget v11, v11, v13

    and-int/2addr v11, v12

    goto :goto_56

    :cond_55
    const/4 v11, 0x0

    :goto_56
    const/4 v14, 0x0

    .line 12
    :goto_57
    invoke-static {v8}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v12

    const/4 v8, 0x0

    move/from16 v16, v4

    const-wide/16 v3, 0x0

    packed-switch v10, :pswitch_data_536

    goto/16 :goto_41f

    .line 13
    :pswitch_65
    invoke-direct {v0, v1, v9, v5}, Landroidx/datastore/preferences/protobuf/u0;->E(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_41f

    .line 14
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/datastore/preferences/protobuf/r0;

    .line 15
    invoke-direct {v0, v5}, Landroidx/datastore/preferences/protobuf/u0;->s(I)Landroidx/datastore/preferences/protobuf/g1;

    move-result-object v4

    .line 16
    invoke-static {v9, v3, v4}, Landroidx/datastore/preferences/protobuf/k;->s(ILandroidx/datastore/preferences/protobuf/r0;Landroidx/datastore/preferences/protobuf/g1;)I

    move-result v3

    goto/16 :goto_41e

    .line 17
    :pswitch_7b
    invoke-direct {v0, v1, v9, v5}, Landroidx/datastore/preferences/protobuf/u0;->E(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_41f

    .line 18
    invoke-static {v1, v12, v13}, Landroidx/datastore/preferences/protobuf/u0;->W(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v9, v3, v4}, Landroidx/datastore/preferences/protobuf/k;->R(IJ)I

    move-result v3

    goto/16 :goto_41e

    .line 19
    :pswitch_8b
    invoke-direct {v0, v1, v9, v5}, Landroidx/datastore/preferences/protobuf/u0;->E(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_41f

    .line 20
    invoke-static {v1, v12, v13}, Landroidx/datastore/preferences/protobuf/u0;->V(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v9, v3}, Landroidx/datastore/preferences/protobuf/k;->P(II)I

    move-result v3

    goto/16 :goto_41e

    .line 21
    :pswitch_9b
    invoke-direct {v0, v1, v9, v5}, Landroidx/datastore/preferences/protobuf/u0;->E(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_41f

    .line 22
    invoke-static {v9, v3, v4}, Landroidx/datastore/preferences/protobuf/k;->N(IJ)I

    move-result v3

    goto/16 :goto_41e

    .line 23
    :pswitch_a7
    invoke-direct {v0, v1, v9, v5}, Landroidx/datastore/preferences/protobuf/u0;->E(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_41f

    const/4 v3, 0x0

    .line 24
    invoke-static {v9, v3}, Landroidx/datastore/preferences/protobuf/k;->L(II)I

    move-result v4

    goto/16 :goto_461

    .line 25
    :pswitch_b4
    invoke-direct {v0, v1, v9, v5}, Landroidx/datastore/preferences/protobuf/u0;->E(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_41f

    .line 26
    invoke-static {v1, v12, v13}, Landroidx/datastore/preferences/protobuf/u0;->V(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v9, v3}, Landroidx/datastore/preferences/protobuf/k;->k(II)I

    move-result v3

    goto/16 :goto_41e

    .line 27
    :pswitch_c4
    invoke-direct {v0, v1, v9, v5}, Landroidx/datastore/preferences/protobuf/u0;->E(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_41f

    .line 28
    invoke-static {v1, v12, v13}, Landroidx/datastore/preferences/protobuf/u0;->V(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v9, v3}, Landroidx/datastore/preferences/protobuf/k;->W(II)I

    move-result v3

    goto/16 :goto_41e

    .line 29
    :pswitch_d4
    invoke-direct {v0, v1, v9, v5}, Landroidx/datastore/preferences/protobuf/u0;->E(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_41f

    .line 30
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/datastore/preferences/protobuf/h;

    .line 31
    invoke-static {v9, v3}, Landroidx/datastore/preferences/protobuf/k;->g(ILandroidx/datastore/preferences/protobuf/h;)I

    move-result v3

    goto/16 :goto_41e

    .line 32
    :pswitch_e6
    invoke-direct {v0, v1, v9, v5}, Landroidx/datastore/preferences/protobuf/u0;->E(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_41f

    .line 33
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 34
    invoke-direct {v0, v5}, Landroidx/datastore/preferences/protobuf/u0;->s(I)Landroidx/datastore/preferences/protobuf/g1;

    move-result-object v4

    invoke-static {v9, v3, v4}, Landroidx/datastore/preferences/protobuf/i1;->o(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/g1;)I

    move-result v3

    goto/16 :goto_41e

    .line 35
    :pswitch_fa
    invoke-direct {v0, v1, v9, v5}, Landroidx/datastore/preferences/protobuf/u0;->E(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_41f

    .line 36
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 37
    instance-of v4, v3, Landroidx/datastore/preferences/protobuf/h;

    if-eqz v4, :cond_110

    .line 38
    check-cast v3, Landroidx/datastore/preferences/protobuf/h;

    invoke-static {v9, v3}, Landroidx/datastore/preferences/protobuf/k;->g(ILandroidx/datastore/preferences/protobuf/h;)I

    move-result v3

    goto/16 :goto_41e

    .line 39
    :cond_110
    check-cast v3, Ljava/lang/String;

    invoke-static {v9, v3}, Landroidx/datastore/preferences/protobuf/k;->T(ILjava/lang/String;)I

    move-result v3

    goto/16 :goto_41e

    .line 40
    :pswitch_118
    invoke-direct {v0, v1, v9, v5}, Landroidx/datastore/preferences/protobuf/u0;->E(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_41f

    const/4 v3, 0x1

    .line 41
    invoke-static {v9, v3}, Landroidx/datastore/preferences/protobuf/k;->d(IZ)I

    move-result v3

    goto/16 :goto_41e

    .line 42
    :pswitch_125
    invoke-direct {v0, v1, v9, v5}, Landroidx/datastore/preferences/protobuf/u0;->E(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_41f

    const/4 v3, 0x0

    .line 43
    invoke-static {v9, v3}, Landroidx/datastore/preferences/protobuf/k;->m(II)I

    move-result v4

    goto/16 :goto_461

    .line 44
    :pswitch_132
    invoke-direct {v0, v1, v9, v5}, Landroidx/datastore/preferences/protobuf/u0;->E(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_41f

    .line 45
    invoke-static {v9, v3, v4}, Landroidx/datastore/preferences/protobuf/k;->o(IJ)I

    move-result v3

    goto/16 :goto_41e

    .line 46
    :pswitch_13e
    invoke-direct {v0, v1, v9, v5}, Landroidx/datastore/preferences/protobuf/u0;->E(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_41f

    .line 47
    invoke-static {v1, v12, v13}, Landroidx/datastore/preferences/protobuf/u0;->V(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v9, v3}, Landroidx/datastore/preferences/protobuf/k;->v(II)I

    move-result v3

    goto/16 :goto_41e

    .line 48
    :pswitch_14e
    invoke-direct {v0, v1, v9, v5}, Landroidx/datastore/preferences/protobuf/u0;->E(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_41f

    .line 49
    invoke-static {v1, v12, v13}, Landroidx/datastore/preferences/protobuf/u0;->W(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v9, v3, v4}, Landroidx/datastore/preferences/protobuf/k;->Y(IJ)I

    move-result v3

    goto/16 :goto_41e

    .line 50
    :pswitch_15e
    invoke-direct {v0, v1, v9, v5}, Landroidx/datastore/preferences/protobuf/u0;->E(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_41f

    .line 51
    invoke-static {v1, v12, v13}, Landroidx/datastore/preferences/protobuf/u0;->W(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v9, v3, v4}, Landroidx/datastore/preferences/protobuf/k;->x(IJ)I

    move-result v3

    goto/16 :goto_41e

    .line 52
    :pswitch_16e
    invoke-direct {v0, v1, v9, v5}, Landroidx/datastore/preferences/protobuf/u0;->E(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_41f

    .line 53
    invoke-static {v9, v8}, Landroidx/datastore/preferences/protobuf/k;->q(IF)I

    move-result v3

    goto/16 :goto_41e

    .line 54
    :pswitch_17a
    invoke-direct {v0, v1, v9, v5}, Landroidx/datastore/preferences/protobuf/u0;->E(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_41f

    const-wide/16 v3, 0x0

    .line 55
    invoke-static {v9, v3, v4}, Landroidx/datastore/preferences/protobuf/k;->i(ID)I

    move-result v3

    goto/16 :goto_41e

    .line 56
    :pswitch_188
    iget-object v3, v0, Landroidx/datastore/preferences/protobuf/u0;->q:Landroidx/datastore/preferences/protobuf/m0;

    .line 57
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v5}, Landroidx/datastore/preferences/protobuf/u0;->r(I)Ljava/lang/Object;

    move-result-object v8

    .line 58
    invoke-interface {v3, v9, v4, v8}, Landroidx/datastore/preferences/protobuf/m0;->f(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    goto/16 :goto_41e

    .line 59
    :pswitch_198
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 60
    invoke-direct {v0, v5}, Landroidx/datastore/preferences/protobuf/u0;->s(I)Landroidx/datastore/preferences/protobuf/g1;

    move-result-object v4

    .line 61
    invoke-static {v9, v3, v4}, Landroidx/datastore/preferences/protobuf/i1;->j(ILjava/util/List;Landroidx/datastore/preferences/protobuf/g1;)I

    move-result v3

    goto/16 :goto_41e

    .line 62
    :pswitch_1a8
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 63
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/i1;->t(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_41f

    .line 64
    iget-boolean v4, v0, Landroidx/datastore/preferences/protobuf/u0;->i:Z

    if-eqz v4, :cond_1bc

    int-to-long v10, v11

    .line 65
    invoke-virtual {v2, v1, v10, v11, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 66
    :cond_1bc
    invoke-static {v9}, Landroidx/datastore/preferences/protobuf/k;->V(I)I

    move-result v4

    .line 67
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/k;->X(I)I

    move-result v8

    goto/16 :goto_347

    .line 68
    :pswitch_1c6
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 69
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/i1;->r(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_41f

    .line 70
    iget-boolean v4, v0, Landroidx/datastore/preferences/protobuf/u0;->i:Z

    if-eqz v4, :cond_1da

    int-to-long v10, v11

    .line 71
    invoke-virtual {v2, v1, v10, v11, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 72
    :cond_1da
    invoke-static {v9}, Landroidx/datastore/preferences/protobuf/k;->V(I)I

    move-result v4

    .line 73
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/k;->X(I)I

    move-result v8

    goto/16 :goto_347

    .line 74
    :pswitch_1e4
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 75
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/i1;->i(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_41f

    .line 76
    iget-boolean v4, v0, Landroidx/datastore/preferences/protobuf/u0;->i:Z

    if-eqz v4, :cond_1f8

    int-to-long v10, v11

    .line 77
    invoke-virtual {v2, v1, v10, v11, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 78
    :cond_1f8
    invoke-static {v9}, Landroidx/datastore/preferences/protobuf/k;->V(I)I

    move-result v4

    .line 79
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/k;->X(I)I

    move-result v8

    goto/16 :goto_347

    .line 80
    :pswitch_202
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 81
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/i1;->g(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_41f

    .line 82
    iget-boolean v4, v0, Landroidx/datastore/preferences/protobuf/u0;->i:Z

    if-eqz v4, :cond_216

    int-to-long v10, v11

    .line 83
    invoke-virtual {v2, v1, v10, v11, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 84
    :cond_216
    invoke-static {v9}, Landroidx/datastore/preferences/protobuf/k;->V(I)I

    move-result v4

    .line 85
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/k;->X(I)I

    move-result v8

    goto/16 :goto_347

    .line 86
    :pswitch_220
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 87
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/i1;->e(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_41f

    .line 88
    iget-boolean v4, v0, Landroidx/datastore/preferences/protobuf/u0;->i:Z

    if-eqz v4, :cond_234

    int-to-long v10, v11

    .line 89
    invoke-virtual {v2, v1, v10, v11, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 90
    :cond_234
    invoke-static {v9}, Landroidx/datastore/preferences/protobuf/k;->V(I)I

    move-result v4

    .line 91
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/k;->X(I)I

    move-result v8

    goto/16 :goto_347

    .line 92
    :pswitch_23e
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 93
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/i1;->w(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_41f

    .line 94
    iget-boolean v4, v0, Landroidx/datastore/preferences/protobuf/u0;->i:Z

    if-eqz v4, :cond_252

    int-to-long v10, v11

    .line 95
    invoke-virtual {v2, v1, v10, v11, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 96
    :cond_252
    invoke-static {v9}, Landroidx/datastore/preferences/protobuf/k;->V(I)I

    move-result v4

    .line 97
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/k;->X(I)I

    move-result v8

    goto/16 :goto_347

    .line 98
    :pswitch_25c
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 99
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/i1;->b(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_41f

    .line 100
    iget-boolean v4, v0, Landroidx/datastore/preferences/protobuf/u0;->i:Z

    if-eqz v4, :cond_270

    int-to-long v10, v11

    .line 101
    invoke-virtual {v2, v1, v10, v11, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 102
    :cond_270
    invoke-static {v9}, Landroidx/datastore/preferences/protobuf/k;->V(I)I

    move-result v4

    .line 103
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/k;->X(I)I

    move-result v8

    goto/16 :goto_347

    .line 104
    :pswitch_27a
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 105
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/i1;->g(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_41f

    .line 106
    iget-boolean v4, v0, Landroidx/datastore/preferences/protobuf/u0;->i:Z

    if-eqz v4, :cond_28e

    int-to-long v10, v11

    .line 107
    invoke-virtual {v2, v1, v10, v11, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 108
    :cond_28e
    invoke-static {v9}, Landroidx/datastore/preferences/protobuf/k;->V(I)I

    move-result v4

    .line 109
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/k;->X(I)I

    move-result v8

    goto/16 :goto_347

    .line 110
    :pswitch_298
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 111
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/i1;->i(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_41f

    .line 112
    iget-boolean v4, v0, Landroidx/datastore/preferences/protobuf/u0;->i:Z

    if-eqz v4, :cond_2ac

    int-to-long v10, v11

    .line 113
    invoke-virtual {v2, v1, v10, v11, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 114
    :cond_2ac
    invoke-static {v9}, Landroidx/datastore/preferences/protobuf/k;->V(I)I

    move-result v4

    .line 115
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/k;->X(I)I

    move-result v8

    goto/16 :goto_347

    .line 116
    :pswitch_2b6
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 117
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/i1;->l(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_41f

    .line 118
    iget-boolean v4, v0, Landroidx/datastore/preferences/protobuf/u0;->i:Z

    if-eqz v4, :cond_2ca

    int-to-long v10, v11

    .line 119
    invoke-virtual {v2, v1, v10, v11, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 120
    :cond_2ca
    invoke-static {v9}, Landroidx/datastore/preferences/protobuf/k;->V(I)I

    move-result v4

    .line 121
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/k;->X(I)I

    move-result v8

    goto/16 :goto_347

    .line 122
    :pswitch_2d4
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 123
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/i1;->y(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_41f

    .line 124
    iget-boolean v4, v0, Landroidx/datastore/preferences/protobuf/u0;->i:Z

    if-eqz v4, :cond_2e8

    int-to-long v10, v11

    .line 125
    invoke-virtual {v2, v1, v10, v11, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 126
    :cond_2e8
    invoke-static {v9}, Landroidx/datastore/preferences/protobuf/k;->V(I)I

    move-result v4

    .line 127
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/k;->X(I)I

    move-result v8

    goto :goto_347

    .line 128
    :pswitch_2f1
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 129
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/i1;->n(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_41f

    .line 130
    iget-boolean v4, v0, Landroidx/datastore/preferences/protobuf/u0;->i:Z

    if-eqz v4, :cond_305

    int-to-long v10, v11

    .line 131
    invoke-virtual {v2, v1, v10, v11, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 132
    :cond_305
    invoke-static {v9}, Landroidx/datastore/preferences/protobuf/k;->V(I)I

    move-result v4

    .line 133
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/k;->X(I)I

    move-result v8

    goto :goto_347

    .line 134
    :pswitch_30e
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 135
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/i1;->g(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_41f

    .line 136
    iget-boolean v4, v0, Landroidx/datastore/preferences/protobuf/u0;->i:Z

    if-eqz v4, :cond_322

    int-to-long v10, v11

    .line 137
    invoke-virtual {v2, v1, v10, v11, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 138
    :cond_322
    invoke-static {v9}, Landroidx/datastore/preferences/protobuf/k;->V(I)I

    move-result v4

    .line 139
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/k;->X(I)I

    move-result v8

    goto :goto_347

    .line 140
    :pswitch_32b
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 141
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/i1;->i(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_41f

    .line 142
    iget-boolean v4, v0, Landroidx/datastore/preferences/protobuf/u0;->i:Z

    if-eqz v4, :cond_33f

    int-to-long v10, v11

    .line 143
    invoke-virtual {v2, v1, v10, v11, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 144
    :cond_33f
    invoke-static {v9}, Landroidx/datastore/preferences/protobuf/k;->V(I)I

    move-result v4

    .line 145
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/k;->X(I)I

    move-result v8

    :goto_347
    add-int/2addr v4, v8

    add-int/2addr v4, v3

    goto/16 :goto_461

    .line 146
    :pswitch_34b
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    const/4 v4, 0x0

    .line 147
    invoke-static {v9, v3, v4}, Landroidx/datastore/preferences/protobuf/i1;->s(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_41e

    :pswitch_358
    const/4 v4, 0x0

    .line 148
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 149
    invoke-static {v9, v3, v4}, Landroidx/datastore/preferences/protobuf/i1;->q(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_41e

    :pswitch_365
    const/4 v4, 0x0

    .line 150
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 151
    invoke-static {v9, v3, v4}, Landroidx/datastore/preferences/protobuf/i1;->h(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_41e

    :pswitch_372
    const/4 v4, 0x0

    .line 152
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 153
    invoke-static {v9, v3, v4}, Landroidx/datastore/preferences/protobuf/i1;->f(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_41e

    :pswitch_37f
    const/4 v4, 0x0

    .line 154
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 155
    invoke-static {v9, v3, v4}, Landroidx/datastore/preferences/protobuf/i1;->d(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_41e

    :pswitch_38c
    const/4 v4, 0x0

    .line 156
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 157
    invoke-static {v9, v3, v4}, Landroidx/datastore/preferences/protobuf/i1;->v(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_41e

    .line 158
    :pswitch_399
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 159
    invoke-static {v9, v3}, Landroidx/datastore/preferences/protobuf/i1;->c(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_41e

    .line 160
    :pswitch_3a5
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-direct {v0, v5}, Landroidx/datastore/preferences/protobuf/u0;->s(I)Landroidx/datastore/preferences/protobuf/g1;

    move-result-object v4

    .line 161
    invoke-static {v9, v3, v4}, Landroidx/datastore/preferences/protobuf/i1;->p(ILjava/util/List;Landroidx/datastore/preferences/protobuf/g1;)I

    move-result v3

    goto :goto_41e

    .line 162
    :pswitch_3b4
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v9, v3}, Landroidx/datastore/preferences/protobuf/i1;->u(ILjava/util/List;)I

    move-result v3

    goto :goto_41e

    .line 163
    :pswitch_3bf
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    const/4 v4, 0x0

    .line 164
    invoke-static {v9, v3, v4}, Landroidx/datastore/preferences/protobuf/i1;->a(ILjava/util/List;Z)I

    move-result v3

    goto :goto_41e

    :pswitch_3cb
    const/4 v4, 0x0

    .line 165
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 166
    invoke-static {v9, v3, v4}, Landroidx/datastore/preferences/protobuf/i1;->f(ILjava/util/List;Z)I

    move-result v3

    goto :goto_41e

    :pswitch_3d7
    const/4 v4, 0x0

    .line 167
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 168
    invoke-static {v9, v3, v4}, Landroidx/datastore/preferences/protobuf/i1;->h(ILjava/util/List;Z)I

    move-result v3

    goto :goto_41e

    :pswitch_3e3
    const/4 v4, 0x0

    .line 169
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 170
    invoke-static {v9, v3, v4}, Landroidx/datastore/preferences/protobuf/i1;->k(ILjava/util/List;Z)I

    move-result v3

    goto :goto_41e

    :pswitch_3ef
    const/4 v4, 0x0

    .line 171
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 172
    invoke-static {v9, v3, v4}, Landroidx/datastore/preferences/protobuf/i1;->x(ILjava/util/List;Z)I

    move-result v3

    goto :goto_41e

    :pswitch_3fb
    const/4 v4, 0x0

    .line 173
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 174
    invoke-static {v9, v3, v4}, Landroidx/datastore/preferences/protobuf/i1;->m(ILjava/util/List;Z)I

    move-result v3

    goto :goto_41e

    :pswitch_407
    const/4 v4, 0x0

    .line 175
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 176
    invoke-static {v9, v3, v4}, Landroidx/datastore/preferences/protobuf/i1;->f(ILjava/util/List;Z)I

    move-result v3

    goto :goto_41e

    :pswitch_413
    const/4 v4, 0x0

    .line 177
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 178
    invoke-static {v9, v3, v4}, Landroidx/datastore/preferences/protobuf/i1;->h(ILjava/util/List;Z)I

    move-result v3

    :goto_41e
    add-int/2addr v6, v3

    :cond_41f
    :goto_41f
    const/4 v10, 0x0

    goto/16 :goto_518

    :pswitch_422
    and-int v3, v7, v14

    if-eqz v3, :cond_41f

    .line 179
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/datastore/preferences/protobuf/r0;

    .line 180
    invoke-direct {v0, v5}, Landroidx/datastore/preferences/protobuf/u0;->s(I)Landroidx/datastore/preferences/protobuf/g1;

    move-result-object v4

    .line 181
    invoke-static {v9, v3, v4}, Landroidx/datastore/preferences/protobuf/k;->s(ILandroidx/datastore/preferences/protobuf/r0;Landroidx/datastore/preferences/protobuf/g1;)I

    move-result v3

    goto :goto_41e

    :pswitch_435
    and-int v3, v7, v14

    if-eqz v3, :cond_41f

    .line 182
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v9, v3, v4}, Landroidx/datastore/preferences/protobuf/k;->R(IJ)I

    move-result v3

    goto :goto_41e

    :pswitch_442
    and-int v3, v7, v14

    if-eqz v3, :cond_41f

    .line 183
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v9, v3}, Landroidx/datastore/preferences/protobuf/k;->P(II)I

    move-result v3

    goto :goto_41e

    :pswitch_44f
    and-int v8, v7, v14

    if-eqz v8, :cond_41f

    .line 184
    invoke-static {v9, v3, v4}, Landroidx/datastore/preferences/protobuf/k;->N(IJ)I

    move-result v3

    goto :goto_41e

    :pswitch_458
    and-int v3, v7, v14

    if-eqz v3, :cond_41f

    const/4 v3, 0x0

    .line 185
    invoke-static {v9, v3}, Landroidx/datastore/preferences/protobuf/k;->L(II)I

    move-result v4

    :goto_461
    add-int/2addr v6, v4

    goto :goto_41f

    :pswitch_463
    and-int v3, v7, v14

    if-eqz v3, :cond_41f

    .line 186
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v9, v3}, Landroidx/datastore/preferences/protobuf/k;->k(II)I

    move-result v3

    goto :goto_41e

    :pswitch_470
    and-int v3, v7, v14

    if-eqz v3, :cond_41f

    .line 187
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v9, v3}, Landroidx/datastore/preferences/protobuf/k;->W(II)I

    move-result v3

    goto :goto_41e

    :pswitch_47d
    and-int v3, v7, v14

    if-eqz v3, :cond_41f

    .line 188
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/datastore/preferences/protobuf/h;

    .line 189
    invoke-static {v9, v3}, Landroidx/datastore/preferences/protobuf/k;->g(ILandroidx/datastore/preferences/protobuf/h;)I

    move-result v3

    goto :goto_41e

    :pswitch_48c
    and-int v3, v7, v14

    if-eqz v3, :cond_41f

    .line 190
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 191
    invoke-direct {v0, v5}, Landroidx/datastore/preferences/protobuf/u0;->s(I)Landroidx/datastore/preferences/protobuf/g1;

    move-result-object v4

    invoke-static {v9, v3, v4}, Landroidx/datastore/preferences/protobuf/i1;->o(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/g1;)I

    move-result v3

    goto :goto_41e

    :pswitch_49d
    and-int v3, v7, v14

    if-eqz v3, :cond_41f

    .line 192
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 193
    instance-of v4, v3, Landroidx/datastore/preferences/protobuf/h;

    if-eqz v4, :cond_4b1

    .line 194
    check-cast v3, Landroidx/datastore/preferences/protobuf/h;

    invoke-static {v9, v3}, Landroidx/datastore/preferences/protobuf/k;->g(ILandroidx/datastore/preferences/protobuf/h;)I

    move-result v3

    goto/16 :goto_41e

    .line 195
    :cond_4b1
    check-cast v3, Ljava/lang/String;

    invoke-static {v9, v3}, Landroidx/datastore/preferences/protobuf/k;->T(ILjava/lang/String;)I

    move-result v3

    goto/16 :goto_41e

    :pswitch_4b9
    and-int v3, v7, v14

    if-eqz v3, :cond_41f

    const/4 v3, 0x1

    .line 196
    invoke-static {v9, v3}, Landroidx/datastore/preferences/protobuf/k;->d(IZ)I

    move-result v3

    goto/16 :goto_41e

    :pswitch_4c4
    and-int v3, v7, v14

    if-eqz v3, :cond_41f

    const/4 v10, 0x0

    .line 197
    invoke-static {v9, v10}, Landroidx/datastore/preferences/protobuf/k;->m(II)I

    move-result v3

    goto :goto_517

    :pswitch_4ce
    const/4 v10, 0x0

    and-int v8, v7, v14

    if-eqz v8, :cond_518

    .line 198
    invoke-static {v9, v3, v4}, Landroidx/datastore/preferences/protobuf/k;->o(IJ)I

    move-result v3

    goto :goto_517

    :pswitch_4d8
    const/4 v10, 0x0

    and-int v3, v7, v14

    if-eqz v3, :cond_518

    .line 199
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v9, v3}, Landroidx/datastore/preferences/protobuf/k;->v(II)I

    move-result v3

    goto :goto_517

    :pswitch_4e6
    const/4 v10, 0x0

    and-int v3, v7, v14

    if-eqz v3, :cond_518

    .line 200
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v9, v3, v4}, Landroidx/datastore/preferences/protobuf/k;->Y(IJ)I

    move-result v3

    goto :goto_517

    :pswitch_4f4
    const/4 v10, 0x0

    and-int v3, v7, v14

    if-eqz v3, :cond_518

    .line 201
    invoke-virtual {v2, v1, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v9, v3, v4}, Landroidx/datastore/preferences/protobuf/k;->x(IJ)I

    move-result v3

    goto :goto_517

    :pswitch_502
    const/4 v10, 0x0

    and-int v3, v7, v14

    if-eqz v3, :cond_518

    .line 202
    invoke-static {v9, v8}, Landroidx/datastore/preferences/protobuf/k;->q(IF)I

    move-result v3

    goto :goto_517

    :pswitch_50c
    const/4 v10, 0x0

    and-int v3, v7, v14

    if-eqz v3, :cond_518

    const-wide/16 v3, 0x0

    .line 203
    invoke-static {v9, v3, v4}, Landroidx/datastore/preferences/protobuf/k;->i(ID)I

    move-result v3

    :goto_517
    add-int/2addr v6, v3

    :cond_518
    :goto_518
    add-int/lit8 v5, v5, 0x3

    move/from16 v4, v16

    goto/16 :goto_a

    .line 204
    :cond_51e
    iget-object v2, v0, Landroidx/datastore/preferences/protobuf/u0;->o:Landroidx/datastore/preferences/protobuf/n1;

    invoke-direct {v0, v2, v1}, Landroidx/datastore/preferences/protobuf/u0;->v(Landroidx/datastore/preferences/protobuf/n1;Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v6, v2

    .line 205
    iget-boolean v2, v0, Landroidx/datastore/preferences/protobuf/u0;->f:Z

    if-eqz v2, :cond_534

    .line 206
    iget-object v2, v0, Landroidx/datastore/preferences/protobuf/u0;->p:Landroidx/datastore/preferences/protobuf/q;

    invoke-virtual {v2, v1}, Landroidx/datastore/preferences/protobuf/q;->c(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/u;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/u;->l()I

    move-result v1

    add-int/2addr v6, v1

    :cond_534
    return v6

    nop

    :pswitch_data_536
    .packed-switch 0x0
        :pswitch_50c
        :pswitch_502
        :pswitch_4f4
        :pswitch_4e6
        :pswitch_4d8
        :pswitch_4ce
        :pswitch_4c4
        :pswitch_4b9
        :pswitch_49d
        :pswitch_48c
        :pswitch_47d
        :pswitch_470
        :pswitch_463
        :pswitch_458
        :pswitch_44f
        :pswitch_442
        :pswitch_435
        :pswitch_422
        :pswitch_413
        :pswitch_407
        :pswitch_3fb
        :pswitch_3ef
        :pswitch_3e3
        :pswitch_3d7
        :pswitch_3cb
        :pswitch_3bf
        :pswitch_3b4
        :pswitch_3a5
        :pswitch_399
        :pswitch_38c
        :pswitch_37f
        :pswitch_372
        :pswitch_365
        :pswitch_358
        :pswitch_34b
        :pswitch_32b
        :pswitch_30e
        :pswitch_2f1
        :pswitch_2d4
        :pswitch_2b6
        :pswitch_298
        :pswitch_27a
        :pswitch_25c
        :pswitch_23e
        :pswitch_220
        :pswitch_202
        :pswitch_1e4
        :pswitch_1c6
        :pswitch_1a8
        :pswitch_198
        :pswitch_188
        :pswitch_17a
        :pswitch_16e
        :pswitch_15e
        :pswitch_14e
        :pswitch_13e
        :pswitch_132
        :pswitch_125
        :pswitch_118
        :pswitch_fa
        :pswitch_e6
        :pswitch_d4
        :pswitch_c4
        :pswitch_b4
        :pswitch_a7
        :pswitch_9b
        :pswitch_8b
        :pswitch_7b
        :pswitch_65
    .end packed-switch
.end method

.method private u(Ljava/lang/Object;)I
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p1

    .line 1
    sget-object v2, Landroidx/datastore/preferences/protobuf/u0;->s:Lsun/misc/Unsafe;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 2
    :goto_8
    iget-object v6, v0, Landroidx/datastore/preferences/protobuf/u0;->a:[I

    array-length v6, v6

    if-ge v4, v6, :cond_4e3

    .line 3
    invoke-direct {p0, v4}, Landroidx/datastore/preferences/protobuf/u0;->i0(I)I

    move-result v6

    .line 4
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/u0;->h0(I)I

    move-result v7

    .line 5
    invoke-direct {p0, v4}, Landroidx/datastore/preferences/protobuf/u0;->Q(I)I

    move-result v8

    .line 6
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v9

    .line 7
    sget-object v6, Landroidx/datastore/preferences/protobuf/v;->c0:Landroidx/datastore/preferences/protobuf/v;

    .line 8
    invoke-virtual {v6}, Landroidx/datastore/preferences/protobuf/v;->c()I

    move-result v6

    if-lt v7, v6, :cond_38

    sget-object v6, Landroidx/datastore/preferences/protobuf/v;->p0:Landroidx/datastore/preferences/protobuf/v;

    .line 9
    invoke-virtual {v6}, Landroidx/datastore/preferences/protobuf/v;->c()I

    move-result v6

    if-gt v7, v6, :cond_38

    iget-object v6, v0, Landroidx/datastore/preferences/protobuf/u0;->a:[I

    add-int/lit8 v11, v4, 0x2

    aget v6, v6, v11

    const v11, 0xfffff

    and-int/2addr v6, v11

    goto :goto_39

    :cond_38
    const/4 v6, 0x0

    :goto_39
    const/4 v11, 0x1

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    packed-switch v7, :pswitch_data_4ec

    goto/16 :goto_4df

    .line 10
    :pswitch_42
    invoke-direct {p0, v1, v8, v4}, Landroidx/datastore/preferences/protobuf/u0;->E(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_4df

    .line 11
    invoke-static {v1, v9, v10}, Landroidx/datastore/preferences/protobuf/r1;->A(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/datastore/preferences/protobuf/r0;

    .line 12
    invoke-direct {p0, v4}, Landroidx/datastore/preferences/protobuf/u0;->s(I)Landroidx/datastore/preferences/protobuf/g1;

    move-result-object v7

    .line 13
    invoke-static {v8, v6, v7}, Landroidx/datastore/preferences/protobuf/k;->s(ILandroidx/datastore/preferences/protobuf/r0;Landroidx/datastore/preferences/protobuf/g1;)I

    move-result v6

    goto/16 :goto_3c4

    .line 14
    :pswitch_58
    invoke-direct {p0, v1, v8, v4}, Landroidx/datastore/preferences/protobuf/u0;->E(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_4df

    .line 15
    invoke-static {v1, v9, v10}, Landroidx/datastore/preferences/protobuf/u0;->W(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {v8, v6, v7}, Landroidx/datastore/preferences/protobuf/k;->R(IJ)I

    move-result v6

    goto/16 :goto_3c4

    .line 16
    :pswitch_68
    invoke-direct {p0, v1, v8, v4}, Landroidx/datastore/preferences/protobuf/u0;->E(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_4df

    .line 17
    invoke-static {v1, v9, v10}, Landroidx/datastore/preferences/protobuf/u0;->V(Ljava/lang/Object;J)I

    move-result v6

    invoke-static {v8, v6}, Landroidx/datastore/preferences/protobuf/k;->P(II)I

    move-result v6

    goto/16 :goto_3c4

    .line 18
    :pswitch_78
    invoke-direct {p0, v1, v8, v4}, Landroidx/datastore/preferences/protobuf/u0;->E(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_4df

    .line 19
    invoke-static {v8, v13, v14}, Landroidx/datastore/preferences/protobuf/k;->N(IJ)I

    move-result v6

    goto/16 :goto_3c4

    .line 20
    :pswitch_84
    invoke-direct {p0, v1, v8, v4}, Landroidx/datastore/preferences/protobuf/u0;->E(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_4df

    .line 21
    invoke-static {v8, v3}, Landroidx/datastore/preferences/protobuf/k;->L(II)I

    move-result v6

    goto/16 :goto_3c4

    .line 22
    :pswitch_90
    invoke-direct {p0, v1, v8, v4}, Landroidx/datastore/preferences/protobuf/u0;->E(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_4df

    .line 23
    invoke-static {v1, v9, v10}, Landroidx/datastore/preferences/protobuf/u0;->V(Ljava/lang/Object;J)I

    move-result v6

    invoke-static {v8, v6}, Landroidx/datastore/preferences/protobuf/k;->k(II)I

    move-result v6

    goto/16 :goto_3c4

    .line 24
    :pswitch_a0
    invoke-direct {p0, v1, v8, v4}, Landroidx/datastore/preferences/protobuf/u0;->E(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_4df

    .line 25
    invoke-static {v1, v9, v10}, Landroidx/datastore/preferences/protobuf/u0;->V(Ljava/lang/Object;J)I

    move-result v6

    invoke-static {v8, v6}, Landroidx/datastore/preferences/protobuf/k;->W(II)I

    move-result v6

    goto/16 :goto_3c4

    .line 26
    :pswitch_b0
    invoke-direct {p0, v1, v8, v4}, Landroidx/datastore/preferences/protobuf/u0;->E(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_4df

    .line 27
    invoke-static {v1, v9, v10}, Landroidx/datastore/preferences/protobuf/r1;->A(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/datastore/preferences/protobuf/h;

    .line 28
    invoke-static {v8, v6}, Landroidx/datastore/preferences/protobuf/k;->g(ILandroidx/datastore/preferences/protobuf/h;)I

    move-result v6

    goto/16 :goto_3c4

    .line 29
    :pswitch_c2
    invoke-direct {p0, v1, v8, v4}, Landroidx/datastore/preferences/protobuf/u0;->E(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_4df

    .line 30
    invoke-static {v1, v9, v10}, Landroidx/datastore/preferences/protobuf/r1;->A(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    .line 31
    invoke-direct {p0, v4}, Landroidx/datastore/preferences/protobuf/u0;->s(I)Landroidx/datastore/preferences/protobuf/g1;

    move-result-object v7

    invoke-static {v8, v6, v7}, Landroidx/datastore/preferences/protobuf/i1;->o(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/g1;)I

    move-result v6

    goto/16 :goto_3c4

    .line 32
    :pswitch_d6
    invoke-direct {p0, v1, v8, v4}, Landroidx/datastore/preferences/protobuf/u0;->E(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_4df

    .line 33
    invoke-static {v1, v9, v10}, Landroidx/datastore/preferences/protobuf/r1;->A(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    .line 34
    instance-of v7, v6, Landroidx/datastore/preferences/protobuf/h;

    if-eqz v7, :cond_ec

    .line 35
    check-cast v6, Landroidx/datastore/preferences/protobuf/h;

    invoke-static {v8, v6}, Landroidx/datastore/preferences/protobuf/k;->g(ILandroidx/datastore/preferences/protobuf/h;)I

    move-result v6

    goto/16 :goto_3c4

    .line 36
    :cond_ec
    check-cast v6, Ljava/lang/String;

    invoke-static {v8, v6}, Landroidx/datastore/preferences/protobuf/k;->T(ILjava/lang/String;)I

    move-result v6

    goto/16 :goto_3c4

    .line 37
    :pswitch_f4
    invoke-direct {p0, v1, v8, v4}, Landroidx/datastore/preferences/protobuf/u0;->E(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_4df

    .line 38
    invoke-static {v8, v11}, Landroidx/datastore/preferences/protobuf/k;->d(IZ)I

    move-result v6

    goto/16 :goto_3c4

    .line 39
    :pswitch_100
    invoke-direct {p0, v1, v8, v4}, Landroidx/datastore/preferences/protobuf/u0;->E(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_4df

    .line 40
    invoke-static {v8, v3}, Landroidx/datastore/preferences/protobuf/k;->m(II)I

    move-result v6

    goto/16 :goto_3c4

    .line 41
    :pswitch_10c
    invoke-direct {p0, v1, v8, v4}, Landroidx/datastore/preferences/protobuf/u0;->E(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_4df

    .line 42
    invoke-static {v8, v13, v14}, Landroidx/datastore/preferences/protobuf/k;->o(IJ)I

    move-result v6

    goto/16 :goto_3c4

    .line 43
    :pswitch_118
    invoke-direct {p0, v1, v8, v4}, Landroidx/datastore/preferences/protobuf/u0;->E(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_4df

    .line 44
    invoke-static {v1, v9, v10}, Landroidx/datastore/preferences/protobuf/u0;->V(Ljava/lang/Object;J)I

    move-result v6

    invoke-static {v8, v6}, Landroidx/datastore/preferences/protobuf/k;->v(II)I

    move-result v6

    goto/16 :goto_3c4

    .line 45
    :pswitch_128
    invoke-direct {p0, v1, v8, v4}, Landroidx/datastore/preferences/protobuf/u0;->E(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_4df

    .line 46
    invoke-static {v1, v9, v10}, Landroidx/datastore/preferences/protobuf/u0;->W(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {v8, v6, v7}, Landroidx/datastore/preferences/protobuf/k;->Y(IJ)I

    move-result v6

    goto/16 :goto_3c4

    .line 47
    :pswitch_138
    invoke-direct {p0, v1, v8, v4}, Landroidx/datastore/preferences/protobuf/u0;->E(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_4df

    .line 48
    invoke-static {v1, v9, v10}, Landroidx/datastore/preferences/protobuf/u0;->W(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {v8, v6, v7}, Landroidx/datastore/preferences/protobuf/k;->x(IJ)I

    move-result v6

    goto/16 :goto_3c4

    .line 49
    :pswitch_148
    invoke-direct {p0, v1, v8, v4}, Landroidx/datastore/preferences/protobuf/u0;->E(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_4df

    .line 50
    invoke-static {v8, v12}, Landroidx/datastore/preferences/protobuf/k;->q(IF)I

    move-result v6

    goto/16 :goto_3c4

    .line 51
    :pswitch_154
    invoke-direct {p0, v1, v8, v4}, Landroidx/datastore/preferences/protobuf/u0;->E(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_4df

    const-wide/16 v6, 0x0

    .line 52
    invoke-static {v8, v6, v7}, Landroidx/datastore/preferences/protobuf/k;->i(ID)I

    move-result v6

    goto/16 :goto_3c4

    .line 53
    :pswitch_162
    iget-object v6, v0, Landroidx/datastore/preferences/protobuf/u0;->q:Landroidx/datastore/preferences/protobuf/m0;

    .line 54
    invoke-static {v1, v9, v10}, Landroidx/datastore/preferences/protobuf/r1;->A(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    invoke-direct {p0, v4}, Landroidx/datastore/preferences/protobuf/u0;->r(I)Ljava/lang/Object;

    move-result-object v9

    .line 55
    invoke-interface {v6, v8, v7, v9}, Landroidx/datastore/preferences/protobuf/m0;->f(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    goto/16 :goto_3c4

    .line 56
    :pswitch_172
    invoke-static {v1, v9, v10}, Landroidx/datastore/preferences/protobuf/u0;->G(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v6

    invoke-direct {p0, v4}, Landroidx/datastore/preferences/protobuf/u0;->s(I)Landroidx/datastore/preferences/protobuf/g1;

    move-result-object v7

    .line 57
    invoke-static {v8, v6, v7}, Landroidx/datastore/preferences/protobuf/i1;->j(ILjava/util/List;Landroidx/datastore/preferences/protobuf/g1;)I

    move-result v6

    goto/16 :goto_3c4

    .line 58
    :pswitch_180
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 59
    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/i1;->t(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4df

    .line 60
    iget-boolean v9, v0, Landroidx/datastore/preferences/protobuf/u0;->i:Z

    if-eqz v9, :cond_194

    int-to-long v9, v6

    .line 61
    invoke-virtual {v2, v1, v9, v10, v7}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 62
    :cond_194
    invoke-static {v8}, Landroidx/datastore/preferences/protobuf/k;->V(I)I

    move-result v6

    .line 63
    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/k;->X(I)I

    move-result v8

    goto/16 :goto_31f

    .line 64
    :pswitch_19e
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 65
    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/i1;->r(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4df

    .line 66
    iget-boolean v9, v0, Landroidx/datastore/preferences/protobuf/u0;->i:Z

    if-eqz v9, :cond_1b2

    int-to-long v9, v6

    .line 67
    invoke-virtual {v2, v1, v9, v10, v7}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 68
    :cond_1b2
    invoke-static {v8}, Landroidx/datastore/preferences/protobuf/k;->V(I)I

    move-result v6

    .line 69
    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/k;->X(I)I

    move-result v8

    goto/16 :goto_31f

    .line 70
    :pswitch_1bc
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 71
    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/i1;->i(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4df

    .line 72
    iget-boolean v9, v0, Landroidx/datastore/preferences/protobuf/u0;->i:Z

    if-eqz v9, :cond_1d0

    int-to-long v9, v6

    .line 73
    invoke-virtual {v2, v1, v9, v10, v7}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 74
    :cond_1d0
    invoke-static {v8}, Landroidx/datastore/preferences/protobuf/k;->V(I)I

    move-result v6

    .line 75
    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/k;->X(I)I

    move-result v8

    goto/16 :goto_31f

    .line 76
    :pswitch_1da
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 77
    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/i1;->g(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4df

    .line 78
    iget-boolean v9, v0, Landroidx/datastore/preferences/protobuf/u0;->i:Z

    if-eqz v9, :cond_1ee

    int-to-long v9, v6

    .line 79
    invoke-virtual {v2, v1, v9, v10, v7}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 80
    :cond_1ee
    invoke-static {v8}, Landroidx/datastore/preferences/protobuf/k;->V(I)I

    move-result v6

    .line 81
    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/k;->X(I)I

    move-result v8

    goto/16 :goto_31f

    .line 82
    :pswitch_1f8
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 83
    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/i1;->e(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4df

    .line 84
    iget-boolean v9, v0, Landroidx/datastore/preferences/protobuf/u0;->i:Z

    if-eqz v9, :cond_20c

    int-to-long v9, v6

    .line 85
    invoke-virtual {v2, v1, v9, v10, v7}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 86
    :cond_20c
    invoke-static {v8}, Landroidx/datastore/preferences/protobuf/k;->V(I)I

    move-result v6

    .line 87
    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/k;->X(I)I

    move-result v8

    goto/16 :goto_31f

    .line 88
    :pswitch_216
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 89
    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/i1;->w(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4df

    .line 90
    iget-boolean v9, v0, Landroidx/datastore/preferences/protobuf/u0;->i:Z

    if-eqz v9, :cond_22a

    int-to-long v9, v6

    .line 91
    invoke-virtual {v2, v1, v9, v10, v7}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 92
    :cond_22a
    invoke-static {v8}, Landroidx/datastore/preferences/protobuf/k;->V(I)I

    move-result v6

    .line 93
    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/k;->X(I)I

    move-result v8

    goto/16 :goto_31f

    .line 94
    :pswitch_234
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 95
    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/i1;->b(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4df

    .line 96
    iget-boolean v9, v0, Landroidx/datastore/preferences/protobuf/u0;->i:Z

    if-eqz v9, :cond_248

    int-to-long v9, v6

    .line 97
    invoke-virtual {v2, v1, v9, v10, v7}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 98
    :cond_248
    invoke-static {v8}, Landroidx/datastore/preferences/protobuf/k;->V(I)I

    move-result v6

    .line 99
    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/k;->X(I)I

    move-result v8

    goto/16 :goto_31f

    .line 100
    :pswitch_252
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 101
    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/i1;->g(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4df

    .line 102
    iget-boolean v9, v0, Landroidx/datastore/preferences/protobuf/u0;->i:Z

    if-eqz v9, :cond_266

    int-to-long v9, v6

    .line 103
    invoke-virtual {v2, v1, v9, v10, v7}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 104
    :cond_266
    invoke-static {v8}, Landroidx/datastore/preferences/protobuf/k;->V(I)I

    move-result v6

    .line 105
    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/k;->X(I)I

    move-result v8

    goto/16 :goto_31f

    .line 106
    :pswitch_270
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 107
    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/i1;->i(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4df

    .line 108
    iget-boolean v9, v0, Landroidx/datastore/preferences/protobuf/u0;->i:Z

    if-eqz v9, :cond_284

    int-to-long v9, v6

    .line 109
    invoke-virtual {v2, v1, v9, v10, v7}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 110
    :cond_284
    invoke-static {v8}, Landroidx/datastore/preferences/protobuf/k;->V(I)I

    move-result v6

    .line 111
    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/k;->X(I)I

    move-result v8

    goto/16 :goto_31f

    .line 112
    :pswitch_28e
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 113
    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/i1;->l(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4df

    .line 114
    iget-boolean v9, v0, Landroidx/datastore/preferences/protobuf/u0;->i:Z

    if-eqz v9, :cond_2a2

    int-to-long v9, v6

    .line 115
    invoke-virtual {v2, v1, v9, v10, v7}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 116
    :cond_2a2
    invoke-static {v8}, Landroidx/datastore/preferences/protobuf/k;->V(I)I

    move-result v6

    .line 117
    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/k;->X(I)I

    move-result v8

    goto/16 :goto_31f

    .line 118
    :pswitch_2ac
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 119
    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/i1;->y(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4df

    .line 120
    iget-boolean v9, v0, Landroidx/datastore/preferences/protobuf/u0;->i:Z

    if-eqz v9, :cond_2c0

    int-to-long v9, v6

    .line 121
    invoke-virtual {v2, v1, v9, v10, v7}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 122
    :cond_2c0
    invoke-static {v8}, Landroidx/datastore/preferences/protobuf/k;->V(I)I

    move-result v6

    .line 123
    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/k;->X(I)I

    move-result v8

    goto :goto_31f

    .line 124
    :pswitch_2c9
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 125
    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/i1;->n(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4df

    .line 126
    iget-boolean v9, v0, Landroidx/datastore/preferences/protobuf/u0;->i:Z

    if-eqz v9, :cond_2dd

    int-to-long v9, v6

    .line 127
    invoke-virtual {v2, v1, v9, v10, v7}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 128
    :cond_2dd
    invoke-static {v8}, Landroidx/datastore/preferences/protobuf/k;->V(I)I

    move-result v6

    .line 129
    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/k;->X(I)I

    move-result v8

    goto :goto_31f

    .line 130
    :pswitch_2e6
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 131
    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/i1;->g(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4df

    .line 132
    iget-boolean v9, v0, Landroidx/datastore/preferences/protobuf/u0;->i:Z

    if-eqz v9, :cond_2fa

    int-to-long v9, v6

    .line 133
    invoke-virtual {v2, v1, v9, v10, v7}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 134
    :cond_2fa
    invoke-static {v8}, Landroidx/datastore/preferences/protobuf/k;->V(I)I

    move-result v6

    .line 135
    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/k;->X(I)I

    move-result v8

    goto :goto_31f

    .line 136
    :pswitch_303
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 137
    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/i1;->i(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4df

    .line 138
    iget-boolean v9, v0, Landroidx/datastore/preferences/protobuf/u0;->i:Z

    if-eqz v9, :cond_317

    int-to-long v9, v6

    .line 139
    invoke-virtual {v2, v1, v9, v10, v7}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 140
    :cond_317
    invoke-static {v8}, Landroidx/datastore/preferences/protobuf/k;->V(I)I

    move-result v6

    .line 141
    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/k;->X(I)I

    move-result v8

    :goto_31f
    add-int/2addr v6, v8

    add-int/2addr v6, v7

    goto/16 :goto_3c4

    .line 142
    :pswitch_323
    invoke-static {v1, v9, v10}, Landroidx/datastore/preferences/protobuf/u0;->G(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v6

    invoke-static {v8, v6, v3}, Landroidx/datastore/preferences/protobuf/i1;->s(ILjava/util/List;Z)I

    move-result v6

    goto/16 :goto_3c4

    .line 143
    :pswitch_32d
    invoke-static {v1, v9, v10}, Landroidx/datastore/preferences/protobuf/u0;->G(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v6

    .line 144
    invoke-static {v8, v6, v3}, Landroidx/datastore/preferences/protobuf/i1;->q(ILjava/util/List;Z)I

    move-result v6

    goto/16 :goto_3c4

    .line 145
    :pswitch_337
    invoke-static {v1, v9, v10}, Landroidx/datastore/preferences/protobuf/u0;->G(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v6

    invoke-static {v8, v6, v3}, Landroidx/datastore/preferences/protobuf/i1;->h(ILjava/util/List;Z)I

    move-result v6

    goto/16 :goto_3c4

    .line 146
    :pswitch_341
    invoke-static {v1, v9, v10}, Landroidx/datastore/preferences/protobuf/u0;->G(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v6

    invoke-static {v8, v6, v3}, Landroidx/datastore/preferences/protobuf/i1;->f(ILjava/util/List;Z)I

    move-result v6

    goto/16 :goto_3c4

    .line 147
    :pswitch_34b
    invoke-static {v1, v9, v10}, Landroidx/datastore/preferences/protobuf/u0;->G(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v6

    .line 148
    invoke-static {v8, v6, v3}, Landroidx/datastore/preferences/protobuf/i1;->d(ILjava/util/List;Z)I

    move-result v6

    goto/16 :goto_3c4

    .line 149
    :pswitch_355
    invoke-static {v1, v9, v10}, Landroidx/datastore/preferences/protobuf/u0;->G(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v6

    .line 150
    invoke-static {v8, v6, v3}, Landroidx/datastore/preferences/protobuf/i1;->v(ILjava/util/List;Z)I

    move-result v6

    goto :goto_3c4

    .line 151
    :pswitch_35e
    invoke-static {v1, v9, v10}, Landroidx/datastore/preferences/protobuf/u0;->G(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v6

    .line 152
    invoke-static {v8, v6}, Landroidx/datastore/preferences/protobuf/i1;->c(ILjava/util/List;)I

    move-result v6

    goto :goto_3c4

    .line 153
    :pswitch_367
    invoke-static {v1, v9, v10}, Landroidx/datastore/preferences/protobuf/u0;->G(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v6

    invoke-direct {p0, v4}, Landroidx/datastore/preferences/protobuf/u0;->s(I)Landroidx/datastore/preferences/protobuf/g1;

    move-result-object v7

    .line 154
    invoke-static {v8, v6, v7}, Landroidx/datastore/preferences/protobuf/i1;->p(ILjava/util/List;Landroidx/datastore/preferences/protobuf/g1;)I

    move-result v6

    goto :goto_3c4

    .line 155
    :pswitch_374
    invoke-static {v1, v9, v10}, Landroidx/datastore/preferences/protobuf/u0;->G(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v6

    invoke-static {v8, v6}, Landroidx/datastore/preferences/protobuf/i1;->u(ILjava/util/List;)I

    move-result v6

    goto :goto_3c4

    .line 156
    :pswitch_37d
    invoke-static {v1, v9, v10}, Landroidx/datastore/preferences/protobuf/u0;->G(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v6

    invoke-static {v8, v6, v3}, Landroidx/datastore/preferences/protobuf/i1;->a(ILjava/util/List;Z)I

    move-result v6

    goto :goto_3c4

    .line 157
    :pswitch_386
    invoke-static {v1, v9, v10}, Landroidx/datastore/preferences/protobuf/u0;->G(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v6

    invoke-static {v8, v6, v3}, Landroidx/datastore/preferences/protobuf/i1;->f(ILjava/util/List;Z)I

    move-result v6

    goto :goto_3c4

    .line 158
    :pswitch_38f
    invoke-static {v1, v9, v10}, Landroidx/datastore/preferences/protobuf/u0;->G(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v6

    invoke-static {v8, v6, v3}, Landroidx/datastore/preferences/protobuf/i1;->h(ILjava/util/List;Z)I

    move-result v6

    goto :goto_3c4

    .line 159
    :pswitch_398
    invoke-static {v1, v9, v10}, Landroidx/datastore/preferences/protobuf/u0;->G(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v6

    .line 160
    invoke-static {v8, v6, v3}, Landroidx/datastore/preferences/protobuf/i1;->k(ILjava/util/List;Z)I

    move-result v6

    goto :goto_3c4

    .line 161
    :pswitch_3a1
    invoke-static {v1, v9, v10}, Landroidx/datastore/preferences/protobuf/u0;->G(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v6

    invoke-static {v8, v6, v3}, Landroidx/datastore/preferences/protobuf/i1;->x(ILjava/util/List;Z)I

    move-result v6

    goto :goto_3c4

    .line 162
    :pswitch_3aa
    invoke-static {v1, v9, v10}, Landroidx/datastore/preferences/protobuf/u0;->G(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v6

    invoke-static {v8, v6, v3}, Landroidx/datastore/preferences/protobuf/i1;->m(ILjava/util/List;Z)I

    move-result v6

    goto :goto_3c4

    .line 163
    :pswitch_3b3
    invoke-static {v1, v9, v10}, Landroidx/datastore/preferences/protobuf/u0;->G(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v6

    invoke-static {v8, v6, v3}, Landroidx/datastore/preferences/protobuf/i1;->f(ILjava/util/List;Z)I

    move-result v6

    goto :goto_3c4

    .line 164
    :pswitch_3bc
    invoke-static {v1, v9, v10}, Landroidx/datastore/preferences/protobuf/u0;->G(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v6

    invoke-static {v8, v6, v3}, Landroidx/datastore/preferences/protobuf/i1;->h(ILjava/util/List;Z)I

    move-result v6

    :goto_3c4
    add-int/2addr v5, v6

    goto/16 :goto_4df

    .line 165
    :pswitch_3c7
    invoke-direct {p0, v1, v4}, Landroidx/datastore/preferences/protobuf/u0;->y(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_4df

    .line 166
    invoke-static {v1, v9, v10}, Landroidx/datastore/preferences/protobuf/r1;->A(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/datastore/preferences/protobuf/r0;

    .line 167
    invoke-direct {p0, v4}, Landroidx/datastore/preferences/protobuf/u0;->s(I)Landroidx/datastore/preferences/protobuf/g1;

    move-result-object v7

    .line 168
    invoke-static {v8, v6, v7}, Landroidx/datastore/preferences/protobuf/k;->s(ILandroidx/datastore/preferences/protobuf/r0;Landroidx/datastore/preferences/protobuf/g1;)I

    move-result v6

    goto :goto_3c4

    .line 169
    :pswitch_3dc
    invoke-direct {p0, v1, v4}, Landroidx/datastore/preferences/protobuf/u0;->y(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_4df

    .line 170
    invoke-static {v1, v9, v10}, Landroidx/datastore/preferences/protobuf/r1;->y(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {v8, v6, v7}, Landroidx/datastore/preferences/protobuf/k;->R(IJ)I

    move-result v6

    goto :goto_3c4

    .line 171
    :pswitch_3eb
    invoke-direct {p0, v1, v4}, Landroidx/datastore/preferences/protobuf/u0;->y(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_4df

    .line 172
    invoke-static {v1, v9, v10}, Landroidx/datastore/preferences/protobuf/r1;->x(Ljava/lang/Object;J)I

    move-result v6

    invoke-static {v8, v6}, Landroidx/datastore/preferences/protobuf/k;->P(II)I

    move-result v6

    goto :goto_3c4

    .line 173
    :pswitch_3fa
    invoke-direct {p0, v1, v4}, Landroidx/datastore/preferences/protobuf/u0;->y(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_4df

    .line 174
    invoke-static {v8, v13, v14}, Landroidx/datastore/preferences/protobuf/k;->N(IJ)I

    move-result v6

    goto :goto_3c4

    .line 175
    :pswitch_405
    invoke-direct {p0, v1, v4}, Landroidx/datastore/preferences/protobuf/u0;->y(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_4df

    .line 176
    invoke-static {v8, v3}, Landroidx/datastore/preferences/protobuf/k;->L(II)I

    move-result v6

    goto :goto_3c4

    .line 177
    :pswitch_410
    invoke-direct {p0, v1, v4}, Landroidx/datastore/preferences/protobuf/u0;->y(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_4df

    .line 178
    invoke-static {v1, v9, v10}, Landroidx/datastore/preferences/protobuf/r1;->x(Ljava/lang/Object;J)I

    move-result v6

    invoke-static {v8, v6}, Landroidx/datastore/preferences/protobuf/k;->k(II)I

    move-result v6

    goto :goto_3c4

    .line 179
    :pswitch_41f
    invoke-direct {p0, v1, v4}, Landroidx/datastore/preferences/protobuf/u0;->y(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_4df

    .line 180
    invoke-static {v1, v9, v10}, Landroidx/datastore/preferences/protobuf/r1;->x(Ljava/lang/Object;J)I

    move-result v6

    invoke-static {v8, v6}, Landroidx/datastore/preferences/protobuf/k;->W(II)I

    move-result v6

    goto :goto_3c4

    .line 181
    :pswitch_42e
    invoke-direct {p0, v1, v4}, Landroidx/datastore/preferences/protobuf/u0;->y(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_4df

    .line 182
    invoke-static {v1, v9, v10}, Landroidx/datastore/preferences/protobuf/r1;->A(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/datastore/preferences/protobuf/h;

    .line 183
    invoke-static {v8, v6}, Landroidx/datastore/preferences/protobuf/k;->g(ILandroidx/datastore/preferences/protobuf/h;)I

    move-result v6

    goto :goto_3c4

    .line 184
    :pswitch_43f
    invoke-direct {p0, v1, v4}, Landroidx/datastore/preferences/protobuf/u0;->y(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_4df

    .line 185
    invoke-static {v1, v9, v10}, Landroidx/datastore/preferences/protobuf/r1;->A(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    .line 186
    invoke-direct {p0, v4}, Landroidx/datastore/preferences/protobuf/u0;->s(I)Landroidx/datastore/preferences/protobuf/g1;

    move-result-object v7

    invoke-static {v8, v6, v7}, Landroidx/datastore/preferences/protobuf/i1;->o(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/g1;)I

    move-result v6

    goto/16 :goto_3c4

    .line 187
    :pswitch_453
    invoke-direct {p0, v1, v4}, Landroidx/datastore/preferences/protobuf/u0;->y(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_4df

    .line 188
    invoke-static {v1, v9, v10}, Landroidx/datastore/preferences/protobuf/r1;->A(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    .line 189
    instance-of v7, v6, Landroidx/datastore/preferences/protobuf/h;

    if-eqz v7, :cond_469

    .line 190
    check-cast v6, Landroidx/datastore/preferences/protobuf/h;

    invoke-static {v8, v6}, Landroidx/datastore/preferences/protobuf/k;->g(ILandroidx/datastore/preferences/protobuf/h;)I

    move-result v6

    goto/16 :goto_3c4

    .line 191
    :cond_469
    check-cast v6, Ljava/lang/String;

    invoke-static {v8, v6}, Landroidx/datastore/preferences/protobuf/k;->T(ILjava/lang/String;)I

    move-result v6

    goto/16 :goto_3c4

    .line 192
    :pswitch_471
    invoke-direct {p0, v1, v4}, Landroidx/datastore/preferences/protobuf/u0;->y(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_4df

    .line 193
    invoke-static {v8, v11}, Landroidx/datastore/preferences/protobuf/k;->d(IZ)I

    move-result v6

    goto/16 :goto_3c4

    .line 194
    :pswitch_47d
    invoke-direct {p0, v1, v4}, Landroidx/datastore/preferences/protobuf/u0;->y(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_4df

    .line 195
    invoke-static {v8, v3}, Landroidx/datastore/preferences/protobuf/k;->m(II)I

    move-result v6

    goto/16 :goto_3c4

    .line 196
    :pswitch_489
    invoke-direct {p0, v1, v4}, Landroidx/datastore/preferences/protobuf/u0;->y(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_4df

    .line 197
    invoke-static {v8, v13, v14}, Landroidx/datastore/preferences/protobuf/k;->o(IJ)I

    move-result v6

    goto/16 :goto_3c4

    .line 198
    :pswitch_495
    invoke-direct {p0, v1, v4}, Landroidx/datastore/preferences/protobuf/u0;->y(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_4df

    .line 199
    invoke-static {v1, v9, v10}, Landroidx/datastore/preferences/protobuf/r1;->x(Ljava/lang/Object;J)I

    move-result v6

    invoke-static {v8, v6}, Landroidx/datastore/preferences/protobuf/k;->v(II)I

    move-result v6

    goto/16 :goto_3c4

    .line 200
    :pswitch_4a5
    invoke-direct {p0, v1, v4}, Landroidx/datastore/preferences/protobuf/u0;->y(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_4df

    .line 201
    invoke-static {v1, v9, v10}, Landroidx/datastore/preferences/protobuf/r1;->y(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {v8, v6, v7}, Landroidx/datastore/preferences/protobuf/k;->Y(IJ)I

    move-result v6

    goto/16 :goto_3c4

    .line 202
    :pswitch_4b5
    invoke-direct {p0, v1, v4}, Landroidx/datastore/preferences/protobuf/u0;->y(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_4df

    .line 203
    invoke-static {v1, v9, v10}, Landroidx/datastore/preferences/protobuf/r1;->y(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {v8, v6, v7}, Landroidx/datastore/preferences/protobuf/k;->x(IJ)I

    move-result v6

    goto/16 :goto_3c4

    .line 204
    :pswitch_4c5
    invoke-direct {p0, v1, v4}, Landroidx/datastore/preferences/protobuf/u0;->y(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_4df

    .line 205
    invoke-static {v8, v12}, Landroidx/datastore/preferences/protobuf/k;->q(IF)I

    move-result v6

    goto/16 :goto_3c4

    .line 206
    :pswitch_4d1
    invoke-direct {p0, v1, v4}, Landroidx/datastore/preferences/protobuf/u0;->y(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_4df

    const-wide/16 v6, 0x0

    .line 207
    invoke-static {v8, v6, v7}, Landroidx/datastore/preferences/protobuf/k;->i(ID)I

    move-result v6

    goto/16 :goto_3c4

    :cond_4df
    :goto_4df
    add-int/lit8 v4, v4, 0x3

    goto/16 :goto_8

    .line 208
    :cond_4e3
    iget-object v2, v0, Landroidx/datastore/preferences/protobuf/u0;->o:Landroidx/datastore/preferences/protobuf/n1;

    invoke-direct {p0, v2, v1}, Landroidx/datastore/preferences/protobuf/u0;->v(Landroidx/datastore/preferences/protobuf/n1;Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v5, v1

    return v5

    nop

    :pswitch_data_4ec
    .packed-switch 0x0
        :pswitch_4d1
        :pswitch_4c5
        :pswitch_4b5
        :pswitch_4a5
        :pswitch_495
        :pswitch_489
        :pswitch_47d
        :pswitch_471
        :pswitch_453
        :pswitch_43f
        :pswitch_42e
        :pswitch_41f
        :pswitch_410
        :pswitch_405
        :pswitch_3fa
        :pswitch_3eb
        :pswitch_3dc
        :pswitch_3c7
        :pswitch_3bc
        :pswitch_3b3
        :pswitch_3aa
        :pswitch_3a1
        :pswitch_398
        :pswitch_38f
        :pswitch_386
        :pswitch_37d
        :pswitch_374
        :pswitch_367
        :pswitch_35e
        :pswitch_355
        :pswitch_34b
        :pswitch_341
        :pswitch_337
        :pswitch_32d
        :pswitch_323
        :pswitch_303
        :pswitch_2e6
        :pswitch_2c9
        :pswitch_2ac
        :pswitch_28e
        :pswitch_270
        :pswitch_252
        :pswitch_234
        :pswitch_216
        :pswitch_1f8
        :pswitch_1da
        :pswitch_1bc
        :pswitch_19e
        :pswitch_180
        :pswitch_172
        :pswitch_162
        :pswitch_154
        :pswitch_148
        :pswitch_138
        :pswitch_128
        :pswitch_118
        :pswitch_10c
        :pswitch_100
        :pswitch_f4
        :pswitch_d6
        :pswitch_c2
        :pswitch_b0
        :pswitch_a0
        :pswitch_90
        :pswitch_84
        :pswitch_78
        :pswitch_68
        :pswitch_58
        :pswitch_42
    .end packed-switch
.end method

.method private v(Landroidx/datastore/preferences/protobuf/n1;Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/datastore/preferences/protobuf/n1<",
            "TUT;TUB;>;TT;)I"
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p2}, Landroidx/datastore/preferences/protobuf/n1;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 2
    invoke-virtual {p1, p2}, Landroidx/datastore/preferences/protobuf/n1;->h(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method private static w(Ljava/lang/Object;J)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)I"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/r1;->x(Ljava/lang/Object;J)I

    move-result p0

    return p0
.end method

.method private static x(I)Z
    .registers 2

    const/high16 v0, 0x20000000

    and-int/2addr p0, v0

    if-eqz p0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method private y(Ljava/lang/Object;I)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)Z"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Landroidx/datastore/preferences/protobuf/u0;->h:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_d9

    .line 2
    invoke-direct {p0, p2}, Landroidx/datastore/preferences/protobuf/u0;->i0(I)I

    move-result p2

    .line 3
    invoke-static {p2}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v3

    .line 4
    invoke-static {p2}, Landroidx/datastore/preferences/protobuf/u0;->h0(I)I

    move-result p2

    const-wide/16 v5, 0x0

    packed-switch p2, :pswitch_data_f0

    .line 5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 6
    :pswitch_1d
    invoke-static {p1, v3, v4}, Landroidx/datastore/preferences/protobuf/r1;->A(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_24

    const/4 v1, 0x1

    :cond_24
    return v1

    .line 7
    :pswitch_25
    invoke-static {p1, v3, v4}, Landroidx/datastore/preferences/protobuf/r1;->y(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v5

    if-eqz v0, :cond_2e

    const/4 v1, 0x1

    :cond_2e
    return v1

    .line 8
    :pswitch_2f
    invoke-static {p1, v3, v4}, Landroidx/datastore/preferences/protobuf/r1;->x(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_36

    const/4 v1, 0x1

    :cond_36
    return v1

    .line 9
    :pswitch_37
    invoke-static {p1, v3, v4}, Landroidx/datastore/preferences/protobuf/r1;->y(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v5

    if-eqz v0, :cond_40

    const/4 v1, 0x1

    :cond_40
    return v1

    .line 10
    :pswitch_41
    invoke-static {p1, v3, v4}, Landroidx/datastore/preferences/protobuf/r1;->x(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_48

    const/4 v1, 0x1

    :cond_48
    return v1

    .line 11
    :pswitch_49
    invoke-static {p1, v3, v4}, Landroidx/datastore/preferences/protobuf/r1;->x(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_50

    const/4 v1, 0x1

    :cond_50
    return v1

    .line 12
    :pswitch_51
    invoke-static {p1, v3, v4}, Landroidx/datastore/preferences/protobuf/r1;->x(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_58

    const/4 v1, 0x1

    :cond_58
    return v1

    .line 13
    :pswitch_59
    sget-object p2, Landroidx/datastore/preferences/protobuf/h;->p:Landroidx/datastore/preferences/protobuf/h;

    invoke-static {p1, v3, v4}, Landroidx/datastore/preferences/protobuf/r1;->A(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/datastore/preferences/protobuf/h;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v2

    return p1

    .line 14
    :pswitch_65
    invoke-static {p1, v3, v4}, Landroidx/datastore/preferences/protobuf/r1;->A(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_6c

    const/4 v1, 0x1

    :cond_6c
    return v1

    .line 15
    :pswitch_6d
    invoke-static {p1, v3, v4}, Landroidx/datastore/preferences/protobuf/r1;->A(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    .line 16
    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_7d

    .line 17
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v2

    return p1

    .line 18
    :cond_7d
    instance-of p2, p1, Landroidx/datastore/preferences/protobuf/h;

    if-eqz p2, :cond_89

    .line 19
    sget-object p2, Landroidx/datastore/preferences/protobuf/h;->p:Landroidx/datastore/preferences/protobuf/h;

    invoke-virtual {p2, p1}, Landroidx/datastore/preferences/protobuf/h;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v2

    return p1

    .line 20
    :cond_89
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 21
    :pswitch_8f
    invoke-static {p1, v3, v4}, Landroidx/datastore/preferences/protobuf/r1;->p(Ljava/lang/Object;J)Z

    move-result p1

    return p1

    .line 22
    :pswitch_94
    invoke-static {p1, v3, v4}, Landroidx/datastore/preferences/protobuf/r1;->x(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_9b

    const/4 v1, 0x1

    :cond_9b
    return v1

    .line 23
    :pswitch_9c
    invoke-static {p1, v3, v4}, Landroidx/datastore/preferences/protobuf/r1;->y(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v5

    if-eqz v0, :cond_a5

    const/4 v1, 0x1

    :cond_a5
    return v1

    .line 24
    :pswitch_a6
    invoke-static {p1, v3, v4}, Landroidx/datastore/preferences/protobuf/r1;->x(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_ad

    const/4 v1, 0x1

    :cond_ad
    return v1

    .line 25
    :pswitch_ae
    invoke-static {p1, v3, v4}, Landroidx/datastore/preferences/protobuf/r1;->y(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v5

    if-eqz v0, :cond_b7

    const/4 v1, 0x1

    :cond_b7
    return v1

    .line 26
    :pswitch_b8
    invoke-static {p1, v3, v4}, Landroidx/datastore/preferences/protobuf/r1;->y(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v5

    if-eqz v0, :cond_c1

    const/4 v1, 0x1

    :cond_c1
    return v1

    .line 27
    :pswitch_c2
    invoke-static {p1, v3, v4}, Landroidx/datastore/preferences/protobuf/r1;->w(Ljava/lang/Object;J)F

    move-result p1

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-eqz p1, :cond_cc

    const/4 v1, 0x1

    :cond_cc
    return v1

    .line 28
    :pswitch_cd
    invoke-static {p1, v3, v4}, Landroidx/datastore/preferences/protobuf/r1;->v(Ljava/lang/Object;J)D

    move-result-wide p1

    const-wide/16 v3, 0x0

    cmpl-double v0, p1, v3

    if-eqz v0, :cond_d8

    const/4 v1, 0x1

    :cond_d8
    return v1

    .line 29
    :cond_d9
    invoke-direct {p0, p2}, Landroidx/datastore/preferences/protobuf/u0;->Y(I)I

    move-result p2

    ushr-int/lit8 v0, p2, 0x14

    shl-int v0, v2, v0

    const v3, 0xfffff

    and-int/2addr p2, v3

    int-to-long v3, p2

    .line 30
    invoke-static {p1, v3, v4}, Landroidx/datastore/preferences/protobuf/r1;->x(Ljava/lang/Object;J)I

    move-result p1

    and-int/2addr p1, v0

    if-eqz p1, :cond_ee

    const/4 v1, 0x1

    :cond_ee
    return v1

    nop

    :pswitch_data_f0
    .packed-switch 0x0
        :pswitch_cd
        :pswitch_c2
        :pswitch_b8
        :pswitch_ae
        :pswitch_a6
        :pswitch_9c
        :pswitch_94
        :pswitch_8f
        :pswitch_6d
        :pswitch_65
        :pswitch_59
        :pswitch_51
        :pswitch_49
        :pswitch_41
        :pswitch_37
        :pswitch_2f
        :pswitch_25
        :pswitch_1d
    .end packed-switch
.end method

.method private z(Ljava/lang/Object;III)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;III)Z"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Landroidx/datastore/preferences/protobuf/u0;->h:Z

    if-eqz v0, :cond_9

    .line 2
    invoke-direct {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/u0;->y(Ljava/lang/Object;I)Z

    move-result p1

    return p1

    :cond_9
    and-int p1, p3, p4

    if-eqz p1, :cond_f

    const/4 p1, 0x1

    goto :goto_10

    :cond_f
    const/4 p1, 0x0

    :goto_10
    return p1
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 2
    :goto_4
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/u0;->a:[I

    array-length v1, v1

    if-ge v0, v1, :cond_f

    .line 3
    invoke-direct {p0, p1, p2, v0}, Landroidx/datastore/preferences/protobuf/u0;->M(Ljava/lang/Object;Ljava/lang/Object;I)V

    add-int/lit8 v0, v0, 0x3

    goto :goto_4

    .line 4
    :cond_f
    iget-boolean v0, p0, Landroidx/datastore/preferences/protobuf/u0;->h:Z

    if-nez v0, :cond_21

    .line 5
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/u0;->o:Landroidx/datastore/preferences/protobuf/n1;

    invoke-static {v0, p1, p2}, Landroidx/datastore/preferences/protobuf/i1;->G(Landroidx/datastore/preferences/protobuf/n1;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 6
    iget-boolean v0, p0, Landroidx/datastore/preferences/protobuf/u0;->f:Z

    if-eqz v0, :cond_21

    .line 7
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/u0;->p:Landroidx/datastore/preferences/protobuf/q;

    invoke-static {v0, p1, p2}, Landroidx/datastore/preferences/protobuf/i1;->E(Landroidx/datastore/preferences/protobuf/q;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_21
    return-void
.end method

.method public c(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/u0;->a:[I

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v0, :cond_11

    .line 2
    invoke-direct {p0, p1, p2, v2}, Landroidx/datastore/preferences/protobuf/u0;->m(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-nez v3, :cond_e

    return v1

    :cond_e
    add-int/lit8 v2, v2, 0x3

    goto :goto_5

    .line 3
    :cond_11
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/u0;->o:Landroidx/datastore/preferences/protobuf/n1;

    invoke-virtual {v0, p1}, Landroidx/datastore/preferences/protobuf/n1;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/u0;->o:Landroidx/datastore/preferences/protobuf/n1;

    invoke-virtual {v2, p2}, Landroidx/datastore/preferences/protobuf/n1;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    return v1

    .line 6
    :cond_24
    iget-boolean v0, p0, Landroidx/datastore/preferences/protobuf/u0;->f:Z

    if-eqz v0, :cond_39

    .line 7
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/u0;->p:Landroidx/datastore/preferences/protobuf/q;

    invoke-virtual {v0, p1}, Landroidx/datastore/preferences/protobuf/q;->c(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/u;

    move-result-object p1

    .line 8
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/u0;->p:Landroidx/datastore/preferences/protobuf/q;

    invoke-virtual {v0, p2}, Landroidx/datastore/preferences/protobuf/q;->c(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/u;

    move-result-object p2

    .line 9
    invoke-virtual {p1, p2}, Landroidx/datastore/preferences/protobuf/u;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_39
    const/4 p1, 0x1

    return p1
.end method

.method public d(Ljava/lang/Object;)I
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/u0;->a:[I

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_5
    if-ge v1, v0, :cond_22a

    .line 2
    invoke-direct {p0, v1}, Landroidx/datastore/preferences/protobuf/u0;->i0(I)I

    move-result v3

    .line 3
    invoke-direct {p0, v1}, Landroidx/datastore/preferences/protobuf/u0;->Q(I)I

    move-result v4

    .line 4
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v5

    .line 5
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/u0;->h0(I)I

    move-result v3

    const/16 v7, 0x25

    packed-switch v3, :pswitch_data_24a

    goto/16 :goto_226

    .line 6
    :pswitch_1e
    invoke-direct {p0, p1, v4, v1}, Landroidx/datastore/preferences/protobuf/u0;->E(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_226

    .line 7
    invoke-static {p1, v5, v6}, Landroidx/datastore/preferences/protobuf/r1;->A(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    mul-int/lit8 v2, v2, 0x35

    .line 8
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_225

    .line 9
    :pswitch_30
    invoke-direct {p0, p1, v4, v1}, Landroidx/datastore/preferences/protobuf/u0;->E(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_226

    mul-int/lit8 v2, v2, 0x35

    .line 10
    invoke-static {p1, v5, v6}, Landroidx/datastore/preferences/protobuf/u0;->W(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/datastore/preferences/protobuf/a0;->f(J)I

    move-result v3

    goto/16 :goto_225

    .line 11
    :pswitch_42
    invoke-direct {p0, p1, v4, v1}, Landroidx/datastore/preferences/protobuf/u0;->E(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_226

    mul-int/lit8 v2, v2, 0x35

    .line 12
    invoke-static {p1, v5, v6}, Landroidx/datastore/preferences/protobuf/u0;->V(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_225

    .line 13
    :pswitch_50
    invoke-direct {p0, p1, v4, v1}, Landroidx/datastore/preferences/protobuf/u0;->E(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_226

    mul-int/lit8 v2, v2, 0x35

    .line 14
    invoke-static {p1, v5, v6}, Landroidx/datastore/preferences/protobuf/u0;->W(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/datastore/preferences/protobuf/a0;->f(J)I

    move-result v3

    goto/16 :goto_225

    .line 15
    :pswitch_62
    invoke-direct {p0, p1, v4, v1}, Landroidx/datastore/preferences/protobuf/u0;->E(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_226

    mul-int/lit8 v2, v2, 0x35

    .line 16
    invoke-static {p1, v5, v6}, Landroidx/datastore/preferences/protobuf/u0;->V(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_225

    .line 17
    :pswitch_70
    invoke-direct {p0, p1, v4, v1}, Landroidx/datastore/preferences/protobuf/u0;->E(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_226

    mul-int/lit8 v2, v2, 0x35

    .line 18
    invoke-static {p1, v5, v6}, Landroidx/datastore/preferences/protobuf/u0;->V(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_225

    .line 19
    :pswitch_7e
    invoke-direct {p0, p1, v4, v1}, Landroidx/datastore/preferences/protobuf/u0;->E(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_226

    mul-int/lit8 v2, v2, 0x35

    .line 20
    invoke-static {p1, v5, v6}, Landroidx/datastore/preferences/protobuf/u0;->V(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_225

    .line 21
    :pswitch_8c
    invoke-direct {p0, p1, v4, v1}, Landroidx/datastore/preferences/protobuf/u0;->E(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_226

    mul-int/lit8 v2, v2, 0x35

    .line 22
    invoke-static {p1, v5, v6}, Landroidx/datastore/preferences/protobuf/r1;->A(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_225

    .line 23
    :pswitch_9e
    invoke-direct {p0, p1, v4, v1}, Landroidx/datastore/preferences/protobuf/u0;->E(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_226

    .line 24
    invoke-static {p1, v5, v6}, Landroidx/datastore/preferences/protobuf/r1;->A(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    mul-int/lit8 v2, v2, 0x35

    .line 25
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_225

    .line 26
    :pswitch_b0
    invoke-direct {p0, p1, v4, v1}, Landroidx/datastore/preferences/protobuf/u0;->E(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_226

    mul-int/lit8 v2, v2, 0x35

    .line 27
    invoke-static {p1, v5, v6}, Landroidx/datastore/preferences/protobuf/r1;->A(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto/16 :goto_225

    .line 28
    :pswitch_c4
    invoke-direct {p0, p1, v4, v1}, Landroidx/datastore/preferences/protobuf/u0;->E(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_226

    mul-int/lit8 v2, v2, 0x35

    .line 29
    invoke-static {p1, v5, v6}, Landroidx/datastore/preferences/protobuf/u0;->S(Ljava/lang/Object;J)Z

    move-result v3

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/a0;->c(Z)I

    move-result v3

    goto/16 :goto_225

    .line 30
    :pswitch_d6
    invoke-direct {p0, p1, v4, v1}, Landroidx/datastore/preferences/protobuf/u0;->E(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_226

    mul-int/lit8 v2, v2, 0x35

    .line 31
    invoke-static {p1, v5, v6}, Landroidx/datastore/preferences/protobuf/u0;->V(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_225

    .line 32
    :pswitch_e4
    invoke-direct {p0, p1, v4, v1}, Landroidx/datastore/preferences/protobuf/u0;->E(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_226

    mul-int/lit8 v2, v2, 0x35

    .line 33
    invoke-static {p1, v5, v6}, Landroidx/datastore/preferences/protobuf/u0;->W(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/datastore/preferences/protobuf/a0;->f(J)I

    move-result v3

    goto/16 :goto_225

    .line 34
    :pswitch_f6
    invoke-direct {p0, p1, v4, v1}, Landroidx/datastore/preferences/protobuf/u0;->E(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_226

    mul-int/lit8 v2, v2, 0x35

    .line 35
    invoke-static {p1, v5, v6}, Landroidx/datastore/preferences/protobuf/u0;->V(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_225

    .line 36
    :pswitch_104
    invoke-direct {p0, p1, v4, v1}, Landroidx/datastore/preferences/protobuf/u0;->E(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_226

    mul-int/lit8 v2, v2, 0x35

    .line 37
    invoke-static {p1, v5, v6}, Landroidx/datastore/preferences/protobuf/u0;->W(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/datastore/preferences/protobuf/a0;->f(J)I

    move-result v3

    goto/16 :goto_225

    .line 38
    :pswitch_116
    invoke-direct {p0, p1, v4, v1}, Landroidx/datastore/preferences/protobuf/u0;->E(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_226

    mul-int/lit8 v2, v2, 0x35

    .line 39
    invoke-static {p1, v5, v6}, Landroidx/datastore/preferences/protobuf/u0;->W(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/datastore/preferences/protobuf/a0;->f(J)I

    move-result v3

    goto/16 :goto_225

    .line 40
    :pswitch_128
    invoke-direct {p0, p1, v4, v1}, Landroidx/datastore/preferences/protobuf/u0;->E(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_226

    mul-int/lit8 v2, v2, 0x35

    .line 41
    invoke-static {p1, v5, v6}, Landroidx/datastore/preferences/protobuf/u0;->U(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    goto/16 :goto_225

    .line 42
    :pswitch_13a
    invoke-direct {p0, p1, v4, v1}, Landroidx/datastore/preferences/protobuf/u0;->E(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_226

    mul-int/lit8 v2, v2, 0x35

    .line 43
    invoke-static {p1, v5, v6}, Landroidx/datastore/preferences/protobuf/u0;->T(Ljava/lang/Object;J)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/datastore/preferences/protobuf/a0;->f(J)I

    move-result v3

    goto/16 :goto_225

    :pswitch_150
    mul-int/lit8 v2, v2, 0x35

    .line 44
    invoke-static {p1, v5, v6}, Landroidx/datastore/preferences/protobuf/r1;->A(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_225

    :pswitch_15c
    mul-int/lit8 v2, v2, 0x35

    .line 45
    invoke-static {p1, v5, v6}, Landroidx/datastore/preferences/protobuf/r1;->A(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_225

    .line 46
    :pswitch_168
    invoke-static {p1, v5, v6}, Landroidx/datastore/preferences/protobuf/r1;->A(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1c1

    .line 47
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v7

    goto :goto_1c1

    :pswitch_173
    mul-int/lit8 v2, v2, 0x35

    .line 48
    invoke-static {p1, v5, v6}, Landroidx/datastore/preferences/protobuf/r1;->y(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/datastore/preferences/protobuf/a0;->f(J)I

    move-result v3

    goto/16 :goto_225

    :pswitch_17f
    mul-int/lit8 v2, v2, 0x35

    .line 49
    invoke-static {p1, v5, v6}, Landroidx/datastore/preferences/protobuf/r1;->x(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_225

    :pswitch_187
    mul-int/lit8 v2, v2, 0x35

    .line 50
    invoke-static {p1, v5, v6}, Landroidx/datastore/preferences/protobuf/r1;->y(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/datastore/preferences/protobuf/a0;->f(J)I

    move-result v3

    goto/16 :goto_225

    :pswitch_193
    mul-int/lit8 v2, v2, 0x35

    .line 51
    invoke-static {p1, v5, v6}, Landroidx/datastore/preferences/protobuf/r1;->x(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_225

    :pswitch_19b
    mul-int/lit8 v2, v2, 0x35

    .line 52
    invoke-static {p1, v5, v6}, Landroidx/datastore/preferences/protobuf/r1;->x(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_225

    :pswitch_1a3
    mul-int/lit8 v2, v2, 0x35

    .line 53
    invoke-static {p1, v5, v6}, Landroidx/datastore/preferences/protobuf/r1;->x(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_225

    :pswitch_1ab
    mul-int/lit8 v2, v2, 0x35

    .line 54
    invoke-static {p1, v5, v6}, Landroidx/datastore/preferences/protobuf/r1;->A(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_225

    .line 55
    :pswitch_1b7
    invoke-static {p1, v5, v6}, Landroidx/datastore/preferences/protobuf/r1;->A(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1c1

    .line 56
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v7

    :cond_1c1
    :goto_1c1
    mul-int/lit8 v2, v2, 0x35

    add-int/2addr v2, v7

    goto :goto_226

    :pswitch_1c5
    mul-int/lit8 v2, v2, 0x35

    .line 57
    invoke-static {p1, v5, v6}, Landroidx/datastore/preferences/protobuf/r1;->A(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_225

    :pswitch_1d2
    mul-int/lit8 v2, v2, 0x35

    .line 58
    invoke-static {p1, v5, v6}, Landroidx/datastore/preferences/protobuf/r1;->p(Ljava/lang/Object;J)Z

    move-result v3

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/a0;->c(Z)I

    move-result v3

    goto :goto_225

    :pswitch_1dd
    mul-int/lit8 v2, v2, 0x35

    .line 59
    invoke-static {p1, v5, v6}, Landroidx/datastore/preferences/protobuf/r1;->x(Ljava/lang/Object;J)I

    move-result v3

    goto :goto_225

    :pswitch_1e4
    mul-int/lit8 v2, v2, 0x35

    .line 60
    invoke-static {p1, v5, v6}, Landroidx/datastore/preferences/protobuf/r1;->y(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/datastore/preferences/protobuf/a0;->f(J)I

    move-result v3

    goto :goto_225

    :pswitch_1ef
    mul-int/lit8 v2, v2, 0x35

    .line 61
    invoke-static {p1, v5, v6}, Landroidx/datastore/preferences/protobuf/r1;->x(Ljava/lang/Object;J)I

    move-result v3

    goto :goto_225

    :pswitch_1f6
    mul-int/lit8 v2, v2, 0x35

    .line 62
    invoke-static {p1, v5, v6}, Landroidx/datastore/preferences/protobuf/r1;->y(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/datastore/preferences/protobuf/a0;->f(J)I

    move-result v3

    goto :goto_225

    :pswitch_201
    mul-int/lit8 v2, v2, 0x35

    .line 63
    invoke-static {p1, v5, v6}, Landroidx/datastore/preferences/protobuf/r1;->y(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/datastore/preferences/protobuf/a0;->f(J)I

    move-result v3

    goto :goto_225

    :pswitch_20c
    mul-int/lit8 v2, v2, 0x35

    .line 64
    invoke-static {p1, v5, v6}, Landroidx/datastore/preferences/protobuf/r1;->w(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    goto :goto_225

    :pswitch_217
    mul-int/lit8 v2, v2, 0x35

    .line 65
    invoke-static {p1, v5, v6}, Landroidx/datastore/preferences/protobuf/r1;->v(Ljava/lang/Object;J)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    .line 66
    invoke-static {v3, v4}, Landroidx/datastore/preferences/protobuf/a0;->f(J)I

    move-result v3

    :goto_225
    add-int/2addr v2, v3

    :cond_226
    :goto_226
    add-int/lit8 v1, v1, 0x3

    goto/16 :goto_5

    :cond_22a
    mul-int/lit8 v2, v2, 0x35

    .line 67
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/u0;->o:Landroidx/datastore/preferences/protobuf/n1;

    invoke-virtual {v0, p1}, Landroidx/datastore/preferences/protobuf/n1;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v2, v0

    .line 68
    iget-boolean v0, p0, Landroidx/datastore/preferences/protobuf/u0;->f:Z

    if-eqz v0, :cond_248

    mul-int/lit8 v2, v2, 0x35

    .line 69
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/u0;->p:Landroidx/datastore/preferences/protobuf/q;

    invoke-virtual {v0, p1}, Landroidx/datastore/preferences/protobuf/q;->c(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/u;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/u;->hashCode()I

    move-result p1

    add-int/2addr v2, p1

    :cond_248
    return v2

    nop

    :pswitch_data_24a
    .packed-switch 0x0
        :pswitch_217
        :pswitch_20c
        :pswitch_201
        :pswitch_1f6
        :pswitch_1ef
        :pswitch_1e4
        :pswitch_1dd
        :pswitch_1d2
        :pswitch_1c5
        :pswitch_1b7
        :pswitch_1ab
        :pswitch_1a3
        :pswitch_19b
        :pswitch_193
        :pswitch_187
        :pswitch_17f
        :pswitch_173
        :pswitch_168
        :pswitch_15c
        :pswitch_15c
        :pswitch_15c
        :pswitch_15c
        :pswitch_15c
        :pswitch_15c
        :pswitch_15c
        :pswitch_15c
        :pswitch_15c
        :pswitch_15c
        :pswitch_15c
        :pswitch_15c
        :pswitch_15c
        :pswitch_15c
        :pswitch_15c
        :pswitch_15c
        :pswitch_15c
        :pswitch_15c
        :pswitch_15c
        :pswitch_15c
        :pswitch_15c
        :pswitch_15c
        :pswitch_15c
        :pswitch_15c
        :pswitch_15c
        :pswitch_15c
        :pswitch_15c
        :pswitch_15c
        :pswitch_15c
        :pswitch_15c
        :pswitch_15c
        :pswitch_15c
        :pswitch_150
        :pswitch_13a
        :pswitch_128
        :pswitch_116
        :pswitch_104
        :pswitch_f6
        :pswitch_e4
        :pswitch_d6
        :pswitch_c4
        :pswitch_b0
        :pswitch_9e
        :pswitch_8c
        :pswitch_7e
        :pswitch_70
        :pswitch_62
        :pswitch_50
        :pswitch_42
        :pswitch_30
        :pswitch_1e
    .end packed-switch
.end method

.method public e(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/f1;Landroidx/datastore/preferences/protobuf/p;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroidx/datastore/preferences/protobuf/f1;",
            "Landroidx/datastore/preferences/protobuf/p;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/u0;->o:Landroidx/datastore/preferences/protobuf/n1;

    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/u0;->p:Landroidx/datastore/preferences/protobuf/q;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/u0;->I(Landroidx/datastore/preferences/protobuf/n1;Landroidx/datastore/preferences/protobuf/q;Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/f1;Landroidx/datastore/preferences/protobuf/p;)V

    return-void
.end method

.method public f(Ljava/lang/Object;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget v0, p0, Landroidx/datastore/preferences/protobuf/u0;->k:I

    :goto_2
    iget v1, p0, Landroidx/datastore/preferences/protobuf/u0;->l:I

    if-ge v0, v1, :cond_25

    .line 2
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/u0;->j:[I

    aget v1, v1, v0

    invoke-direct {p0, v1}, Landroidx/datastore/preferences/protobuf/u0;->i0(I)I

    move-result v1

    invoke-static {v1}, Landroidx/datastore/preferences/protobuf/u0;->R(I)J

    move-result-wide v1

    .line 3
    invoke-static {p1, v1, v2}, Landroidx/datastore/preferences/protobuf/r1;->A(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_19

    goto :goto_22

    .line 4
    :cond_19
    iget-object v4, p0, Landroidx/datastore/preferences/protobuf/u0;->q:Landroidx/datastore/preferences/protobuf/m0;

    invoke-interface {v4, v3}, Landroidx/datastore/preferences/protobuf/m0;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, v1, v2, v3}, Landroidx/datastore/preferences/protobuf/r1;->O(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 5
    :cond_25
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/u0;->j:[I

    array-length v0, v0

    :goto_28
    if-ge v1, v0, :cond_37

    .line 6
    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/u0;->n:Landroidx/datastore/preferences/protobuf/h0;

    iget-object v3, p0, Landroidx/datastore/preferences/protobuf/u0;->j:[I

    aget v3, v3, v1

    int-to-long v3, v3

    invoke-virtual {v2, p1, v3, v4}, Landroidx/datastore/preferences/protobuf/h0;->c(Ljava/lang/Object;J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    .line 7
    :cond_37
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/u0;->o:Landroidx/datastore/preferences/protobuf/n1;

    invoke-virtual {v0, p1}, Landroidx/datastore/preferences/protobuf/n1;->j(Ljava/lang/Object;)V

    .line 8
    iget-boolean v0, p0, Landroidx/datastore/preferences/protobuf/u0;->f:Z

    if-eqz v0, :cond_45

    .line 9
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/u0;->p:Landroidx/datastore/preferences/protobuf/q;

    invoke-virtual {v0, p1}, Landroidx/datastore/preferences/protobuf/q;->f(Ljava/lang/Object;)V

    :cond_45
    return-void
.end method

.method public final g(Ljava/lang/Object;)Z
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1
    :goto_4
    iget v4, p0, Landroidx/datastore/preferences/protobuf/u0;->k:I

    const/4 v5, 0x1

    if-ge v2, v4, :cond_94

    .line 2
    iget-object v4, p0, Landroidx/datastore/preferences/protobuf/u0;->j:[I

    aget v4, v4, v2

    .line 3
    invoke-direct {p0, v4}, Landroidx/datastore/preferences/protobuf/u0;->Q(I)I

    move-result v6

    .line 4
    invoke-direct {p0, v4}, Landroidx/datastore/preferences/protobuf/u0;->i0(I)I

    move-result v7

    .line 5
    iget-boolean v8, p0, Landroidx/datastore/preferences/protobuf/u0;->h:Z

    if-nez v8, :cond_31

    .line 6
    iget-object v8, p0, Landroidx/datastore/preferences/protobuf/u0;->a:[I

    add-int/lit8 v9, v4, 0x2

    aget v8, v8, v9

    const v9, 0xfffff

    and-int/2addr v9, v8

    ushr-int/lit8 v8, v8, 0x14

    shl-int/2addr v5, v8

    if-eq v9, v1, :cond_32

    .line 7
    sget-object v1, Landroidx/datastore/preferences/protobuf/u0;->s:Lsun/misc/Unsafe;

    int-to-long v10, v9

    invoke-virtual {v1, p1, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    move v1, v9

    goto :goto_32

    :cond_31
    const/4 v5, 0x0

    .line 8
    :cond_32
    :goto_32
    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/u0;->F(I)Z

    move-result v8

    if-eqz v8, :cond_3f

    .line 9
    invoke-direct {p0, p1, v4, v3, v5}, Landroidx/datastore/preferences/protobuf/u0;->z(Ljava/lang/Object;III)Z

    move-result v8

    if-nez v8, :cond_3f

    return v0

    .line 10
    :cond_3f
    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/u0;->h0(I)I

    move-result v8

    const/16 v9, 0x9

    if-eq v8, v9, :cond_7f

    const/16 v9, 0x11

    if-eq v8, v9, :cond_7f

    const/16 v5, 0x1b

    if-eq v8, v5, :cond_78

    const/16 v5, 0x3c

    if-eq v8, v5, :cond_67

    const/16 v5, 0x44

    if-eq v8, v5, :cond_67

    const/16 v5, 0x31

    if-eq v8, v5, :cond_78

    const/16 v5, 0x32

    if-eq v8, v5, :cond_60

    goto :goto_90

    .line 11
    :cond_60
    invoke-direct {p0, p1, v7, v4}, Landroidx/datastore/preferences/protobuf/u0;->C(Ljava/lang/Object;II)Z

    move-result v4

    if-nez v4, :cond_90

    return v0

    .line 12
    :cond_67
    invoke-direct {p0, p1, v6, v4}, Landroidx/datastore/preferences/protobuf/u0;->E(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_90

    .line 13
    invoke-direct {p0, v4}, Landroidx/datastore/preferences/protobuf/u0;->s(I)Landroidx/datastore/preferences/protobuf/g1;

    move-result-object v4

    invoke-static {p1, v7, v4}, Landroidx/datastore/preferences/protobuf/u0;->A(Ljava/lang/Object;ILandroidx/datastore/preferences/protobuf/g1;)Z

    move-result v4

    if-nez v4, :cond_90

    return v0

    .line 14
    :cond_78
    invoke-direct {p0, p1, v7, v4}, Landroidx/datastore/preferences/protobuf/u0;->B(Ljava/lang/Object;II)Z

    move-result v4

    if-nez v4, :cond_90

    return v0

    .line 15
    :cond_7f
    invoke-direct {p0, p1, v4, v3, v5}, Landroidx/datastore/preferences/protobuf/u0;->z(Ljava/lang/Object;III)Z

    move-result v5

    if-eqz v5, :cond_90

    .line 16
    invoke-direct {p0, v4}, Landroidx/datastore/preferences/protobuf/u0;->s(I)Landroidx/datastore/preferences/protobuf/g1;

    move-result-object v4

    invoke-static {p1, v7, v4}, Landroidx/datastore/preferences/protobuf/u0;->A(Ljava/lang/Object;ILandroidx/datastore/preferences/protobuf/g1;)Z

    move-result v4

    if-nez v4, :cond_90

    return v0

    :cond_90
    :goto_90
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_4

    .line 17
    :cond_94
    iget-boolean v1, p0, Landroidx/datastore/preferences/protobuf/u0;->f:Z

    if-eqz v1, :cond_a5

    .line 18
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/u0;->p:Landroidx/datastore/preferences/protobuf/q;

    invoke-virtual {v1, p1}, Landroidx/datastore/preferences/protobuf/q;->c(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/u;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/u;->p()Z

    move-result p1

    if-nez p1, :cond_a5

    return v0

    :cond_a5
    return v5
.end method

.method public h(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/u1;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroidx/datastore/preferences/protobuf/u1;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Landroidx/datastore/preferences/protobuf/u1;->i()Landroidx/datastore/preferences/protobuf/u1$a;

    move-result-object v0

    sget-object v1, Landroidx/datastore/preferences/protobuf/u1$a;->p:Landroidx/datastore/preferences/protobuf/u1$a;

    if-ne v0, v1, :cond_c

    .line 2
    invoke-direct {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/u0;->l0(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/u1;)V

    goto :goto_17

    .line 3
    :cond_c
    iget-boolean v0, p0, Landroidx/datastore/preferences/protobuf/u0;->h:Z

    if-eqz v0, :cond_14

    .line 4
    invoke-direct {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/u0;->k0(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/u1;)V

    goto :goto_17

    .line 5
    :cond_14
    invoke-direct {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/u0;->j0(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/u1;)V

    :goto_17
    return-void
.end method

.method public i(Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Landroidx/datastore/preferences/protobuf/u0;->h:Z

    if-eqz v0, :cond_9

    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/u0;->u(Ljava/lang/Object;)I

    move-result p1

    goto :goto_d

    :cond_9
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/u0;->t(Ljava/lang/Object;)I

    move-result p1

    :goto_d
    return p1
.end method

.method public j()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/u0;->m:Landroidx/datastore/preferences/protobuf/w0;

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/u0;->e:Landroidx/datastore/preferences/protobuf/r0;

    invoke-interface {v0, v1}, Landroidx/datastore/preferences/protobuf/w0;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
