###### Class da.d1 (da.d1)
.class public final Lda/d1;
.super Ljava/lang/Object;
.source "Dispatchers.kt"


# static fields
.field public static final a:Lda/d1;

.field private static final b:Lda/i0;

.field private static final c:Lda/i0;

.field private static final d:Lda/i0;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lda/d1;

    invoke-direct {v0}, Lda/d1;-><init>()V

    sput-object v0, Lda/d1;->a:Lda/d1;

    .line 1
    sget-object v0, Lkotlinx/coroutines/scheduling/c;->w:Lkotlinx/coroutines/scheduling/c;

    sput-object v0, Lda/d1;->b:Lda/i0;

    .line 2
    sget-object v0, Lda/t2;->q:Lda/t2;

    sput-object v0, Lda/d1;->c:Lda/i0;

    .line 3
    sget-object v0, Lkotlinx/coroutines/scheduling/b;->r:Lkotlinx/coroutines/scheduling/b;

    sput-object v0, Lda/d1;->d:Lda/i0;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a()Lda/i0;
    .registers 1

    .line 1
    sget-object v0, Lda/d1;->b:Lda/i0;

    return-object v0
.end method

.method public static final b()Lda/i0;
    .registers 1

    .line 1
    sget-object v0, Lda/d1;->d:Lda/i0;

    return-object v0
.end method

.method public static final c()Lda/h2;
    .registers 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/internal/v;->c:Lda/h2;

    return-object v0
.end method
