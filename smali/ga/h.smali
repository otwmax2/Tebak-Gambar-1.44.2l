###### Class ga.h (ga.h)
.class public final Lga/h;
.super Ljava/lang/Object;
.source "NullSurrogate.kt"


# static fields
.field public static final a:Lkotlinx/coroutines/internal/e0;

.field public static final b:Lkotlinx/coroutines/internal/e0;

.field public static final c:Lkotlinx/coroutines/internal/e0;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lkotlinx/coroutines/internal/e0;

    const-string v1, "NULL"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/e0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lga/h;->a:Lkotlinx/coroutines/internal/e0;

    .line 2
    new-instance v0, Lkotlinx/coroutines/internal/e0;

    const-string v1, "UNINITIALIZED"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/e0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lga/h;->b:Lkotlinx/coroutines/internal/e0;

    .line 3
    new-instance v0, Lkotlinx/coroutines/internal/e0;

    const-string v1, "DONE"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/e0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lga/h;->c:Lkotlinx/coroutines/internal/e0;

    return-void
.end method
