###### Class ca.a (ca.a)
.class public final Lca/a;
.super Ljava/lang/Object;
.source "Duration.kt"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lca/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lca/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final p:Lca/a$a;

.field private static final q:J

.field private static final r:J

.field private static final s:J


# instance fields
.field private final o:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lca/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lca/a$a;-><init>(Lt9/g;)V

    sput-object v0, Lca/a;->p:Lca/a$a;

    const-wide/16 v0, 0x0

    .line 1
    invoke-static {v0, v1}, Lca/a;->i(J)J

    move-result-wide v0

    sput-wide v0, Lca/a;->q:J

    const-wide v0, 0x3fffffffffffffffL    # 1.9999999999999998

    .line 2
    invoke-static {v0, v1}, Lca/c;->b(J)J

    move-result-wide v0

    sput-wide v0, Lca/a;->r:J

    const-wide v0, -0x3fffffffffffffffL    # -2.0000000000000004

    .line 3
    invoke-static {v0, v1}, Lca/c;->b(J)J

    move-result-wide v0

    sput-wide v0, Lca/a;->s:J

    return-void
.end method

.method private synthetic constructor <init>(J)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lca/a;->o:J

    return-void
.end method

.method private static final I(J)Lca/d;
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lca/a;->N(J)Z

    move-result p0

    if-eqz p0, :cond_9

    sget-object p0, Lca/d;->p:Lca/d;

    goto :goto_b

    :cond_9
    sget-object p0, Lca/d;->r:Lca/d;

    :goto_b
    return-object p0
.end method

.method private static final J(J)J
    .registers 3

    const/4 v0, 0x1

    shr-long/2addr p0, v0

    return-wide p0
.end method

.method public static K(J)I
    .registers 4

    const/16 v0, 0x20

    ushr-long v0, p0, v0

    xor-long/2addr p0, v0

    long-to-int p1, p0

    return p1
.end method

.method public static final L(J)Z
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lca/a;->O(J)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static final M(J)Z
    .registers 2

    long-to-int p1, p0

    const/4 p0, 0x1

    and-int/2addr p1, p0

    if-ne p1, p0, :cond_6

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method private static final N(J)Z
    .registers 2

    long-to-int p1, p0

    const/4 p0, 0x1

    and-int/2addr p1, p0

    if-nez p1, :cond_6

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public static final O(J)Z
    .registers 5

    .line 1
    sget-wide v0, Lca/a;->r:J

    cmp-long v2, p0, v0

    if-eqz v2, :cond_f

    sget-wide v0, Lca/a;->s:J

    cmp-long v2, p0, v0

    if-nez v2, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method

.method public static final P(J)Z
    .registers 5

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-gez v2, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public static final Q(J)Z
    .registers 5

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-lez v2, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public static final R(JLca/d;)J
    .registers 6

    const-string v0, "unit"

    invoke-static {p2, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-wide v0, Lca/a;->r:J

    cmp-long v2, p0, v0

    if-nez v2, :cond_11

    const-wide p0, 0x7fffffffffffffffL

    goto :goto_26

    .line 2
    :cond_11
    sget-wide v0, Lca/a;->s:J

    cmp-long v2, p0, v0

    if-nez v2, :cond_1a

    const-wide/high16 p0, -0x8000000000000000L

    goto :goto_26

    .line 3
    :cond_1a
    invoke-static {p0, p1}, Lca/a;->J(J)J

    move-result-wide v0

    invoke-static {p0, p1}, Lca/a;->I(J)Lca/d;

    move-result-object p0

    invoke-static {v0, v1, p0, p2}, Lca/e;->a(JLca/d;Lca/d;)J

    move-result-wide p0

    :goto_26
    return-wide p0
.end method

.method public static S(J)Ljava/lang/String;
    .registers 16

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-nez v2, :cond_a

    const-string p0, "0s"

    goto/16 :goto_105

    .line 1
    :cond_a
    sget-wide v2, Lca/a;->r:J

    cmp-long v4, p0, v2

    if-nez v4, :cond_14

    const-string p0, "Infinity"

    goto/16 :goto_105

    .line 2
    :cond_14
    sget-wide v2, Lca/a;->s:J

    cmp-long v4, p0, v2

    if-nez v4, :cond_1e

    const-string p0, "-Infinity"

    goto/16 :goto_105

    .line 3
    :cond_1e
    invoke-static {p0, p1}, Lca/a;->P(J)Z

    move-result v2

    .line 4
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v2, :cond_2e

    const/16 v3, 0x2d

    .line 5
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6
    :cond_2e
    invoke-static {p0, p1}, Lca/a;->k(J)J

    move-result-wide v3

    .line 7
    invoke-static {v3, v4}, Lca/a;->m(J)J

    move-result-wide v5

    invoke-static {v3, v4}, Lca/a;->l(J)I

    move-result v7

    invoke-static {v3, v4}, Lca/a;->r(J)I

    move-result v8

    invoke-static {v3, v4}, Lca/a;->u(J)I

    move-result v9

    invoke-static {v3, v4}, Lca/a;->s(J)I

    move-result v10

    const/4 v3, 0x0

    const/4 v12, 0x1

    cmp-long v4, v5, v0

    if-eqz v4, :cond_4e

    const/4 v0, 0x1

    goto :goto_4f

    :cond_4e
    const/4 v0, 0x0

    :goto_4f
    if-eqz v7, :cond_53

    const/4 v1, 0x1

    goto :goto_54

    :cond_53
    const/4 v1, 0x0

    :goto_54
    if-eqz v8, :cond_58

    const/4 v4, 0x1

    goto :goto_59

    :cond_58
    const/4 v4, 0x0

    :goto_59
    if-nez v9, :cond_60

    if-eqz v10, :cond_5e

    goto :goto_60

    :cond_5e
    const/4 v13, 0x0

    goto :goto_61

    :cond_60
    :goto_60
    const/4 v13, 0x1

    :goto_61
    if-eqz v0, :cond_6c

    .line 8
    invoke-virtual {v11, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v3, 0x64

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    :cond_6c
    const/16 v5, 0x20

    if-nez v1, :cond_76

    if-eqz v0, :cond_86

    if-nez v4, :cond_76

    if-eqz v13, :cond_86

    :cond_76
    add-int/lit8 v6, v3, 0x1

    if-lez v3, :cond_7d

    .line 9
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 10
    :cond_7d
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x68

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v3, v6

    :cond_86
    if-nez v4, :cond_8e

    if-eqz v13, :cond_9e

    if-nez v1, :cond_8e

    if-eqz v0, :cond_9e

    :cond_8e
    add-int/lit8 v6, v3, 0x1

    if-lez v3, :cond_95

    .line 11
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 12
    :cond_95
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x6d

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v3, v6

    :cond_9e
    if-eqz v13, :cond_ed

    add-int/lit8 v13, v3, 0x1

    if-lez v3, :cond_a7

    .line 13
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_a7
    if-nez v9, :cond_de

    if-nez v0, :cond_de

    if-nez v1, :cond_de

    if-eqz v4, :cond_b0

    goto :goto_de

    :cond_b0
    const v0, 0xf4240

    if-lt v10, v0, :cond_c3

    .line 14
    div-int v6, v10, v0

    rem-int v7, v10, v0

    const/4 v8, 0x6

    const/4 v10, 0x0

    const-string v9, "ms"

    move-wide v3, p0

    move-object v5, v11

    invoke-static/range {v3 .. v10}, Lca/a;->c(JLjava/lang/StringBuilder;IIILjava/lang/String;Z)V

    goto :goto_ec

    :cond_c3
    const/16 v0, 0x3e8

    if-lt v10, v0, :cond_d5

    .line 15
    div-int/lit16 v6, v10, 0x3e8

    rem-int/lit16 v7, v10, 0x3e8

    const/4 v8, 0x3

    const/4 v10, 0x0

    const-string v9, "us"

    move-wide v3, p0

    move-object v5, v11

    invoke-static/range {v3 .. v10}, Lca/a;->c(JLjava/lang/StringBuilder;IIILjava/lang/String;Z)V

    goto :goto_ec

    .line 16
    :cond_d5
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "ns"

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_ec

    :cond_de
    :goto_de
    const/16 v8, 0x9

    const/4 v0, 0x0

    const-string v1, "s"

    move-wide v3, p0

    move-object v5, v11

    move v6, v9

    move v7, v10

    move-object v9, v1

    move v10, v0

    .line 17
    invoke-static/range {v3 .. v10}, Lca/a;->c(JLjava/lang/StringBuilder;IIILjava/lang/String;Z)V

    :goto_ec
    move v3, v13

    :cond_ed
    if-eqz v2, :cond_fc

    if-le v3, v12, :cond_fc

    const/16 p0, 0x28

    .line 18
    invoke-virtual {v11, v12, p0}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 p1, 0x29

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 19
    :cond_fc
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "StringBuilder().apply(builderAction).toString()"

    invoke-static {p0, p1}, Lt9/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_105
    return-object p0
.end method

.method public static final T(J)J
    .registers 4

    .line 1
    invoke-static {p0, p1}, Lca/a;->J(J)J

    move-result-wide v0

    neg-long v0, v0

    long-to-int p1, p0

    and-int/lit8 p0, p1, 0x1

    invoke-static {v0, v1, p0}, Lca/c;->a(JI)J

    move-result-wide p0

    return-wide p0
.end method

.method private static final c(JLjava/lang/StringBuilder;IIILjava/lang/String;Z)V
    .registers 11

    .line 1
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_4c

    const/16 p0, 0x2e

    .line 2
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x30

    invoke-static {p0, p5, p1}, Lba/g;->Q(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    .line 4
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p3

    const/4 p4, -0x1

    add-int/2addr p3, p4

    const/4 p5, 0x1

    const/4 v0, 0x0

    if-ltz p3, :cond_32

    :goto_1e
    add-int/lit8 v1, p3, -0x1

    .line 5
    invoke-interface {p0, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-eq v2, p1, :cond_28

    const/4 v2, 0x1

    goto :goto_29

    :cond_28
    const/4 v2, 0x0

    :goto_29
    if-eqz v2, :cond_2d

    move p4, p3

    goto :goto_32

    :cond_2d
    if-gez v1, :cond_30

    goto :goto_32

    :cond_30
    move p3, v1

    goto :goto_1e

    :cond_32
    :goto_32
    add-int/2addr p4, p5

    const-string p1, "this.append(value, startIndex, endIndex)"

    const/4 p3, 0x3

    if-nez p7, :cond_41

    if-ge p4, p3, :cond_41

    .line 6
    invoke-virtual {p2, p0, v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-static {p2, p1}, Lt9/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_4c

    :cond_41
    add-int/lit8 p4, p4, 0x2

    .line 7
    div-int/2addr p4, p3

    mul-int/lit8 p4, p4, 0x3

    invoke-virtual {p2, p0, v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-static {p2, p1}, Lt9/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    :cond_4c
    :goto_4c
    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static final synthetic e(J)Lca/a;
    .registers 3

    new-instance v0, Lca/a;

    invoke-direct {v0, p0, p1}, Lca/a;-><init>(J)V

    return-object v0
.end method

.method public static g(JJ)I
    .registers 9

    xor-long v0, p0, p2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1d

    long-to-int v1, v0

    and-int/lit8 v0, v1, 0x1

    if-nez v0, :cond_e

    goto :goto_1d

    :cond_e
    long-to-int v0, p0

    and-int/lit8 v0, v0, 0x1

    long-to-int p3, p2

    and-int/lit8 p2, p3, 0x1

    sub-int/2addr v0, p2

    .line 1
    invoke-static {p0, p1}, Lca/a;->P(J)Z

    move-result p0

    if-eqz p0, :cond_1c

    neg-int v0, v0

    :cond_1c
    return v0

    .line 2
    :cond_1d
    :goto_1d
    invoke-static {p0, p1, p2, p3}, Lt9/m;->g(JJ)I

    move-result p0

    return p0
.end method

.method public static i(J)J
    .registers 7

    .line 1
    invoke-static {}, Lca/b;->a()Z

    move-result v0

    if-eqz v0, :cond_ab

    .line 2
    invoke-static {p0, p1}, Lca/a;->N(J)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 3
    new-instance v0, Ly9/i;

    const-wide v1, -0x3ffffffffffa14bfL    # -2.0000000001722644

    const-wide v3, 0x3ffffffffffa14bfL    # 1.9999999999138678

    invoke-direct {v0, v1, v2, v3, v4}, Ly9/i;-><init>(JJ)V

    invoke-static {p0, p1}, Lca/a;->J(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ly9/i;->j(J)Z

    move-result v0

    if-eqz v0, :cond_27

    goto/16 :goto_ab

    :cond_27
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1}, Lca/a;->J(J)J

    move-result-wide p0

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " ns is out of nanoseconds range"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 4
    :cond_42
    new-instance v0, Ly9/i;

    const-wide v1, -0x3fffffffffffffffL    # -2.0000000000000004

    const-wide v3, 0x3fffffffffffffffL    # 1.9999999999999998

    invoke-direct {v0, v1, v2, v3, v4}, Ly9/i;-><init>(JJ)V

    invoke-static {p0, p1}, Lca/a;->J(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ly9/i;->j(J)Z

    move-result v0

    if-eqz v0, :cond_90

    .line 5
    new-instance v0, Ly9/i;

    const-wide v1, -0x431bde82d7aL

    const-wide v3, 0x431bde82d7aL

    invoke-direct {v0, v1, v2, v3, v4}, Ly9/i;-><init>(JJ)V

    invoke-static {p0, p1}, Lca/a;->J(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ly9/i;->j(J)Z

    move-result v0

    if-nez v0, :cond_75

    goto :goto_ab

    :cond_75
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1}, Lca/a;->J(J)J

    move-result-wide p0

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " ms is denormalized"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 6
    :cond_90
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1}, Lca/a;->J(J)J

    move-result-wide p0

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " ms is out of milliseconds range"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_ab
    :goto_ab
    return-wide p0
.end method

.method public static j(JLjava/lang/Object;)Z
    .registers 7

    instance-of v0, p2, Lca/a;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    check-cast p2, Lca/a;

    invoke-virtual {p2}, Lca/a;->U()J

    move-result-wide v2

    cmp-long p2, p0, v2

    if-eqz p2, :cond_11

    return v1

    :cond_11
    const/4 p0, 0x1

    return p0
.end method

.method public static final k(J)J
    .registers 3

    .line 1
    invoke-static {p0, p1}, Lca/a;->P(J)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {p0, p1}, Lca/a;->T(J)J

    move-result-wide p0

    :cond_a
    return-wide p0
.end method

.method public static final l(J)I
    .registers 4

    .line 1
    invoke-static {p0, p1}, Lca/a;->O(J)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    goto :goto_11

    :cond_8
    invoke-static {p0, p1}, Lca/a;->n(J)J

    move-result-wide p0

    const/16 v0, 0x18

    int-to-long v0, v0

    rem-long/2addr p0, v0

    long-to-int p0, p0

    :goto_11
    return p0
.end method

.method public static final m(J)J
    .registers 3

    .line 1
    sget-object v0, Lca/d;->v:Lca/d;

    invoke-static {p0, p1, v0}, Lca/a;->R(JLca/d;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final n(J)J
    .registers 3

    .line 1
    sget-object v0, Lca/d;->u:Lca/d;

    invoke-static {p0, p1, v0}, Lca/a;->R(JLca/d;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final o(J)J
    .registers 3

    .line 1
    invoke-static {p0, p1}, Lca/a;->M(J)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {p0, p1}, Lca/a;->L(J)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {p0, p1}, Lca/a;->J(J)J

    move-result-wide p0

    goto :goto_17

    :cond_11
    sget-object v0, Lca/d;->r:Lca/d;

    invoke-static {p0, p1, v0}, Lca/a;->R(JLca/d;)J

    move-result-wide p0

    :goto_17
    return-wide p0
.end method

.method public static final p(J)J
    .registers 3

    .line 1
    sget-object v0, Lca/d;->t:Lca/d;

    invoke-static {p0, p1, v0}, Lca/a;->R(JLca/d;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final q(J)J
    .registers 3

    .line 1
    sget-object v0, Lca/d;->s:Lca/d;

    invoke-static {p0, p1, v0}, Lca/a;->R(JLca/d;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final r(J)I
    .registers 4

    .line 1
    invoke-static {p0, p1}, Lca/a;->O(J)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    goto :goto_11

    :cond_8
    invoke-static {p0, p1}, Lca/a;->p(J)J

    move-result-wide p0

    const/16 v0, 0x3c

    int-to-long v0, v0

    rem-long/2addr p0, v0

    long-to-int p0, p0

    :goto_11
    return p0
.end method

.method public static final s(J)I
    .registers 4

    .line 1
    invoke-static {p0, p1}, Lca/a;->O(J)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    goto :goto_25

    .line 2
    :cond_8
    invoke-static {p0, p1}, Lca/a;->M(J)Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-static {p0, p1}, Lca/a;->J(J)J

    move-result-wide p0

    const/16 v0, 0x3e8

    int-to-long v0, v0

    rem-long/2addr p0, v0

    invoke-static {p0, p1}, Lca/c;->c(J)J

    move-result-wide p0

    goto :goto_24

    .line 3
    :cond_1b
    invoke-static {p0, p1}, Lca/a;->J(J)J

    move-result-wide p0

    const v0, 0x3b9aca00

    int-to-long v0, v0

    rem-long/2addr p0, v0

    :goto_24
    long-to-int p0, p0

    :goto_25
    return p0
.end method

.method public static final u(J)I
    .registers 4

    .line 1
    invoke-static {p0, p1}, Lca/a;->O(J)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    goto :goto_11

    :cond_8
    invoke-static {p0, p1}, Lca/a;->q(J)J

    move-result-wide p0

    const/16 v0, 0x3c

    int-to-long v0, v0

    rem-long/2addr p0, v0

    long-to-int p0, p0

    :goto_11
    return p0
.end method


# virtual methods
.method public final synthetic U()J
    .registers 3

    iget-wide v0, p0, Lca/a;->o:J

    return-wide v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 4

    .line 1
    check-cast p1, Lca/a;

    invoke-virtual {p1}, Lca/a;->U()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lca/a;->f(J)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    iget-wide v0, p0, Lca/a;->o:J

    invoke-static {v0, v1, p1}, Lca/a;->j(JLjava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public f(J)I
    .registers 5

    .line 1
    iget-wide v0, p0, Lca/a;->o:J

    invoke-static {v0, v1, p1, p2}, Lca/a;->g(JJ)I

    move-result p1

    return p1
.end method

.method public hashCode()I
    .registers 3

    iget-wide v0, p0, Lca/a;->o:J

    invoke-static {v0, v1}, Lca/a;->K(J)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    iget-wide v0, p0, Lca/a;->o:J

    invoke-static {v0, v1}, Lca/a;->S(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class ca.a.C0099a (ca.a$a)
.class public final Lca/a$a;
.super Ljava/lang/Object;
.source "Duration.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lca/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lt9/g;)V
    .registers 2

    invoke-direct {p0}, Lca/a$a;-><init>()V

    return-void
.end method
