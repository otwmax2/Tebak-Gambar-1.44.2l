###### Class kotlinx.coroutines.internal.x (kotlinx.coroutines.internal.x)
.class final Lkotlinx/coroutines/internal/x;
.super Lda/h2;
.source "MainDispatchers.kt"

# interfaces
.implements Lda/x0;


# instance fields
.field private final q:Ljava/lang/Throwable;

.field private final r:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lda/h2;-><init>()V

    .line 2
    iput-object p1, p0, Lkotlinx/coroutines/internal/x;->q:Ljava/lang/Throwable;

    .line 3
    iput-object p2, p0, Lkotlinx/coroutines/internal/x;->r:Ljava/lang/String;

    return-void
.end method

.method private final H()Ljava/lang/Void;
    .registers 5

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/internal/x;->q:Ljava/lang/Throwable;

    if-eqz v0, :cond_36

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Module with the Main dispatcher had failed to initialize"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlinx/coroutines/internal/x;->r:Ljava/lang/String;

    if-eqz v1, :cond_25

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ". "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_27

    :cond_25
    const-string v1, ""

    :cond_27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/lang/IllegalStateException;

    iget-object v2, p0, Lkotlinx/coroutines/internal/x;->q:Ljava/lang/Throwable;

    invoke-direct {v1, v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 4
    :cond_36
    invoke-static {}, Lkotlinx/coroutines/internal/w;->d()Ljava/lang/Void;

    new-instance v0, Lh9/e;

    invoke-direct {v0}, Lh9/e;-><init>()V

    throw v0
.end method


# virtual methods
.method public G(Lk9/g;Ljava/lang/Runnable;)Ljava/lang/Void;
    .registers 3

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/internal/x;->H()Ljava/lang/Void;

    new-instance p1, Lh9/e;

    invoke-direct {p1}, Lh9/e;-><init>()V

    throw p1
.end method

.method public bridge synthetic m(Lk9/g;Ljava/lang/Runnable;)V
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/internal/x;->G(Lk9/g;Ljava/lang/Runnable;)Ljava/lang/Void;

    return-void
.end method

.method public o(Lk9/g;)Z
    .registers 2

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/internal/x;->H()Ljava/lang/Void;

    new-instance p1, Lh9/e;

    invoke-direct {p1}, Lh9/e;-><init>()V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Dispatchers.Main[missing"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlinx/coroutines/internal/x;->q:Ljava/lang/Throwable;

    if-eqz v1, :cond_22

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", cause="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lkotlinx/coroutines/internal/x;->q:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_24

    :cond_22
    const-string v1, ""

    :goto_24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public x()Lda/h2;
    .registers 1

    return-object p0
.end method
