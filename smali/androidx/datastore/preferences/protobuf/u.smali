###### Class androidx.datastore.preferences.protobuf.u (androidx.datastore.preferences.protobuf.u)
.class final Landroidx/datastore/preferences/protobuf/u;
.super Ljava/lang/Object;
.source "FieldSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/datastore/preferences/protobuf/u$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroidx/datastore/preferences/protobuf/u$b<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final d:Landroidx/datastore/preferences/protobuf/u;


# instance fields
.field private final a:Landroidx/datastore/preferences/protobuf/j1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/protobuf/j1<",
            "TT;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Landroidx/datastore/preferences/protobuf/u;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroidx/datastore/preferences/protobuf/u;-><init>(Z)V

    sput-object v0, Landroidx/datastore/preferences/protobuf/u;->d:Landroidx/datastore/preferences/protobuf/u;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    .line 2
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/j1;->s(I)Landroidx/datastore/preferences/protobuf/j1;

    move-result-object v0

    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/u;->a:Landroidx/datastore/preferences/protobuf/j1;

    return-void
.end method

.method private constructor <init>(Landroidx/datastore/preferences/protobuf/j1;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/datastore/preferences/protobuf/j1<",
            "TT;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/u;->a:Landroidx/datastore/preferences/protobuf/j1;

    .line 7
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/u;->t()V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 2

    const/4 p1, 0x0

    .line 3
    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/j1;->s(I)Landroidx/datastore/preferences/protobuf/j1;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/u;-><init>(Landroidx/datastore/preferences/protobuf/j1;)V

    .line 4
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/u;->t()V

    return-void
.end method

.method static A(Landroidx/datastore/preferences/protobuf/k;Landroidx/datastore/preferences/protobuf/t1$b;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Landroidx/datastore/preferences/protobuf/u$a;->b:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_dc

    goto/16 :goto_db

    .line 2
    :pswitch_d
    instance-of p1, p2, Landroidx/datastore/preferences/protobuf/a0$c;

    if-eqz p1, :cond_1c

    .line 3
    check-cast p2, Landroidx/datastore/preferences/protobuf/a0$c;

    invoke-interface {p2}, Landroidx/datastore/preferences/protobuf/a0$c;->h()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/k;->t0(I)V

    goto/16 :goto_db

    .line 4
    :cond_1c
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/k;->t0(I)V

    goto/16 :goto_db

    .line 5
    :pswitch_27
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/k;->T0(J)V

    goto/16 :goto_db

    .line 6
    :pswitch_32
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/k;->R0(I)V

    goto/16 :goto_db

    .line 7
    :pswitch_3d
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/k;->P0(J)V

    goto/16 :goto_db

    .line 8
    :pswitch_48
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/k;->N0(I)V

    goto/16 :goto_db

    .line 9
    :pswitch_53
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/k;->Y0(I)V

    goto/16 :goto_db

    .line 10
    :pswitch_5e
    instance-of p1, p2, Landroidx/datastore/preferences/protobuf/h;

    if-eqz p1, :cond_69

    .line 11
    check-cast p2, Landroidx/datastore/preferences/protobuf/h;

    invoke-virtual {p0, p2}, Landroidx/datastore/preferences/protobuf/k;->p0(Landroidx/datastore/preferences/protobuf/h;)V

    goto/16 :goto_db

    .line 12
    :cond_69
    check-cast p2, [B

    invoke-virtual {p0, p2}, Landroidx/datastore/preferences/protobuf/k;->m0([B)V

    goto/16 :goto_db

    .line 13
    :pswitch_70
    instance-of p1, p2, Landroidx/datastore/preferences/protobuf/h;

    if-eqz p1, :cond_7a

    .line 14
    check-cast p2, Landroidx/datastore/preferences/protobuf/h;

    invoke-virtual {p0, p2}, Landroidx/datastore/preferences/protobuf/k;->p0(Landroidx/datastore/preferences/protobuf/h;)V

    goto :goto_db

    .line 15
    :cond_7a
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Landroidx/datastore/preferences/protobuf/k;->V0(Ljava/lang/String;)V

    goto :goto_db

    .line 16
    :pswitch_80
    check-cast p2, Landroidx/datastore/preferences/protobuf/r0;

    invoke-virtual {p0, p2}, Landroidx/datastore/preferences/protobuf/k;->J0(Landroidx/datastore/preferences/protobuf/r0;)V

    goto :goto_db

    .line 17
    :pswitch_86
    check-cast p2, Landroidx/datastore/preferences/protobuf/r0;

    invoke-virtual {p0, p2}, Landroidx/datastore/preferences/protobuf/k;->C0(Landroidx/datastore/preferences/protobuf/r0;)V

    goto :goto_db

    .line 18
    :pswitch_8c
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/k;->l0(Z)V

    goto :goto_db

    .line 19
    :pswitch_96
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/k;->v0(I)V

    goto :goto_db

    .line 20
    :pswitch_a0
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/k;->x0(J)V

    goto :goto_db

    .line 21
    :pswitch_aa
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/k;->F0(I)V

    goto :goto_db

    .line 22
    :pswitch_b4
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/k;->a1(J)V

    goto :goto_db

    .line 23
    :pswitch_be
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/k;->H0(J)V

    goto :goto_db

    .line 24
    :pswitch_c8
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/k;->z0(F)V

    goto :goto_db

    .line 25
    :pswitch_d2
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/k;->r0(D)V

    :goto_db
    return-void

    :pswitch_data_dc
    .packed-switch 0x1
        :pswitch_d2
        :pswitch_c8
        :pswitch_be
        :pswitch_b4
        :pswitch_aa
        :pswitch_a0
        :pswitch_96
        :pswitch_8c
        :pswitch_86
        :pswitch_80
        :pswitch_70
        :pswitch_5e
        :pswitch_53
        :pswitch_48
        :pswitch_3d
        :pswitch_32
        :pswitch_27
        :pswitch_d
    .end packed-switch
.end method

.method private static c(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1
    instance-of v0, p0, [B

    if-eqz v0, :cond_f

    .line 2
    check-cast p0, [B

    .line 3
    array-length v0, p0

    new-array v0, v0, [B

    .line 4
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :cond_f
    return-object p0
.end method

.method static d(Landroidx/datastore/preferences/protobuf/t1$b;ILjava/lang/Object;)I
    .registers 4

    .line 1
    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/k;->V(I)I

    move-result p1

    .line 2
    sget-object v0, Landroidx/datastore/preferences/protobuf/t1$b;->z:Landroidx/datastore/preferences/protobuf/t1$b;

    if-ne p0, v0, :cond_a

    mul-int/lit8 p1, p1, 0x2

    .line 3
    :cond_a
    invoke-static {p0, p2}, Landroidx/datastore/preferences/protobuf/u;->e(Landroidx/datastore/preferences/protobuf/t1$b;Ljava/lang/Object;)I

    move-result p0

    add-int/2addr p1, p0

    return p1
.end method

.method static e(Landroidx/datastore/preferences/protobuf/t1$b;Ljava/lang/Object;)I
    .registers 3

    .line 1
    sget-object v0, Landroidx/datastore/preferences/protobuf/u$a;->b:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_fa

    .line 2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "There is no way to get here, but the compiler thinks otherwise."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :pswitch_13
    instance-of p0, p1, Landroidx/datastore/preferences/protobuf/a0$c;

    if-eqz p0, :cond_22

    .line 4
    check-cast p1, Landroidx/datastore/preferences/protobuf/a0$c;

    invoke-interface {p1}, Landroidx/datastore/preferences/protobuf/a0$c;->h()I

    move-result p0

    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/k;->l(I)I

    move-result p0

    return p0

    .line 5
    :cond_22
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/k;->l(I)I

    move-result p0

    return p0

    .line 6
    :pswitch_2d
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Landroidx/datastore/preferences/protobuf/k;->S(J)I

    move-result p0

    return p0

    .line 7
    :pswitch_38
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/k;->Q(I)I

    move-result p0

    return p0

    .line 8
    :pswitch_43
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Landroidx/datastore/preferences/protobuf/k;->O(J)I

    move-result p0

    return p0

    .line 9
    :pswitch_4e
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/k;->M(I)I

    move-result p0

    return p0

    .line 10
    :pswitch_59
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/k;->X(I)I

    move-result p0

    return p0

    .line 11
    :pswitch_64
    instance-of p0, p1, Landroidx/datastore/preferences/protobuf/h;

    if-eqz p0, :cond_6f

    .line 12
    check-cast p1, Landroidx/datastore/preferences/protobuf/h;

    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/k;->h(Landroidx/datastore/preferences/protobuf/h;)I

    move-result p0

    return p0

    .line 13
    :cond_6f
    check-cast p1, [B

    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/k;->f([B)I

    move-result p0

    return p0

    .line 14
    :pswitch_76
    instance-of p0, p1, Landroidx/datastore/preferences/protobuf/h;

    if-eqz p0, :cond_81

    .line 15
    check-cast p1, Landroidx/datastore/preferences/protobuf/h;

    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/k;->h(Landroidx/datastore/preferences/protobuf/h;)I

    move-result p0

    return p0

    .line 16
    :cond_81
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/k;->U(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 17
    :pswitch_88
    instance-of p0, p1, Landroidx/datastore/preferences/protobuf/d0;

    if-eqz p0, :cond_93

    .line 18
    check-cast p1, Landroidx/datastore/preferences/protobuf/d0;

    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/k;->B(Landroidx/datastore/preferences/protobuf/e0;)I

    move-result p0

    return p0

    .line 19
    :cond_93
    check-cast p1, Landroidx/datastore/preferences/protobuf/r0;

    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/k;->G(Landroidx/datastore/preferences/protobuf/r0;)I

    move-result p0

    return p0

    .line 20
    :pswitch_9a
    check-cast p1, Landroidx/datastore/preferences/protobuf/r0;

    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/k;->t(Landroidx/datastore/preferences/protobuf/r0;)I

    move-result p0

    return p0

    .line 21
    :pswitch_a1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/k;->e(Z)I

    move-result p0

    return p0

    .line 22
    :pswitch_ac
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/k;->n(I)I

    move-result p0

    return p0

    .line 23
    :pswitch_b7
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Landroidx/datastore/preferences/protobuf/k;->p(J)I

    move-result p0

    return p0

    .line 24
    :pswitch_c2
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/k;->w(I)I

    move-result p0

    return p0

    .line 25
    :pswitch_cd
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Landroidx/datastore/preferences/protobuf/k;->Z(J)I

    move-result p0

    return p0

    .line 26
    :pswitch_d8
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Landroidx/datastore/preferences/protobuf/k;->y(J)I

    move-result p0

    return p0

    .line 27
    :pswitch_e3
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/k;->r(F)I

    move-result p0

    return p0

    .line 28
    :pswitch_ee
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    invoke-static {p0, p1}, Landroidx/datastore/preferences/protobuf/k;->j(D)I

    move-result p0

    return p0

    nop

    :pswitch_data_fa
    .packed-switch 0x1
        :pswitch_ee
        :pswitch_e3
        :pswitch_d8
        :pswitch_cd
        :pswitch_c2
        :pswitch_b7
        :pswitch_ac
        :pswitch_a1
        :pswitch_9a
        :pswitch_88
        :pswitch_76
        :pswitch_64
        :pswitch_59
        :pswitch_4e
        :pswitch_43
        :pswitch_38
        :pswitch_2d
        :pswitch_13
    .end packed-switch
.end method

.method public static f(Landroidx/datastore/preferences/protobuf/u$b;Ljava/lang/Object;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/datastore/preferences/protobuf/u$b<",
            "*>;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Landroidx/datastore/preferences/protobuf/u$b;->x()Landroidx/datastore/preferences/protobuf/t1$b;

    move-result-object v0

    .line 2
    invoke-interface {p0}, Landroidx/datastore/preferences/protobuf/u$b;->h()I

    move-result v1

    .line 3
    invoke-interface {p0}, Landroidx/datastore/preferences/protobuf/u$b;->w()Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 4
    invoke-interface {p0}, Landroidx/datastore/preferences/protobuf/u$b;->F()Z

    move-result p0

    const/4 v2, 0x0

    if-eqz p0, :cond_36

    .line 5
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 6
    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/u;->e(Landroidx/datastore/preferences/protobuf/t1$b;Ljava/lang/Object;)I

    move-result p1

    add-int/2addr v2, p1

    goto :goto_1b

    .line 7
    :cond_2b
    invoke-static {v1}, Landroidx/datastore/preferences/protobuf/k;->V(I)I

    move-result p0

    add-int/2addr p0, v2

    .line 8
    invoke-static {v2}, Landroidx/datastore/preferences/protobuf/k;->K(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0

    .line 9
    :cond_36
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 10
    invoke-static {v0, v1, p1}, Landroidx/datastore/preferences/protobuf/u;->d(Landroidx/datastore/preferences/protobuf/t1$b;ILjava/lang/Object;)I

    move-result p1

    add-int/2addr v2, p1

    goto :goto_3c

    :cond_4c
    return v2

    .line 11
    :cond_4d
    invoke-static {v0, v1, p1}, Landroidx/datastore/preferences/protobuf/u;->d(Landroidx/datastore/preferences/protobuf/t1$b;ILjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static h()Landroidx/datastore/preferences/protobuf/u;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroidx/datastore/preferences/protobuf/u$b<",
            "TT;>;>()",
            "Landroidx/datastore/preferences/protobuf/u<",
            "TT;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Landroidx/datastore/preferences/protobuf/u;->d:Landroidx/datastore/preferences/protobuf/u;

    return-object v0
.end method

.method private k(Ljava/util/Map$Entry;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TT;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/u$b;

    .line 2
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 3
    invoke-interface {v0}, Landroidx/datastore/preferences/protobuf/u$b;->E()Landroidx/datastore/preferences/protobuf/t1$c;

    move-result-object v2

    sget-object v3, Landroidx/datastore/preferences/protobuf/t1$c;->x:Landroidx/datastore/preferences/protobuf/t1$c;

    if-ne v2, v3, :cond_44

    .line 4
    invoke-interface {v0}, Landroidx/datastore/preferences/protobuf/u$b;->w()Z

    move-result v2

    if-nez v2, :cond_44

    .line 5
    invoke-interface {v0}, Landroidx/datastore/preferences/protobuf/u$b;->F()Z

    move-result v2

    if-nez v2, :cond_44

    .line 6
    instance-of v0, v1, Landroidx/datastore/preferences/protobuf/d0;

    if-eqz v0, :cond_33

    .line 7
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/datastore/preferences/protobuf/u$b;

    invoke-interface {p1}, Landroidx/datastore/preferences/protobuf/u$b;->h()I

    move-result p1

    check-cast v1, Landroidx/datastore/preferences/protobuf/d0;

    .line 8
    invoke-static {p1, v1}, Landroidx/datastore/preferences/protobuf/k;->z(ILandroidx/datastore/preferences/protobuf/e0;)I

    move-result p1

    return p1

    .line 9
    :cond_33
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/datastore/preferences/protobuf/u$b;

    invoke-interface {p1}, Landroidx/datastore/preferences/protobuf/u$b;->h()I

    move-result p1

    check-cast v1, Landroidx/datastore/preferences/protobuf/r0;

    .line 10
    invoke-static {p1, v1}, Landroidx/datastore/preferences/protobuf/k;->D(ILandroidx/datastore/preferences/protobuf/r0;)I

    move-result p1

    return p1

    .line 11
    :cond_44
    invoke-static {v0, v1}, Landroidx/datastore/preferences/protobuf/u;->f(Landroidx/datastore/preferences/protobuf/u$b;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method static m(Landroidx/datastore/preferences/protobuf/t1$b;Z)I
    .registers 2

    if-eqz p1, :cond_4

    const/4 p0, 0x2

    return p0

    .line 1
    :cond_4
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/t1$b;->e()I

    move-result p0

    return p0
.end method

.method private static q(Ljava/util/Map$Entry;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroidx/datastore/preferences/protobuf/u$b<",
            "TT;>;>(",
            "Ljava/util/Map$Entry<",
            "TT;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/u$b;

    .line 2
    invoke-interface {v0}, Landroidx/datastore/preferences/protobuf/u$b;->E()Landroidx/datastore/preferences/protobuf/t1$c;

    move-result-object v1

    sget-object v2, Landroidx/datastore/preferences/protobuf/t1$c;->x:Landroidx/datastore/preferences/protobuf/t1$c;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_51

    .line 3
    invoke-interface {v0}, Landroidx/datastore/preferences/protobuf/u$b;->w()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_33

    .line 4
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_20
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_51

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/r0;

    .line 5
    invoke-interface {v0}, Landroidx/datastore/preferences/protobuf/s0;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_20

    return v1

    .line 6
    :cond_33
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    .line 7
    instance-of v0, p0, Landroidx/datastore/preferences/protobuf/r0;

    if-eqz v0, :cond_44

    .line 8
    check-cast p0, Landroidx/datastore/preferences/protobuf/r0;

    invoke-interface {p0}, Landroidx/datastore/preferences/protobuf/s0;->isInitialized()Z

    move-result p0

    if-nez p0, :cond_51

    return v1

    .line 9
    :cond_44
    instance-of p0, p0, Landroidx/datastore/preferences/protobuf/d0;

    if-eqz p0, :cond_49

    return v3

    .line 10
    :cond_49
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Wrong object type used with protocol message reflection."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_51
    return v3
.end method

.method private static r(Landroidx/datastore/preferences/protobuf/t1$b;Ljava/lang/Object;)Z
    .registers 4

    .line 1
    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/a0;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget-object v0, Landroidx/datastore/preferences/protobuf/u$a;->a:[I

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/t1$b;->c()Landroidx/datastore/preferences/protobuf/t1$c;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p0, :pswitch_data_48

    return v1

    .line 3
    :pswitch_15
    instance-of p0, p1, Landroidx/datastore/preferences/protobuf/r0;

    if-nez p0, :cond_1f

    instance-of p0, p1, Landroidx/datastore/preferences/protobuf/d0;

    if-eqz p0, :cond_1e

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :cond_1f
    :goto_1f
    return v0

    .line 4
    :pswitch_20
    instance-of p0, p1, Ljava/lang/Integer;

    if-nez p0, :cond_2a

    instance-of p0, p1, Landroidx/datastore/preferences/protobuf/a0$c;

    if-eqz p0, :cond_29

    goto :goto_2a

    :cond_29
    const/4 v0, 0x0

    :cond_2a
    :goto_2a
    return v0

    .line 5
    :pswitch_2b
    instance-of p0, p1, Landroidx/datastore/preferences/protobuf/h;

    if-nez p0, :cond_35

    instance-of p0, p1, [B

    if-eqz p0, :cond_34

    goto :goto_35

    :cond_34
    const/4 v0, 0x0

    :cond_35
    :goto_35
    return v0

    .line 6
    :pswitch_36
    instance-of p0, p1, Ljava/lang/String;

    return p0

    .line 7
    :pswitch_39
    instance-of p0, p1, Ljava/lang/Boolean;

    return p0

    .line 8
    :pswitch_3c
    instance-of p0, p1, Ljava/lang/Double;

    return p0

    .line 9
    :pswitch_3f
    instance-of p0, p1, Ljava/lang/Float;

    return p0

    .line 10
    :pswitch_42
    instance-of p0, p1, Ljava/lang/Long;

    return p0

    .line 11
    :pswitch_45
    instance-of p0, p1, Ljava/lang/Integer;

    return p0

    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_45
        :pswitch_42
        :pswitch_3f
        :pswitch_3c
        :pswitch_39
        :pswitch_36
        :pswitch_2b
        :pswitch_20
        :pswitch_15
    .end packed-switch
.end method

.method private v(Ljava/util/Map$Entry;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TT;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/u$b;

    .line 2
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    .line 3
    instance-of v1, p1, Landroidx/datastore/preferences/protobuf/d0;

    if-eqz v1, :cond_14

    .line 4
    check-cast p1, Landroidx/datastore/preferences/protobuf/d0;

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/d0;->f()Landroidx/datastore/preferences/protobuf/r0;

    move-result-object p1

    .line 5
    :cond_14
    invoke-interface {v0}, Landroidx/datastore/preferences/protobuf/u$b;->w()Z

    move-result v1

    if-eqz v1, :cond_46

    .line 6
    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/u;->i(Landroidx/datastore/preferences/protobuf/u$b;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_25

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    :cond_25
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_40

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 9
    move-object v3, v1

    check-cast v3, Ljava/util/List;

    invoke-static {v2}, Landroidx/datastore/preferences/protobuf/u;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2b

    .line 10
    :cond_40
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/u;->a:Landroidx/datastore/preferences/protobuf/j1;

    invoke-virtual {p1, v0, v1}, Landroidx/datastore/preferences/protobuf/j1;->t(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7d

    .line 11
    :cond_46
    invoke-interface {v0}, Landroidx/datastore/preferences/protobuf/u$b;->E()Landroidx/datastore/preferences/protobuf/t1$c;

    move-result-object v1

    sget-object v2, Landroidx/datastore/preferences/protobuf/t1$c;->x:Landroidx/datastore/preferences/protobuf/t1$c;

    if-ne v1, v2, :cond_74

    .line 12
    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/u;->i(Landroidx/datastore/preferences/protobuf/u$b;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_5e

    .line 13
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/u;->a:Landroidx/datastore/preferences/protobuf/j1;

    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/u;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Landroidx/datastore/preferences/protobuf/j1;->t(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7d

    .line 14
    :cond_5e
    check-cast v1, Landroidx/datastore/preferences/protobuf/r0;

    .line 15
    invoke-interface {v1}, Landroidx/datastore/preferences/protobuf/r0;->b()Landroidx/datastore/preferences/protobuf/r0$a;

    move-result-object v1

    check-cast p1, Landroidx/datastore/preferences/protobuf/r0;

    invoke-interface {v0, v1, p1}, Landroidx/datastore/preferences/protobuf/u$b;->H(Landroidx/datastore/preferences/protobuf/r0$a;Landroidx/datastore/preferences/protobuf/r0;)Landroidx/datastore/preferences/protobuf/r0$a;

    move-result-object p1

    .line 16
    invoke-interface {p1}, Landroidx/datastore/preferences/protobuf/r0$a;->build()Landroidx/datastore/preferences/protobuf/r0;

    move-result-object p1

    .line 17
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/u;->a:Landroidx/datastore/preferences/protobuf/j1;

    invoke-virtual {v1, v0, p1}, Landroidx/datastore/preferences/protobuf/j1;->t(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7d

    .line 18
    :cond_74
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/u;->a:Landroidx/datastore/preferences/protobuf/j1;

    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/u;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Landroidx/datastore/preferences/protobuf/j1;->t(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_7d
    return-void
.end method

.method public static w()Landroidx/datastore/preferences/protobuf/u;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroidx/datastore/preferences/protobuf/u$b<",
            "TT;>;>()",
            "Landroidx/datastore/preferences/protobuf/u<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/datastore/preferences/protobuf/u;

    invoke-direct {v0}, Landroidx/datastore/preferences/protobuf/u;-><init>()V

    return-object v0
.end method

.method private y(Landroidx/datastore/preferences/protobuf/t1$b;Ljava/lang/Object;)V
    .registers 3

    .line 1
    invoke-static {p1, p2}, Landroidx/datastore/preferences/protobuf/u;->r(Landroidx/datastore/preferences/protobuf/t1$b;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    return-void

    .line 2
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Wrong object type used with protocol message reflection."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static z(Landroidx/datastore/preferences/protobuf/k;Landroidx/datastore/preferences/protobuf/t1$b;ILjava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Landroidx/datastore/preferences/protobuf/t1$b;->z:Landroidx/datastore/preferences/protobuf/t1$b;

    if-ne p1, v0, :cond_a

    .line 2
    check-cast p3, Landroidx/datastore/preferences/protobuf/r0;

    invoke-virtual {p0, p2, p3}, Landroidx/datastore/preferences/protobuf/k;->A0(ILandroidx/datastore/preferences/protobuf/r0;)V

    goto :goto_15

    :cond_a
    const/4 v0, 0x0

    .line 3
    invoke-static {p1, v0}, Landroidx/datastore/preferences/protobuf/u;->m(Landroidx/datastore/preferences/protobuf/t1$b;Z)I

    move-result v0

    invoke-virtual {p0, p2, v0}, Landroidx/datastore/preferences/protobuf/k;->W0(II)V

    .line 4
    invoke-static {p0, p1, p3}, Landroidx/datastore/preferences/protobuf/u;->A(Landroidx/datastore/preferences/protobuf/k;Landroidx/datastore/preferences/protobuf/t1$b;Ljava/lang/Object;)V

    :goto_15
    return-void
.end method


# virtual methods
.method public a(Landroidx/datastore/preferences/protobuf/u$b;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Landroidx/datastore/preferences/protobuf/u$b;->w()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 2
    invoke-interface {p1}, Landroidx/datastore/preferences/protobuf/u$b;->x()Landroidx/datastore/preferences/protobuf/t1$b;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroidx/datastore/preferences/protobuf/u;->y(Landroidx/datastore/preferences/protobuf/t1$b;Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/u;->i(Landroidx/datastore/preferences/protobuf/u$b;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1e

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/u;->a:Landroidx/datastore/preferences/protobuf/j1;

    invoke-virtual {v1, p1, v0}, Landroidx/datastore/preferences/protobuf/j1;->t(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_20

    .line 6
    :cond_1e
    check-cast v0, Ljava/util/List;

    .line 7
    :goto_20
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 8
    :cond_24
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "addRepeatedField() can only be called on repeated fields."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()Landroidx/datastore/preferences/protobuf/u;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/datastore/preferences/protobuf/u<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Landroidx/datastore/preferences/protobuf/u;->w()Landroidx/datastore/preferences/protobuf/u;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    :goto_5
    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/u;->a:Landroidx/datastore/preferences/protobuf/j1;

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/j1;->m()I

    move-result v2

    if-ge v1, v2, :cond_23

    .line 3
    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/u;->a:Landroidx/datastore/preferences/protobuf/j1;

    invoke-virtual {v2, v1}, Landroidx/datastore/preferences/protobuf/j1;->l(I)Ljava/util/Map$Entry;

    move-result-object v2

    .line 4
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/datastore/preferences/protobuf/u$b;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroidx/datastore/preferences/protobuf/u;->x(Landroidx/datastore/preferences/protobuf/u$b;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 5
    :cond_23
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/u;->a:Landroidx/datastore/preferences/protobuf/j1;

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/j1;->o()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_47

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 6
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/datastore/preferences/protobuf/u$b;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroidx/datastore/preferences/protobuf/u;->x(Landroidx/datastore/preferences/protobuf/u$b;Ljava/lang/Object;)V

    goto :goto_2d

    .line 7
    :cond_47
    iget-boolean v1, p0, Landroidx/datastore/preferences/protobuf/u;->c:Z

    iput-boolean v1, v0, Landroidx/datastore/preferences/protobuf/u;->c:Z

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/u;->b()Landroidx/datastore/preferences/protobuf/u;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_4
    instance-of v0, p1, Landroidx/datastore/preferences/protobuf/u;

    if-nez v0, :cond_a

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_a
    check-cast p1, Landroidx/datastore/preferences/protobuf/u;

    .line 3
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/u;->a:Landroidx/datastore/preferences/protobuf/j1;

    iget-object p1, p1, Landroidx/datastore/preferences/protobuf/u;->a:Landroidx/datastore/preferences/protobuf/j1;

    invoke-virtual {v0, p1}, Landroidx/datastore/preferences/protobuf/j1;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method g()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TT;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Landroidx/datastore/preferences/protobuf/u;->c:Z

    if-eqz v0, :cond_14

    .line 2
    new-instance v0, Landroidx/datastore/preferences/protobuf/d0$c;

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/u;->a:Landroidx/datastore/preferences/protobuf/j1;

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/j1;->j()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/datastore/preferences/protobuf/d0$c;-><init>(Ljava/util/Iterator;)V

    return-object v0

    .line 3
    :cond_14
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/u;->a:Landroidx/datastore/preferences/protobuf/j1;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/j1;->j()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/u;->a:Landroidx/datastore/preferences/protobuf/j1;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/j1;->hashCode()I

    move-result v0

    return v0
.end method

.method public i(Landroidx/datastore/preferences/protobuf/u$b;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/u;->a:Landroidx/datastore/preferences/protobuf/j1;

    invoke-virtual {v0, p1}, Landroidx/datastore/preferences/protobuf/j1;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 2
    instance-of v0, p1, Landroidx/datastore/preferences/protobuf/d0;

    if-eqz v0, :cond_10

    .line 3
    check-cast p1, Landroidx/datastore/preferences/protobuf/d0;

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/d0;->f()Landroidx/datastore/preferences/protobuf/r0;

    move-result-object p1

    :cond_10
    return-object p1
.end method

.method public j()I
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_2
    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/u;->a:Landroidx/datastore/preferences/protobuf/j1;

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/j1;->m()I

    move-result v2

    if-ge v0, v2, :cond_18

    .line 2
    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/u;->a:Landroidx/datastore/preferences/protobuf/j1;

    invoke-virtual {v2, v0}, Landroidx/datastore/preferences/protobuf/j1;->l(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-direct {p0, v2}, Landroidx/datastore/preferences/protobuf/u;->k(Ljava/util/Map$Entry;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 3
    :cond_18
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/u;->a:Landroidx/datastore/preferences/protobuf/j1;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/j1;->o()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 4
    invoke-direct {p0, v2}, Landroidx/datastore/preferences/protobuf/u;->k(Ljava/util/Map$Entry;)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_22

    :cond_34
    return v1
.end method

.method public l()I
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_2
    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/u;->a:Landroidx/datastore/preferences/protobuf/j1;

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/j1;->m()I

    move-result v2

    if-ge v0, v2, :cond_22

    .line 2
    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/u;->a:Landroidx/datastore/preferences/protobuf/j1;

    invoke-virtual {v2, v0}, Landroidx/datastore/preferences/protobuf/j1;->l(I)Ljava/util/Map$Entry;

    move-result-object v2

    .line 3
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/datastore/preferences/protobuf/u$b;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Landroidx/datastore/preferences/protobuf/u;->f(Landroidx/datastore/preferences/protobuf/u$b;Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 4
    :cond_22
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/u;->a:Landroidx/datastore/preferences/protobuf/j1;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/j1;->o()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_48

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/datastore/preferences/protobuf/u$b;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Landroidx/datastore/preferences/protobuf/u;->f(Landroidx/datastore/preferences/protobuf/u$b;Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_2c

    :cond_48
    return v1
.end method

.method n()Z
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/u;->a:Landroidx/datastore/preferences/protobuf/j1;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public o()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Landroidx/datastore/preferences/protobuf/u;->b:Z

    return v0
.end method

.method public p()Z
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_2
    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/u;->a:Landroidx/datastore/preferences/protobuf/j1;

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/j1;->m()I

    move-result v2

    if-ge v1, v2, :cond_1a

    .line 2
    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/u;->a:Landroidx/datastore/preferences/protobuf/j1;

    invoke-virtual {v2, v1}, Landroidx/datastore/preferences/protobuf/j1;->l(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-static {v2}, Landroidx/datastore/preferences/protobuf/u;->q(Ljava/util/Map$Entry;)Z

    move-result v2

    if-nez v2, :cond_17

    return v0

    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 3
    :cond_1a
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/u;->a:Landroidx/datastore/preferences/protobuf/j1;

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/j1;->o()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 4
    invoke-static {v2}, Landroidx/datastore/preferences/protobuf/u;->q(Ljava/util/Map$Entry;)Z

    move-result v2

    if-nez v2, :cond_24

    return v0

    :cond_37
    const/4 v0, 0x1

    return v0
.end method

.method public s()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TT;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Landroidx/datastore/preferences/protobuf/u;->c:Z

    if-eqz v0, :cond_14

    .line 2
    new-instance v0, Landroidx/datastore/preferences/protobuf/d0$c;

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/u;->a:Landroidx/datastore/preferences/protobuf/j1;

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/j1;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/datastore/preferences/protobuf/d0$c;-><init>(Ljava/util/Iterator;)V

    return-object v0

    .line 3
    :cond_14
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/u;->a:Landroidx/datastore/preferences/protobuf/j1;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/j1;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public t()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Landroidx/datastore/preferences/protobuf/u;->b:Z

    if-eqz v0, :cond_5

    return-void

    .line 2
    :cond_5
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/u;->a:Landroidx/datastore/preferences/protobuf/j1;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/j1;->r()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Landroidx/datastore/preferences/protobuf/u;->b:Z

    return-void
.end method

.method public u(Landroidx/datastore/preferences/protobuf/u;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/datastore/preferences/protobuf/u<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :goto_1
    iget-object v1, p1, Landroidx/datastore/preferences/protobuf/u;->a:Landroidx/datastore/preferences/protobuf/j1;

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/j1;->m()I

    move-result v1

    if-ge v0, v1, :cond_15

    .line 2
    iget-object v1, p1, Landroidx/datastore/preferences/protobuf/u;->a:Landroidx/datastore/preferences/protobuf/j1;

    invoke-virtual {v1, v0}, Landroidx/datastore/preferences/protobuf/j1;->l(I)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-direct {p0, v1}, Landroidx/datastore/preferences/protobuf/u;->v(Ljava/util/Map$Entry;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3
    :cond_15
    iget-object p1, p1, Landroidx/datastore/preferences/protobuf/u;->a:Landroidx/datastore/preferences/protobuf/j1;

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/j1;->o()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 4
    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/u;->v(Ljava/util/Map$Entry;)V

    goto :goto_1f

    :cond_2f
    return-void
.end method

.method public x(Landroidx/datastore/preferences/protobuf/u$b;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Landroidx/datastore/preferences/protobuf/u$b;->w()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 2
    instance-of v0, p2, Ljava/util/List;

    if-eqz v0, :cond_2c

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    check-cast p2, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_18
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 6
    invoke-interface {p1}, Landroidx/datastore/preferences/protobuf/u$b;->x()Landroidx/datastore/preferences/protobuf/t1$b;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Landroidx/datastore/preferences/protobuf/u;->y(Landroidx/datastore/preferences/protobuf/t1$b;Ljava/lang/Object;)V

    goto :goto_18

    :cond_2a
    move-object p2, v0

    goto :goto_3b

    .line 7
    :cond_2c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Wrong object type used with protocol message reflection."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_34
    invoke-interface {p1}, Landroidx/datastore/preferences/protobuf/u$b;->x()Landroidx/datastore/preferences/protobuf/t1$b;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroidx/datastore/preferences/protobuf/u;->y(Landroidx/datastore/preferences/protobuf/t1$b;Ljava/lang/Object;)V

    .line 9
    :goto_3b
    instance-of v0, p2, Landroidx/datastore/preferences/protobuf/d0;

    if-eqz v0, :cond_42

    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Landroidx/datastore/preferences/protobuf/u;->c:Z

    .line 11
    :cond_42
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/u;->a:Landroidx/datastore/preferences/protobuf/j1;

    invoke-virtual {v0, p1, p2}, Landroidx/datastore/preferences/protobuf/j1;->t(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

###### Class androidx.datastore.preferences.protobuf.u.a (androidx.datastore.preferences.protobuf.u$a)
.class synthetic Landroidx/datastore/preferences/protobuf/u$a;
.super Ljava/lang/Object;
.source "FieldSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/datastore/preferences/protobuf/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I

.field static final synthetic b:[I


# direct methods
.method static constructor <clinit>()V
    .registers 12

    .line 1
    invoke-static {}, Landroidx/datastore/preferences/protobuf/t1$b;->values()[Landroidx/datastore/preferences/protobuf/t1$b;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Landroidx/datastore/preferences/protobuf/u$a;->b:[I

    const/4 v1, 0x1

    :try_start_a
    sget-object v2, Landroidx/datastore/preferences/protobuf/t1$b;->q:Landroidx/datastore/preferences/protobuf/t1$b;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_12} :catch_12

    :catch_12
    const/4 v0, 0x2

    :try_start_13
    sget-object v2, Landroidx/datastore/preferences/protobuf/u$a;->b:[I

    sget-object v3, Landroidx/datastore/preferences/protobuf/t1$b;->r:Landroidx/datastore/preferences/protobuf/t1$b;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_1d} :catch_1d

    :catch_1d
    const/4 v2, 0x3

    :try_start_1e
    sget-object v3, Landroidx/datastore/preferences/protobuf/u$a;->b:[I

    sget-object v4, Landroidx/datastore/preferences/protobuf/t1$b;->s:Landroidx/datastore/preferences/protobuf/t1$b;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_28} :catch_28

    :catch_28
    const/4 v3, 0x4

    :try_start_29
    sget-object v4, Landroidx/datastore/preferences/protobuf/u$a;->b:[I

    sget-object v5, Landroidx/datastore/preferences/protobuf/t1$b;->t:Landroidx/datastore/preferences/protobuf/t1$b;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_33} :catch_33

    :catch_33
    const/4 v4, 0x5

    :try_start_34
    sget-object v5, Landroidx/datastore/preferences/protobuf/u$a;->b:[I

    sget-object v6, Landroidx/datastore/preferences/protobuf/t1$b;->u:Landroidx/datastore/preferences/protobuf/t1$b;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_34 .. :try_end_3e} :catch_3e

    :catch_3e
    const/4 v5, 0x6

    :try_start_3f
    sget-object v6, Landroidx/datastore/preferences/protobuf/u$a;->b:[I

    sget-object v7, Landroidx/datastore/preferences/protobuf/t1$b;->v:Landroidx/datastore/preferences/protobuf/t1$b;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aput v5, v6, v7
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3f .. :try_end_49} :catch_49

    :catch_49
    const/4 v6, 0x7

    :try_start_4a
    sget-object v7, Landroidx/datastore/preferences/protobuf/u$a;->b:[I

    sget-object v8, Landroidx/datastore/preferences/protobuf/t1$b;->w:Landroidx/datastore/preferences/protobuf/t1$b;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aput v6, v7, v8
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4a .. :try_end_54} :catch_54

    :catch_54
    const/16 v7, 0x8

    :try_start_56
    sget-object v8, Landroidx/datastore/preferences/protobuf/u$a;->b:[I

    sget-object v9, Landroidx/datastore/preferences/protobuf/t1$b;->x:Landroidx/datastore/preferences/protobuf/t1$b;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aput v7, v8, v9
    :try_end_60
    .catch Ljava/lang/NoSuchFieldError; {:try_start_56 .. :try_end_60} :catch_60

    :catch_60
    const/16 v8, 0x9

    :try_start_62
    sget-object v9, Landroidx/datastore/preferences/protobuf/u$a;->b:[I

    sget-object v10, Landroidx/datastore/preferences/protobuf/t1$b;->z:Landroidx/datastore/preferences/protobuf/t1$b;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aput v8, v9, v10
    :try_end_6c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_62 .. :try_end_6c} :catch_6c

    :catch_6c
    :try_start_6c
    sget-object v9, Landroidx/datastore/preferences/protobuf/u$a;->b:[I

    sget-object v10, Landroidx/datastore/preferences/protobuf/t1$b;->A:Landroidx/datastore/preferences/protobuf/t1$b;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    const/16 v11, 0xa

    aput v11, v9, v10
    :try_end_78
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6c .. :try_end_78} :catch_78

    :catch_78
    :try_start_78
    sget-object v9, Landroidx/datastore/preferences/protobuf/u$a;->b:[I

    sget-object v10, Landroidx/datastore/preferences/protobuf/t1$b;->y:Landroidx/datastore/preferences/protobuf/t1$b;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    const/16 v11, 0xb

    aput v11, v9, v10
    :try_end_84
    .catch Ljava/lang/NoSuchFieldError; {:try_start_78 .. :try_end_84} :catch_84

    :catch_84
    :try_start_84
    sget-object v9, Landroidx/datastore/preferences/protobuf/u$a;->b:[I

    sget-object v10, Landroidx/datastore/preferences/protobuf/t1$b;->B:Landroidx/datastore/preferences/protobuf/t1$b;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    const/16 v11, 0xc

    aput v11, v9, v10
    :try_end_90
    .catch Ljava/lang/NoSuchFieldError; {:try_start_84 .. :try_end_90} :catch_90

    :catch_90
    :try_start_90
    sget-object v9, Landroidx/datastore/preferences/protobuf/u$a;->b:[I

    sget-object v10, Landroidx/datastore/preferences/protobuf/t1$b;->C:Landroidx/datastore/preferences/protobuf/t1$b;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    const/16 v11, 0xd

    aput v11, v9, v10
    :try_end_9c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_90 .. :try_end_9c} :catch_9c

    :catch_9c
    :try_start_9c
    sget-object v9, Landroidx/datastore/preferences/protobuf/u$a;->b:[I

    sget-object v10, Landroidx/datastore/preferences/protobuf/t1$b;->E:Landroidx/datastore/preferences/protobuf/t1$b;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    const/16 v11, 0xe

    aput v11, v9, v10
    :try_end_a8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9c .. :try_end_a8} :catch_a8

    :catch_a8
    :try_start_a8
    sget-object v9, Landroidx/datastore/preferences/protobuf/u$a;->b:[I

    sget-object v10, Landroidx/datastore/preferences/protobuf/t1$b;->F:Landroidx/datastore/preferences/protobuf/t1$b;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    const/16 v11, 0xf

    aput v11, v9, v10
    :try_end_b4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a8 .. :try_end_b4} :catch_b4

    :catch_b4
    :try_start_b4
    sget-object v9, Landroidx/datastore/preferences/protobuf/u$a;->b:[I

    sget-object v10, Landroidx/datastore/preferences/protobuf/t1$b;->G:Landroidx/datastore/preferences/protobuf/t1$b;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    const/16 v11, 0x10

    aput v11, v9, v10
    :try_end_c0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b4 .. :try_end_c0} :catch_c0

    :catch_c0
    :try_start_c0
    sget-object v9, Landroidx/datastore/preferences/protobuf/u$a;->b:[I

    sget-object v10, Landroidx/datastore/preferences/protobuf/t1$b;->H:Landroidx/datastore/preferences/protobuf/t1$b;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    const/16 v11, 0x11

    aput v11, v9, v10
    :try_end_cc
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c0 .. :try_end_cc} :catch_cc

    :catch_cc
    :try_start_cc
    sget-object v9, Landroidx/datastore/preferences/protobuf/u$a;->b:[I

    sget-object v10, Landroidx/datastore/preferences/protobuf/t1$b;->D:Landroidx/datastore/preferences/protobuf/t1$b;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    const/16 v11, 0x12

    aput v11, v9, v10
    :try_end_d8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_cc .. :try_end_d8} :catch_d8

    .line 2
    :catch_d8
    invoke-static {}, Landroidx/datastore/preferences/protobuf/t1$c;->values()[Landroidx/datastore/preferences/protobuf/t1$c;

    move-result-object v9

    array-length v9, v9

    new-array v9, v9, [I

    sput-object v9, Landroidx/datastore/preferences/protobuf/u$a;->a:[I

    :try_start_e1
    sget-object v10, Landroidx/datastore/preferences/protobuf/t1$c;->p:Landroidx/datastore/preferences/protobuf/t1$c;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aput v1, v9, v10
    :try_end_e9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e1 .. :try_end_e9} :catch_e9

    :catch_e9
    :try_start_e9
    sget-object v1, Landroidx/datastore/preferences/protobuf/u$a;->a:[I

    sget-object v9, Landroidx/datastore/preferences/protobuf/t1$c;->q:Landroidx/datastore/preferences/protobuf/t1$c;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aput v0, v1, v9
    :try_end_f3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e9 .. :try_end_f3} :catch_f3

    :catch_f3
    :try_start_f3
    sget-object v0, Landroidx/datastore/preferences/protobuf/u$a;->a:[I

    sget-object v1, Landroidx/datastore/preferences/protobuf/t1$c;->r:Landroidx/datastore/preferences/protobuf/t1$c;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_fd
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f3 .. :try_end_fd} :catch_fd

    :catch_fd
    :try_start_fd
    sget-object v0, Landroidx/datastore/preferences/protobuf/u$a;->a:[I

    sget-object v1, Landroidx/datastore/preferences/protobuf/t1$c;->s:Landroidx/datastore/preferences/protobuf/t1$c;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_107
    .catch Ljava/lang/NoSuchFieldError; {:try_start_fd .. :try_end_107} :catch_107

    :catch_107
    :try_start_107
    sget-object v0, Landroidx/datastore/preferences/protobuf/u$a;->a:[I

    sget-object v1, Landroidx/datastore/preferences/protobuf/t1$c;->t:Landroidx/datastore/preferences/protobuf/t1$c;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_111
    .catch Ljava/lang/NoSuchFieldError; {:try_start_107 .. :try_end_111} :catch_111

    :catch_111
    :try_start_111
    sget-object v0, Landroidx/datastore/preferences/protobuf/u$a;->a:[I

    sget-object v1, Landroidx/datastore/preferences/protobuf/t1$c;->u:Landroidx/datastore/preferences/protobuf/t1$c;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v5, v0, v1
    :try_end_11b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_111 .. :try_end_11b} :catch_11b

    :catch_11b
    :try_start_11b
    sget-object v0, Landroidx/datastore/preferences/protobuf/u$a;->a:[I

    sget-object v1, Landroidx/datastore/preferences/protobuf/t1$c;->v:Landroidx/datastore/preferences/protobuf/t1$c;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v6, v0, v1
    :try_end_125
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11b .. :try_end_125} :catch_125

    :catch_125
    :try_start_125
    sget-object v0, Landroidx/datastore/preferences/protobuf/u$a;->a:[I

    sget-object v1, Landroidx/datastore/preferences/protobuf/t1$c;->w:Landroidx/datastore/preferences/protobuf/t1$c;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v7, v0, v1
    :try_end_12f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_125 .. :try_end_12f} :catch_12f

    :catch_12f
    :try_start_12f
    sget-object v0, Landroidx/datastore/preferences/protobuf/u$a;->a:[I

    sget-object v1, Landroidx/datastore/preferences/protobuf/t1$c;->x:Landroidx/datastore/preferences/protobuf/t1$c;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v8, v0, v1
    :try_end_139
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12f .. :try_end_139} :catch_139

    :catch_139
    return-void
.end method

###### Class androidx.datastore.preferences.protobuf.u.b (androidx.datastore.preferences.protobuf.u$b)
.class public interface abstract Landroidx/datastore/preferences/protobuf/u$b;
.super Ljava/lang/Object;
.source "FieldSet.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/datastore/preferences/protobuf/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroidx/datastore/preferences/protobuf/u$b<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "TT;>;"
    }
.end annotation


# virtual methods
.method public abstract E()Landroidx/datastore/preferences/protobuf/t1$c;
.end method

.method public abstract F()Z
.end method

.method public abstract H(Landroidx/datastore/preferences/protobuf/r0$a;Landroidx/datastore/preferences/protobuf/r0;)Landroidx/datastore/preferences/protobuf/r0$a;
.end method

.method public abstract h()I
.end method

.method public abstract w()Z
.end method

.method public abstract x()Landroidx/datastore/preferences/protobuf/t1$b;
.end method
