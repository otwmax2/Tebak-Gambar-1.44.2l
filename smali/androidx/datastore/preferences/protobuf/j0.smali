###### Class androidx.datastore.preferences.protobuf.j0 (androidx.datastore.preferences.protobuf.j0)
.class final Landroidx/datastore/preferences/protobuf/j0;
.super Ljava/lang/Object;
.source "ManifestSchemaFactory.java"

# interfaces
.implements Landroidx/datastore/preferences/protobuf/h1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/datastore/preferences/protobuf/j0$b;
    }
.end annotation


# static fields
.field private static final b:Landroidx/datastore/preferences/protobuf/q0;


# instance fields
.field private final a:Landroidx/datastore/preferences/protobuf/q0;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Landroidx/datastore/preferences/protobuf/j0$a;

    invoke-direct {v0}, Landroidx/datastore/preferences/protobuf/j0$a;-><init>()V

    sput-object v0, Landroidx/datastore/preferences/protobuf/j0;->b:Landroidx/datastore/preferences/protobuf/q0;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-static {}, Landroidx/datastore/preferences/protobuf/j0;->b()Landroidx/datastore/preferences/protobuf/q0;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/j0;-><init>(Landroidx/datastore/preferences/protobuf/q0;)V

    return-void
.end method

.method private constructor <init>(Landroidx/datastore/preferences/protobuf/q0;)V
    .registers 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "messageInfoFactory"

    .line 3
    invoke-static {p1, v0}, Landroidx/datastore/preferences/protobuf/a0;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/datastore/preferences/protobuf/q0;

    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/j0;->a:Landroidx/datastore/preferences/protobuf/q0;

    return-void
.end method

.method private static b()Landroidx/datastore/preferences/protobuf/q0;
    .registers 4

    .line 1
    new-instance v0, Landroidx/datastore/preferences/protobuf/j0$b;

    const/4 v1, 0x2

    new-array v1, v1, [Landroidx/datastore/preferences/protobuf/q0;

    .line 2
    invoke-static {}, Landroidx/datastore/preferences/protobuf/x;->c()Landroidx/datastore/preferences/protobuf/x;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {}, Landroidx/datastore/preferences/protobuf/j0;->c()Landroidx/datastore/preferences/protobuf/q0;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Landroidx/datastore/preferences/protobuf/j0$b;-><init>([Landroidx/datastore/preferences/protobuf/q0;)V

    return-object v0
.end method

.method private static c()Landroidx/datastore/preferences/protobuf/q0;
    .registers 4

    :try_start_0
    const-string v0, "androidx.datastore.preferences.protobuf.DescriptorMessageInfoFactory"

    .line 1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getInstance"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 2
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/q0;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_19

    return-object v0

    .line 3
    :catch_19
    sget-object v0, Landroidx/datastore/preferences/protobuf/j0;->b:Landroidx/datastore/preferences/protobuf/q0;

    return-object v0
.end method

.method private static d(Landroidx/datastore/preferences/protobuf/p0;)Z
    .registers 2

    .line 1
    invoke-interface {p0}, Landroidx/datastore/preferences/protobuf/p0;->c()Landroidx/datastore/preferences/protobuf/b1;

    move-result-object p0

    sget-object v0, Landroidx/datastore/preferences/protobuf/b1;->o:Landroidx/datastore/preferences/protobuf/b1;

    if-ne p0, v0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method private static e(Ljava/lang/Class;Landroidx/datastore/preferences/protobuf/p0;)Landroidx/datastore/preferences/protobuf/g1;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Landroidx/datastore/preferences/protobuf/p0;",
            ")",
            "Landroidx/datastore/preferences/protobuf/g1<",
            "TT;>;"
        }
    .end annotation

    .line 1
    const-class v0, Landroidx/datastore/preferences/protobuf/y;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 2
    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/j0;->d(Landroidx/datastore/preferences/protobuf/p0;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 3
    invoke-static {}, Landroidx/datastore/preferences/protobuf/y0;->b()Landroidx/datastore/preferences/protobuf/w0;

    move-result-object v3

    .line 4
    invoke-static {}, Landroidx/datastore/preferences/protobuf/h0;->b()Landroidx/datastore/preferences/protobuf/h0;

    move-result-object v4

    .line 5
    invoke-static {}, Landroidx/datastore/preferences/protobuf/i1;->M()Landroidx/datastore/preferences/protobuf/n1;

    move-result-object v5

    .line 6
    invoke-static {}, Landroidx/datastore/preferences/protobuf/s;->b()Landroidx/datastore/preferences/protobuf/q;

    move-result-object v6

    .line 7
    invoke-static {}, Landroidx/datastore/preferences/protobuf/o0;->b()Landroidx/datastore/preferences/protobuf/m0;

    move-result-object v7

    move-object v1, p0

    move-object v2, p1

    .line 8
    invoke-static/range {v1 .. v7}, Landroidx/datastore/preferences/protobuf/u0;->N(Ljava/lang/Class;Landroidx/datastore/preferences/protobuf/p0;Landroidx/datastore/preferences/protobuf/w0;Landroidx/datastore/preferences/protobuf/h0;Landroidx/datastore/preferences/protobuf/n1;Landroidx/datastore/preferences/protobuf/q;Landroidx/datastore/preferences/protobuf/m0;)Landroidx/datastore/preferences/protobuf/u0;

    move-result-object p0

    goto :goto_40

    .line 9
    :cond_29
    invoke-static {}, Landroidx/datastore/preferences/protobuf/y0;->b()Landroidx/datastore/preferences/protobuf/w0;

    move-result-object v2

    .line 10
    invoke-static {}, Landroidx/datastore/preferences/protobuf/h0;->b()Landroidx/datastore/preferences/protobuf/h0;

    move-result-object v3

    .line 11
    invoke-static {}, Landroidx/datastore/preferences/protobuf/i1;->M()Landroidx/datastore/preferences/protobuf/n1;

    move-result-object v4

    const/4 v5, 0x0

    .line 12
    invoke-static {}, Landroidx/datastore/preferences/protobuf/o0;->b()Landroidx/datastore/preferences/protobuf/m0;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    .line 13
    invoke-static/range {v0 .. v6}, Landroidx/datastore/preferences/protobuf/u0;->N(Ljava/lang/Class;Landroidx/datastore/preferences/protobuf/p0;Landroidx/datastore/preferences/protobuf/w0;Landroidx/datastore/preferences/protobuf/h0;Landroidx/datastore/preferences/protobuf/n1;Landroidx/datastore/preferences/protobuf/q;Landroidx/datastore/preferences/protobuf/m0;)Landroidx/datastore/preferences/protobuf/u0;

    move-result-object p0

    :goto_40
    return-object p0

    .line 14
    :cond_41
    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/j0;->d(Landroidx/datastore/preferences/protobuf/p0;)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 15
    invoke-static {}, Landroidx/datastore/preferences/protobuf/y0;->a()Landroidx/datastore/preferences/protobuf/w0;

    move-result-object v3

    .line 16
    invoke-static {}, Landroidx/datastore/preferences/protobuf/h0;->a()Landroidx/datastore/preferences/protobuf/h0;

    move-result-object v4

    .line 17
    invoke-static {}, Landroidx/datastore/preferences/protobuf/i1;->H()Landroidx/datastore/preferences/protobuf/n1;

    move-result-object v5

    .line 18
    invoke-static {}, Landroidx/datastore/preferences/protobuf/s;->a()Landroidx/datastore/preferences/protobuf/q;

    move-result-object v6

    .line 19
    invoke-static {}, Landroidx/datastore/preferences/protobuf/o0;->a()Landroidx/datastore/preferences/protobuf/m0;

    move-result-object v7

    move-object v1, p0

    move-object v2, p1

    .line 20
    invoke-static/range {v1 .. v7}, Landroidx/datastore/preferences/protobuf/u0;->N(Ljava/lang/Class;Landroidx/datastore/preferences/protobuf/p0;Landroidx/datastore/preferences/protobuf/w0;Landroidx/datastore/preferences/protobuf/h0;Landroidx/datastore/preferences/protobuf/n1;Landroidx/datastore/preferences/protobuf/q;Landroidx/datastore/preferences/protobuf/m0;)Landroidx/datastore/preferences/protobuf/u0;

    move-result-object p0

    goto :goto_79

    .line 21
    :cond_62
    invoke-static {}, Landroidx/datastore/preferences/protobuf/y0;->a()Landroidx/datastore/preferences/protobuf/w0;

    move-result-object v2

    .line 22
    invoke-static {}, Landroidx/datastore/preferences/protobuf/h0;->a()Landroidx/datastore/preferences/protobuf/h0;

    move-result-object v3

    .line 23
    invoke-static {}, Landroidx/datastore/preferences/protobuf/i1;->I()Landroidx/datastore/preferences/protobuf/n1;

    move-result-object v4

    const/4 v5, 0x0

    .line 24
    invoke-static {}, Landroidx/datastore/preferences/protobuf/o0;->a()Landroidx/datastore/preferences/protobuf/m0;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    .line 25
    invoke-static/range {v0 .. v6}, Landroidx/datastore/preferences/protobuf/u0;->N(Ljava/lang/Class;Landroidx/datastore/preferences/protobuf/p0;Landroidx/datastore/preferences/protobuf/w0;Landroidx/datastore/preferences/protobuf/h0;Landroidx/datastore/preferences/protobuf/n1;Landroidx/datastore/preferences/protobuf/q;Landroidx/datastore/preferences/protobuf/m0;)Landroidx/datastore/preferences/protobuf/u0;

    move-result-object p0

    :goto_79
    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Landroidx/datastore/preferences/protobuf/g1;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Landroidx/datastore/preferences/protobuf/g1<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/i1;->J(Ljava/lang/Class;)V

    .line 2
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j0;->a:Landroidx/datastore/preferences/protobuf/q0;

    invoke-interface {v0, p1}, Landroidx/datastore/preferences/protobuf/q0;->a(Ljava/lang/Class;)Landroidx/datastore/preferences/protobuf/p0;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Landroidx/datastore/preferences/protobuf/p0;->a()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 4
    const-class v1, Landroidx/datastore/preferences/protobuf/y;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_28

    .line 5
    invoke-static {}, Landroidx/datastore/preferences/protobuf/i1;->M()Landroidx/datastore/preferences/protobuf/n1;

    move-result-object p1

    .line 6
    invoke-static {}, Landroidx/datastore/preferences/protobuf/s;->b()Landroidx/datastore/preferences/protobuf/q;

    move-result-object v1

    .line 7
    invoke-interface {v0}, Landroidx/datastore/preferences/protobuf/p0;->b()Landroidx/datastore/preferences/protobuf/r0;

    move-result-object v0

    .line 8
    invoke-static {p1, v1, v0}, Landroidx/datastore/preferences/protobuf/v0;->l(Landroidx/datastore/preferences/protobuf/n1;Landroidx/datastore/preferences/protobuf/q;Landroidx/datastore/preferences/protobuf/r0;)Landroidx/datastore/preferences/protobuf/v0;

    move-result-object p1

    return-object p1

    .line 9
    :cond_28
    invoke-static {}, Landroidx/datastore/preferences/protobuf/i1;->H()Landroidx/datastore/preferences/protobuf/n1;

    move-result-object p1

    .line 10
    invoke-static {}, Landroidx/datastore/preferences/protobuf/s;->a()Landroidx/datastore/preferences/protobuf/q;

    move-result-object v1

    .line 11
    invoke-interface {v0}, Landroidx/datastore/preferences/protobuf/p0;->b()Landroidx/datastore/preferences/protobuf/r0;

    move-result-object v0

    .line 12
    invoke-static {p1, v1, v0}, Landroidx/datastore/preferences/protobuf/v0;->l(Landroidx/datastore/preferences/protobuf/n1;Landroidx/datastore/preferences/protobuf/q;Landroidx/datastore/preferences/protobuf/r0;)Landroidx/datastore/preferences/protobuf/v0;

    move-result-object p1

    return-object p1

    .line 13
    :cond_39
    invoke-static {p1, v0}, Landroidx/datastore/preferences/protobuf/j0;->e(Ljava/lang/Class;Landroidx/datastore/preferences/protobuf/p0;)Landroidx/datastore/preferences/protobuf/g1;

    move-result-object p1

    return-object p1
.end method

###### Class androidx.datastore.preferences.protobuf.j0.a (androidx.datastore.preferences.protobuf.j0$a)
.class final Landroidx/datastore/preferences/protobuf/j0$a;
.super Ljava/lang/Object;
.source "ManifestSchemaFactory.java"

# interfaces
.implements Landroidx/datastore/preferences/protobuf/q0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/datastore/preferences/protobuf/j0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Landroidx/datastore/preferences/protobuf/p0;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Landroidx/datastore/preferences/protobuf/p0;"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This should never be called."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Ljava/lang/Class;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

###### Class androidx.datastore.preferences.protobuf.j0.b (androidx.datastore.preferences.protobuf.j0$b)
.class Landroidx/datastore/preferences/protobuf/j0$b;
.super Ljava/lang/Object;
.source "ManifestSchemaFactory.java"

# interfaces
.implements Landroidx/datastore/preferences/protobuf/q0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/datastore/preferences/protobuf/j0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private a:[Landroidx/datastore/preferences/protobuf/q0;


# direct methods
.method varargs constructor <init>([Landroidx/datastore/preferences/protobuf/q0;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/j0$b;->a:[Landroidx/datastore/preferences/protobuf/q0;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Landroidx/datastore/preferences/protobuf/p0;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Landroidx/datastore/preferences/protobuf/p0;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j0$b;->a:[Landroidx/datastore/preferences/protobuf/q0;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_16

    aget-object v3, v0, v2

    .line 2
    invoke-interface {v3, p1}, Landroidx/datastore/preferences/protobuf/q0;->b(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 3
    invoke-interface {v3, p1}, Landroidx/datastore/preferences/protobuf/q0;->a(Ljava/lang/Class;)Landroidx/datastore/preferences/protobuf/p0;

    move-result-object p1

    return-object p1

    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 4
    :cond_16
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No factory is available for message type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    goto :goto_32

    :goto_31
    throw v0

    :goto_32
    goto :goto_31
.end method

.method public b(Ljava/lang/Class;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/j0$b;->a:[Landroidx/datastore/preferences/protobuf/q0;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v1, :cond_14

    aget-object v4, v0, v3

    .line 2
    invoke-interface {v4, p1}, Landroidx/datastore/preferences/protobuf/q0;->b(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_11

    const/4 p1, 0x1

    return p1

    :cond_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_14
    return v2
.end method
