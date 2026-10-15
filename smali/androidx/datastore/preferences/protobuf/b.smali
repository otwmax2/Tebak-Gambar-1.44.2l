###### Class androidx.datastore.preferences.protobuf.b (androidx.datastore.preferences.protobuf.b)
.class public abstract Landroidx/datastore/preferences/protobuf/b;
.super Ljava/lang/Object;
.source "AbstractParser.java"

# interfaces
.implements Landroidx/datastore/preferences/protobuf/z0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType::",
        "Landroidx/datastore/preferences/protobuf/r0;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/datastore/preferences/protobuf/z0<",
        "TMessageType;>;"
    }
.end annotation


# static fields
.field private static final a:Landroidx/datastore/preferences/protobuf/p;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    invoke-static {}, Landroidx/datastore/preferences/protobuf/p;->b()Landroidx/datastore/preferences/protobuf/p;

    move-result-object v0

    sput-object v0, Landroidx/datastore/preferences/protobuf/b;->a:Landroidx/datastore/preferences/protobuf/p;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private c(Landroidx/datastore/preferences/protobuf/r0;)Landroidx/datastore/preferences/protobuf/r0;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/datastore/preferences/protobuf/b0;
        }
    .end annotation

    if-eqz p1, :cond_16

    .line 1
    invoke-interface {p1}, Landroidx/datastore/preferences/protobuf/s0;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_16

    .line 2
    :cond_9
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/b;->d(Landroidx/datastore/preferences/protobuf/r0;)Landroidx/datastore/preferences/protobuf/m1;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/m1;->a()Landroidx/datastore/preferences/protobuf/b0;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p1}, Landroidx/datastore/preferences/protobuf/b0;->i(Landroidx/datastore/preferences/protobuf/r0;)Landroidx/datastore/preferences/protobuf/b0;

    move-result-object p1

    throw p1

    :cond_16
    :goto_16
    return-object p1
.end method

.method private d(Landroidx/datastore/preferences/protobuf/r0;)Landroidx/datastore/preferences/protobuf/m1;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)",
            "Landroidx/datastore/preferences/protobuf/m1;"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Landroidx/datastore/preferences/protobuf/a;

    if-eqz v0, :cond_b

    .line 2
    check-cast p1, Landroidx/datastore/preferences/protobuf/a;

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/a;->l()Landroidx/datastore/preferences/protobuf/m1;

    move-result-object p1

    return-object p1

    .line 3
    :cond_b
    new-instance v0, Landroidx/datastore/preferences/protobuf/m1;

    invoke-direct {v0, p1}, Landroidx/datastore/preferences/protobuf/m1;-><init>(Landroidx/datastore/preferences/protobuf/r0;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic a(Landroidx/datastore/preferences/protobuf/h;Landroidx/datastore/preferences/protobuf/p;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/datastore/preferences/protobuf/b0;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/b;->e(Landroidx/datastore/preferences/protobuf/h;Landroidx/datastore/preferences/protobuf/p;)Landroidx/datastore/preferences/protobuf/r0;

    move-result-object p1

    return-object p1
.end method

.method public e(Landroidx/datastore/preferences/protobuf/h;Landroidx/datastore/preferences/protobuf/p;)Landroidx/datastore/preferences/protobuf/r0;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/datastore/preferences/protobuf/h;",
            "Landroidx/datastore/preferences/protobuf/p;",
            ")TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/datastore/preferences/protobuf/b0;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/b;->f(Landroidx/datastore/preferences/protobuf/h;Landroidx/datastore/preferences/protobuf/p;)Landroidx/datastore/preferences/protobuf/r0;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/b;->c(Landroidx/datastore/preferences/protobuf/r0;)Landroidx/datastore/preferences/protobuf/r0;

    move-result-object p1

    return-object p1
.end method

.method public f(Landroidx/datastore/preferences/protobuf/h;Landroidx/datastore/preferences/protobuf/p;)Landroidx/datastore/preferences/protobuf/r0;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/datastore/preferences/protobuf/h;",
            "Landroidx/datastore/preferences/protobuf/p;",
            ")TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/datastore/preferences/protobuf/b0;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/h;->s()Landroidx/datastore/preferences/protobuf/i;

    move-result-object p1

    .line 2
    invoke-interface {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/z0;->b(Landroidx/datastore/preferences/protobuf/i;Landroidx/datastore/preferences/protobuf/p;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/datastore/preferences/protobuf/r0;
    :try_end_a
    .catch Landroidx/datastore/preferences/protobuf/b0; {:try_start_0 .. :try_end_a} :catch_15

    const/4 v0, 0x0

    .line 3
    :try_start_b
    invoke-virtual {p1, v0}, Landroidx/datastore/preferences/protobuf/i;->a(I)V
    :try_end_e
    .catch Landroidx/datastore/preferences/protobuf/b0; {:try_start_b .. :try_end_e} :catch_f

    return-object p2

    :catch_f
    move-exception p1

    .line 4
    :try_start_10
    invoke-virtual {p1, p2}, Landroidx/datastore/preferences/protobuf/b0;->i(Landroidx/datastore/preferences/protobuf/r0;)Landroidx/datastore/preferences/protobuf/b0;

    move-result-object p1

    throw p1
    :try_end_15
    .catch Landroidx/datastore/preferences/protobuf/b0; {:try_start_10 .. :try_end_15} :catch_15

    :catch_15
    move-exception p1

    .line 5
    throw p1
.end method
