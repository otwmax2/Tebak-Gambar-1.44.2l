###### Class t9.p (t9.p)
.class public abstract Lt9/p;
.super Lt9/v;
.source "PropertyReference0.java"

# interfaces
.implements Lz9/e;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6

    .line 1
    invoke-direct/range {p0 .. p5}, Lt9/v;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method protected e()Lz9/a;
    .registers 2

    .line 1
    invoke-static {p0}, Lt9/z;->d(Lt9/p;)Lz9/e;

    move-result-object v0

    return-object v0
.end method

.method public invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-interface {p0}, Lz9/e;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
