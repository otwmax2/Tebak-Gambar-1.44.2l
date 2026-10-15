###### Class da.d2 (da.d2)
.class public abstract Lda/d2;
.super Lda/c0;
.source "JobSupport.kt"

# interfaces
.implements Lda/e1;
.implements Lda/s1;


# instance fields
.field public r:Lda/e2;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lda/c0;-><init>()V

    return-void
.end method


# virtual methods
.method public final D()Lda/e2;
    .registers 2

    .line 1
    iget-object v0, p0, Lda/d2;->r:Lda/e2;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "job"

    invoke-static {v0}, Lt9/m;->p(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final E(Lda/e2;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lda/d2;->r:Lda/e2;

    return-void
.end method

.method public c()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public f()Lda/i2;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public i()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lda/d2;->D()Lda/e2;

    move-result-object v0

    invoke-virtual {v0, p0}, Lda/e2;->x0(Lda/d2;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lda/t0;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lda/t0;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[job@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lda/d2;->D()Lda/e2;

    move-result-object v1

    invoke-static {v1}, Lda/t0;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
