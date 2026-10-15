###### Class t9.i (t9.i)
.class public Lt9/i;
.super Lt9/c;
.source "FunctionReference.java"

# interfaces
.implements Lt9/h;
.implements Lz9/d;


# instance fields
.field private final v:I

.field private final w:I


# direct methods
.method public constructor <init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 15

    and-int/lit8 v0, p6, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    const/4 v7, 0x1

    goto :goto_9

    :cond_7
    const/4 v0, 0x0

    const/4 v7, 0x0

    :goto_9
    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 1
    invoke-direct/range {v2 .. v7}, Lt9/c;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2
    iput p1, p0, Lt9/i;->v:I

    shr-int/lit8 p1, p6, 0x1

    .line 3
    iput p1, p0, Lt9/i;->w:I

    return-void
.end method


# virtual methods
.method protected e()Lz9/a;
    .registers 2

    .line 1
    invoke-static {p0}, Lt9/z;->a(Lt9/i;)Lz9/d;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 1
    :cond_4
    instance-of v1, p1, Lt9/i;

    const/4 v2, 0x0

    if-eqz v1, :cond_52

    .line 2
    check-cast p1, Lt9/i;

    .line 3
    invoke-virtual {p0}, Lt9/c;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lt9/c;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_50

    invoke-virtual {p0}, Lt9/c;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lt9/c;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_50

    iget v1, p0, Lt9/i;->w:I

    iget v3, p1, Lt9/i;->w:I

    if-ne v1, v3, :cond_50

    iget v1, p0, Lt9/i;->v:I

    iget v3, p1, Lt9/i;->v:I

    if-ne v1, v3, :cond_50

    invoke-virtual {p0}, Lt9/c;->f()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lt9/c;->f()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v3}, Lt9/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_50

    invoke-virtual {p0}, Lt9/c;->i()Lz9/c;

    move-result-object v1

    invoke-virtual {p1}, Lt9/c;->i()Lz9/c;

    move-result-object p1

    invoke-static {v1, p1}, Lt9/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_50

    goto :goto_51

    :cond_50
    const/4 v0, 0x0

    :goto_51
    return v0

    .line 4
    :cond_52
    instance-of v0, p1, Lz9/d;

    if-eqz v0, :cond_5f

    .line 5
    invoke-virtual {p0}, Lt9/c;->d()Lz9/a;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_5f
    return v2
.end method

.method public getArity()I
    .registers 2

    .line 1
    iget v0, p0, Lt9/i;->v:I

    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 1
    invoke-virtual {p0}, Lt9/c;->i()Lz9/c;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    goto :goto_12

    :cond_8
    invoke-virtual {p0}, Lt9/c;->i()Lz9/c;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    :goto_12
    invoke-virtual {p0}, Lt9/c;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lt9/c;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lt9/c;->d()Lz9/a;

    move-result-object v0

    if-eq v0, p0, :cond_b

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_b
    invoke-virtual {p0}, Lt9/c;->g()Ljava/lang/String;

    move-result-object v0

    const-string v1, "<init>"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string v0, "constructor (Kotlin reflection is not available)"

    goto :goto_34

    :cond_1a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "function "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lt9/c;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (Kotlin reflection is not available)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_34
    return-object v0
.end method
