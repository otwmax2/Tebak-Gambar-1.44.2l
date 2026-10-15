###### Class k0.h (k0.h)
.class public final Lk0/h;
.super Ljava/lang/Object;
.source "PreferencesSerializer.kt"

# interfaces
.implements Lh0/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk0/h$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lh0/k<",
        "Lk0/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lk0/h;

.field private static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lk0/h;

    invoke-direct {v0}, Lk0/h;-><init>()V

    sput-object v0, Lk0/h;->a:Lk0/h;

    const-string v0, "preferences_pb"

    .line 1
    sput-object v0, Lk0/h;->b:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final d(Ljava/lang/String;Lj0/h;Lk0/a;)V
    .registers 7

    .line 1
    invoke-virtual {p2}, Lj0/h;->X()Lj0/h$b;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, -0x1

    goto :goto_10

    :cond_8
    sget-object v1, Lk0/h$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    :goto_10
    const/4 v1, 0x2

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_a6

    .line 2
    :pswitch_15
    new-instance p1, Lh9/l;

    invoke-direct {p1}, Lh9/l;-><init>()V

    throw p1

    .line 3
    :pswitch_1b
    new-instance p1, Lh0/a;

    const-string p2, "Value not set."

    invoke-direct {p1, p2, v2, v1, v2}, Lh0/a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILt9/g;)V

    throw p1

    .line 4
    :pswitch_23
    invoke-static {p1}, Lk0/f;->g(Ljava/lang/String;)Lk0/d$a;

    move-result-object p1

    .line 5
    invoke-virtual {p2}, Lj0/h;->W()Lj0/g;

    move-result-object p2

    invoke-virtual {p2}, Lj0/g;->M()Ljava/util/List;

    move-result-object p2

    const-string v0, "value.stringSet.stringsList"

    invoke-static {p2, v0}, Lt9/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Li9/j;->S(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p2

    .line 6
    invoke-virtual {p3, p1, p2}, Lk0/a;->i(Lk0/d$a;Ljava/lang/Object;)V

    goto :goto_9c

    .line 7
    :pswitch_3c
    invoke-static {p1}, Lk0/f;->f(Ljava/lang/String;)Lk0/d$a;

    move-result-object p1

    invoke-virtual {p2}, Lj0/h;->V()Ljava/lang/String;

    move-result-object p2

    const-string v0, "value.string"

    invoke-static {p2, v0}, Lt9/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3, p1, p2}, Lk0/a;->i(Lk0/d$a;Ljava/lang/Object;)V

    goto :goto_9c

    .line 8
    :pswitch_4d
    invoke-static {p1}, Lk0/f;->e(Ljava/lang/String;)Lk0/d$a;

    move-result-object p1

    invoke-virtual {p2}, Lj0/h;->U()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Lk0/a;->i(Lk0/d$a;Ljava/lang/Object;)V

    goto :goto_9c

    .line 9
    :pswitch_5d
    invoke-static {p1}, Lk0/f;->d(Ljava/lang/String;)Lk0/d$a;

    move-result-object p1

    invoke-virtual {p2}, Lj0/h;->T()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Lk0/a;->i(Lk0/d$a;Ljava/lang/Object;)V

    goto :goto_9c

    .line 10
    :pswitch_6d
    invoke-static {p1}, Lk0/f;->b(Ljava/lang/String;)Lk0/d$a;

    move-result-object p1

    invoke-virtual {p2}, Lj0/h;->R()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Lk0/a;->i(Lk0/d$a;Ljava/lang/Object;)V

    goto :goto_9c

    .line 11
    :pswitch_7d
    invoke-static {p1}, Lk0/f;->c(Ljava/lang/String;)Lk0/d$a;

    move-result-object p1

    invoke-virtual {p2}, Lj0/h;->S()F

    move-result p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Lk0/a;->i(Lk0/d$a;Ljava/lang/Object;)V

    goto :goto_9c

    .line 12
    :pswitch_8d
    invoke-static {p1}, Lk0/f;->a(Ljava/lang/String;)Lk0/d$a;

    move-result-object p1

    .line 13
    invoke-virtual {p2}, Lj0/h;->P()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    .line 14
    invoke-virtual {p3, p1, p2}, Lk0/a;->i(Lk0/d$a;Ljava/lang/Object;)V

    :goto_9c
    return-void

    .line 15
    :pswitch_9d
    new-instance p1, Lh0/a;

    const-string p2, "Value case is null."

    invoke-direct {p1, p2, v2, v1, v2}, Lh0/a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILt9/g;)V

    throw p1

    nop

    :pswitch_data_a6
    .packed-switch -0x1
        :pswitch_9d
        :pswitch_15
        :pswitch_8d
        :pswitch_7d
        :pswitch_6d
        :pswitch_5d
        :pswitch_4d
        :pswitch_3c
        :pswitch_23
        :pswitch_1b
    .end packed-switch
.end method

.method private final g(Ljava/lang/Object;)Lj0/h;
    .registers 5

    .line 1
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_1f

    invoke-static {}, Lj0/h;->Y()Lj0/h$a;

    move-result-object v0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Lj0/h$a;->w(Z)Lj0/h$a;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/y$a;->o()Landroidx/datastore/preferences/protobuf/y;

    move-result-object p1

    const-string v0, "newBuilder().setBoolean(value).build()"

    invoke-static {p1, v0}, Lt9/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lj0/h;

    goto/16 :goto_d4

    .line 2
    :cond_1f
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_3e

    invoke-static {}, Lj0/h;->Y()Lj0/h$a;

    move-result-object v0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-virtual {v0, p1}, Lj0/h$a;->y(F)Lj0/h$a;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/y$a;->o()Landroidx/datastore/preferences/protobuf/y;

    move-result-object p1

    const-string v0, "newBuilder().setFloat(value).build()"

    invoke-static {p1, v0}, Lt9/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lj0/h;

    goto/16 :goto_d4

    .line 3
    :cond_3e
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_5d

    invoke-static {}, Lj0/h;->Y()Lj0/h$a;

    move-result-object v0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lj0/h$a;->x(D)Lj0/h$a;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/y$a;->o()Landroidx/datastore/preferences/protobuf/y;

    move-result-object p1

    const-string v0, "newBuilder().setDouble(value).build()"

    invoke-static {p1, v0}, Lt9/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lj0/h;

    goto/16 :goto_d4

    .line 4
    :cond_5d
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_7b

    invoke-static {}, Lj0/h;->Y()Lj0/h$a;

    move-result-object v0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lj0/h$a;->z(I)Lj0/h$a;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/y$a;->o()Landroidx/datastore/preferences/protobuf/y;

    move-result-object p1

    const-string v0, "newBuilder().setInteger(value).build()"

    invoke-static {p1, v0}, Lt9/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lj0/h;

    goto :goto_d4

    .line 5
    :cond_7b
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_99

    invoke-static {}, Lj0/h;->Y()Lj0/h$a;

    move-result-object v0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lj0/h$a;->A(J)Lj0/h$a;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/y$a;->o()Landroidx/datastore/preferences/protobuf/y;

    move-result-object p1

    const-string v0, "newBuilder().setLong(value).build()"

    invoke-static {p1, v0}, Lt9/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lj0/h;

    goto :goto_d4

    .line 6
    :cond_99
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_b3

    invoke-static {}, Lj0/h;->Y()Lj0/h$a;

    move-result-object v0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lj0/h$a;->B(Ljava/lang/String;)Lj0/h$a;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/y$a;->o()Landroidx/datastore/preferences/protobuf/y;

    move-result-object p1

    const-string v0, "newBuilder().setString(value).build()"

    invoke-static {p1, v0}, Lt9/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lj0/h;

    goto :goto_d4

    .line 7
    :cond_b3
    instance-of v0, p1, Ljava/util/Set;

    if-eqz v0, :cond_d5

    .line 8
    invoke-static {}, Lj0/h;->Y()Lj0/h$a;

    move-result-object v0

    .line 9
    invoke-static {}, Lj0/g;->N()Lj0/g$a;

    move-result-object v1

    check-cast p1, Ljava/util/Set;

    invoke-virtual {v1, p1}, Lj0/g$a;->w(Ljava/lang/Iterable;)Lj0/g$a;

    move-result-object p1

    .line 10
    invoke-virtual {v0, p1}, Lj0/h$a;->C(Lj0/g$a;)Lj0/h$a;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/y$a;->o()Landroidx/datastore/preferences/protobuf/y;

    move-result-object p1

    const-string v0, "newBuilder().setStringSet(\n                    StringSet.newBuilder().addAllStrings(value as Set<String>)\n                ).build()"

    .line 12
    invoke-static {p1, v0}, Lt9/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lj0/h;

    :goto_d4
    return-object p1

    .line 13
    :cond_d5
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "PreferencesSerializer does not support type: "

    invoke-static {v1, p1}, Lt9/m;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 15
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lk0/h;->e()Lk0/d;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/io/InputStream;Lk9/d;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Lk9/d<",
            "-",
            "Lk0/d;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lh0/a;
        }
    .end annotation

    .line 1
    sget-object p2, Lj0/d;->a:Lj0/d$a;

    invoke-virtual {p2, p1}, Lj0/d$a;->a(Ljava/io/InputStream;)Lj0/f;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Lk0/d$b;

    .line 2
    invoke-static {p2}, Lk0/e;->b([Lk0/d$b;)Lk0/a;

    move-result-object p2

    .line 3
    invoke-virtual {p1}, Lj0/f;->K()Ljava/util/Map;

    move-result-object p1

    const-string v0, "preferencesProto.preferencesMap"

    invoke-static {p1, v0}, Lt9/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj0/h;

    .line 6
    sget-object v2, Lk0/h;->a:Lk0/h;

    const-string v3, "name"

    invoke-static {v1, v3}, Lt9/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "value"

    invoke-static {v0, v3}, Lt9/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v1, v0, p2}, Lk0/h;->d(Ljava/lang/String;Lj0/h;Lk0/a;)V

    goto :goto_1e

    .line 7
    :cond_46
    invoke-virtual {p2}, Lk0/d;->d()Lk0/d;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic c(Ljava/lang/Object;Ljava/io/OutputStream;Lk9/d;)Ljava/lang/Object;
    .registers 4

    .line 1
    check-cast p1, Lk0/d;

    invoke-virtual {p0, p1, p2, p3}, Lk0/h;->h(Lk0/d;Ljava/io/OutputStream;Lk9/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public e()Lk0/d;
    .registers 2

    .line 1
    invoke-static {}, Lk0/e;->a()Lk0/d;

    move-result-object v0

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .registers 2

    .line 1
    sget-object v0, Lk0/h;->b:Ljava/lang/String;

    return-object v0
.end method

.method public h(Lk0/d;Ljava/io/OutputStream;Lk9/d;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk0/d;",
            "Ljava/io/OutputStream;",
            "Lk9/d<",
            "-",
            "Lh9/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lh0/a;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lk0/d;->a()Ljava/util/Map;

    move-result-object p1

    .line 2
    invoke-static {}, Lj0/f;->N()Lj0/f$a;

    move-result-object p3

    .line 3
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk0/d$a;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 4
    invoke-virtual {v1}, Lk0/d$a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0}, Lk0/h;->g(Ljava/lang/Object;)Lj0/h;

    move-result-object v0

    invoke-virtual {p3, v1, v0}, Lj0/f$a;->w(Ljava/lang/String;Lj0/h;)Lj0/f$a;

    goto :goto_10

    .line 5
    :cond_32
    invoke-virtual {p3}, Landroidx/datastore/preferences/protobuf/y$a;->o()Landroidx/datastore/preferences/protobuf/y;

    move-result-object p1

    check-cast p1, Lj0/f;

    invoke-virtual {p1, p2}, Landroidx/datastore/preferences/protobuf/a;->n(Ljava/io/OutputStream;)V

    .line 6
    sget-object p1, Lh9/t;->a:Lh9/t;

    return-object p1
.end method

###### Class k0.h.a (k0.h$a)
.class public final synthetic Lk0/h$a;
.super Ljava/lang/Object;
.source "PreferencesSerializer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "a"
.end annotation


# static fields
.field public static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lj0/h$b;->values()[Lj0/h$b;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lj0/h$b;->p:Lj0/h$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lj0/h$b;->q:Lj0/h$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v1, Lj0/h$b;->v:Lj0/h$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    sget-object v1, Lj0/h$b;->r:Lj0/h$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1

    sget-object v1, Lj0/h$b;->s:Lj0/h$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1

    sget-object v1, Lj0/h$b;->t:Lj0/h$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1

    sget-object v1, Lj0/h$b;->u:Lj0/h$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1

    sget-object v1, Lj0/h$b;->w:Lj0/h$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1

    sput-object v0, Lk0/h$a;->a:[I

    return-void
.end method
