###### Class s0.c (s0.c)
.class public final Ls0/c;
.super Ljava/lang/Object;
.source "InitializerViewModelFactory.kt"


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ls0/f<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ls0/c;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Lz9/b;Ls9/l;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/g0;",
            ">(",
            "Lz9/b<",
            "TT;>;",
            "Ls9/l<",
            "-",
            "Ls0/a;",
            "+TT;>;)V"
        }
    .end annotation

    const-string v0, "clazz"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "initializer"

    invoke-static {p2, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Ls0/c;->a:Ljava/util/List;

    new-instance v1, Ls0/f;

    invoke-static {p1}, Lr9/a;->a(Lz9/b;)Ljava/lang/Class;

    move-result-object p1

    invoke-direct {v1, p1, p2}, Ls0/f;-><init>(Ljava/lang/Class;Ls9/l;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b()Landroidx/lifecycle/h0$b;
    .registers 4

    .line 1
    new-instance v0, Ls0/b;

    iget-object v1, p0, Ls0/c;->a:Ljava/util/List;

    const/4 v2, 0x0

    new-array v2, v2, [Ls0/f;

    .line 2
    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    check-cast v1, [Ls0/f;

    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ls0/f;

    invoke-direct {v0, v1}, Ls0/b;-><init>([Ls0/f;)V

    return-object v0
.end method
