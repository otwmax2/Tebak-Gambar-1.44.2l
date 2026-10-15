###### Class da.l1 (da.l1)
.class public final Lda/l1;
.super Ljava/lang/Object;
.source "EventLoop.common.kt"


# static fields
.field private static final a:Lkotlinx/coroutines/internal/e0;

.field private static final b:Lkotlinx/coroutines/internal/e0;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lkotlinx/coroutines/internal/e0;

    const-string v1, "REMOVED_TASK"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/e0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lda/l1;->a:Lkotlinx/coroutines/internal/e0;

    .line 2
    new-instance v0, Lkotlinx/coroutines/internal/e0;

    const-string v1, "CLOSED_EMPTY"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/e0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lda/l1;->b:Lkotlinx/coroutines/internal/e0;

    return-void
.end method

.method public static final synthetic a()Lkotlinx/coroutines/internal/e0;
    .registers 1

    .line 1
    sget-object v0, Lda/l1;->b:Lkotlinx/coroutines/internal/e0;

    return-object v0
.end method

.method public static final synthetic b()Lkotlinx/coroutines/internal/e0;
    .registers 1

    .line 1
    sget-object v0, Lda/l1;->a:Lkotlinx/coroutines/internal/e0;

    return-object v0
.end method
