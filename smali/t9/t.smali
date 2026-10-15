###### Class t9.t (t9.t)
.class public abstract Lt9/t;
.super Lt9/v;
.source "PropertyReference2.java"

# interfaces
.implements Lz9/g;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 11

    .line 1
    sget-object v1, Lt9/c;->u:Ljava/lang/Object;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lt9/v;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public a()Lz9/g$a;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lt9/v;->l()Lz9/h;

    move-result-object v0

    check-cast v0, Lz9/g;

    invoke-interface {v0}, Lz9/g;->a()Lz9/g$a;

    move-result-object v0

    return-object v0
.end method

.method protected e()Lz9/a;
    .registers 2

    .line 1
    invoke-static {p0}, Lt9/z;->f(Lt9/t;)Lz9/g;

    move-result-object v0

    return-object v0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    invoke-interface {p0, p1, p2}, Lz9/g;->h(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
