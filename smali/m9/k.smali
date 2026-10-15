###### Class m9.k (m9.k)
.class public abstract Lm9/k;
.super Lm9/d;
.source "ContinuationImpl.kt"

# interfaces
.implements Lt9/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm9/d;",
        "Lt9/h<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final r:I


# direct methods
.method public constructor <init>(ILk9/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lk9/d<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lm9/d;-><init>(Lk9/d;)V

    .line 2
    iput p1, p0, Lm9/k;->r:I

    return-void
.end method


# virtual methods
.method public getArity()I
    .registers 2

    .line 1
    iget v0, p0, Lm9/k;->r:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lm9/a;->f()Lk9/d;

    move-result-object v0

    if-nez v0, :cond_10

    .line 2
    invoke-static {p0}, Lt9/z;->g(Lt9/h;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "renderLambdaToString(this)"

    invoke-static {v0, v1}, Lt9/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_14

    .line 3
    :cond_10
    invoke-super {p0}, Lm9/a;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_14
    return-object v0
.end method
