###### Class kotlinx.coroutines.internal.f (kotlinx.coroutines.internal.f)
.class public final Lkotlinx/coroutines/internal/f;
.super Ljava/lang/Object;
.source "Scopes.kt"

# interfaces
.implements Lda/o0;


# instance fields
.field private final o:Lk9/g;


# direct methods
.method public constructor <init>(Lk9/g;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lkotlinx/coroutines/internal/f;->o:Lk9/g;

    return-void
.end method


# virtual methods
.method public a()Lk9/g;
    .registers 2

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/internal/f;->o:Lk9/g;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CoroutineScope(coroutineContext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/f;->a()Lk9/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
