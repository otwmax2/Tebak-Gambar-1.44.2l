###### Class da.i2 (da.i2)
.class public final Lda/i2;
.super Lkotlinx/coroutines/internal/p;
.source "JobSupport.kt"

# interfaces
.implements Lda/s1;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/internal/p;-><init>()V

    return-void
.end method


# virtual methods
.method public final E(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "List{"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "}["

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/r;->r()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlinx/coroutines/internal/r;

    const/4 v1, 0x1

    .line 6
    :goto_19
    invoke-static {p1, p0}, Lt9/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_37

    .line 7
    instance-of v2, p1, Lda/d2;

    if-eqz v2, :cond_32

    move-object v2, p1

    check-cast v2, Lda/d2;

    if-eqz v1, :cond_2a

    const/4 v1, 0x0

    goto :goto_2f

    :cond_2a
    const-string v3, ", "

    .line 8
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    :goto_2f
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 10
    :cond_32
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/r;->s()Lkotlinx/coroutines/internal/r;

    move-result-object p1

    goto :goto_19

    :cond_37
    const-string p1, "]"

    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "StringBuilder().apply(builderAction).toString()"

    invoke-static {p1, v0}, Lt9/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public c()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public f()Lda/i2;
    .registers 1

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-static {}, Lda/s0;->c()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "Active"

    invoke-virtual {p0, v0}, Lda/i2;->E(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    :cond_d
    invoke-super {p0}, Lkotlinx/coroutines/internal/r;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_11
    return-object v0
.end method
