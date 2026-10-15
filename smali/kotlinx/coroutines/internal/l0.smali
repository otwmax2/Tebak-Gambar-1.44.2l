###### Class kotlinx.coroutines.internal.l0 (kotlinx.coroutines.internal.l0)
.class final Lkotlinx/coroutines/internal/l0;
.super Ljava/lang/Object;
.source "ThreadContext.kt"


# instance fields
.field public final a:Lk9/g;

.field private final b:[Ljava/lang/Object;

.field private final c:[Lda/r2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lda/r2<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private d:I


# direct methods
.method public constructor <init>(Lk9/g;I)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lkotlinx/coroutines/internal/l0;->a:Lk9/g;

    .line 3
    new-array p1, p2, [Ljava/lang/Object;

    iput-object p1, p0, Lkotlinx/coroutines/internal/l0;->b:[Ljava/lang/Object;

    .line 4
    new-array p1, p2, [Lda/r2;

    iput-object p1, p0, Lkotlinx/coroutines/internal/l0;->c:[Lda/r2;

    return-void
.end method


# virtual methods
.method public final a(Lda/r2;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lda/r2<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/internal/l0;->b:[Ljava/lang/Object;

    iget v1, p0, Lkotlinx/coroutines/internal/l0;->d:I

    aput-object p2, v0, v1

    .line 2
    iget-object p2, p0, Lkotlinx/coroutines/internal/l0;->c:[Lda/r2;

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lkotlinx/coroutines/internal/l0;->d:I

    aput-object p1, p2, v1

    return-void
.end method

.method public final b(Lk9/g;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/internal/l0;->c:[Lda/r2;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1c

    :goto_7
    add-int/lit8 v1, v0, -0x1

    .line 2
    iget-object v2, p0, Lkotlinx/coroutines/internal/l0;->c:[Lda/r2;

    aget-object v2, v2, v0

    invoke-static {v2}, Lt9/m;->b(Ljava/lang/Object;)V

    iget-object v3, p0, Lkotlinx/coroutines/internal/l0;->b:[Ljava/lang/Object;

    aget-object v0, v3, v0

    invoke-interface {v2, p1, v0}, Lda/r2;->C(Lk9/g;Ljava/lang/Object;)V

    if-gez v1, :cond_1a

    goto :goto_1c

    :cond_1a
    move v0, v1

    goto :goto_7

    :cond_1c
    :goto_1c
    return-void
.end method
