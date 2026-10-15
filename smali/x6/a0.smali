###### Class x6.a0 (x6.a0)
.class public final Lx6/a0;
.super Ljava/lang/Object;
.source "SessionEvent.kt"


# instance fields
.field private final a:Lx6/j;

.field private final b:Lx6/f0;

.field private final c:Lx6/b;


# direct methods
.method public constructor <init>(Lx6/j;Lx6/f0;Lx6/b;)V
    .registers 5

    const-string v0, "eventType"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sessionData"

    invoke-static {p2, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "applicationInfo"

    invoke-static {p3, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lx6/a0;->a:Lx6/j;

    .line 3
    iput-object p2, p0, Lx6/a0;->b:Lx6/f0;

    .line 4
    iput-object p3, p0, Lx6/a0;->c:Lx6/b;

    return-void
.end method


# virtual methods
.method public final a()Lx6/b;
    .registers 2

    .line 1
    iget-object v0, p0, Lx6/a0;->c:Lx6/b;

    return-object v0
.end method

.method public final b()Lx6/j;
    .registers 2

    .line 1
    iget-object v0, p0, Lx6/a0;->a:Lx6/j;

    return-object v0
.end method

.method public final c()Lx6/f0;
    .registers 2

    .line 1
    iget-object v0, p0, Lx6/a0;->b:Lx6/f0;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lx6/a0;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lx6/a0;

    iget-object v1, p0, Lx6/a0;->a:Lx6/j;

    iget-object v3, p1, Lx6/a0;->a:Lx6/j;

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Lx6/a0;->b:Lx6/f0;

    iget-object v3, p1, Lx6/a0;->b:Lx6/f0;

    invoke-static {v1, v3}, Lt9/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    return v2

    :cond_1e
    iget-object v1, p0, Lx6/a0;->c:Lx6/b;

    iget-object p1, p1, Lx6/a0;->c:Lx6/b;

    invoke-static {v1, p1}, Lt9/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_29

    return v2

    :cond_29
    return v0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lx6/a0;->a:Lx6/j;

    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lx6/a0;->b:Lx6/f0;

    invoke-virtual {v1}, Lx6/f0;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lx6/a0;->c:Lx6/b;

    invoke-virtual {v1}, Lx6/b;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SessionEvent(eventType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lx6/a0;->a:Lx6/j;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sessionData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lx6/a0;->b:Lx6/f0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", applicationInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lx6/a0;->c:Lx6/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
