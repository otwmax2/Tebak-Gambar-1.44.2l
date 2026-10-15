###### Class j0.h (j0.h)
.class public final Lj0/h;
.super Landroidx/datastore/preferences/protobuf/y;
.source "PreferencesProto.java"

# interfaces
.implements Landroidx/datastore/preferences/protobuf/s0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj0/h$a;,
        Lj0/h$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/datastore/preferences/protobuf/y<",
        "Lj0/h;",
        "Lj0/h$a;",
        ">;",
        "Landroidx/datastore/preferences/protobuf/s0;"
    }
.end annotation


# static fields
.field public static final BOOLEAN_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lj0/h;

.field public static final DOUBLE_FIELD_NUMBER:I = 0x7

.field public static final FLOAT_FIELD_NUMBER:I = 0x2

.field public static final INTEGER_FIELD_NUMBER:I = 0x3

.field public static final LONG_FIELD_NUMBER:I = 0x4

.field private static volatile PARSER:Landroidx/datastore/preferences/protobuf/z0; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/protobuf/z0<",
            "Lj0/h;",
            ">;"
        }
    .end annotation
.end field

.field public static final STRING_FIELD_NUMBER:I = 0x5

.field public static final STRING_SET_FIELD_NUMBER:I = 0x6


# instance fields
.field private bitField0_:I

.field private valueCase_:I

.field private value_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lj0/h;

    invoke-direct {v0}, Lj0/h;-><init>()V

    .line 2
    sput-object v0, Lj0/h;->DEFAULT_INSTANCE:Lj0/h;

    .line 3
    const-class v1, Lj0/h;

    invoke-static {v1, v0}, Landroidx/datastore/preferences/protobuf/y;->F(Ljava/lang/Class;Landroidx/datastore/preferences/protobuf/y;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/y;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lj0/h;->valueCase_:I

    return-void
.end method

.method static synthetic H(Lj0/h;J)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lj0/h;->d0(J)V

    return-void
.end method

.method static synthetic I(Lj0/h;Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lj0/h;->e0(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic J(Lj0/h;Lj0/g$a;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lj0/h;->f0(Lj0/g$a;)V

    return-void
.end method

.method static synthetic K(Lj0/h;D)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lj0/h;->a0(D)V

    return-void
.end method

.method static synthetic L()Lj0/h;
    .registers 1

    .line 1
    sget-object v0, Lj0/h;->DEFAULT_INSTANCE:Lj0/h;

    return-object v0
.end method

.method static synthetic M(Lj0/h;Z)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lj0/h;->Z(Z)V

    return-void
.end method

.method static synthetic N(Lj0/h;F)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lj0/h;->b0(F)V

    return-void
.end method

.method static synthetic O(Lj0/h;I)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lj0/h;->c0(I)V

    return-void
.end method

.method public static Q()Lj0/h;
    .registers 1

    .line 1
    sget-object v0, Lj0/h;->DEFAULT_INSTANCE:Lj0/h;

    return-object v0
.end method

.method public static Y()Lj0/h$a;
    .registers 1

    .line 1
    sget-object v0, Lj0/h;->DEFAULT_INSTANCE:Lj0/h;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/y;->q()Landroidx/datastore/preferences/protobuf/y$a;

    move-result-object v0

    check-cast v0, Lj0/h$a;

    return-object v0
.end method

.method private Z(Z)V
    .registers 3

    const/4 v0, 0x1

    .line 1
    iput v0, p0, Lj0/h;->valueCase_:I

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lj0/h;->value_:Ljava/lang/Object;

    return-void
.end method

.method private a0(D)V
    .registers 4

    const/4 v0, 0x7

    .line 1
    iput v0, p0, Lj0/h;->valueCase_:I

    .line 2
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Lj0/h;->value_:Ljava/lang/Object;

    return-void
.end method

.method private b0(F)V
    .registers 3

    const/4 v0, 0x2

    .line 1
    iput v0, p0, Lj0/h;->valueCase_:I

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lj0/h;->value_:Ljava/lang/Object;

    return-void
.end method

.method private c0(I)V
    .registers 3

    const/4 v0, 0x3

    .line 1
    iput v0, p0, Lj0/h;->valueCase_:I

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lj0/h;->value_:Ljava/lang/Object;

    return-void
.end method

.method private d0(J)V
    .registers 4

    const/4 v0, 0x4

    .line 1
    iput v0, p0, Lj0/h;->valueCase_:I

    .line 2
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lj0/h;->value_:Ljava/lang/Object;

    return-void
.end method

.method private e0(Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x5

    .line 2
    iput v0, p0, Lj0/h;->valueCase_:I

    .line 3
    iput-object p1, p0, Lj0/h;->value_:Ljava/lang/Object;

    return-void
.end method

.method private f0(Lj0/g$a;)V
    .registers 2

    .line 1
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/y$a;->o()Landroidx/datastore/preferences/protobuf/y;

    move-result-object p1

    iput-object p1, p0, Lj0/h;->value_:Ljava/lang/Object;

    const/4 p1, 0x6

    .line 2
    iput p1, p0, Lj0/h;->valueCase_:I

    return-void
.end method


# virtual methods
.method public P()Z
    .registers 3

    .line 1
    iget v0, p0, Lj0/h;->valueCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    .line 2
    iget-object v0, p0, Lj0/h;->value_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method public R()D
    .registers 3

    .line 1
    iget v0, p0, Lj0/h;->valueCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_e

    .line 2
    iget-object v0, p0, Lj0/h;->value_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0

    :cond_e
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public S()F
    .registers 3

    .line 1
    iget v0, p0, Lj0/h;->valueCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_e

    .line 2
    iget-object v0, p0, Lj0/h;->value_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0

    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method public T()I
    .registers 3

    .line 1
    iget v0, p0, Lj0/h;->valueCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_e

    .line 2
    iget-object v0, p0, Lj0/h;->value_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method public U()J
    .registers 3

    .line 1
    iget v0, p0, Lj0/h;->valueCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_e

    .line 2
    iget-object v0, p0, Lj0/h;->value_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_e
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public V()Ljava/lang/String;
    .registers 3

    .line 1
    iget v0, p0, Lj0/h;->valueCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_a

    .line 2
    iget-object v0, p0, Lj0/h;->value_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    goto :goto_c

    :cond_a
    const-string v0, ""

    :goto_c
    return-object v0
.end method

.method public W()Lj0/g;
    .registers 3

    .line 1
    iget v0, p0, Lj0/h;->valueCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_a

    .line 2
    iget-object v0, p0, Lj0/h;->value_:Ljava/lang/Object;

    check-cast v0, Lj0/g;

    return-object v0

    .line 3
    :cond_a
    invoke-static {}, Lj0/g;->L()Lj0/g;

    move-result-object v0

    return-object v0
.end method

.method public X()Lj0/h$b;
    .registers 2

    .line 1
    iget v0, p0, Lj0/h;->valueCase_:I

    invoke-static {v0}, Lj0/h$b;->c(I)Lj0/h$b;

    move-result-object v0

    return-object v0
.end method

.method protected final t(Landroidx/datastore/preferences/protobuf/y$f;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 1
    sget-object p2, Lj0/e;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_62

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_13
    return-object p3

    .line 3
    :pswitch_14
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 4
    :pswitch_19
    sget-object p1, Lj0/h;->PARSER:Landroidx/datastore/preferences/protobuf/z0;

    if-nez p1, :cond_32

    .line 5
    const-class p2, Lj0/h;

    monitor-enter p2

    .line 6
    :try_start_20
    sget-object p1, Lj0/h;->PARSER:Landroidx/datastore/preferences/protobuf/z0;

    if-nez p1, :cond_2d

    .line 7
    new-instance p1, Landroidx/datastore/preferences/protobuf/y$b;

    sget-object p3, Lj0/h;->DEFAULT_INSTANCE:Lj0/h;

    invoke-direct {p1, p3}, Landroidx/datastore/preferences/protobuf/y$b;-><init>(Landroidx/datastore/preferences/protobuf/y;)V

    .line 8
    sput-object p1, Lj0/h;->PARSER:Landroidx/datastore/preferences/protobuf/z0;

    .line 9
    :cond_2d
    monitor-exit p2

    goto :goto_32

    :catchall_2f
    move-exception p1

    monitor-exit p2
    :try_end_31
    .catchall {:try_start_20 .. :try_end_31} :catchall_2f

    throw p1

    :cond_32
    :goto_32
    return-object p1

    .line 10
    :pswitch_33
    sget-object p1, Lj0/h;->DEFAULT_INSTANCE:Lj0/h;

    return-object p1

    :pswitch_36
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "value_"

    aput-object v0, p1, p3

    const-string p3, "valueCase_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "bitField0_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    .line 11
    const-class p3, Lj0/g;

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0007\u0001\u0001\u0001\u0007\u0007\u0000\u0000\u0000\u0001:\u0000\u00024\u0000\u00037\u0000\u00045\u0000\u0005;\u0000\u0006<\u0000\u00073\u0000"

    .line 12
    sget-object p3, Lj0/h;->DEFAULT_INSTANCE:Lj0/h;

    invoke-static {p3, p2, p1}, Landroidx/datastore/preferences/protobuf/y;->C(Landroidx/datastore/preferences/protobuf/r0;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 13
    :pswitch_55
    new-instance p1, Lj0/h$a;

    invoke-direct {p1, p3}, Lj0/h$a;-><init>(Lj0/e;)V

    return-object p1

    .line 14
    :pswitch_5b
    new-instance p1, Lj0/h;

    invoke-direct {p1}, Lj0/h;-><init>()V

    return-object p1

    nop

    :pswitch_data_62
    .packed-switch 0x1
        :pswitch_5b
        :pswitch_55
        :pswitch_36
        :pswitch_33
        :pswitch_19
        :pswitch_14
        :pswitch_13
    .end packed-switch
.end method

###### Class j0.h.a (j0.h$a)
.class public final Lj0/h$a;
.super Landroidx/datastore/preferences/protobuf/y$a;
.source "PreferencesProto.java"

# interfaces
.implements Landroidx/datastore/preferences/protobuf/s0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj0/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/datastore/preferences/protobuf/y$a<",
        "Lj0/h;",
        "Lj0/h$a;",
        ">;",
        "Landroidx/datastore/preferences/protobuf/s0;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 2
    invoke-static {}, Lj0/h;->L()Lj0/h;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/y$a;-><init>(Landroidx/datastore/preferences/protobuf/y;)V

    return-void
.end method

.method synthetic constructor <init>(Lj0/e;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lj0/h$a;-><init>()V

    return-void
.end method


# virtual methods
.method public A(J)Lj0/h$a;
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/y$a;->r()V

    .line 2
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/y$a;->p:Landroidx/datastore/preferences/protobuf/y;

    check-cast v0, Lj0/h;

    invoke-static {v0, p1, p2}, Lj0/h;->H(Lj0/h;J)V

    return-object p0
.end method

.method public B(Ljava/lang/String;)Lj0/h$a;
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/y$a;->r()V

    .line 2
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/y$a;->p:Landroidx/datastore/preferences/protobuf/y;

    check-cast v0, Lj0/h;

    invoke-static {v0, p1}, Lj0/h;->I(Lj0/h;Ljava/lang/String;)V

    return-object p0
.end method

.method public C(Lj0/g$a;)Lj0/h$a;
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/y$a;->r()V

    .line 2
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/y$a;->p:Landroidx/datastore/preferences/protobuf/y;

    check-cast v0, Lj0/h;

    invoke-static {v0, p1}, Lj0/h;->J(Lj0/h;Lj0/g$a;)V

    return-object p0
.end method

.method public w(Z)Lj0/h$a;
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/y$a;->r()V

    .line 2
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/y$a;->p:Landroidx/datastore/preferences/protobuf/y;

    check-cast v0, Lj0/h;

    invoke-static {v0, p1}, Lj0/h;->M(Lj0/h;Z)V

    return-object p0
.end method

.method public x(D)Lj0/h$a;
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/y$a;->r()V

    .line 2
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/y$a;->p:Landroidx/datastore/preferences/protobuf/y;

    check-cast v0, Lj0/h;

    invoke-static {v0, p1, p2}, Lj0/h;->K(Lj0/h;D)V

    return-object p0
.end method

.method public y(F)Lj0/h$a;
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/y$a;->r()V

    .line 2
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/y$a;->p:Landroidx/datastore/preferences/protobuf/y;

    check-cast v0, Lj0/h;

    invoke-static {v0, p1}, Lj0/h;->N(Lj0/h;F)V

    return-object p0
.end method

.method public z(I)Lj0/h$a;
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/y$a;->r()V

    .line 2
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/y$a;->p:Landroidx/datastore/preferences/protobuf/y;

    check-cast v0, Lj0/h;

    invoke-static {v0, p1}, Lj0/h;->O(Lj0/h;I)V

    return-object p0
.end method

###### Class j0.h.b (j0.h$b)
.class public final enum Lj0/h$b;
.super Ljava/lang/Enum;
.source "PreferencesProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj0/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lj0/h$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum p:Lj0/h$b;

.field public static final enum q:Lj0/h$b;

.field public static final enum r:Lj0/h$b;

.field public static final enum s:Lj0/h$b;

.field public static final enum t:Lj0/h$b;

.field public static final enum u:Lj0/h$b;

.field public static final enum v:Lj0/h$b;

.field public static final enum w:Lj0/h$b;

.field private static final synthetic x:[Lj0/h$b;


# instance fields
.field private final o:I


# direct methods
.method static constructor <clinit>()V
    .registers 16

    .line 1
    new-instance v0, Lj0/h$b;

    const-string v1, "BOOLEAN"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lj0/h$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lj0/h$b;->p:Lj0/h$b;

    .line 2
    new-instance v1, Lj0/h$b;

    const-string v4, "FLOAT"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lj0/h$b;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lj0/h$b;->q:Lj0/h$b;

    .line 3
    new-instance v4, Lj0/h$b;

    const-string v6, "INTEGER"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lj0/h$b;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lj0/h$b;->r:Lj0/h$b;

    .line 4
    new-instance v6, Lj0/h$b;

    const-string v8, "LONG"

    const/4 v9, 0x4

    invoke-direct {v6, v8, v7, v9}, Lj0/h$b;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lj0/h$b;->s:Lj0/h$b;

    .line 5
    new-instance v8, Lj0/h$b;

    const-string v10, "STRING"

    const/4 v11, 0x5

    invoke-direct {v8, v10, v9, v11}, Lj0/h$b;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lj0/h$b;->t:Lj0/h$b;

    .line 6
    new-instance v10, Lj0/h$b;

    const-string v12, "STRING_SET"

    const/4 v13, 0x6

    invoke-direct {v10, v12, v11, v13}, Lj0/h$b;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lj0/h$b;->u:Lj0/h$b;

    .line 7
    new-instance v12, Lj0/h$b;

    const-string v14, "DOUBLE"

    const/4 v15, 0x7

    invoke-direct {v12, v14, v13, v15}, Lj0/h$b;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lj0/h$b;->v:Lj0/h$b;

    .line 8
    new-instance v14, Lj0/h$b;

    const-string v13, "VALUE_NOT_SET"

    invoke-direct {v14, v13, v15, v2}, Lj0/h$b;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lj0/h$b;->w:Lj0/h$b;

    const/16 v13, 0x8

    new-array v13, v13, [Lj0/h$b;

    aput-object v0, v13, v2

    aput-object v1, v13, v3

    aput-object v4, v13, v5

    aput-object v6, v13, v7

    aput-object v8, v13, v9

    aput-object v10, v13, v11

    const/4 v0, 0x6

    aput-object v12, v13, v0

    aput-object v14, v13, v15

    .line 9
    sput-object v13, Lj0/h$b;->x:[Lj0/h$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lj0/h$b;->o:I

    return-void
.end method

.method public static c(I)Lj0/h$b;
    .registers 1

    packed-switch p0, :pswitch_data_1e

    const/4 p0, 0x0

    return-object p0

    .line 1
    :pswitch_5
    sget-object p0, Lj0/h$b;->v:Lj0/h$b;

    return-object p0

    .line 2
    :pswitch_8
    sget-object p0, Lj0/h$b;->u:Lj0/h$b;

    return-object p0

    .line 3
    :pswitch_b
    sget-object p0, Lj0/h$b;->t:Lj0/h$b;

    return-object p0

    .line 4
    :pswitch_e
    sget-object p0, Lj0/h$b;->s:Lj0/h$b;

    return-object p0

    .line 5
    :pswitch_11
    sget-object p0, Lj0/h$b;->r:Lj0/h$b;

    return-object p0

    .line 6
    :pswitch_14
    sget-object p0, Lj0/h$b;->q:Lj0/h$b;

    return-object p0

    .line 7
    :pswitch_17
    sget-object p0, Lj0/h$b;->p:Lj0/h$b;

    return-object p0

    .line 8
    :pswitch_1a
    sget-object p0, Lj0/h$b;->w:Lj0/h$b;

    return-object p0

    nop

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lj0/h$b;
    .registers 2

    .line 1
    const-class v0, Lj0/h$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lj0/h$b;

    return-object p0
.end method

.method public static values()[Lj0/h$b;
    .registers 1

    .line 1
    sget-object v0, Lj0/h$b;->x:[Lj0/h$b;

    invoke-virtual {v0}, [Lj0/h$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lj0/h$b;

    return-object v0
.end method
