###### Class j0.g (j0.g)
.class public final Lj0/g;
.super Landroidx/datastore/preferences/protobuf/y;
.source "PreferencesProto.java"

# interfaces
.implements Landroidx/datastore/preferences/protobuf/s0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj0/g$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/datastore/preferences/protobuf/y<",
        "Lj0/g;",
        "Lj0/g$a;",
        ">;",
        "Landroidx/datastore/preferences/protobuf/s0;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lj0/g;

.field private static volatile PARSER:Landroidx/datastore/preferences/protobuf/z0; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/protobuf/z0<",
            "Lj0/g;",
            ">;"
        }
    .end annotation
.end field

.field public static final STRINGS_FIELD_NUMBER:I = 0x1


# instance fields
.field private strings_:Landroidx/datastore/preferences/protobuf/a0$i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/protobuf/a0$i<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lj0/g;

    invoke-direct {v0}, Lj0/g;-><init>()V

    .line 2
    sput-object v0, Lj0/g;->DEFAULT_INSTANCE:Lj0/g;

    .line 3
    const-class v1, Lj0/g;

    invoke-static {v1, v0}, Landroidx/datastore/preferences/protobuf/y;->F(Ljava/lang/Class;Landroidx/datastore/preferences/protobuf/y;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/y;-><init>()V

    .line 2
    invoke-static {}, Landroidx/datastore/preferences/protobuf/y;->u()Landroidx/datastore/preferences/protobuf/a0$i;

    move-result-object v0

    iput-object v0, p0, Lj0/g;->strings_:Landroidx/datastore/preferences/protobuf/a0$i;

    return-void
.end method

.method static synthetic H()Lj0/g;
    .registers 1

    .line 1
    sget-object v0, Lj0/g;->DEFAULT_INSTANCE:Lj0/g;

    return-object v0
.end method

.method static synthetic I(Lj0/g;Ljava/lang/Iterable;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lj0/g;->J(Ljava/lang/Iterable;)V

    return-void
.end method

.method private J(Ljava/lang/Iterable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lj0/g;->K()V

    .line 2
    iget-object v0, p0, Lj0/g;->strings_:Landroidx/datastore/preferences/protobuf/a0$i;

    invoke-static {p1, v0}, Landroidx/datastore/preferences/protobuf/a;->c(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private K()V
    .registers 2

    .line 1
    iget-object v0, p0, Lj0/g;->strings_:Landroidx/datastore/preferences/protobuf/a0$i;

    invoke-interface {v0}, Landroidx/datastore/preferences/protobuf/a0$i;->O3()Z

    move-result v0

    if-nez v0, :cond_10

    .line 2
    iget-object v0, p0, Lj0/g;->strings_:Landroidx/datastore/preferences/protobuf/a0$i;

    .line 3
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/y;->A(Landroidx/datastore/preferences/protobuf/a0$i;)Landroidx/datastore/preferences/protobuf/a0$i;

    move-result-object v0

    iput-object v0, p0, Lj0/g;->strings_:Landroidx/datastore/preferences/protobuf/a0$i;

    :cond_10
    return-void
.end method

.method public static L()Lj0/g;
    .registers 1

    .line 1
    sget-object v0, Lj0/g;->DEFAULT_INSTANCE:Lj0/g;

    return-object v0
.end method

.method public static N()Lj0/g$a;
    .registers 1

    .line 1
    sget-object v0, Lj0/g;->DEFAULT_INSTANCE:Lj0/g;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/y;->q()Landroidx/datastore/preferences/protobuf/y$a;

    move-result-object v0

    check-cast v0, Lj0/g$a;

    return-object v0
.end method


# virtual methods
.method public M()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lj0/g;->strings_:Landroidx/datastore/preferences/protobuf/a0$i;

    return-object v0
.end method

.method protected final t(Landroidx/datastore/preferences/protobuf/y$f;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1
    sget-object p2, Lj0/e;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_52

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
    sget-object p1, Lj0/g;->PARSER:Landroidx/datastore/preferences/protobuf/z0;

    if-nez p1, :cond_32

    .line 5
    const-class p2, Lj0/g;

    monitor-enter p2

    .line 6
    :try_start_20
    sget-object p1, Lj0/g;->PARSER:Landroidx/datastore/preferences/protobuf/z0;

    if-nez p1, :cond_2d

    .line 7
    new-instance p1, Landroidx/datastore/preferences/protobuf/y$b;

    sget-object p3, Lj0/g;->DEFAULT_INSTANCE:Lj0/g;

    invoke-direct {p1, p3}, Landroidx/datastore/preferences/protobuf/y$b;-><init>(Landroidx/datastore/preferences/protobuf/y;)V

    .line 8
    sput-object p1, Lj0/g;->PARSER:Landroidx/datastore/preferences/protobuf/z0;

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
    sget-object p1, Lj0/g;->DEFAULT_INSTANCE:Lj0/g;

    return-object p1

    :pswitch_36
    new-array p1, p2, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string p3, "strings_"

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001a"

    .line 11
    sget-object p3, Lj0/g;->DEFAULT_INSTANCE:Lj0/g;

    invoke-static {p3, p2, p1}, Landroidx/datastore/preferences/protobuf/y;->C(Landroidx/datastore/preferences/protobuf/r0;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 12
    :pswitch_46
    new-instance p1, Lj0/g$a;

    invoke-direct {p1, p3}, Lj0/g$a;-><init>(Lj0/e;)V

    return-object p1

    .line 13
    :pswitch_4c
    new-instance p1, Lj0/g;

    invoke-direct {p1}, Lj0/g;-><init>()V

    return-object p1

    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_4c
        :pswitch_46
        :pswitch_36
        :pswitch_33
        :pswitch_19
        :pswitch_14
        :pswitch_13
    .end packed-switch
.end method

###### Class j0.g.a (j0.g$a)
.class public final Lj0/g$a;
.super Landroidx/datastore/preferences/protobuf/y$a;
.source "PreferencesProto.java"

# interfaces
.implements Landroidx/datastore/preferences/protobuf/s0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj0/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/datastore/preferences/protobuf/y$a<",
        "Lj0/g;",
        "Lj0/g$a;",
        ">;",
        "Landroidx/datastore/preferences/protobuf/s0;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 2
    invoke-static {}, Lj0/g;->H()Lj0/g;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/y$a;-><init>(Landroidx/datastore/preferences/protobuf/y;)V

    return-void
.end method

.method synthetic constructor <init>(Lj0/e;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lj0/g$a;-><init>()V

    return-void
.end method


# virtual methods
.method public w(Ljava/lang/Iterable;)Lj0/g$a;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lj0/g$a;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/y$a;->r()V

    .line 2
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/y$a;->p:Landroidx/datastore/preferences/protobuf/y;

    check-cast v0, Lj0/g;

    invoke-static {v0, p1}, Lj0/g;->I(Lj0/g;Ljava/lang/Iterable;)V

    return-object p0
.end method
