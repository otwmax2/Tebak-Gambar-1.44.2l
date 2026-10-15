###### Class t9.r (t9.r)
.class public abstract Lt9/r;
.super Lt9/v;
.source "PropertyReference1.java"

# interfaces
.implements Lz9/f;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6

    .line 1
    invoke-direct/range {p0 .. p5}, Lt9/v;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public a()Lz9/f$a;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lt9/v;->l()Lz9/h;

    move-result-object v0

    check-cast v0, Lz9/f;

    invoke-interface {v0}, Lz9/f;->a()Lz9/f$a;

    move-result-object v0

    return-object v0
.end method

.method protected e()Lz9/a;
    .registers 2

    .line 1
    invoke-static {p0}, Lt9/z;->e(Lt9/r;)Lz9/f;

    move-result-object v0

    return-object v0
.end method

.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-interface {p0, p1}, Lz9/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
