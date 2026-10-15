###### Class k5.r (k5.r)
.class public final Lk5/r;
.super Ljava/lang/Object;
.source "Dependency.java"


# instance fields
.field private final a:Lk5/f0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk5/f0<",
            "*>;"
        }
    .end annotation
.end field

.field private final b:I

.field private final c:I


# direct methods
.method private constructor <init>(Ljava/lang/Class;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;II)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lk5/f0;->b(Ljava/lang/Class;)Lk5/f0;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lk5/r;-><init>(Lk5/f0;II)V

    return-void
.end method

.method private constructor <init>(Lk5/f0;II)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk5/f0<",
            "*>;II)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Null dependency anInterface."

    .line 3
    invoke-static {p1, v0}, Lk5/e0;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lk5/f0;

    iput-object p1, p0, Lk5/r;->a:Lk5/f0;

    .line 4
    iput p2, p0, Lk5/r;->b:I

    .line 5
    iput p3, p0, Lk5/r;->c:I

    return-void
.end method

.method public static a(Ljava/lang/Class;)Lk5/r;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lk5/r;"
        }
    .end annotation

    .line 1
    new-instance v0, Lk5/r;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, p0, v1, v2}, Lk5/r;-><init>(Ljava/lang/Class;II)V

    return-object v0
.end method

.method private static b(I)Ljava/lang/String;
    .registers 4

    if-eqz p0, :cond_25

    const/4 v0, 0x1

    if-eq p0, v0, :cond_22

    const/4 v0, 0x2

    if-ne p0, v0, :cond_b

    const-string p0, "deferred"

    return-object p0

    .line 1
    :cond_b
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported injection: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_22
    const-string p0, "provider"

    return-object p0

    :cond_25
    const-string p0, "direct"

    return-object p0
.end method

.method public static h(Ljava/lang/Class;)Lk5/r;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lk5/r;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Lk5/r;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Lk5/r;-><init>(Ljava/lang/Class;II)V

    return-object v0
.end method

.method public static i(Ljava/lang/Class;)Lk5/r;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lk5/r;"
        }
    .end annotation

    .line 1
    new-instance v0, Lk5/r;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lk5/r;-><init>(Ljava/lang/Class;II)V

    return-object v0
.end method

.method public static j(Ljava/lang/Class;)Lk5/r;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lk5/r;"
        }
    .end annotation

    .line 1
    new-instance v0, Lk5/r;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lk5/r;-><init>(Ljava/lang/Class;II)V

    return-object v0
.end method

.method public static k(Lk5/f0;)Lk5/r;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk5/f0<",
            "*>;)",
            "Lk5/r;"
        }
    .end annotation

    .line 1
    new-instance v0, Lk5/r;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lk5/r;-><init>(Lk5/f0;II)V

    return-object v0
.end method

.method public static l(Ljava/lang/Class;)Lk5/r;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lk5/r;"
        }
    .end annotation

    .line 1
    new-instance v0, Lk5/r;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1, v1}, Lk5/r;-><init>(Ljava/lang/Class;II)V

    return-object v0
.end method

.method public static m(Lk5/f0;)Lk5/r;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk5/f0<",
            "*>;)",
            "Lk5/r;"
        }
    .end annotation

    .line 1
    new-instance v0, Lk5/r;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1, v1}, Lk5/r;-><init>(Lk5/f0;II)V

    return-object v0
.end method

.method public static n(Ljava/lang/Class;)Lk5/r;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lk5/r;"
        }
    .end annotation

    .line 1
    new-instance v0, Lk5/r;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lk5/r;-><init>(Ljava/lang/Class;II)V

    return-object v0
.end method


# virtual methods
.method public c()Lk5/f0;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lk5/f0<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lk5/r;->a:Lk5/f0;

    return-object v0
.end method

.method public d()Z
    .registers 3

    .line 1
    iget v0, p0, Lk5/r;->c:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public e()Z
    .registers 2

    .line 1
    iget v0, p0, Lk5/r;->c:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 1
    instance-of v0, p1, Lk5/r;

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    .line 2
    check-cast p1, Lk5/r;

    .line 3
    iget-object v0, p0, Lk5/r;->a:Lk5/f0;

    iget-object v2, p1, Lk5/r;->a:Lk5/f0;

    invoke-virtual {v0, v2}, Lk5/f0;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget v0, p0, Lk5/r;->b:I

    iget v2, p1, Lk5/r;->b:I

    if-ne v0, v2, :cond_1e

    iget v0, p0, Lk5/r;->c:I

    iget p1, p1, Lk5/r;->c:I

    if-ne v0, p1, :cond_1e

    const/4 v1, 0x1

    :cond_1e
    return v1
.end method

.method public f()Z
    .registers 3

    .line 1
    iget v0, p0, Lk5/r;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method public g()Z
    .registers 3

    .line 1
    iget v0, p0, Lk5/r;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public hashCode()I
    .registers 4

    .line 1
    iget-object v0, p0, Lk5/r;->a:Lk5/f0;

    invoke-virtual {v0}, Lk5/f0;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 2
    iget v2, p0, Lk5/r;->b:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 3
    iget v1, p0, Lk5/r;->c:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Dependency{anInterface="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lk5/r;->a:Lk5/f0;

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget v1, p0, Lk5/r;->b:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_19

    const-string v1, "required"

    goto :goto_20

    :cond_19
    if-nez v1, :cond_1e

    const-string v1, "optional"

    goto :goto_20

    :cond_1e
    const-string v1, "set"

    :goto_20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", injection="

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lk5/r;->c:I

    .line 6
    invoke-static {v1}, Lk5/r;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
