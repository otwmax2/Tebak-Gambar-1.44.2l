###### Class ga.b (ga.b)
.class public abstract Lga/b;
.super Ljava/lang/Object;
.source "AbstractSharedFlow.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Lga/d<",
        "*>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private o:[Lga/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TS;"
        }
    .end annotation
.end field

.field private p:I

.field private q:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected final b()Lga/d;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lga/b;->o:[Lga/d;

    const/4 v1, 0x2

    if-nez v0, :cond_d

    .line 3
    invoke-virtual {p0, v1}, Lga/b;->e(I)[Lga/d;

    move-result-object v0

    iput-object v0, p0, Lga/b;->o:[Lga/d;

    goto :goto_25

    .line 4
    :cond_d
    iget v2, p0, Lga/b;->p:I

    array-length v3, v0

    if-lt v2, v3, :cond_25

    .line 5
    array-length v2, v0

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "copyOf(this, newSize)"

    invoke-static {v0, v1}, Lt9/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v0

    check-cast v1, [Lga/d;

    iput-object v1, p0, Lga/b;->o:[Lga/d;

    check-cast v0, [Lga/d;

    .line 6
    :cond_25
    :goto_25
    iget v1, p0, Lga/b;->q:I

    .line 7
    :cond_27
    aget-object v2, v0, v1

    if-nez v2, :cond_31

    invoke-virtual {p0}, Lga/b;->d()Lga/d;

    move-result-object v2

    aput-object v2, v0, v1

    :cond_31
    add-int/lit8 v1, v1, 0x1

    .line 8
    array-length v3, v0

    if-lt v1, v3, :cond_37

    const/4 v1, 0x0

    .line 9
    :cond_37
    invoke-virtual {v2, p0}, Lga/d;->a(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 10
    iput v1, p0, Lga/b;->q:I

    .line 11
    iget v0, p0, Lga/b;->p:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lga/b;->p:I
    :try_end_45
    .catchall {:try_start_1 .. :try_end_45} :catchall_47

    .line 12
    monitor-exit p0

    return-object v2

    :catchall_47
    move-exception v0

    monitor-exit p0

    goto :goto_4b

    :goto_4a
    throw v0

    :goto_4b
    goto :goto_4a
.end method

.method protected abstract d()Lga/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation
.end method

.method protected abstract e(I)[Lga/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TS;"
        }
    .end annotation
.end method

.method protected final f(Lga/d;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget v0, p0, Lga/b;->p:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lga/b;->p:I

    const/4 v1, 0x0

    if-nez v0, :cond_c

    .line 3
    iput v1, p0, Lga/b;->q:I

    .line 4
    :cond_c
    invoke-virtual {p1, p0}, Lga/d;->b(Ljava/lang/Object;)[Lk9/d;

    move-result-object p1
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_27

    monitor-exit p0

    .line 5
    array-length v0, p1

    :goto_12
    if-ge v1, v0, :cond_26

    aget-object v2, p1, v1

    if-eqz v2, :cond_23

    sget-object v3, Lh9/n;->o:Lh9/n$a;

    sget-object v3, Lh9/t;->a:Lh9/t;

    invoke-static {v3}, Lh9/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lk9/d;->g(Ljava/lang/Object;)V

    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_26
    return-void

    :catchall_27
    move-exception p1

    .line 6
    monitor-exit p0

    goto :goto_2b

    :goto_2a
    throw p1

    :goto_2b
    goto :goto_2a
.end method

.method protected final g()[Lga/d;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TS;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lga/b;->o:[Lga/d;

    return-object v0
.end method
