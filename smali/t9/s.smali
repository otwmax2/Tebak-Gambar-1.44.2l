###### Class t9.s (t9.s)
.class public Lt9/s;
.super Lt9/r;
.source "PropertyReference1Impl.java"


# direct methods
.method public constructor <init>(Lz9/c;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    .line 1
    sget-object v1, Lt9/c;->u:Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lt9/d;

    invoke-interface {v0}, Lt9/d;->b()Ljava/lang/Class;

    move-result-object v2

    instance-of p1, p1, Lz9/b;

    xor-int/lit8 v5, p1, 0x1

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lt9/r;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 1
    invoke-virtual {p0}, Lt9/r;->a()Lz9/f$a;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-interface {v0, v1}, Lz9/a;->c([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
